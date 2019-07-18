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


// IP VLNV: xilinx.com:module_ref:bound_fsm:1.0
// IP Revision: 1

(* X_CORE_INFO = "bound_fsm,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_bound_fsm_0_0,bound_fsm,{}" *)
(* CORE_GENERATION_INFO = "m3_for_arty_a7_bound_fsm_0_0,bound_fsm,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bound_fsm,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HWIDTH=640,VWIDTH=480}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_bound_fsm_0_0 (
  clk,
  rst_n,
  bound_x_min_i,
  bound_x_max_i,
  bound_y_min_i,
  bound_y_max_i,
  bound_y_min_ap_vld_i,
  bound_y_max_ap_vld_i,
  bound_x_min_ap_vld_i,
  bound_x_max_ap_vld_i,
  bound_x_min_o,
  bound_x_max_o,
  bound_y_min_o,
  bound_y_max_o,
  bound_y_min_ap_vld_o,
  bound_y_max_ap_vld_o,
  bound_x_min_ap_vld_o,
  bound_x_max_ap_vld_o
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
input wire bound_y_min_ap_vld_i;
input wire bound_y_max_ap_vld_i;
input wire bound_x_min_ap_vld_i;
input wire bound_x_max_ap_vld_i;
output wire [15 : 0] bound_x_min_o;
output wire [15 : 0] bound_x_max_o;
output wire [15 : 0] bound_y_min_o;
output wire [15 : 0] bound_y_max_o;
output wire bound_y_min_ap_vld_o;
output wire bound_y_max_ap_vld_o;
output wire bound_x_min_ap_vld_o;
output wire bound_x_max_ap_vld_o;

  bound_fsm #(
    .HWIDTH(640),
    .VWIDTH(480)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .bound_x_min_i(bound_x_min_i),
    .bound_x_max_i(bound_x_max_i),
    .bound_y_min_i(bound_y_min_i),
    .bound_y_max_i(bound_y_max_i),
    .bound_y_min_ap_vld_i(bound_y_min_ap_vld_i),
    .bound_y_max_ap_vld_i(bound_y_max_ap_vld_i),
    .bound_x_min_ap_vld_i(bound_x_min_ap_vld_i),
    .bound_x_max_ap_vld_i(bound_x_max_ap_vld_i),
    .bound_x_min_o(bound_x_min_o),
    .bound_x_max_o(bound_x_max_o),
    .bound_y_min_o(bound_y_min_o),
    .bound_y_max_o(bound_y_max_o),
    .bound_y_min_ap_vld_o(bound_y_min_ap_vld_o),
    .bound_y_max_ap_vld_o(bound_y_max_ap_vld_o),
    .bound_x_min_ap_vld_o(bound_x_min_ap_vld_o),
    .bound_x_max_ap_vld_o(bound_x_max_ap_vld_o)
  );
endmodule
