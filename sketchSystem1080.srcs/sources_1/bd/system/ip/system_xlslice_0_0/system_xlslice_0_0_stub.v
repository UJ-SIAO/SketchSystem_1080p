// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 19 20:59:02 2021
// Host        : DESKTOP-RE08DTS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GitCode/SketchSystem/imageProcessingSystem.srcs/sources_1/bd/system/ip/system_xlslice_0_0/system_xlslice_0_0_stub.v
// Design      : system_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2017.4" *)
module system_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[23:0],Dout[3:0]" */;
  input [23:0]Din;
  output [3:0]Dout;
endmodule
