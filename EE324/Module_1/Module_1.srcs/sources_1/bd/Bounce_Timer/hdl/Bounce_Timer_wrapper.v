//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Feb 26 23:06:48 2019
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target Bounce_Timer_wrapper.bd
//Design      : Bounce_Timer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Bounce_Timer_wrapper
   (i_CLK,
    i_RST,
    i_Signal,
    o_Anodes_0,
    o_Cathodes_0);
  input i_CLK;
  input i_RST;
  input i_Signal;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;

  wire i_CLK;
  wire i_RST;
  wire i_Signal;
  wire [3:0]o_Anodes_0;
  wire [6:0]o_Cathodes_0;

  Bounce_Timer Bounce_Timer_i
       (.i_CLK(i_CLK),
        .i_RST(i_RST),
        .i_Signal(i_Signal),
        .o_Anodes_0(o_Anodes_0),
        .o_Cathodes_0(o_Cathodes_0));
endmodule
