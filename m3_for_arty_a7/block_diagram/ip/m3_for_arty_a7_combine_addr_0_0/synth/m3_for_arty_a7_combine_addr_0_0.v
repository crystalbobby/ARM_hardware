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


// IP VLNV: xilinx.com:module_ref:combine_addr:1.0
// IP Revision: 1

(* X_CORE_INFO = "combine_addr,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_combine_addr_0_0,combine_addr,{}" *)
(* CORE_GENERATION_INFO = "m3_for_arty_a7_combine_addr_0_0,combine_addr,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=combine_addr,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CHAR0_ADDR_BASE=000,CHAR1_ADDR_BASE=001,CHAR2_ADDR_BASE=010,CHAR3_ADDR_BASE=011,CHAR4_ADDR_BASE=100,CHAR5_ADDR_BASE=101,CHAR6_ADDR_BASE=110}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_combine_addr_0_0 (
  clk,
  rst_n,
  shift,
  char_index,
  char_diff,
  char_addr,
  char_valid,
  char_index_c,
  char_diff_c,
  char_valid_c
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_1_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [2 : 0] shift;
input wire [3 : 0] char_index;
input wire [15 : 0] char_diff;
input wire [2 : 0] char_addr;
input wire char_valid;
output wire [27 : 0] char_index_c;
output wire [111 : 0] char_diff_c;
output wire char_valid_c;

  combine_addr #(
    .CHAR0_ADDR_BASE(3'B000),
    .CHAR1_ADDR_BASE(3'B001),
    .CHAR2_ADDR_BASE(3'B010),
    .CHAR3_ADDR_BASE(3'B011),
    .CHAR4_ADDR_BASE(3'B100),
    .CHAR5_ADDR_BASE(3'B101),
    .CHAR6_ADDR_BASE(3'B110)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .shift(shift),
    .char_index(char_index),
    .char_diff(char_diff),
    .char_addr(char_addr),
    .char_valid(char_valid),
    .char_index_c(char_index_c),
    .char_diff_c(char_diff_c),
    .char_valid_c(char_valid_c)
  );
endmodule
