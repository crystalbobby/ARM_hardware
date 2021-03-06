`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/31 15:36:35
// Design Name: 
// Module Name: resize_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module resize_ctrl #(
	parameter ALL_CHAR = 1,
	parameter CHAR_NUM = 7
	)(
	input clk,
	input rst_n,

	/* axis2ram 控制口输入 */
	input axis2ram_done,

	/* resize 控制口 */
	output resize_continue,

	/* bound ram 输出接口 */
	input  [15:0] bound_x_min_i,
	input  [15:0] bound_x_max_i,
	input  [15:0] bound_y_min_i,
	input  [15:0] bound_y_max_i,

	output [2:0] bound_x_min_addr,
	output [2:0] bound_x_max_addr,

	/* resize 输出接口 */
	input resize_interrupt,
	// input [9:0] resize_o_addr,
	// input resize_o_ce,
	// input resize_o_we,
	// input resize_o_d,	
	


	/* resize 输入接口 */
	output  [15:0] bound_x_min_o,
	output  [15:0] bound_x_max_o,
	output  [15:0] bound_y_min_o,
	output  [15:0] bound_y_max_o

	// output [12:0] resize_ram_i_addr,
	// output resize_ram_i_ce,
	// output resize_ram_i_we,
	// output resize_ram_i_d
    );

	// parameter RESIZE_INDEX_MAX = 28*28;
	// 
	localparam [0:0] IDLE = 1'b0;
	localparam [0:0] RESIZE_ON = 1'b1;

	reg [2:0] character_index = 0;
	reg [2:0] character_index_r0 = 0;
	reg [2:0] character_index_r1 = 0;
	reg [2:0] character_index_r2 = 0;

	reg [9:0] resize_o_addr_r0 = 'b0;
	reg resize_o_ce_r0 = 'b0;
	reg resize_o_we_r0 = 'b0;
	reg [0:0] resize_o_d_r0 = 'b0;

	reg [9:0] resize_o_addr_r1 = 'b0;
	reg resize_o_ce_r1 = 'b0;
	reg resize_o_we_r1 = 'b0;
	reg [0:0] resize_o_d_r1 = 'b0;

	wire resize_end;
	wire resize_start;

	wire [63:0] ram_i_pack;
	reg [63:0] ram_i_pack_r;
	reg resize_end_r1 = 'b0;
	reg resize_end_r2 = 'b0;
	reg resize_end_r3 = 'b0;
	reg resize_end_r4 = 'b0;
	reg resize_end_r5 = 'b0;
	reg resize_end_r6 = 'b0;

	wire  [15:0] bound_x_min_i_delay;
	wire  [15:0] bound_x_max_i_delay;
	wire  [15:0] bound_y_min_i_delay;
	wire  [15:0] bound_y_max_i_delay;
	wire   bound_y_min_ap_vld_i_delay;
	wire   bound_y_max_ap_vld_i_delay;

	reg resize_interrupt_r0;
	// reg resize_interrupt_r1;
	// reg resize_interrupt_r2;
	wire resize_interrupt_p; // 上升沿

	reg axis2ram_done_delay;
	wire axis2ram_done_r;

	reg [0:0] fsm_state;

	always @(posedge clk) begin : proc_resize_interrupt_r0
		resize_interrupt_r0 <= resize_interrupt;
		axis2ram_done_delay <= axis2ram_done;
		// resize_interrupt_r1 <= resize_interrupt_r0;
		// resize_interrupt_r2 <= resize_interrupt_r1;
	end
	assign resize_interrupt_p = (!resize_interrupt_r0)&&(resize_interrupt);
	assign axis2ram_done_r = (!axis2ram_done_delay)&&(axis2ram_done);

	assign resize_end = resize_interrupt_p;
	assign resize_start = axis2ram_done_r;

/*			always @(posedge clk or negedge rst_n) begin
				if(~rst_n) begin
					character_index <= 0;
				end else if(resize_end) begin
					if(character_index == CHAR_NUM - 1) begin
						character_index <= 'b0;
					end else begin 
						character_index <= character_index + 'b1;
					end
				end
			end*/

	always @(posedge clk or negedge rst_n) begin : proc_fsm_state
		if(~rst_n) begin
			fsm_state <= IDLE;
		end else begin
			case (fsm_state)
				IDLE : begin 
					if(resize_start) begin
						fsm_state <= RESIZE_ON;
					end else begin 
						fsm_state <= IDLE;
					end
				end
				RESIZE_ON : begin 
					if((character_index == CHAR_NUM - 1) && (resize_end)) begin
						fsm_state <= IDLE;
					end else begin 
						fsm_state <= RESIZE_ON;
					end
				end
				default : fsm_state <= IDLE;
			endcase
		end
	end

	always @(posedge clk or negedge rst_n) begin : proc_character_index
		if(~rst_n) begin
			character_index <= 0;
		end else begin
			case (fsm_state)
				IDLE : begin 
					character_index <= 0;
				end
				RESIZE_ON : begin 
					if(resize_end) begin
						if(character_index == CHAR_NUM - 1) begin
							character_index <= 'b0;
						end else begin 
							character_index <= character_index + 'b1;
						end
					end
				end
				default : character_index <= 0;
			endcase
		end
	end

	always @(posedge clk) begin : proc_character_index_r1
		character_index_r0 <= character_index;
		character_index_r1 <= character_index_r0;
		character_index_r2 <= character_index_r1;
	end

	/* 将输入延迟2个clk */
	assign ram_i_pack = {bound_x_min_i, bound_x_max_i, bound_y_min_i, bound_y_max_i};

	always @(posedge clk) begin
		resize_end_r1 <= resize_end;
		resize_end_r2 <= resize_end_r1;
	end

	always @(posedge clk or negedge rst_n) begin : proc_ram_i_pack_r
		if(~rst_n) begin
			ram_i_pack_r <= {16'd100, 16'd300, 16'd100, 16'd300};
		end else if(resize_end_r2) begin // && (ram_i_pack != 0)
			if((bound_x_max_i > bound_x_min_i) && (bound_y_max_i > bound_y_min_i)) begin//(bound_x_max_i - bound_x_min_i > 0) && (bound_y_max_i - bound_y_max_i > 0) 
				ram_i_pack_r <= ram_i_pack;
			end
		end
	end

	assign {bound_x_min_i_delay, bound_x_max_i_delay, bound_y_min_i_delay, bound_y_max_i_delay} = ram_i_pack_r;

	assign bound_x_min_o = bound_x_min_i_delay;
	assign bound_x_max_o = bound_x_max_i_delay;
	assign bound_y_min_o = bound_y_min_i_delay;
	assign bound_y_max_o = bound_y_max_i_delay;

	assign bound_x_min_addr = character_index; // just for test
	assign bound_x_max_addr = character_index; // just for test

	assign resize_continue = ((character_index < CHAR_NUM - 1) && fsm_state == RESIZE_ON) ? 1'b1 : 1'b0;

	// assign resize_ram_i_addr = {character_index_r1, resize_o_addr_r1}; // just for test
	// assign resize_ram_i_ce = resize_o_ce_r1;
	// assign resize_ram_i_we = resize_o_we_r1;
	// assign resize_ram_i_d = resize_o_d_r1;

endmodule
