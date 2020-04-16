////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Wed Apr 15 21:14:17 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/kuro/Documents/FPGA/ElbertV2/ledTest/ipcore_dir/tmp/_cg/multiplier.ngc /home/kuro/Documents/FPGA/ElbertV2/ledTest/ipcore_dir/tmp/_cg/multiplier.v 
// Device	: 3s50atq144-4
// Input file	: /home/kuro/Documents/FPGA/ElbertV2/ledTest/ipcore_dir/tmp/_cg/multiplier.ngc
// Output file	: /home/kuro/Documents/FPGA/ElbertV2/ledTest/ipcore_dir/tmp/_cg/multiplier.v
// # of Modules	: 1
// Design Name	: multiplier
// Xilinx        : /media/kuro/HocTap/ISE/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module multiplier (
  clk, ce, sclr, p, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input sclr;
  output [31 : 0] p;
  input [15 : 0] a;
  input [15 : 0] b;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000024 ;
  wire \NLW_blk00000001/blk00000003_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000003_BCOUT<0>_UNCONNECTED ;
  MULT18X18SIO #(
    .AREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 1 ))
  \blk00000001/blk00000003  (
    .CEA(ce),
    .CEB(ce),
    .CEP(ce),
    .CLK(clk),
    .RSTA(sclr),
    .RSTB(sclr),
    .RSTP(sclr),
    .A({a[15], a[15], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .B({b[15], b[15], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCIN({\blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , 
\blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , 
\blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 , 
\blk00000001/sig00000024 , \blk00000001/sig00000024 , \blk00000001/sig00000024 }),
    .P({p[31], \NLW_blk00000001/blk00000003_P<34>_UNCONNECTED , \NLW_blk00000001/blk00000003_P<33>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000003_P<31>_UNCONNECTED , p[30], p[29], p[28], p[27], p[26], p[25], p[24], 
p[23], p[22], p[21], p[20], p[19], p[18], p[17], p[16], p[15], p[14], p[13], p[12], p[11], p[10], p[9], p[8], p[7], p[6], p[5], p[4], p[3], p[2], p[1]
, p[0]}),
    .BCOUT({\NLW_blk00000001/blk00000003_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000003_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000003_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000024 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
