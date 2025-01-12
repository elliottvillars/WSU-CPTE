//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Nov  4 16:30:23 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target ARITHMETIC_LOGIC_UNIT_wrapper.bd
//Design      : ARITHMETIC_LOGIC_UNIT_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ARITHMETIC_LOGIC_UNIT_wrapper
   (i_CLK,
    i_LD_0,
    i_LD_1,
    i_SW,
    o_Anodes,
    o_Cathodes,
    o_Status);
  input i_CLK;
  input i_LD_0;
  input i_LD_1;
  input [7:0]i_SW;
  output [3:0]o_Anodes;
  output [6:0]o_Cathodes;
  output [3:0]o_Status;

  wire i_CLK;
  wire i_LD_0;
  wire i_LD_1;
  wire [7:0]i_SW;
  wire [3:0]o_Anodes;
  wire [6:0]o_Cathodes;
  wire [3:0]o_Status;

  ARITHMETIC_LOGIC_UNIT ARITHMETIC_LOGIC_UNIT_i
       (.i_CLK(i_CLK),
        .i_LD_0(i_LD_0),
        .i_LD_1(i_LD_1),
        .i_SW(i_SW),
        .o_Anodes(o_Anodes),
        .o_Cathodes(o_Cathodes),
        .o_Status(o_Status));
endmodule
