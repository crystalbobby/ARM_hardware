// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jul 18 14:56:52 2019
// Host        : desktopzyq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/OneDriveLocal/ARM_CP/workspace/hardware/m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_system_ila_0_0/m3_for_arty_a7_system_ila_0_0_stub.v
// Design      : m3_for_arty_a7_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_082c,Vivado 2018.2" *)
module m3_for_arty_a7_system_ila_0_0(clk, probe0, SLOT_0_AXIS_tdata, 
  SLOT_0_AXIS_tlast, SLOT_0_AXIS_tuser, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, 
  SLOT_1_AXIS_tdata, SLOT_1_AXIS_tkeep, SLOT_1_AXIS_tlast, SLOT_1_AXIS_tuser, 
  SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, SLOT_2_AXIS_tid, SLOT_2_AXIS_tdest, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tstrb, SLOT_2_AXIS_tkeep, SLOT_2_AXIS_tlast, 
  SLOT_2_AXIS_tuser, SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, SLOT_3_AXIS_tdata, 
  SLOT_3_AXIS_tkeep, SLOT_3_AXIS_tlast, SLOT_3_AXIS_tuser, SLOT_3_AXIS_tvalid, 
  SLOT_3_AXIS_tready, SLOT_4_AXIS_tid, SLOT_4_AXIS_tdest, SLOT_4_AXIS_tdata, 
  SLOT_4_AXIS_tstrb, SLOT_4_AXIS_tkeep, SLOT_4_AXIS_tlast, SLOT_4_AXIS_tuser, 
  SLOT_4_AXIS_tvalid, SLOT_4_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],SLOT_0_AXIS_tdata[23:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tuser[0:0],SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdata[23:0],SLOT_1_AXIS_tkeep[2:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tuser[0:0],SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tid[0:0],SLOT_2_AXIS_tdest[0:0],SLOT_2_AXIS_tdata[23:0],SLOT_2_AXIS_tstrb[2:0],SLOT_2_AXIS_tkeep[2:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tuser[0:0],SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[23:0],SLOT_3_AXIS_tkeep[2:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tuser[0:0],SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tid[0:0],SLOT_4_AXIS_tdest[0:0],SLOT_4_AXIS_tdata[23:0],SLOT_4_AXIS_tstrb[2:0],SLOT_4_AXIS_tkeep[2:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tuser[0:0],SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [23:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [23:0]SLOT_1_AXIS_tdata;
  input [2:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input [0:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [0:0]SLOT_2_AXIS_tid;
  input [0:0]SLOT_2_AXIS_tdest;
  input [23:0]SLOT_2_AXIS_tdata;
  input [2:0]SLOT_2_AXIS_tstrb;
  input [2:0]SLOT_2_AXIS_tkeep;
  input SLOT_2_AXIS_tlast;
  input [0:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [23:0]SLOT_3_AXIS_tdata;
  input [2:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [0:0]SLOT_4_AXIS_tid;
  input [0:0]SLOT_4_AXIS_tdest;
  input [23:0]SLOT_4_AXIS_tdata;
  input [2:0]SLOT_4_AXIS_tstrb;
  input [2:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input [0:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input SLOT_4_AXIS_tready;
  input resetn;
endmodule
