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


// IP VLNV: starrynightzyq.com:video:OV_Sensor:1.0
// IP Revision: 1

(* X_CORE_INFO = "OV_Sensor_ML,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m3_for_arty_a7_OV_Sensor_0_0,OV_Sensor_ML,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m3_for_arty_a7_OV_Sensor_0_0 (
  CLK_i,
  cmos_vsync_i,
  cmos_href_i,
  cmos_pclk_i,
  cmos_xclk_o,
  cmos_data_i,
  vid_hsync,
  vid_vsync,
  vid_data,
  vid_clk_ce,
  vid_active_video
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_24M, PHASE 0.0, CLK_DOMAIN /ov_cmos/clk_and_reset/clk_wiz_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_24M CLK" *)
input wire CLK_i;
input wire cmos_vsync_i;
input wire cmos_href_i;
input wire cmos_pclk_i;
output wire cmos_xclk_o;
input wire [7 : 0] cmos_data_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_o HSYNC" *)
output wire vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_o VSYNC" *)
output wire vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_o DATA" *)
output wire [23 : 0] vid_data;
output wire vid_clk_ce;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 video_o ACTIVE_VIDEO" *)
output wire vid_active_video;

  OV_Sensor_ML #(
    .RBG_CHANGE(1'B0)
  ) inst (
    .CLK_i(CLK_i),
    .cmos_vsync_i(cmos_vsync_i),
    .cmos_href_i(cmos_href_i),
    .cmos_pclk_i(cmos_pclk_i),
    .cmos_xclk_o(cmos_xclk_o),
    .cmos_data_i(cmos_data_i),
    .vid_hsync(vid_hsync),
    .vid_vsync(vid_vsync),
    .vid_data(vid_data),
    .vid_clk_ce(vid_clk_ce),
    .vid_active_video(vid_active_video)
  );
endmodule
