// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:resize_ctrl:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_resize_ctrl_0_0 (
  clk,
  rst_n,
  bound_x_min_i,
  bound_x_max_i,
  bound_y_min_i,
  bound_y_max_i,
  bound_x_min_addr,
  bound_x_max_addr,
  resize_interrupt,
  resize_o_addr,
  resize_o_ce,
  resize_o_we,
  resize_o_d,
  bound_x_min_o,
  bound_x_max_o,
  bound_y_min_o,
  bound_y_max_o,
  resize_ram_i_addr,
  resize_ram_i_ce,
  resize_ram_i_we,
  resize_ram_i_d
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [15 : 0] bound_x_min_i;
input wire [15 : 0] bound_x_max_i;
input wire [15 : 0] bound_y_min_i;
input wire [15 : 0] bound_y_max_i;
output wire [2 : 0] bound_x_min_addr;
output wire [2 : 0] bound_x_max_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resize_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 resize_interrupt INTERRUPT" *)
input wire resize_interrupt;
input wire [9 : 0] resize_o_addr;
input wire resize_o_ce;
input wire resize_o_we;
input wire resize_o_d;
output wire [15 : 0] bound_x_min_o;
output wire [15 : 0] bound_x_max_o;
output wire [15 : 0] bound_y_min_o;
output wire [15 : 0] bound_y_max_o;
output wire [12 : 0] resize_ram_i_addr;
output wire resize_ram_i_ce;
output wire resize_ram_i_we;
output wire resize_ram_i_d;

  resize_ctrl #(
    .CHAR_NUM(8)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .bound_x_min_i(bound_x_min_i),
    .bound_x_max_i(bound_x_max_i),
    .bound_y_min_i(bound_y_min_i),
    .bound_y_max_i(bound_y_max_i),
    .bound_x_min_addr(bound_x_min_addr),
    .bound_x_max_addr(bound_x_max_addr),
    .resize_interrupt(resize_interrupt),
    .resize_o_addr(resize_o_addr),
    .resize_o_ce(resize_o_ce),
    .resize_o_we(resize_o_we),
    .resize_o_d(resize_o_d),
    .bound_x_min_o(bound_x_min_o),
    .bound_x_max_o(bound_x_max_o),
    .bound_y_min_o(bound_y_min_o),
    .bound_y_max_o(bound_y_max_o),
    .resize_ram_i_addr(resize_ram_i_addr),
    .resize_ram_i_ce(resize_ram_i_ce),
    .resize_ram_i_we(resize_ram_i_we),
    .resize_ram_i_d(resize_ram_i_d)
  );
endmodule
