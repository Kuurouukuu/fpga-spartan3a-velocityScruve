////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: led_velocity_synthesis.v
// /___/   /\     Timestamp: Tue Apr  7 09:47:33 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim led_velocity.ngc led_velocity_synthesis.v 
// Device	: xc3s50a-4-tq144
// Input file	: led_velocity.ngc
// Output file	: /home/kuro/Documents/FPGA/ElbertV2/ledTest/netgen/synthesis/led_velocity_synthesis.v
// # of Modules	: 1
// Design Name	: led_velocity
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

module led_velocity (
  Clk, i_A, i_B, SevenSegment, Enable, o_controlPin, LED, DPSwitch, Switch
);
  input Clk;
  input i_A;
  input i_B;
  output [7 : 0] SevenSegment;
  output [2 : 0] Enable;
  output [1 : 0] o_controlPin;
  output [7 : 0] LED;
  input [7 : 0] DPSwitch;
  input [5 : 0] Switch;
  wire Clk_5_1;
  wire Clk_BUFGP_2;
  wire DPSwitch_0_IBUF_8;
  wire DPSwitch_1_IBUF_9;
  wire DPSwitch_2_IBUF_10;
  wire DPSwitch_3_IBUF_11;
  wire DPSwitch_4_IBUF_12;
  wire LED_5_OBUF_24;
  wire \Madd_r_error_unsigned_addsub0000_cy<0>_rt_26 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_105 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_108 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[1] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[3] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[4] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[5] ;
  wire \Mcount_counter_cy<10>_rt_128 ;
  wire \Mcount_counter_cy<11>_rt_130 ;
  wire \Mcount_counter_cy<12>_rt_132 ;
  wire \Mcount_counter_cy<13>_rt_134 ;
  wire \Mcount_counter_cy<14>_rt_136 ;
  wire \Mcount_counter_cy<1>_rt_138 ;
  wire \Mcount_counter_cy<2>_rt_140 ;
  wire \Mcount_counter_cy<3>_rt_142 ;
  wire \Mcount_counter_cy<4>_rt_144 ;
  wire \Mcount_counter_cy<5>_rt_146 ;
  wire \Mcount_counter_cy<6>_rt_148 ;
  wire \Mcount_counter_cy<7>_rt_150 ;
  wire \Mcount_counter_cy<8>_rt_152 ;
  wire \Mcount_counter_cy<9>_rt_154 ;
  wire \Mcount_counter_xor<15>_rt_156 ;
  wire N01;
  wire N1;
  wire N100;
  wire N102;
  wire N104;
  wire N106;
  wire N108;
  wire N11;
  wire N110;
  wire N112;
  wire N114;
  wire N116;
  wire N118;
  wire N120;
  wire N127;
  wire N147;
  wire N149;
  wire N151;
  wire N152;
  wire N154;
  wire N155;
  wire N161;
  wire N162;
  wire N168;
  wire N171;
  wire N173;
  wire N175;
  wire N177;
  wire N179;
  wire N188;
  wire N190;
  wire N191;
  wire N193;
  wire N196;
  wire N2;
  wire N213;
  wire N218;
  wire N22;
  wire N222;
  wire N224;
  wire N225;
  wire N23;
  wire N230;
  wire N231;
  wire N233;
  wire N234;
  wire N236;
  wire N238;
  wire N239;
  wire N241;
  wire N242;
  wire N244;
  wire N245;
  wire N247;
  wire N248;
  wire N25;
  wire N250;
  wire N251;
  wire N255;
  wire N256;
  wire N258;
  wire N260;
  wire N261;
  wire N263;
  wire N264;
  wire N266;
  wire N267;
  wire N272;
  wire N273;
  wire N275;
  wire N276;
  wire N278;
  wire N279;
  wire N283;
  wire N287;
  wire N289;
  wire N29;
  wire N295;
  wire N296;
  wire N298;
  wire N299;
  wire N3;
  wire N301;
  wire N302;
  wire N304;
  wire N311;
  wire N3111;
  wire N313;
  wire N314;
  wire N316;
  wire N317;
  wire N325;
  wire N326;
  wire N328;
  wire N329;
  wire N33;
  wire N331;
  wire N332;
  wire N334;
  wire N335;
  wire N337;
  wire N339;
  wire N340;
  wire N342;
  wire N343;
  wire N345;
  wire N346;
  wire N348;
  wire N35;
  wire N350;
  wire N352;
  wire N354;
  wire N356;
  wire N361;
  wire N363;
  wire N364;
  wire N366;
  wire N367;
  wire N369;
  wire N37;
  wire N371;
  wire N373;
  wire N375;
  wire N377;
  wire N379;
  wire N381;
  wire N383;
  wire N384;
  wire N386;
  wire N387;
  wire N389;
  wire N39;
  wire N390;
  wire N392;
  wire N393;
  wire N395;
  wire N396;
  wire N398;
  wire N399;
  wire N4;
  wire N401;
  wire N403;
  wire N405;
  wire N407;
  wire N408;
  wire N410;
  wire N411;
  wire N4111;
  wire N413;
  wire N414;
  wire N416;
  wire N417;
  wire N419;
  wire N420;
  wire N422;
  wire N426;
  wire N428;
  wire N43;
  wire N430;
  wire N431;
  wire N433;
  wire N434;
  wire N436;
  wire N437;
  wire N439;
  wire N440;
  wire N442;
  wire N443;
  wire N445;
  wire N446;
  wire N45;
  wire N459;
  wire N460;
  wire N467;
  wire N469;
  wire N470;
  wire N471;
  wire N472;
  wire N473;
  wire N474;
  wire N475;
  wire N476;
  wire N477;
  wire N478;
  wire N479;
  wire N480;
  wire N481;
  wire N482;
  wire N483;
  wire N484;
  wire N485;
  wire N486;
  wire N487;
  wire N488;
  wire N489;
  wire N490;
  wire N491;
  wire N492;
  wire N493;
  wire N494;
  wire N495;
  wire N496;
  wire N497;
  wire N498;
  wire N499;
  wire N500;
  wire N501;
  wire N502;
  wire N503;
  wire N504;
  wire N505;
  wire N506;
  wire N507;
  wire N508;
  wire N509;
  wire N513;
  wire N515;
  wire N523;
  wire N525;
  wire N529;
  wire N531;
  wire N533;
  wire N535;
  wire N537;
  wire N539;
  wire N541;
  wire N543;
  wire N545;
  wire N547;
  wire N549;
  wire N551;
  wire N553;
  wire N555;
  wire N557;
  wire N559;
  wire N561;
  wire N563;
  wire N564;
  wire N565;
  wire N566;
  wire N567;
  wire N568;
  wire N569;
  wire N570;
  wire N571;
  wire N572;
  wire N573;
  wire N574;
  wire N575;
  wire N576;
  wire N577;
  wire N578;
  wire N579;
  wire N580;
  wire N581;
  wire N582;
  wire N583;
  wire N584;
  wire N585;
  wire N586;
  wire N587;
  wire N588;
  wire N589;
  wire N590;
  wire N591;
  wire N592;
  wire N593;
  wire N594;
  wire N595;
  wire N596;
  wire N597;
  wire N598;
  wire N599;
  wire N600;
  wire N601;
  wire N602;
  wire N603;
  wire N604;
  wire N605;
  wire N606;
  wire N607;
  wire N608;
  wire N609;
  wire N610;
  wire N611;
  wire N612;
  wire N613;
  wire N614;
  wire N615;
  wire N616;
  wire N617;
  wire N618;
  wire N619;
  wire N620;
  wire N621;
  wire N622;
  wire N623;
  wire N624;
  wire N625;
  wire N626;
  wire N627;
  wire N628;
  wire N629;
  wire N630;
  wire N631;
  wire N632;
  wire N633;
  wire N634;
  wire N635;
  wire N636;
  wire N637;
  wire N638;
  wire N639;
  wire N640;
  wire N641;
  wire N642;
  wire N643;
  wire N644;
  wire N645;
  wire N646;
  wire N647;
  wire N648;
  wire N649;
  wire N65;
  wire N650;
  wire N651;
  wire N652;
  wire N653;
  wire N654;
  wire N655;
  wire N656;
  wire N657;
  wire N658;
  wire N659;
  wire N660;
  wire N661;
  wire N662;
  wire N663;
  wire N664;
  wire N665;
  wire N666;
  wire N667;
  wire N668;
  wire N669;
  wire N670;
  wire N671;
  wire N672;
  wire N673;
  wire N674;
  wire N675;
  wire N676;
  wire N677;
  wire N678;
  wire N679;
  wire N680;
  wire N681;
  wire N682;
  wire N683;
  wire N684;
  wire N685;
  wire N686;
  wire N687;
  wire N688;
  wire N689;
  wire N690;
  wire N691;
  wire N692;
  wire N693;
  wire N694;
  wire N695;
  wire N696;
  wire N697;
  wire N698;
  wire N699;
  wire N700;
  wire N701;
  wire N702;
  wire N703;
  wire N704;
  wire N705;
  wire N706;
  wire N707;
  wire N708;
  wire N709;
  wire N710;
  wire N711;
  wire N712;
  wire N713;
  wire N714;
  wire N715;
  wire N716;
  wire N717;
  wire N718;
  wire N719;
  wire N720;
  wire N721;
  wire N722;
  wire N723;
  wire N724;
  wire N725;
  wire N726;
  wire N727;
  wire N83;
  wire N86;
  wire N91;
  wire N93;
  wire N96;
  wire N98;
  wire \Result<0>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire Switch_0_IBUF_642;
  wire Switch_1_IBUF_643;
  wire Switch_2_IBUF_644;
  wire Switch_3_IBUF_645;
  wire Switch_4_IBUF_646;
  wire Switch_5_IBUF_647;
  wire \converter/Mcount_r_Loop_Count_cy<1>_rt_654 ;
  wire \converter/Mcount_r_Loop_Count_cy<2>_rt_656 ;
  wire \converter/Mcount_r_Loop_Count_cy<3>_rt_658 ;
  wire \converter/Mcount_r_Loop_Count_cy<4>_rt_660 ;
  wire \converter/Mcount_r_Loop_Count_cy<5>_rt_662 ;
  wire \converter/Mcount_r_Loop_Count_cy<6>_rt_664 ;
  wire \converter/Mcount_r_Loop_Count_xor<7>_rt_666 ;
  wire \converter/Mmux_w_BCD_Digit_3_667 ;
  wire \converter/Mmux_w_BCD_Digit_31_668 ;
  wire \converter/Mmux_w_BCD_Digit_32_669 ;
  wire \converter/Mmux_w_BCD_Digit_33_670 ;
  wire \converter/Mmux_w_BCD_Digit_4_671 ;
  wire \converter/Mmux_w_BCD_Digit_41_672 ;
  wire \converter/Mmux_w_BCD_Digit_42_673 ;
  wire \converter/Mmux_w_BCD_Digit_43_674 ;
  wire \converter/N01 ;
  wire \converter/N10 ;
  wire \converter/N12 ;
  wire \converter/N21 ;
  wire \converter/N4 ;
  wire \converter/N5 ;
  wire \converter/N6 ;
  wire \converter/Result<0>1 ;
  wire \converter/Result<1>1 ;
  wire \converter/Result<2>1 ;
  wire \converter/Result<3>1 ;
  wire \converter/r_BCD_0_cmp_eq0000 ;
  wire \converter/r_BCD_0_mux00001_698 ;
  wire \converter/r_BCD_10_mux00001_701 ;
  wire \converter/r_BCD_11_mux00001_703 ;
  wire \converter/r_BCD_12_mux00000_705 ;
  wire \converter/r_BCD_12_mux000019 ;
  wire \converter/r_BCD_13_mux00001_708 ;
  wire \converter/r_BCD_14_mux00001_710 ;
  wire \converter/r_BCD_15_mux00001_712 ;
  wire \converter/r_BCD_1_mux00001_713 ;
  wire \converter/r_BCD_2_mux00001_715 ;
  wire \converter/r_BCD_3_mux00001_717 ;
  wire \converter/r_BCD_4_mux00000_719 ;
  wire \converter/r_BCD_4_mux000017_720 ;
  wire \converter/r_BCD_4_mux000023 ;
  wire \converter/r_BCD_4_mux00003_722 ;
  wire \converter/r_BCD_5_mux00001_724 ;
  wire \converter/r_BCD_6_mux00001_726 ;
  wire \converter/r_BCD_7_mux00001_728 ;
  wire \converter/r_BCD_8_mux00001_730 ;
  wire \converter/r_BCD_9_mux00001_732 ;
  wire \converter/r_Binary_mux0000<0>12_746 ;
  wire \converter/r_Binary_mux0000<0>20_747 ;
  wire \converter/r_Binary_mux0000<1>12_751 ;
  wire \converter/r_Binary_mux0000<1>25_752 ;
  wire \converter/r_Binary_mux0000<2>12_753 ;
  wire \converter/r_Binary_mux0000<2>25_754 ;
  wire \converter/r_Binary_mux0000<3>12_755 ;
  wire \converter/r_Binary_mux0000<3>25_756 ;
  wire \converter/r_Binary_mux0000<4>12_757 ;
  wire \converter/r_Binary_mux0000<4>25_758 ;
  wire \converter/r_Binary_mux0000<5>12_759 ;
  wire \converter/r_Binary_mux0000<5>25_760 ;
  wire \converter/r_Binary_mux0000<6>12_761 ;
  wire \converter/r_Binary_mux0000<6>25_762 ;
  wire \converter/r_Binary_mux0000<7>12_763 ;
  wire \converter/r_Binary_mux0000<7>25_764 ;
  wire \converter/r_DV_767 ;
  wire \converter/r_Digit_Index_0_1_769 ;
  wire \converter/r_Digit_Index_and0000 ;
  wire \converter/r_SM_Main_FSM_FFd1_782 ;
  wire \converter/r_SM_Main_FSM_FFd2_783 ;
  wire \converter/r_SM_Main_FSM_FFd2-In ;
  wire \converter/r_SM_Main_FSM_FFd2-In1 ;
  wire \converter/r_SM_Main_FSM_FFd2-In11_786 ;
  wire \converter/r_SM_Main_FSM_FFd3_787 ;
  wire \converter/r_SM_Main_FSM_FFd3-In ;
  wire \converter/r_SM_Main_FSM_FFd4_789 ;
  wire \converter/r_SM_Main_FSM_FFd5_790 ;
  wire \converter/r_SM_Main_FSM_FFd6_791 ;
  wire \converter/r_SM_Main_cmp_eq000021_792 ;
  wire \converter/r_SM_Main_cmp_eq00008_793 ;
  wire \converter/r_SM_Main_cmp_eq0001 ;
  wire \debouncer0/DB_out_812 ;
  wire \debouncer0/DFF1_813 ;
  wire \debouncer0/DFF2_814 ;
  wire \debouncer0/N01 ;
  wire \debouncer0/N02 ;
  wire \debouncer0/q_next<6>5_824 ;
  wire \debouncer1/DB_out_832 ;
  wire \debouncer1/DFF1_833 ;
  wire \debouncer1/DFF2_834 ;
  wire \debouncer1/N01 ;
  wire \debouncer1/N02 ;
  wire \debouncer1/q_next<6>5_844 ;
  wire \debouncer2/DB_out_852 ;
  wire \debouncer2/DFF1_853 ;
  wire \debouncer2/DFF2_854 ;
  wire \debouncer2/N01 ;
  wire \debouncer2/N02 ;
  wire \debouncer2/q_next<6>5_864 ;
  wire \debouncer3/DB_out_872 ;
  wire \debouncer3/DFF1_873 ;
  wire \debouncer3/DFF2_874 ;
  wire \debouncer3/N01 ;
  wire \debouncer3/N02 ;
  wire \debouncer3/q_next<6>5_884 ;
  wire \debouncer4/DB_out_892 ;
  wire \debouncer4/DFF1_893 ;
  wire \debouncer4/DFF2_894 ;
  wire \debouncer4/N01 ;
  wire \debouncer4/N02 ;
  wire \debouncer4/q_next<6>5_904 ;
  wire \debouncer5/DB_out_912 ;
  wire \debouncer5/DFF1_913 ;
  wire \debouncer5/DFF2_914 ;
  wire \debouncer5/N01 ;
  wire \debouncer5/N02 ;
  wire \debouncer5/q_next<6>5_924 ;
  wire \debouncerA/DB_out_932 ;
  wire \debouncerA/DFF1_933 ;
  wire \debouncerA/DFF2_934 ;
  wire \debouncerA/N01 ;
  wire \debouncerA/N02 ;
  wire \debouncerA/q_next<6>5_944 ;
  wire \debouncerB/DB_out_952 ;
  wire \debouncerB/DFF1_953 ;
  wire \debouncerB/DFF2_954 ;
  wire \debouncerB/N01 ;
  wire \debouncerB/N02 ;
  wire \debouncerB/q_next<6>5_964 ;
  wire \decoder/Madd_o_velocity_addsub0001C ;
  wire \decoder/Madd_o_velocity_addsub0001C1_973 ;
  wire \decoder/Madd_o_velocity_addsub0001C10 ;
  wire \decoder/Madd_o_velocity_addsub0001C11_975 ;
  wire \decoder/Madd_o_velocity_addsub0001C12 ;
  wire \decoder/Madd_o_velocity_addsub0001C2 ;
  wire \decoder/Madd_o_velocity_addsub0001C3 ;
  wire \decoder/Madd_o_velocity_addsub0001C4 ;
  wire \decoder/Madd_o_velocity_addsub0001C5 ;
  wire \decoder/Madd_o_velocity_addsub0001C6 ;
  wire \decoder/Madd_o_velocity_addsub0001C7 ;
  wire \decoder/Madd_o_velocity_addsub0001C8 ;
  wire \decoder/Madd_o_velocity_addsub0001C9 ;
  wire \decoder/Madd_o_velocity_addsub0001R ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[0] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[10] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[11] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[12] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[13] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[14] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[15] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[2] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[3] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[4] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[5] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[6] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[7] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[8] ;
  wire \decoder/Madd_o_velocity_addsub0001_Madd_lut[9] ;
  wire \decoder/Madd_o_velocity_cy<13>_rt_1021 ;
  wire \decoder/Madd_o_velocity_cy<14>_rt_1023 ;
  wire \decoder/Mcount_r_Counter_cy<10>_rt_1110 ;
  wire \decoder/Mcount_r_Counter_cy<11>_rt_1112 ;
  wire \decoder/Mcount_r_Counter_cy<12>_rt_1114 ;
  wire \decoder/Mcount_r_Counter_cy<13>_rt_1116 ;
  wire \decoder/Mcount_r_Counter_cy<14>_rt_1118 ;
  wire \decoder/Mcount_r_Counter_cy<15>_rt_1120 ;
  wire \decoder/Mcount_r_Counter_cy<1>_rt_1122 ;
  wire \decoder/Mcount_r_Counter_cy<2>_rt_1124 ;
  wire \decoder/Mcount_r_Counter_cy<3>_rt_1126 ;
  wire \decoder/Mcount_r_Counter_cy<4>_rt_1128 ;
  wire \decoder/Mcount_r_Counter_cy<5>_rt_1130 ;
  wire \decoder/Mcount_r_Counter_cy<6>_rt_1132 ;
  wire \decoder/Mcount_r_Counter_cy<7>_rt_1134 ;
  wire \decoder/Mcount_r_Counter_cy<8>_rt_1136 ;
  wire \decoder/Mcount_r_Counter_cy<9>_rt_1138 ;
  wire \decoder/Mcount_r_Counter_xor<16>_rt_1140 ;
  wire \decoder/N0 ;
  wire \decoder/N111 ;
  wire \decoder/count_and0000_1207 ;
  wire \decoder/count_enable ;
  wire \decoder/count_mux0001<11>112_1228 ;
  wire \decoder/count_mux0001<11>121_1229 ;
  wire \decoder/count_mux0001<11>150_1230 ;
  wire \decoder/count_mux0001<11>151_1231 ;
  wire \decoder/count_mux0001<11>170_1232 ;
  wire \decoder/count_mux0001<11>210_1233 ;
  wire \decoder/count_mux0001<11>215_1234 ;
  wire \decoder/count_mux0001<11>24_1235 ;
  wire \decoder/count_mux0002 ;
  wire \decoder/quadA_delayed_1266 ;
  wire \decoder/quadB_delayed_1267 ;
  wire \decoder/r_Counter_161 ;
  wire \decoder/w_diff_cmp_ge0000 ;
  wire decoder_not0000;
  wire i_A_IBUF_1352;
  wire i_B_IBUF_1354;
  wire \pidController/a_mux0000<0>13_1374 ;
  wire \pidController/a_mux0000<0>5_1375 ;
  wire \pidController/a_mux0000<0>8_1376 ;
  wire \pidController/a_mux0000<10>10_1378 ;
  wire \pidController/a_mux0000<10>18 ;
  wire \pidController/a_mux0000<10>7_1380 ;
  wire \pidController/a_mux0000<11>10_1382 ;
  wire \pidController/a_mux0000<11>7_1383 ;
  wire \pidController/a_mux0000<12>10_1385 ;
  wire \pidController/a_mux0000<12>7_1386 ;
  wire \pidController/a_mux0000<13>10_1388 ;
  wire \pidController/a_mux0000<13>7_1389 ;
  wire \pidController/a_mux0000<14>10_1391 ;
  wire \pidController/a_mux0000<14>7_1392 ;
  wire \pidController/a_mux0000<15>10_1394 ;
  wire \pidController/a_mux0000<15>7_1395 ;
  wire \pidController/a_mux0000<1>20_1397 ;
  wire \pidController/a_mux0000<1>7_1398 ;
  wire \pidController/a_mux0000<2>13_1400 ;
  wire \pidController/a_mux0000<2>7_1401 ;
  wire \pidController/a_mux0000<3>13_1403 ;
  wire \pidController/a_mux0000<3>7_1404 ;
  wire \pidController/a_mux0000<4>13_1406 ;
  wire \pidController/a_mux0000<4>7_1407 ;
  wire \pidController/a_mux0000<5>7_1409 ;
  wire \pidController/a_mux0000<6>10_1411 ;
  wire \pidController/a_mux0000<6>7_1412 ;
  wire \pidController/a_mux0000<7>10_1414 ;
  wire \pidController/a_mux0000<7>7_1415 ;
  wire \pidController/a_mux0000<8>10_1417 ;
  wire \pidController/a_mux0000<8>7_1418 ;
  wire \pidController/a_mux0000<9>10_1420 ;
  wire \pidController/a_mux0000<9>7_1421 ;
  wire \pidController/adder_32bit_0/G1[0] ;
  wire \pidController/adder_32bit_0/G1[2] ;
  wire \pidController/adder_32bit_0/G4<6>16_1427 ;
  wire \pidController/adder_32bit_0/G4<6>48_1428 ;
  wire \pidController/adder_32bit_0/G4<6>51_1429 ;
  wire \pidController/adder_32bit_0/G4<7>10_1430 ;
  wire \pidController/adder_32bit_0/G4<7>59_1431 ;
  wire \pidController/adder_32bit_0/N19 ;
  wire \pidController/adder_32bit_0/N20 ;
  wire \pidController/adder_32bit_0/N25 ;
  wire \pidController/adder_32bit_0/N26 ;
  wire \pidController/adder_32bit_0/N33 ;
  wire \pidController/adder_32bit_0/N4 ;
  wire \pidController/adder_32bit_0/P0[10] ;
  wire \pidController/adder_32bit_0/P0[12] ;
  wire \pidController/adder_32bit_0/P0[14] ;
  wire \pidController/adder_32bit_0/P0[4] ;
  wire \pidController/adder_32bit_0/P0[6] ;
  wire \pidController/adder_32bit_0/P0[8] ;
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1445 ;
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1446 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1448 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1449 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ;
  wire \pidController/cout_1452 ;
  wire \pidController/cout_mux0000 ;
  wire \pidController/err_0_0_1454 ;
  wire \pidController/err_0_1_1455 ;
  wire \pidController/err_0_10_1456 ;
  wire \pidController/err_0_11_1457 ;
  wire \pidController/err_0_12_1458 ;
  wire \pidController/err_0_13_1459 ;
  wire \pidController/err_0_14_1460 ;
  wire \pidController/err_0_15_1461 ;
  wire \pidController/err_0_2_1462 ;
  wire \pidController/err_0_3_1463 ;
  wire \pidController/err_0_4_1464 ;
  wire \pidController/err_0_5_1465 ;
  wire \pidController/err_0_6_1466 ;
  wire \pidController/err_0_7_1467 ;
  wire \pidController/err_0_8_1468 ;
  wire \pidController/err_0_9_1469 ;
  wire \pidController/err_1_0_1470 ;
  wire \pidController/err_1_1_1471 ;
  wire \pidController/err_1_10_1472 ;
  wire \pidController/err_1_11_1473 ;
  wire \pidController/err_1_12_1474 ;
  wire \pidController/err_1_13_1475 ;
  wire \pidController/err_1_14_1476 ;
  wire \pidController/err_1_15_1477 ;
  wire \pidController/err_1_2_1478 ;
  wire \pidController/err_1_3_1479 ;
  wire \pidController/err_1_4_1480 ;
  wire \pidController/err_1_5_1481 ;
  wire \pidController/err_1_6_1482 ;
  wire \pidController/err_1_7_1483 ;
  wire \pidController/err_1_8_1484 ;
  wire \pidController/err_1_9_1485 ;
  wire \pidController/multiplier_16x16bit_pipelined/N10 ;
  wire \pidController/multiplier_16x16bit_pipelined/N12 ;
  wire \pidController/multiplier_16x16bit_pipelined/N13 ;
  wire \pidController/multiplier_16x16bit_pipelined/N14 ;
  wire \pidController/multiplier_16x16bit_pipelined/N15 ;
  wire \pidController/multiplier_16x16bit_pipelined/N2 ;
  wire \pidController/multiplier_16x16bit_pipelined/N4 ;
  wire \pidController/multiplier_16x16bit_pipelined/N5 ;
  wire \pidController/multiplier_16x16bit_pipelined/N6 ;
  wire \pidController/multiplier_16x16bit_pipelined/N7 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1554 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1555 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1556 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1557 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[6] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go110 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1572 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1573 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w1 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[0] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[1] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[2] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[4] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[5] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[6] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_0_w15[7] ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1647 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1648 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1650 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1651 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1654 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1655 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1657 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1658 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1693 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1696 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1698 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w2 ;
  wire \pidController/multiplier_16x16bit_pipelined/md_1_1_1749 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_1_1_1766 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_1_2_1767 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_2_1_1769 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_3_2_1772 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_7_1_1778 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] ;
  wire \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 ;
  wire \pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ;
  wire \pidController/p_mux0000<0>11_1870 ;
  wire \pidController/p_mux0000<0>31_1871 ;
  wire \pidController/p_mux0000<10>13_1873 ;
  wire \pidController/p_mux0000<10>20 ;
  wire \pidController/p_mux0000<10>7_1875 ;
  wire \pidController/p_mux0000<11>7_1877 ;
  wire \pidController/p_mux0000<11>74_1878 ;
  wire \pidController/p_mux0000<12>13_1880 ;
  wire \pidController/p_mux0000<12>7_1881 ;
  wire \pidController/p_mux0000<13>7_1883 ;
  wire \pidController/p_mux0000<14>13_1885 ;
  wire \pidController/p_mux0000<14>7_1886 ;
  wire \pidController/p_mux0000<15>7_1888 ;
  wire \pidController/p_mux0000<1>7_1890 ;
  wire \pidController/p_mux0000<1>8_1891 ;
  wire \pidController/p_mux0000<2>21_1893 ;
  wire \pidController/p_mux0000<2>42_1894 ;
  wire \pidController/p_mux0000<2>7_1895 ;
  wire \pidController/p_mux0000<2>8_1896 ;
  wire \pidController/p_mux0000<3>21_1898 ;
  wire \pidController/p_mux0000<3>7_1899 ;
  wire \pidController/p_mux0000<3>8_1900 ;
  wire \pidController/p_mux0000<3>81_1901 ;
  wire \pidController/p_mux0000<4>21_1903 ;
  wire \pidController/p_mux0000<4>7_1904 ;
  wire \pidController/p_mux0000<4>8_1905 ;
  wire \pidController/p_mux0000<4>83_1906 ;
  wire \pidController/p_mux0000<5>21_1908 ;
  wire \pidController/p_mux0000<5>7_1909 ;
  wire \pidController/p_mux0000<5>8_1910 ;
  wire \pidController/p_mux0000<6>21_1912 ;
  wire \pidController/p_mux0000<6>7_1913 ;
  wire \pidController/p_mux0000<6>8_1914 ;
  wire \pidController/p_mux0000<6>83_1915 ;
  wire \pidController/p_mux0000<7>21_1917 ;
  wire \pidController/p_mux0000<7>7_1918 ;
  wire \pidController/p_mux0000<7>8_1919 ;
  wire \pidController/p_mux0000<8>13_1921 ;
  wire \pidController/p_mux0000<8>7_1922 ;
  wire \pidController/p_mux0000<9>7_1924 ;
  wire \pidController/p_or0000_1925 ;
  wire \pidController/start_1942 ;
  wire \pidController/start_mux0000 ;
  wire \pidController/state_1_FSM_FFd1_1944 ;
  wire \pidController/state_1_FSM_FFd10_1945 ;
  wire \pidController/state_1_FSM_FFd2_1946 ;
  wire \pidController/state_1_FSM_FFd3_1947 ;
  wire \pidController/state_1_FSM_FFd4_1948 ;
  wire \pidController/state_1_FSM_FFd5_1949 ;
  wire \pidController/state_1_FSM_FFd6_1950 ;
  wire \pidController/state_1_FSM_FFd7_1951 ;
  wire \pidController/state_1_FSM_FFd8_1952 ;
  wire \pidController/state_1_FSM_FFd9_1953 ;
  wire \pwmGenerator/Mcount_rampa_cy<10>_rt_2020 ;
  wire \pwmGenerator/Mcount_rampa_cy<11>_rt_2022 ;
  wire \pwmGenerator/Mcount_rampa_cy<12>_rt_2024 ;
  wire \pwmGenerator/Mcount_rampa_cy<13>_rt_2026 ;
  wire \pwmGenerator/Mcount_rampa_cy<14>_rt_2028 ;
  wire \pwmGenerator/Mcount_rampa_cy<1>_rt_2030 ;
  wire \pwmGenerator/Mcount_rampa_cy<2>_rt_2032 ;
  wire \pwmGenerator/Mcount_rampa_cy<3>_rt_2034 ;
  wire \pwmGenerator/Mcount_rampa_cy<4>_rt_2036 ;
  wire \pwmGenerator/Mcount_rampa_cy<5>_rt_2038 ;
  wire \pwmGenerator/Mcount_rampa_cy<6>_rt_2040 ;
  wire \pwmGenerator/Mcount_rampa_cy<7>_rt_2042 ;
  wire \pwmGenerator/Mcount_rampa_cy<8>_rt_2044 ;
  wire \pwmGenerator/Mcount_rampa_cy<9>_rt_2046 ;
  wire \pwmGenerator/Mcount_rampa_xor<15>_rt_2048 ;
  wire \pwmGenerator/pwm_out_2049 ;
  wire \r_Enable_mux0000<0>1 ;
  wire \r_Enable_mux0000<1>1 ;
  wire \r_Enable_mux0000<2>1 ;
  wire \r_LED_mux0000<6>11 ;
  wire \r_SevenSegment_mux0000<0>11_2085 ;
  wire \r_SevenSegment_mux0000<0>24_2086 ;
  wire \r_SevenSegment_mux0000<0>36_2087 ;
  wire \r_SevenSegment_mux0000<0>48_2088 ;
  wire \r_SevenSegment_mux0000<0>5_2089 ;
  wire \r_SevenSegment_mux0000<1>114_2090 ;
  wire \r_SevenSegment_mux0000<1>23_2091 ;
  wire \r_SevenSegment_mux0000<1>47_2092 ;
  wire \r_SevenSegment_mux0000<1>86_2093 ;
  wire \r_SevenSegment_mux0000<1>98_2094 ;
  wire \r_SevenSegment_mux0000<2>22_2095 ;
  wire \r_SevenSegment_mux0000<2>45_2096 ;
  wire \r_SevenSegment_mux0000<2>58_2097 ;
  wire \r_SevenSegment_mux0000<2>86 ;
  wire \r_SevenSegment_mux0000<3>13_2099 ;
  wire \r_SevenSegment_mux0000<3>20 ;
  wire \r_SevenSegment_mux0000<3>211 ;
  wire \r_SevenSegment_mux0000<3>224_2102 ;
  wire \r_SevenSegment_mux0000<3>25_2103 ;
  wire \r_SevenSegment_mux0000<3>310_2104 ;
  wire \r_SevenSegment_mux0000<3>321_2105 ;
  wire \r_SevenSegment_mux0000<3>341_2106 ;
  wire \r_SevenSegment_mux0000<3>4_2107 ;
  wire \r_SevenSegment_mux0000<3>411_2108 ;
  wire \r_SevenSegment_mux0000<3>424_2109 ;
  wire \r_SevenSegment_mux0000<3>45_2110 ;
  wire \r_SevenSegment_mux0000<4>10_2111 ;
  wire \r_SevenSegment_mux0000<4>28_2112 ;
  wire \r_SevenSegment_mux0000<4>37_2113 ;
  wire \r_SevenSegment_mux0000<4>81_2114 ;
  wire \r_SevenSegment_mux0000<5>141_2115 ;
  wire \r_SevenSegment_mux0000<5>25_2116 ;
  wire \r_SevenSegment_mux0000<5>63_2117 ;
  wire \r_SevenSegment_mux0000<5>76_2118 ;
  wire \r_SevenSegment_mux0000<6>19_2119 ;
  wire \r_SevenSegment_mux0000<6>32 ;
  wire \r_SevenSegment_mux0000<6>8_2121 ;
  wire \r_SevenSegment_mux0000<7>1 ;
  wire r_controllerPin_or0000;
  wire r_ki_0__and0000;
  wire r_ki_0__and0001;
  wire r_ki_10__and0000;
  wire r_ki_10__and0001;
  wire r_ki_11__and0000;
  wire r_ki_11__and0001;
  wire r_ki_12__and0000;
  wire r_ki_12__and0001;
  wire r_ki_13__and0000;
  wire r_ki_13__and0001;
  wire r_ki_14__and0000;
  wire r_ki_14__and0001;
  wire r_ki_15__and0000;
  wire r_ki_15__and0001;
  wire r_ki_1__and0000;
  wire r_ki_1__and0001;
  wire r_ki_2__and0000;
  wire r_ki_2__and0001;
  wire r_ki_3__and0000;
  wire r_ki_3__and0001;
  wire r_ki_4__and0000;
  wire r_ki_4__and0001;
  wire r_ki_5__and0000;
  wire r_ki_5__and0001;
  wire r_ki_6__and0000;
  wire r_ki_6__and0001;
  wire r_ki_7__and0000;
  wire r_ki_7__and0001;
  wire r_ki_8__and0000;
  wire r_ki_8__and0001;
  wire r_ki_9__and0000;
  wire r_ki_9__and0001;
  wire r_kp_0__and0000;
  wire r_kp_0__and0001;
  wire r_kp_10__and0000;
  wire r_kp_10__and0001;
  wire r_kp_11__and0000;
  wire r_kp_11__and0001;
  wire r_kp_12__and0000;
  wire r_kp_12__and0001;
  wire r_kp_13__and0000;
  wire r_kp_13__and0001;
  wire r_kp_14__and0000;
  wire r_kp_14__and0001;
  wire r_kp_15__and0000;
  wire r_kp_15__and0001;
  wire r_kp_1__and0000;
  wire r_kp_1__and0001;
  wire r_kp_2__and0000;
  wire r_kp_2__and0001;
  wire r_kp_3__and0000;
  wire r_kp_3__and0001;
  wire r_kp_4__and0000;
  wire r_kp_4__and0001;
  wire r_kp_5__and0000;
  wire r_kp_5__and0001;
  wire r_kp_6__and0000;
  wire r_kp_6__and0001;
  wire r_kp_7__and0000;
  wire r_kp_7__and0001;
  wire r_kp_8__and0000;
  wire r_kp_8__and0001;
  wire r_kp_9__and0000;
  wire r_kp_9__and0001;
  wire s_Main_FSM_FFd1_2330;
  wire s_Main_FSM_FFd2_2331;
  wire s_Main_FSM_FFd3_2332;
  wire s_Main_FSM_FFd4_2333;
  wire \w_setpoint[0] ;
  wire \w_setpoint[1] ;
  wire \w_setpoint[2] ;
  wire \w_setpoint[4] ;
  wire \w_setpoint[5] ;
  wire \w_setpoint[6] ;
  wire \w_setpoint[7] ;
  wire [15 : 0] Madd_r_error_unsigned_addsub0000_cy;
  wire [14 : 0] Maddsub_r_ki_mux0000_cy;
  wire [15 : 0] Maddsub_r_ki_mux0000_lut;
  wire [14 : 0] Maddsub_r_kp_mux0000_cy;
  wire [15 : 0] Maddsub_r_kp_mux0000_lut;
  wire [5 : 0] Mcompar_r_controllerPin_cmp_lt0000_cy;
  wire [4 : 0] Mcompar_r_controllerPin_cmp_lt0001_cy;
  wire [4 : 0] Mcompar_r_controllerPin_cmp_lt0001_lut;
  wire [14 : 0] Mcount_counter_cy;
  wire [0 : 0] Mcount_counter_lut;
  wire [14 : 0] Msub_w_error_cy;
  wire [15 : 0] Msub_w_error_lut;
  wire [15 : 0] Result;
  wire [1 : 0] \converter/Madd_add0000_addsub0000_cy ;
  wire [3 : 2] \converter/Madd_add0000_addsub0000_lut ;
  wire [6 : 0] \converter/Mcount_r_Loop_Count_cy ;
  wire [0 : 0] \converter/Mcount_r_Loop_Count_lut ;
  wire [7 : 0] \converter/Result ;
  wire [2 : 1] \converter/add0000_addsub0000 ;
  wire [15 : 0] \converter/r_BCD ;
  wire [12 : 0] \converter/r_Binary ;
  wire [12 : 8] \converter/r_Binary_mux0000 ;
  wire [3 : 0] \converter/r_Digit_Index ;
  wire [7 : 0] \converter/r_Loop_Count ;
  wire [1 : 1] \converter/w_BCD_Digit ;
  wire [15 : 0] counter;
  wire [6 : 0] \debouncer0/q_next ;
  wire [6 : 0] \debouncer0/q_reg ;
  wire [6 : 0] \debouncer1/q_next ;
  wire [6 : 0] \debouncer1/q_reg ;
  wire [6 : 0] \debouncer2/q_next ;
  wire [6 : 0] \debouncer2/q_reg ;
  wire [6 : 0] \debouncer3/q_next ;
  wire [6 : 0] \debouncer3/q_reg ;
  wire [6 : 0] \debouncer4/q_next ;
  wire [6 : 0] \debouncer4/q_reg ;
  wire [6 : 0] \debouncer5/q_next ;
  wire [6 : 0] \debouncer5/q_reg ;
  wire [6 : 0] \debouncerA/q_next ;
  wire [6 : 0] \debouncerA/q_reg ;
  wire [6 : 0] \debouncerB/q_next ;
  wire [6 : 0] \debouncerB/q_reg ;
  wire [14 : 0] \decoder/Madd_o_velocity_addsub0001_Madd_cy ;
  wire [14 : 0] \decoder/Madd_o_velocity_cy ;
  wire [12 : 0] \decoder/Madd_o_velocity_lut ;
  wire [14 : 0] \decoder/Maddsub_count_mux0000_cy ;
  wire [15 : 0] \decoder/Maddsub_count_mux0000_lut ;
  wire [14 : 0] \decoder/Mcompar_w_diff_cmp_ge0000_cy ;
  wire [15 : 0] \decoder/Mcompar_w_diff_cmp_ge0000_lut ;
  wire [15 : 0] \decoder/Mcount_r_Counter_cy ;
  wire [0 : 0] \decoder/Mcount_r_Counter_lut ;
  wire [14 : 0] \decoder/Msub_w_diff_cy ;
  wire [15 : 0] \decoder/Msub_w_diff_lut ;
  wire [16 : 0] \decoder/Result ;
  wire [15 : 0] \decoder/count ;
  wire [15 : 0] \decoder/count_mux0000 ;
  wire [15 : 0] \decoder/count_mux0001 ;
  wire [15 : 0] \decoder/o_velocity_addsub0001 ;
  wire [16 : 0] \decoder/r_Counter ;
  wire [15 : 0] \decoder/r_countPrev ;
  wire [15 : 0] \decoder/r_count ;
  wire [15 : 0] \decoder/w_diff ;
  wire [14 : 0] \decoder/w_diff_mux0000 ;
  wire [15 : 0] \pidController/a ;
  wire [15 : 0] \pidController/a_mux0000 ;
  wire [1 : 1] \pidController/adder_32bit_0/G2 ;
  wire [3 : 2] \pidController/adder_32bit_0/G3 ;
  wire [2 : 2] \pidController/adder_32bit_0/P1 ;
  wire [15 : 0] \pidController/kpd ;
  wire [15 : 0] \pidController/md ;
  wire [2 : 1] \pidController/md_index ;
  wire [1 : 0] \pidController/md_index_mux0000 ;
  wire [15 : 0] \pidController/mr ;
  wire [1 : 1] \pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 ;
  wire [3 : 2] \pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 ;
  wire [6 : 6] \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4 ;
  wire [0 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w0 ;
  wire [5 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w10 ;
  wire [5 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w11 ;
  wire [6 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w12 ;
  wire [6 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w13 ;
  wire [7 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w14 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w2 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w3 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w4 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w5 ;
  wire [3 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w6 ;
  wire [3 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w7 ;
  wire [4 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w8 ;
  wire [4 : 0] \pidController/multiplier_16x16bit_pipelined/layer_0_w9 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w10 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w11 ;
  wire [3 : 1] \pidController/multiplier_16x16bit_pipelined/layer_1_w12 ;
  wire [3 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w13 ;
  wire [3 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w14 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w15 ;
  wire [0 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w4 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w5 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w6 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w7 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_1_w8 ;
  wire [2 : 1] \pidController/multiplier_16x16bit_pipelined/layer_1_w9 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w10 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w11 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w12 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w13 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w14 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w15 ;
  wire [0 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w7 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w8 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_2_w9 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w11 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w12 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w13 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w14 ;
  wire [1 : 1] \pidController/multiplier_16x16bit_pipelined/layer_4_w15 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w3 ;
  wire [1 : 1] \pidController/multiplier_16x16bit_pipelined/layer_4_w4 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w5 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w6 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w7 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/layer_4_w9 ;
  wire [15 : 0] \pidController/multiplier_16x16bit_pipelined/md ;
  wire [15 : 0] \pidController/multiplier_16x16bit_pipelined/mr ;
  wire [7 : 1] \pidController/multiplier_16x16bit_pipelined/negation ;
  wire [12 : 1] \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd ;
  wire [4 : 1] \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd ;
  wire [4 : 1] \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 ;
  wire [3 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 ;
  wire [2 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 ;
  wire [1 : 0] \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 ;
  wire [15 : 0] \pidController/p ;
  wire [15 : 0] \pidController/p_mux0000 ;
  wire [15 : 0] \pidController/sigma ;
  wire [15 : 0] \pidController/sum ;
  wire [15 : 0] \pidController/un ;
  wire [15 : 0] \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy ;
  wire [15 : 0] \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut ;
  wire [14 : 0] \pwmGenerator/Mcount_rampa_cy ;
  wire [0 : 0] \pwmGenerator/Mcount_rampa_lut ;
  wire [15 : 0] \pwmGenerator/rampa ;
  wire [2 : 0] r_Enable;
  wire [2 : 0] r_LED;
  wire [6 : 6] r_LED_mux0000;
  wire [7 : 0] r_SevenSegment;
  wire [1 : 1] r_controllerPin;
  wire [11 : 0] r_displayValue;
  wire [16 : 0] r_error_unsigned;
  wire [16 : 0] r_error_unsigned_addsub0000;
  wire [16 : 0] r_error_unsigned_mux0000;
  wire [14 : 1] r_error_unsigned_not0000;
  wire [15 : 0] r_ki;
  wire [15 : 0] r_ki_mux0000;
  wire [15 : 0] r_kp;
  wire [15 : 0] r_kp_mux0000;
  wire [15 : 0] w_error;
  wire [15 : 0] w_velocity;
  GND   XST_GND (
    .G(LED_5_OBUF_24)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   r_error_unsigned_0 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[0]),
    .Q(r_error_unsigned[0])
  );
  FD   r_error_unsigned_1 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[1]),
    .Q(r_error_unsigned[1])
  );
  FD   r_error_unsigned_2 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[2]),
    .Q(r_error_unsigned[2])
  );
  FD   r_error_unsigned_3 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[3]),
    .Q(r_error_unsigned[3])
  );
  FD   r_error_unsigned_4 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[4]),
    .Q(r_error_unsigned[4])
  );
  FD   r_error_unsigned_5 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[5]),
    .Q(r_error_unsigned[5])
  );
  FD   r_error_unsigned_6 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[6]),
    .Q(r_error_unsigned[6])
  );
  FD   r_error_unsigned_7 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[7]),
    .Q(r_error_unsigned[7])
  );
  FD   r_error_unsigned_8 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[8]),
    .Q(r_error_unsigned[8])
  );
  FD   r_error_unsigned_9 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[9]),
    .Q(r_error_unsigned[9])
  );
  FD   r_error_unsigned_10 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[10]),
    .Q(r_error_unsigned[10])
  );
  FD   r_error_unsigned_11 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[11]),
    .Q(r_error_unsigned[11])
  );
  FD   r_error_unsigned_12 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[12]),
    .Q(r_error_unsigned[12])
  );
  FD   r_error_unsigned_13 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[13]),
    .Q(r_error_unsigned[13])
  );
  FD   r_error_unsigned_14 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[14]),
    .Q(r_error_unsigned[14])
  );
  FD   r_error_unsigned_15 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[15]),
    .Q(r_error_unsigned[15])
  );
  FD   r_error_unsigned_16 (
    .C(Clk_BUFGP_2),
    .D(r_error_unsigned_mux0000[16]),
    .Q(r_error_unsigned[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_0 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [0]),
    .Q(r_displayValue[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_1 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [1]),
    .Q(r_displayValue[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_2 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [2]),
    .Q(r_displayValue[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_3 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [3]),
    .Q(r_displayValue[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_4 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [4]),
    .Q(r_displayValue[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_5 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [5]),
    .Q(r_displayValue[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_6 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [6]),
    .Q(r_displayValue[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_7 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [7]),
    .Q(r_displayValue[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_8 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [8]),
    .Q(r_displayValue[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_9 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [9]),
    .Q(r_displayValue[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_10 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [10]),
    .Q(r_displayValue[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  r_displayValue_11 (
    .C(\converter/r_DV_767 ),
    .CE(\debouncer1/DB_out_832 ),
    .D(\converter/r_BCD [11]),
    .Q(r_displayValue[11])
  );
  FD   Clk_5 (
    .C(Clk_BUFGP_2),
    .D(counter[15]),
    .Q(Clk_5_1)
  );
  FD   r_LED_0 (
    .C(Clk_BUFGP_2),
    .D(N01),
    .Q(r_LED[0])
  );
  FDR   r_controllerPin_1 (
    .C(Clk_BUFGP_2),
    .D(\pwmGenerator/pwm_out_2049 ),
    .R(r_controllerPin_or0000),
    .Q(r_controllerPin[1])
  );
  FD #(
    .INIT ( 1'b1 ))
  s_Main_FSM_FFd4 (
    .C(Clk_5_1),
    .D(LED_5_OBUF_24),
    .Q(s_Main_FSM_FFd4_2333)
  );
  FD #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd3 (
    .C(Clk_5_1),
    .D(s_Main_FSM_FFd2_2331),
    .Q(s_Main_FSM_FFd3_2332)
  );
  FD #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd1 (
    .C(Clk_5_1),
    .D(s_Main_FSM_FFd3_2332),
    .Q(s_Main_FSM_FFd1_2330)
  );
  FD   counter_0 (
    .C(Clk_BUFGP_2),
    .D(Result[0]),
    .Q(counter[0])
  );
  FD   counter_1 (
    .C(Clk_BUFGP_2),
    .D(Result[1]),
    .Q(counter[1])
  );
  FD   counter_2 (
    .C(Clk_BUFGP_2),
    .D(Result[2]),
    .Q(counter[2])
  );
  FD   counter_3 (
    .C(Clk_BUFGP_2),
    .D(Result[3]),
    .Q(counter[3])
  );
  FD   counter_4 (
    .C(Clk_BUFGP_2),
    .D(Result[4]),
    .Q(counter[4])
  );
  FD   counter_5 (
    .C(Clk_BUFGP_2),
    .D(Result[5]),
    .Q(counter[5])
  );
  FD   counter_6 (
    .C(Clk_BUFGP_2),
    .D(Result[6]),
    .Q(counter[6])
  );
  FD   counter_7 (
    .C(Clk_BUFGP_2),
    .D(Result[7]),
    .Q(counter[7])
  );
  FD   counter_8 (
    .C(Clk_BUFGP_2),
    .D(Result[8]),
    .Q(counter[8])
  );
  FD   counter_9 (
    .C(Clk_BUFGP_2),
    .D(Result[9]),
    .Q(counter[9])
  );
  FD   counter_10 (
    .C(Clk_BUFGP_2),
    .D(Result[10]),
    .Q(counter[10])
  );
  FD   counter_11 (
    .C(Clk_BUFGP_2),
    .D(Result[11]),
    .Q(counter[11])
  );
  FD   counter_12 (
    .C(Clk_BUFGP_2),
    .D(Result[12]),
    .Q(counter[12])
  );
  FD   counter_13 (
    .C(Clk_BUFGP_2),
    .D(Result[13]),
    .Q(counter[13])
  );
  FD   counter_14 (
    .C(Clk_BUFGP_2),
    .D(Result[14]),
    .Q(counter[14])
  );
  FD   counter_15 (
    .C(Clk_BUFGP_2),
    .D(Result[15]),
    .Q(counter[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_0  (
    .C(Clk_BUFGP_2),
    .D(\Result<0>1 ),
    .Q(\pwmGenerator/rampa [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_1  (
    .C(Clk_BUFGP_2),
    .D(\Result<1>1 ),
    .Q(\pwmGenerator/rampa [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_2  (
    .C(Clk_BUFGP_2),
    .D(\Result<2>1 ),
    .Q(\pwmGenerator/rampa [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_3  (
    .C(Clk_BUFGP_2),
    .D(\Result<3>1 ),
    .Q(\pwmGenerator/rampa [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_4  (
    .C(Clk_BUFGP_2),
    .D(\Result<4>1 ),
    .Q(\pwmGenerator/rampa [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_5  (
    .C(Clk_BUFGP_2),
    .D(\Result<5>1 ),
    .Q(\pwmGenerator/rampa [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_6  (
    .C(Clk_BUFGP_2),
    .D(\Result<6>1 ),
    .Q(\pwmGenerator/rampa [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_7  (
    .C(Clk_BUFGP_2),
    .D(\Result<7>1 ),
    .Q(\pwmGenerator/rampa [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_8  (
    .C(Clk_BUFGP_2),
    .D(\Result<8>1 ),
    .Q(\pwmGenerator/rampa [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_9  (
    .C(Clk_BUFGP_2),
    .D(\Result<9>1 ),
    .Q(\pwmGenerator/rampa [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_10  (
    .C(Clk_BUFGP_2),
    .D(\Result<10>1 ),
    .Q(\pwmGenerator/rampa [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_11  (
    .C(Clk_BUFGP_2),
    .D(\Result<11>1 ),
    .Q(\pwmGenerator/rampa [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_12  (
    .C(Clk_BUFGP_2),
    .D(\Result<12>1 ),
    .Q(\pwmGenerator/rampa [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_13  (
    .C(Clk_BUFGP_2),
    .D(\Result<13>1 ),
    .Q(\pwmGenerator/rampa [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_14  (
    .C(Clk_BUFGP_2),
    .D(\Result<14>1 ),
    .Q(\pwmGenerator/rampa [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_15  (
    .C(Clk_BUFGP_2),
    .D(\Result<15>1 ),
    .Q(\pwmGenerator/rampa [15])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(N1),
    .S(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_26 ),
    .O(Madd_r_error_unsigned_addsub0000_cy[0])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_26 ),
    .O(r_error_unsigned_addsub0000[0])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<1>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[0]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[1]),
    .O(Madd_r_error_unsigned_addsub0000_cy[1])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<1>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[0]),
    .LI(r_error_unsigned_not0000[1]),
    .O(r_error_unsigned_addsub0000[1])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<2>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[1]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[2]),
    .O(Madd_r_error_unsigned_addsub0000_cy[2])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<2>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[1]),
    .LI(r_error_unsigned_not0000[2]),
    .O(r_error_unsigned_addsub0000[2])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<3>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[2]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[3]),
    .O(Madd_r_error_unsigned_addsub0000_cy[3])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<3>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[2]),
    .LI(r_error_unsigned_not0000[3]),
    .O(r_error_unsigned_addsub0000[3])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<4>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[3]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[4]),
    .O(Madd_r_error_unsigned_addsub0000_cy[4])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<4>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[3]),
    .LI(r_error_unsigned_not0000[4]),
    .O(r_error_unsigned_addsub0000[4])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<5>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[4]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[5]),
    .O(Madd_r_error_unsigned_addsub0000_cy[5])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<5>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[4]),
    .LI(r_error_unsigned_not0000[5]),
    .O(r_error_unsigned_addsub0000[5])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<6>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[5]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[6]),
    .O(Madd_r_error_unsigned_addsub0000_cy[6])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<6>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[5]),
    .LI(r_error_unsigned_not0000[6]),
    .O(r_error_unsigned_addsub0000[6])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<7>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[6]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[7]),
    .O(Madd_r_error_unsigned_addsub0000_cy[7])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<7>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[6]),
    .LI(r_error_unsigned_not0000[7]),
    .O(r_error_unsigned_addsub0000[7])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<8>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[7]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[8]),
    .O(Madd_r_error_unsigned_addsub0000_cy[8])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<8>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[7]),
    .LI(r_error_unsigned_not0000[8]),
    .O(r_error_unsigned_addsub0000[8])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<9>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[8]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[9]),
    .O(Madd_r_error_unsigned_addsub0000_cy[9])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<9>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[8]),
    .LI(r_error_unsigned_not0000[9]),
    .O(r_error_unsigned_addsub0000[9])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<10>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[9]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[10]),
    .O(Madd_r_error_unsigned_addsub0000_cy[10])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<10>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[9]),
    .LI(r_error_unsigned_not0000[10]),
    .O(r_error_unsigned_addsub0000[10])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<11>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[10]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[11]),
    .O(Madd_r_error_unsigned_addsub0000_cy[11])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<11>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[10]),
    .LI(r_error_unsigned_not0000[11]),
    .O(r_error_unsigned_addsub0000[11])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<12>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[11]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[12]),
    .O(Madd_r_error_unsigned_addsub0000_cy[12])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<12>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[11]),
    .LI(r_error_unsigned_not0000[12]),
    .O(r_error_unsigned_addsub0000[12])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<13>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[12]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[13]),
    .O(Madd_r_error_unsigned_addsub0000_cy[13])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<13>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[12]),
    .LI(r_error_unsigned_not0000[13]),
    .O(r_error_unsigned_addsub0000[13])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<14>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[13]),
    .DI(LED_5_OBUF_24),
    .S(r_error_unsigned_not0000[14]),
    .O(Madd_r_error_unsigned_addsub0000_cy[14])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<14>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[13]),
    .LI(r_error_unsigned_not0000[14]),
    .O(r_error_unsigned_addsub0000[14])
  );
  MUXCY   \Madd_r_error_unsigned_addsub0000_cy<15>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[14]),
    .DI(LED_5_OBUF_24),
    .S(r_LED_mux0000[6]),
    .O(Madd_r_error_unsigned_addsub0000_cy[15])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<15>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[14]),
    .LI(r_LED_mux0000[6]),
    .O(r_error_unsigned_addsub0000[15])
  );
  XORCY   \Madd_r_error_unsigned_addsub0000_xor<16>  (
    .CI(Madd_r_error_unsigned_addsub0000_cy[15]),
    .LI(N1),
    .O(r_error_unsigned_addsub0000[16])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<0>  (
    .I0(r_error_unsigned[0]),
    .I1(r_error_unsigned[1]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[0])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0001_cy<0>  (
    .CI(N1),
    .DI(LED_5_OBUF_24),
    .S(Mcompar_r_controllerPin_cmp_lt0001_lut[0]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<1>  (
    .I0(r_error_unsigned[2]),
    .I1(r_error_unsigned[3]),
    .I2(r_error_unsigned[4]),
    .I3(r_error_unsigned[5]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[1])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0001_cy<1>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0001_cy[0]),
    .DI(N1),
    .S(Mcompar_r_controllerPin_cmp_lt0001_lut[1]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<2>  (
    .I0(r_error_unsigned[6]),
    .I1(r_error_unsigned[7]),
    .I2(r_error_unsigned[8]),
    .I3(r_error_unsigned[9]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[2])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0001_cy<2>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0001_cy[1]),
    .DI(N1),
    .S(Mcompar_r_controllerPin_cmp_lt0001_lut[2]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<3>  (
    .I0(r_error_unsigned[10]),
    .I1(r_error_unsigned[11]),
    .I2(r_error_unsigned[12]),
    .I3(r_error_unsigned[13]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[3])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0001_cy<3>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0001_cy[2]),
    .DI(N1),
    .S(Mcompar_r_controllerPin_cmp_lt0001_lut[3]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[3])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<4>  (
    .I0(r_error_unsigned[14]),
    .I1(r_error_unsigned[15]),
    .I2(r_error_unsigned[16]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[4])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0001_cy<4>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0001_cy[3]),
    .DI(N1),
    .S(Mcompar_r_controllerPin_cmp_lt0001_lut[4]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[4])
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(N1),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(Mcount_counter_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<1>_rt_138 ),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(\Mcount_counter_cy<1>_rt_138 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<2>_rt_140 ),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(\Mcount_counter_cy<2>_rt_140 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<3>_rt_142 ),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(\Mcount_counter_cy<3>_rt_142 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<4>_rt_144 ),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(\Mcount_counter_cy<4>_rt_144 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<5>_rt_146 ),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(\Mcount_counter_cy<5>_rt_146 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<6>_rt_148 ),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(\Mcount_counter_cy<6>_rt_148 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_counter_cy<7>  (
    .CI(Mcount_counter_cy[6]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<7>_rt_150 ),
    .O(Mcount_counter_cy[7])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(\Mcount_counter_cy<7>_rt_150 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_counter_cy<8>  (
    .CI(Mcount_counter_cy[7]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<8>_rt_152 ),
    .O(Mcount_counter_cy[8])
  );
  XORCY   \Mcount_counter_xor<8>  (
    .CI(Mcount_counter_cy[7]),
    .LI(\Mcount_counter_cy<8>_rt_152 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_counter_cy<9>  (
    .CI(Mcount_counter_cy[8]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<9>_rt_154 ),
    .O(Mcount_counter_cy[9])
  );
  XORCY   \Mcount_counter_xor<9>  (
    .CI(Mcount_counter_cy[8]),
    .LI(\Mcount_counter_cy<9>_rt_154 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_counter_cy<10>  (
    .CI(Mcount_counter_cy[9]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<10>_rt_128 ),
    .O(Mcount_counter_cy[10])
  );
  XORCY   \Mcount_counter_xor<10>  (
    .CI(Mcount_counter_cy[9]),
    .LI(\Mcount_counter_cy<10>_rt_128 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_counter_cy<11>  (
    .CI(Mcount_counter_cy[10]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<11>_rt_130 ),
    .O(Mcount_counter_cy[11])
  );
  XORCY   \Mcount_counter_xor<11>  (
    .CI(Mcount_counter_cy[10]),
    .LI(\Mcount_counter_cy<11>_rt_130 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_counter_cy<12>  (
    .CI(Mcount_counter_cy[11]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<12>_rt_132 ),
    .O(Mcount_counter_cy[12])
  );
  XORCY   \Mcount_counter_xor<12>  (
    .CI(Mcount_counter_cy[11]),
    .LI(\Mcount_counter_cy<12>_rt_132 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_counter_cy<13>  (
    .CI(Mcount_counter_cy[12]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<13>_rt_134 ),
    .O(Mcount_counter_cy[13])
  );
  XORCY   \Mcount_counter_xor<13>  (
    .CI(Mcount_counter_cy[12]),
    .LI(\Mcount_counter_cy<13>_rt_134 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_counter_cy<14>  (
    .CI(Mcount_counter_cy[13]),
    .DI(LED_5_OBUF_24),
    .S(\Mcount_counter_cy<14>_rt_136 ),
    .O(Mcount_counter_cy[14])
  );
  XORCY   \Mcount_counter_xor<14>  (
    .CI(Mcount_counter_cy[13]),
    .LI(\Mcount_counter_cy<14>_rt_136 ),
    .O(Result[14])
  );
  XORCY   \Mcount_counter_xor<15>  (
    .CI(Mcount_counter_cy[14]),
    .LI(\Mcount_counter_xor<15>_rt_156 ),
    .O(Result[15])
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(N1),
    .S(\pwmGenerator/Mcount_rampa_lut [0]),
    .O(\pwmGenerator/Mcount_rampa_cy [0])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\pwmGenerator/Mcount_rampa_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<1>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [0]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<1>_rt_2030 ),
    .O(\pwmGenerator/Mcount_rampa_cy [1])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<1>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [0]),
    .LI(\pwmGenerator/Mcount_rampa_cy<1>_rt_2030 ),
    .O(\Result<1>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<2>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [1]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<2>_rt_2032 ),
    .O(\pwmGenerator/Mcount_rampa_cy [2])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<2>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [1]),
    .LI(\pwmGenerator/Mcount_rampa_cy<2>_rt_2032 ),
    .O(\Result<2>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<3>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [2]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<3>_rt_2034 ),
    .O(\pwmGenerator/Mcount_rampa_cy [3])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<3>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [2]),
    .LI(\pwmGenerator/Mcount_rampa_cy<3>_rt_2034 ),
    .O(\Result<3>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<4>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [3]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<4>_rt_2036 ),
    .O(\pwmGenerator/Mcount_rampa_cy [4])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<4>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [3]),
    .LI(\pwmGenerator/Mcount_rampa_cy<4>_rt_2036 ),
    .O(\Result<4>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<5>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [4]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<5>_rt_2038 ),
    .O(\pwmGenerator/Mcount_rampa_cy [5])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<5>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [4]),
    .LI(\pwmGenerator/Mcount_rampa_cy<5>_rt_2038 ),
    .O(\Result<5>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<6>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [5]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<6>_rt_2040 ),
    .O(\pwmGenerator/Mcount_rampa_cy [6])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<6>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [5]),
    .LI(\pwmGenerator/Mcount_rampa_cy<6>_rt_2040 ),
    .O(\Result<6>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<7>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [6]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<7>_rt_2042 ),
    .O(\pwmGenerator/Mcount_rampa_cy [7])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<7>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [6]),
    .LI(\pwmGenerator/Mcount_rampa_cy<7>_rt_2042 ),
    .O(\Result<7>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<8>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [7]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<8>_rt_2044 ),
    .O(\pwmGenerator/Mcount_rampa_cy [8])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<8>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [7]),
    .LI(\pwmGenerator/Mcount_rampa_cy<8>_rt_2044 ),
    .O(\Result<8>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<9>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [8]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<9>_rt_2046 ),
    .O(\pwmGenerator/Mcount_rampa_cy [9])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<9>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [8]),
    .LI(\pwmGenerator/Mcount_rampa_cy<9>_rt_2046 ),
    .O(\Result<9>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<10>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [9]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<10>_rt_2020 ),
    .O(\pwmGenerator/Mcount_rampa_cy [10])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<10>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [9]),
    .LI(\pwmGenerator/Mcount_rampa_cy<10>_rt_2020 ),
    .O(\Result<10>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<11>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [10]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<11>_rt_2022 ),
    .O(\pwmGenerator/Mcount_rampa_cy [11])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<11>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [10]),
    .LI(\pwmGenerator/Mcount_rampa_cy<11>_rt_2022 ),
    .O(\Result<11>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<12>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [11]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<12>_rt_2024 ),
    .O(\pwmGenerator/Mcount_rampa_cy [12])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<12>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [11]),
    .LI(\pwmGenerator/Mcount_rampa_cy<12>_rt_2024 ),
    .O(\Result<12>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<13>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [12]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<13>_rt_2026 ),
    .O(\pwmGenerator/Mcount_rampa_cy [13])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<13>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [12]),
    .LI(\pwmGenerator/Mcount_rampa_cy<13>_rt_2026 ),
    .O(\Result<13>1 )
  );
  MUXCY   \pwmGenerator/Mcount_rampa_cy<14>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [13]),
    .DI(LED_5_OBUF_24),
    .S(\pwmGenerator/Mcount_rampa_cy<14>_rt_2028 ),
    .O(\pwmGenerator/Mcount_rampa_cy [14])
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<14>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [13]),
    .LI(\pwmGenerator/Mcount_rampa_cy<14>_rt_2028 ),
    .O(\Result<14>1 )
  );
  XORCY   \pwmGenerator/Mcount_rampa_xor<15>  (
    .CI(\pwmGenerator/Mcount_rampa_cy [14]),
    .LI(\pwmGenerator/Mcount_rampa_xor<15>_rt_2048 ),
    .O(\Result<15>1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Maddsub_r_kp_mux0000_lut<0>  (
    .I0(r_kp[0]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[0])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<0>  (
    .CI(\debouncer3/DB_out_872 ),
    .DI(r_kp[0]),
    .S(Maddsub_r_kp_mux0000_lut[0]),
    .O(Maddsub_r_kp_mux0000_cy[0])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<0>  (
    .CI(\debouncer3/DB_out_872 ),
    .LI(Maddsub_r_kp_mux0000_lut[0]),
    .O(r_kp_mux0000[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<1>  (
    .I0(r_kp[1]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[1])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<1>  (
    .CI(Maddsub_r_kp_mux0000_cy[0]),
    .DI(r_kp[1]),
    .S(Maddsub_r_kp_mux0000_lut[1]),
    .O(Maddsub_r_kp_mux0000_cy[1])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<1>  (
    .CI(Maddsub_r_kp_mux0000_cy[0]),
    .LI(Maddsub_r_kp_mux0000_lut[1]),
    .O(r_kp_mux0000[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<2>  (
    .I0(r_kp[2]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[2])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<2>  (
    .CI(Maddsub_r_kp_mux0000_cy[1]),
    .DI(r_kp[2]),
    .S(Maddsub_r_kp_mux0000_lut[2]),
    .O(Maddsub_r_kp_mux0000_cy[2])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<2>  (
    .CI(Maddsub_r_kp_mux0000_cy[1]),
    .LI(Maddsub_r_kp_mux0000_lut[2]),
    .O(r_kp_mux0000[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<3>  (
    .I0(r_kp[3]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[3])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<3>  (
    .CI(Maddsub_r_kp_mux0000_cy[2]),
    .DI(r_kp[3]),
    .S(Maddsub_r_kp_mux0000_lut[3]),
    .O(Maddsub_r_kp_mux0000_cy[3])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<3>  (
    .CI(Maddsub_r_kp_mux0000_cy[2]),
    .LI(Maddsub_r_kp_mux0000_lut[3]),
    .O(r_kp_mux0000[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<4>  (
    .I0(r_kp[4]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[4])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<4>  (
    .CI(Maddsub_r_kp_mux0000_cy[3]),
    .DI(r_kp[4]),
    .S(Maddsub_r_kp_mux0000_lut[4]),
    .O(Maddsub_r_kp_mux0000_cy[4])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<4>  (
    .CI(Maddsub_r_kp_mux0000_cy[3]),
    .LI(Maddsub_r_kp_mux0000_lut[4]),
    .O(r_kp_mux0000[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<5>  (
    .I0(r_kp[5]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[5])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<5>  (
    .CI(Maddsub_r_kp_mux0000_cy[4]),
    .DI(r_kp[5]),
    .S(Maddsub_r_kp_mux0000_lut[5]),
    .O(Maddsub_r_kp_mux0000_cy[5])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<5>  (
    .CI(Maddsub_r_kp_mux0000_cy[4]),
    .LI(Maddsub_r_kp_mux0000_lut[5]),
    .O(r_kp_mux0000[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<6>  (
    .I0(r_kp[6]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[6])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<6>  (
    .CI(Maddsub_r_kp_mux0000_cy[5]),
    .DI(r_kp[6]),
    .S(Maddsub_r_kp_mux0000_lut[6]),
    .O(Maddsub_r_kp_mux0000_cy[6])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<6>  (
    .CI(Maddsub_r_kp_mux0000_cy[5]),
    .LI(Maddsub_r_kp_mux0000_lut[6]),
    .O(r_kp_mux0000[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<7>  (
    .I0(r_kp[7]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[7])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<7>  (
    .CI(Maddsub_r_kp_mux0000_cy[6]),
    .DI(r_kp[7]),
    .S(Maddsub_r_kp_mux0000_lut[7]),
    .O(Maddsub_r_kp_mux0000_cy[7])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<7>  (
    .CI(Maddsub_r_kp_mux0000_cy[6]),
    .LI(Maddsub_r_kp_mux0000_lut[7]),
    .O(r_kp_mux0000[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<8>  (
    .I0(r_kp[8]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[8])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<8>  (
    .CI(Maddsub_r_kp_mux0000_cy[7]),
    .DI(r_kp[8]),
    .S(Maddsub_r_kp_mux0000_lut[8]),
    .O(Maddsub_r_kp_mux0000_cy[8])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<8>  (
    .CI(Maddsub_r_kp_mux0000_cy[7]),
    .LI(Maddsub_r_kp_mux0000_lut[8]),
    .O(r_kp_mux0000[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<9>  (
    .I0(r_kp[9]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[9])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<9>  (
    .CI(Maddsub_r_kp_mux0000_cy[8]),
    .DI(r_kp[9]),
    .S(Maddsub_r_kp_mux0000_lut[9]),
    .O(Maddsub_r_kp_mux0000_cy[9])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<9>  (
    .CI(Maddsub_r_kp_mux0000_cy[8]),
    .LI(Maddsub_r_kp_mux0000_lut[9]),
    .O(r_kp_mux0000[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<10>  (
    .I0(r_kp[10]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[10])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<10>  (
    .CI(Maddsub_r_kp_mux0000_cy[9]),
    .DI(r_kp[10]),
    .S(Maddsub_r_kp_mux0000_lut[10]),
    .O(Maddsub_r_kp_mux0000_cy[10])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<10>  (
    .CI(Maddsub_r_kp_mux0000_cy[9]),
    .LI(Maddsub_r_kp_mux0000_lut[10]),
    .O(r_kp_mux0000[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<11>  (
    .I0(r_kp[11]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[11])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<11>  (
    .CI(Maddsub_r_kp_mux0000_cy[10]),
    .DI(r_kp[11]),
    .S(Maddsub_r_kp_mux0000_lut[11]),
    .O(Maddsub_r_kp_mux0000_cy[11])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<11>  (
    .CI(Maddsub_r_kp_mux0000_cy[10]),
    .LI(Maddsub_r_kp_mux0000_lut[11]),
    .O(r_kp_mux0000[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<12>  (
    .I0(r_kp[12]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[12])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<12>  (
    .CI(Maddsub_r_kp_mux0000_cy[11]),
    .DI(r_kp[12]),
    .S(Maddsub_r_kp_mux0000_lut[12]),
    .O(Maddsub_r_kp_mux0000_cy[12])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<12>  (
    .CI(Maddsub_r_kp_mux0000_cy[11]),
    .LI(Maddsub_r_kp_mux0000_lut[12]),
    .O(r_kp_mux0000[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<13>  (
    .I0(r_kp[13]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[13])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<13>  (
    .CI(Maddsub_r_kp_mux0000_cy[12]),
    .DI(r_kp[13]),
    .S(Maddsub_r_kp_mux0000_lut[13]),
    .O(Maddsub_r_kp_mux0000_cy[13])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<13>  (
    .CI(Maddsub_r_kp_mux0000_cy[12]),
    .LI(Maddsub_r_kp_mux0000_lut[13]),
    .O(r_kp_mux0000[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<14>  (
    .I0(r_kp[14]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[14])
  );
  MUXCY   \Maddsub_r_kp_mux0000_cy<14>  (
    .CI(Maddsub_r_kp_mux0000_cy[13]),
    .DI(r_kp[14]),
    .S(Maddsub_r_kp_mux0000_lut[14]),
    .O(Maddsub_r_kp_mux0000_cy[14])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<14>  (
    .CI(Maddsub_r_kp_mux0000_cy[13]),
    .LI(Maddsub_r_kp_mux0000_lut[14]),
    .O(r_kp_mux0000[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<15>  (
    .I0(r_kp[15]),
    .I1(\debouncer3/DB_out_872 ),
    .O(Maddsub_r_kp_mux0000_lut[15])
  );
  XORCY   \Maddsub_r_kp_mux0000_xor<15>  (
    .CI(Maddsub_r_kp_mux0000_cy[14]),
    .LI(Maddsub_r_kp_mux0000_lut[15]),
    .O(r_kp_mux0000[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Maddsub_r_ki_mux0000_lut<0>  (
    .I0(r_ki[0]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[0])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<0>  (
    .CI(\debouncer5/DB_out_912 ),
    .DI(r_ki[0]),
    .S(Maddsub_r_ki_mux0000_lut[0]),
    .O(Maddsub_r_ki_mux0000_cy[0])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<0>  (
    .CI(\debouncer5/DB_out_912 ),
    .LI(Maddsub_r_ki_mux0000_lut[0]),
    .O(r_ki_mux0000[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<1>  (
    .I0(r_ki[1]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[1])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<1>  (
    .CI(Maddsub_r_ki_mux0000_cy[0]),
    .DI(r_ki[1]),
    .S(Maddsub_r_ki_mux0000_lut[1]),
    .O(Maddsub_r_ki_mux0000_cy[1])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<1>  (
    .CI(Maddsub_r_ki_mux0000_cy[0]),
    .LI(Maddsub_r_ki_mux0000_lut[1]),
    .O(r_ki_mux0000[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<2>  (
    .I0(r_ki[2]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[2])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<2>  (
    .CI(Maddsub_r_ki_mux0000_cy[1]),
    .DI(r_ki[2]),
    .S(Maddsub_r_ki_mux0000_lut[2]),
    .O(Maddsub_r_ki_mux0000_cy[2])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<2>  (
    .CI(Maddsub_r_ki_mux0000_cy[1]),
    .LI(Maddsub_r_ki_mux0000_lut[2]),
    .O(r_ki_mux0000[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<3>  (
    .I0(r_ki[3]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[3])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<3>  (
    .CI(Maddsub_r_ki_mux0000_cy[2]),
    .DI(r_ki[3]),
    .S(Maddsub_r_ki_mux0000_lut[3]),
    .O(Maddsub_r_ki_mux0000_cy[3])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<3>  (
    .CI(Maddsub_r_ki_mux0000_cy[2]),
    .LI(Maddsub_r_ki_mux0000_lut[3]),
    .O(r_ki_mux0000[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<4>  (
    .I0(r_ki[4]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[4])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<4>  (
    .CI(Maddsub_r_ki_mux0000_cy[3]),
    .DI(r_ki[4]),
    .S(Maddsub_r_ki_mux0000_lut[4]),
    .O(Maddsub_r_ki_mux0000_cy[4])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<4>  (
    .CI(Maddsub_r_ki_mux0000_cy[3]),
    .LI(Maddsub_r_ki_mux0000_lut[4]),
    .O(r_ki_mux0000[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<5>  (
    .I0(r_ki[5]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[5])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<5>  (
    .CI(Maddsub_r_ki_mux0000_cy[4]),
    .DI(r_ki[5]),
    .S(Maddsub_r_ki_mux0000_lut[5]),
    .O(Maddsub_r_ki_mux0000_cy[5])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<5>  (
    .CI(Maddsub_r_ki_mux0000_cy[4]),
    .LI(Maddsub_r_ki_mux0000_lut[5]),
    .O(r_ki_mux0000[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<6>  (
    .I0(r_ki[6]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[6])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<6>  (
    .CI(Maddsub_r_ki_mux0000_cy[5]),
    .DI(r_ki[6]),
    .S(Maddsub_r_ki_mux0000_lut[6]),
    .O(Maddsub_r_ki_mux0000_cy[6])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<6>  (
    .CI(Maddsub_r_ki_mux0000_cy[5]),
    .LI(Maddsub_r_ki_mux0000_lut[6]),
    .O(r_ki_mux0000[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<7>  (
    .I0(r_ki[7]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[7])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<7>  (
    .CI(Maddsub_r_ki_mux0000_cy[6]),
    .DI(r_ki[7]),
    .S(Maddsub_r_ki_mux0000_lut[7]),
    .O(Maddsub_r_ki_mux0000_cy[7])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<7>  (
    .CI(Maddsub_r_ki_mux0000_cy[6]),
    .LI(Maddsub_r_ki_mux0000_lut[7]),
    .O(r_ki_mux0000[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<8>  (
    .I0(r_ki[8]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[8])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<8>  (
    .CI(Maddsub_r_ki_mux0000_cy[7]),
    .DI(r_ki[8]),
    .S(Maddsub_r_ki_mux0000_lut[8]),
    .O(Maddsub_r_ki_mux0000_cy[8])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<8>  (
    .CI(Maddsub_r_ki_mux0000_cy[7]),
    .LI(Maddsub_r_ki_mux0000_lut[8]),
    .O(r_ki_mux0000[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<9>  (
    .I0(r_ki[9]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[9])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<9>  (
    .CI(Maddsub_r_ki_mux0000_cy[8]),
    .DI(r_ki[9]),
    .S(Maddsub_r_ki_mux0000_lut[9]),
    .O(Maddsub_r_ki_mux0000_cy[9])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<9>  (
    .CI(Maddsub_r_ki_mux0000_cy[8]),
    .LI(Maddsub_r_ki_mux0000_lut[9]),
    .O(r_ki_mux0000[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<10>  (
    .I0(r_ki[10]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[10])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<10>  (
    .CI(Maddsub_r_ki_mux0000_cy[9]),
    .DI(r_ki[10]),
    .S(Maddsub_r_ki_mux0000_lut[10]),
    .O(Maddsub_r_ki_mux0000_cy[10])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<10>  (
    .CI(Maddsub_r_ki_mux0000_cy[9]),
    .LI(Maddsub_r_ki_mux0000_lut[10]),
    .O(r_ki_mux0000[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<11>  (
    .I0(r_ki[11]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[11])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<11>  (
    .CI(Maddsub_r_ki_mux0000_cy[10]),
    .DI(r_ki[11]),
    .S(Maddsub_r_ki_mux0000_lut[11]),
    .O(Maddsub_r_ki_mux0000_cy[11])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<11>  (
    .CI(Maddsub_r_ki_mux0000_cy[10]),
    .LI(Maddsub_r_ki_mux0000_lut[11]),
    .O(r_ki_mux0000[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<12>  (
    .I0(r_ki[12]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[12])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<12>  (
    .CI(Maddsub_r_ki_mux0000_cy[11]),
    .DI(r_ki[12]),
    .S(Maddsub_r_ki_mux0000_lut[12]),
    .O(Maddsub_r_ki_mux0000_cy[12])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<12>  (
    .CI(Maddsub_r_ki_mux0000_cy[11]),
    .LI(Maddsub_r_ki_mux0000_lut[12]),
    .O(r_ki_mux0000[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<13>  (
    .I0(r_ki[13]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[13])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<13>  (
    .CI(Maddsub_r_ki_mux0000_cy[12]),
    .DI(r_ki[13]),
    .S(Maddsub_r_ki_mux0000_lut[13]),
    .O(Maddsub_r_ki_mux0000_cy[13])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<13>  (
    .CI(Maddsub_r_ki_mux0000_cy[12]),
    .LI(Maddsub_r_ki_mux0000_lut[13]),
    .O(r_ki_mux0000[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<14>  (
    .I0(r_ki[14]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[14])
  );
  MUXCY   \Maddsub_r_ki_mux0000_cy<14>  (
    .CI(Maddsub_r_ki_mux0000_cy[13]),
    .DI(r_ki[14]),
    .S(Maddsub_r_ki_mux0000_lut[14]),
    .O(Maddsub_r_ki_mux0000_cy[14])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<14>  (
    .CI(Maddsub_r_ki_mux0000_cy[13]),
    .LI(Maddsub_r_ki_mux0000_lut[14]),
    .O(r_ki_mux0000[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<15>  (
    .I0(r_ki[15]),
    .I1(\debouncer5/DB_out_912 ),
    .O(Maddsub_r_ki_mux0000_lut[15])
  );
  XORCY   \Maddsub_r_ki_mux0000_xor<15>  (
    .CI(Maddsub_r_ki_mux0000_cy[14]),
    .LI(Maddsub_r_ki_mux0000_lut[15]),
    .O(r_ki_mux0000[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<0>  (
    .I0(\w_setpoint[0] ),
    .I1(w_velocity[0]),
    .O(Msub_w_error_lut[0])
  );
  MUXCY   \Msub_w_error_cy<0>  (
    .CI(N1),
    .DI(\w_setpoint[0] ),
    .S(Msub_w_error_lut[0]),
    .O(Msub_w_error_cy[0])
  );
  XORCY   \Msub_w_error_xor<0>  (
    .CI(N1),
    .LI(Msub_w_error_lut[0]),
    .O(w_error[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<1>  (
    .I0(\w_setpoint[1] ),
    .I1(w_velocity[1]),
    .O(Msub_w_error_lut[1])
  );
  MUXCY   \Msub_w_error_cy<1>  (
    .CI(Msub_w_error_cy[0]),
    .DI(\w_setpoint[1] ),
    .S(Msub_w_error_lut[1]),
    .O(Msub_w_error_cy[1])
  );
  XORCY   \Msub_w_error_xor<1>  (
    .CI(Msub_w_error_cy[0]),
    .LI(Msub_w_error_lut[1]),
    .O(w_error[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<2>  (
    .I0(\w_setpoint[2] ),
    .I1(w_velocity[2]),
    .O(Msub_w_error_lut[2])
  );
  MUXCY   \Msub_w_error_cy<2>  (
    .CI(Msub_w_error_cy[1]),
    .DI(\w_setpoint[2] ),
    .S(Msub_w_error_lut[2]),
    .O(Msub_w_error_cy[2])
  );
  XORCY   \Msub_w_error_xor<2>  (
    .CI(Msub_w_error_cy[1]),
    .LI(Msub_w_error_lut[2]),
    .O(w_error[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<3>  (
    .I0(\w_setpoint[0] ),
    .I1(w_velocity[3]),
    .O(Msub_w_error_lut[3])
  );
  MUXCY   \Msub_w_error_cy<3>  (
    .CI(Msub_w_error_cy[2]),
    .DI(\w_setpoint[0] ),
    .S(Msub_w_error_lut[3]),
    .O(Msub_w_error_cy[3])
  );
  XORCY   \Msub_w_error_xor<3>  (
    .CI(Msub_w_error_cy[2]),
    .LI(Msub_w_error_lut[3]),
    .O(w_error[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<4>  (
    .I0(\w_setpoint[4] ),
    .I1(w_velocity[4]),
    .O(Msub_w_error_lut[4])
  );
  MUXCY   \Msub_w_error_cy<4>  (
    .CI(Msub_w_error_cy[3]),
    .DI(\w_setpoint[4] ),
    .S(Msub_w_error_lut[4]),
    .O(Msub_w_error_cy[4])
  );
  XORCY   \Msub_w_error_xor<4>  (
    .CI(Msub_w_error_cy[3]),
    .LI(Msub_w_error_lut[4]),
    .O(w_error[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<5>  (
    .I0(\w_setpoint[5] ),
    .I1(w_velocity[5]),
    .O(Msub_w_error_lut[5])
  );
  MUXCY   \Msub_w_error_cy<5>  (
    .CI(Msub_w_error_cy[4]),
    .DI(\w_setpoint[5] ),
    .S(Msub_w_error_lut[5]),
    .O(Msub_w_error_cy[5])
  );
  XORCY   \Msub_w_error_xor<5>  (
    .CI(Msub_w_error_cy[4]),
    .LI(Msub_w_error_lut[5]),
    .O(w_error[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<6>  (
    .I0(\w_setpoint[6] ),
    .I1(w_velocity[6]),
    .O(Msub_w_error_lut[6])
  );
  MUXCY   \Msub_w_error_cy<6>  (
    .CI(Msub_w_error_cy[5]),
    .DI(\w_setpoint[6] ),
    .S(Msub_w_error_lut[6]),
    .O(Msub_w_error_cy[6])
  );
  XORCY   \Msub_w_error_xor<6>  (
    .CI(Msub_w_error_cy[5]),
    .LI(Msub_w_error_lut[6]),
    .O(w_error[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<7>  (
    .I0(\w_setpoint[7] ),
    .I1(w_velocity[7]),
    .O(Msub_w_error_lut[7])
  );
  MUXCY   \Msub_w_error_cy<7>  (
    .CI(Msub_w_error_cy[6]),
    .DI(\w_setpoint[7] ),
    .S(Msub_w_error_lut[7]),
    .O(Msub_w_error_cy[7])
  );
  XORCY   \Msub_w_error_xor<7>  (
    .CI(Msub_w_error_cy[6]),
    .LI(Msub_w_error_lut[7]),
    .O(w_error[7])
  );
  MUXCY   \Msub_w_error_cy<8>  (
    .CI(Msub_w_error_cy[7]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[8]),
    .O(Msub_w_error_cy[8])
  );
  XORCY   \Msub_w_error_xor<8>  (
    .CI(Msub_w_error_cy[7]),
    .LI(Msub_w_error_lut[8]),
    .O(w_error[8])
  );
  MUXCY   \Msub_w_error_cy<9>  (
    .CI(Msub_w_error_cy[8]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[9]),
    .O(Msub_w_error_cy[9])
  );
  XORCY   \Msub_w_error_xor<9>  (
    .CI(Msub_w_error_cy[8]),
    .LI(Msub_w_error_lut[9]),
    .O(w_error[9])
  );
  MUXCY   \Msub_w_error_cy<10>  (
    .CI(Msub_w_error_cy[9]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[10]),
    .O(Msub_w_error_cy[10])
  );
  XORCY   \Msub_w_error_xor<10>  (
    .CI(Msub_w_error_cy[9]),
    .LI(Msub_w_error_lut[10]),
    .O(w_error[10])
  );
  MUXCY   \Msub_w_error_cy<11>  (
    .CI(Msub_w_error_cy[10]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[11]),
    .O(Msub_w_error_cy[11])
  );
  XORCY   \Msub_w_error_xor<11>  (
    .CI(Msub_w_error_cy[10]),
    .LI(Msub_w_error_lut[11]),
    .O(w_error[11])
  );
  MUXCY   \Msub_w_error_cy<12>  (
    .CI(Msub_w_error_cy[11]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[12]),
    .O(Msub_w_error_cy[12])
  );
  XORCY   \Msub_w_error_xor<12>  (
    .CI(Msub_w_error_cy[11]),
    .LI(Msub_w_error_lut[12]),
    .O(w_error[12])
  );
  MUXCY   \Msub_w_error_cy<13>  (
    .CI(Msub_w_error_cy[12]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[13]),
    .O(Msub_w_error_cy[13])
  );
  XORCY   \Msub_w_error_xor<13>  (
    .CI(Msub_w_error_cy[12]),
    .LI(Msub_w_error_lut[13]),
    .O(w_error[13])
  );
  MUXCY   \Msub_w_error_cy<14>  (
    .CI(Msub_w_error_cy[13]),
    .DI(LED_5_OBUF_24),
    .S(Msub_w_error_lut[14]),
    .O(Msub_w_error_cy[14])
  );
  XORCY   \Msub_w_error_xor<14>  (
    .CI(Msub_w_error_cy[13]),
    .LI(Msub_w_error_lut[14]),
    .O(w_error[14])
  );
  XORCY   \Msub_w_error_xor<15>  (
    .CI(Msub_w_error_cy[14]),
    .LI(Msub_w_error_lut[15]),
    .O(w_error[15])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<0>  (
    .CI(N1),
    .DI(LED_5_OBUF_24),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_105 ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[0])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<1>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0000_cy[0]),
    .DI(N1),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_lut[1] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[1])
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<2>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0000_cy[1]),
    .DI(LED_5_OBUF_24),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_108 ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<3>  (
    .I0(w_velocity[4]),
    .I1(w_velocity[5]),
    .I2(w_velocity[6]),
    .I3(w_velocity[7]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[3] )
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<3>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0000_cy[2]),
    .DI(N1),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_lut[3] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<4>  (
    .I0(w_velocity[8]),
    .I1(w_velocity[9]),
    .I2(w_velocity[10]),
    .I3(w_velocity[11]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[4] )
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<4>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0000_cy[3]),
    .DI(N1),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_lut[4] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<5>  (
    .I0(w_velocity[12]),
    .I1(w_velocity[13]),
    .I2(w_velocity[14]),
    .I3(w_velocity[15]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[5] )
  );
  MUXCY   \Mcompar_r_controllerPin_cmp_lt0000_cy<5>  (
    .CI(Mcompar_r_controllerPin_cmp_lt0000_cy[4]),
    .DI(N1),
    .S(\Mcompar_r_controllerPin_cmp_lt0000_lut[5] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<0>  (
    .I0(\pwmGenerator/rampa [0]),
    .I1(\pidController/un [0]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [0])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<0>  (
    .CI(N1),
    .DI(\pwmGenerator/rampa [0]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [0]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<1>  (
    .I0(\pwmGenerator/rampa [1]),
    .I1(\pidController/un [1]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [1])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<1>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [0]),
    .DI(\pwmGenerator/rampa [1]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [1]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<2>  (
    .I0(\pwmGenerator/rampa [2]),
    .I1(\pidController/un [2]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [2])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<2>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [1]),
    .DI(\pwmGenerator/rampa [2]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [2]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<3>  (
    .I0(\pwmGenerator/rampa [3]),
    .I1(\pidController/un [3]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [3])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<3>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [2]),
    .DI(\pwmGenerator/rampa [3]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [3]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<4>  (
    .I0(\pwmGenerator/rampa [4]),
    .I1(\pidController/un [4]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [4])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<4>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [3]),
    .DI(\pwmGenerator/rampa [4]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [4]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<5>  (
    .I0(\pwmGenerator/rampa [5]),
    .I1(\pidController/un [5]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [5])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<5>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [4]),
    .DI(\pwmGenerator/rampa [5]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [5]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<6>  (
    .I0(\pwmGenerator/rampa [6]),
    .I1(\pidController/un [6]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [6])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<6>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [5]),
    .DI(\pwmGenerator/rampa [6]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [6]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<7>  (
    .I0(\pwmGenerator/rampa [7]),
    .I1(\pidController/un [7]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [7])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<7>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [6]),
    .DI(\pwmGenerator/rampa [7]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [7]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<8>  (
    .I0(\pwmGenerator/rampa [8]),
    .I1(\pidController/un [8]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [8])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<8>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [7]),
    .DI(\pwmGenerator/rampa [8]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [8]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<9>  (
    .I0(\pwmGenerator/rampa [9]),
    .I1(\pidController/un [9]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [9])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<9>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [8]),
    .DI(\pwmGenerator/rampa [9]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [9]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<10>  (
    .I0(\pwmGenerator/rampa [10]),
    .I1(\pidController/un [10]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [10])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<10>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [9]),
    .DI(\pwmGenerator/rampa [10]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [10]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<11>  (
    .I0(\pwmGenerator/rampa [11]),
    .I1(\pidController/un [11]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [11])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<11>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [10]),
    .DI(\pwmGenerator/rampa [11]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [11]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<12>  (
    .I0(\pwmGenerator/rampa [12]),
    .I1(\pidController/un [12]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [12])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<12>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [11]),
    .DI(\pwmGenerator/rampa [12]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [12]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<13>  (
    .I0(\pwmGenerator/rampa [13]),
    .I1(\pidController/un [13]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [13])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<13>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [12]),
    .DI(\pwmGenerator/rampa [13]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [13]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<14>  (
    .I0(\pwmGenerator/rampa [14]),
    .I1(\pidController/un [14]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [14])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<14>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [13]),
    .DI(\pwmGenerator/rampa [14]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [14]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<15>  (
    .I0(\pwmGenerator/rampa [15]),
    .I1(\pidController/un [15]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [15])
  );
  MUXCY   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<15>  (
    .CI(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [14]),
    .DI(\pwmGenerator/rampa [15]),
    .S(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [15]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [15])
  );
  LDCP #(
    .INIT ( 1'b1 ))
  r_ki_0 (
    .CLR(r_ki_0__and0000),
    .D(r_ki_mux0000[0]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_0__and0001),
    .Q(r_ki[0])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_1 (
    .CLR(r_ki_1__and0000),
    .D(r_ki_mux0000[1]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_1__and0001),
    .Q(r_ki[1])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_2 (
    .CLR(r_ki_2__and0000),
    .D(r_ki_mux0000[2]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_2__and0001),
    .Q(r_ki[2])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_3 (
    .CLR(r_ki_3__and0000),
    .D(r_ki_mux0000[3]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_3__and0001),
    .Q(r_ki[3])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_4 (
    .CLR(r_ki_4__and0000),
    .D(r_ki_mux0000[4]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_4__and0001),
    .Q(r_ki[4])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_5 (
    .CLR(r_ki_5__and0000),
    .D(r_ki_mux0000[5]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_5__and0001),
    .Q(r_ki[5])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_6 (
    .CLR(r_ki_6__and0000),
    .D(r_ki_mux0000[6]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_6__and0001),
    .Q(r_ki[6])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_7 (
    .CLR(r_ki_7__and0000),
    .D(r_ki_mux0000[7]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_7__and0001),
    .Q(r_ki[7])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_8 (
    .CLR(r_ki_8__and0000),
    .D(r_ki_mux0000[8]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_8__and0001),
    .Q(r_ki[8])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_9 (
    .CLR(r_ki_9__and0000),
    .D(r_ki_mux0000[9]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_9__and0001),
    .Q(r_ki[9])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_10 (
    .CLR(r_ki_10__and0000),
    .D(r_ki_mux0000[10]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_10__and0001),
    .Q(r_ki[10])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_11 (
    .CLR(r_ki_11__and0000),
    .D(r_ki_mux0000[11]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_11__and0001),
    .Q(r_ki[11])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_12 (
    .CLR(r_ki_12__and0000),
    .D(r_ki_mux0000[12]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_12__and0001),
    .Q(r_ki[12])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_13 (
    .CLR(r_ki_13__and0000),
    .D(r_ki_mux0000[13]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_13__and0001),
    .Q(r_ki[13])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_14 (
    .CLR(r_ki_14__and0000),
    .D(r_ki_mux0000[14]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_14__and0001),
    .Q(r_ki[14])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_ki_15 (
    .CLR(r_ki_15__and0000),
    .D(r_ki_mux0000[15]),
    .G(\debouncer4/DB_out_892 ),
    .PRE(r_ki_15__and0001),
    .Q(r_ki[15])
  );
  LDCP #(
    .INIT ( 1'b1 ))
  r_kp_0 (
    .CLR(r_kp_0__and0000),
    .D(r_kp_mux0000[0]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_0__and0001),
    .Q(r_kp[0])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_1 (
    .CLR(r_kp_1__and0000),
    .D(r_kp_mux0000[1]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_1__and0001),
    .Q(r_kp[1])
  );
  LDCP #(
    .INIT ( 1'b1 ))
  r_kp_2 (
    .CLR(r_kp_2__and0000),
    .D(r_kp_mux0000[2]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_2__and0001),
    .Q(r_kp[2])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_3 (
    .CLR(r_kp_3__and0000),
    .D(r_kp_mux0000[3]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_3__and0001),
    .Q(r_kp[3])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_4 (
    .CLR(r_kp_4__and0000),
    .D(r_kp_mux0000[4]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_4__and0001),
    .Q(r_kp[4])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_5 (
    .CLR(r_kp_5__and0000),
    .D(r_kp_mux0000[5]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_5__and0001),
    .Q(r_kp[5])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_6 (
    .CLR(r_kp_6__and0000),
    .D(r_kp_mux0000[6]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_6__and0001),
    .Q(r_kp[6])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_7 (
    .CLR(r_kp_7__and0000),
    .D(r_kp_mux0000[7]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_7__and0001),
    .Q(r_kp[7])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_8 (
    .CLR(r_kp_8__and0000),
    .D(r_kp_mux0000[8]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_8__and0001),
    .Q(r_kp[8])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_9 (
    .CLR(r_kp_9__and0000),
    .D(r_kp_mux0000[9]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_9__and0001),
    .Q(r_kp[9])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_10 (
    .CLR(r_kp_10__and0000),
    .D(r_kp_mux0000[10]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_10__and0001),
    .Q(r_kp[10])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_11 (
    .CLR(r_kp_11__and0000),
    .D(r_kp_mux0000[11]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_11__and0001),
    .Q(r_kp[11])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_12 (
    .CLR(r_kp_12__and0000),
    .D(r_kp_mux0000[12]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_12__and0001),
    .Q(r_kp[12])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_13 (
    .CLR(r_kp_13__and0000),
    .D(r_kp_mux0000[13]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_13__and0001),
    .Q(r_kp[13])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_14 (
    .CLR(r_kp_14__and0000),
    .D(r_kp_mux0000[14]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_14__and0001),
    .Q(r_kp[14])
  );
  LDCP #(
    .INIT ( 1'b0 ))
  r_kp_15 (
    .CLR(r_kp_15__and0000),
    .D(r_kp_mux0000[15]),
    .G(\debouncer2/DB_out_852 ),
    .PRE(r_kp_15__and0001),
    .Q(r_kp[15])
  );
  XORCY   \decoder/Madd_o_velocity_xor<15>  (
    .CI(\decoder/Madd_o_velocity_cy [14]),
    .LI(\decoder/o_velocity_addsub0001 [15]),
    .O(w_velocity[15])
  );
  XORCY   \decoder/Madd_o_velocity_xor<14>  (
    .CI(\decoder/Madd_o_velocity_cy [13]),
    .LI(\decoder/Madd_o_velocity_cy<14>_rt_1023 ),
    .O(w_velocity[14])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<14>  (
    .CI(\decoder/Madd_o_velocity_cy [13]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Madd_o_velocity_cy<14>_rt_1023 ),
    .O(\decoder/Madd_o_velocity_cy [14])
  );
  XORCY   \decoder/Madd_o_velocity_xor<13>  (
    .CI(\decoder/Madd_o_velocity_cy [12]),
    .LI(\decoder/Madd_o_velocity_cy<13>_rt_1021 ),
    .O(w_velocity[13])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<13>  (
    .CI(\decoder/Madd_o_velocity_cy [12]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Madd_o_velocity_cy<13>_rt_1021 ),
    .O(\decoder/Madd_o_velocity_cy [13])
  );
  XORCY   \decoder/Madd_o_velocity_xor<12>  (
    .CI(\decoder/Madd_o_velocity_cy [11]),
    .LI(\decoder/Madd_o_velocity_lut [12]),
    .O(w_velocity[12])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<12>  (
    .CI(\decoder/Madd_o_velocity_cy [11]),
    .DI(\decoder/o_velocity_addsub0001 [12]),
    .S(\decoder/Madd_o_velocity_lut [12]),
    .O(\decoder/Madd_o_velocity_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<12>  (
    .I0(\decoder/o_velocity_addsub0001 [12]),
    .I1(\decoder/w_diff [15]),
    .O(\decoder/Madd_o_velocity_lut [12])
  );
  XORCY   \decoder/Madd_o_velocity_xor<11>  (
    .CI(\decoder/Madd_o_velocity_cy [10]),
    .LI(\decoder/Madd_o_velocity_lut [11]),
    .O(w_velocity[11])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<11>  (
    .CI(\decoder/Madd_o_velocity_cy [10]),
    .DI(\decoder/o_velocity_addsub0001 [11]),
    .S(\decoder/Madd_o_velocity_lut [11]),
    .O(\decoder/Madd_o_velocity_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<11>  (
    .I0(\decoder/o_velocity_addsub0001 [11]),
    .I1(\decoder/w_diff [14]),
    .O(\decoder/Madd_o_velocity_lut [11])
  );
  XORCY   \decoder/Madd_o_velocity_xor<10>  (
    .CI(\decoder/Madd_o_velocity_cy [9]),
    .LI(\decoder/Madd_o_velocity_lut [10]),
    .O(w_velocity[10])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<10>  (
    .CI(\decoder/Madd_o_velocity_cy [9]),
    .DI(\decoder/o_velocity_addsub0001 [10]),
    .S(\decoder/Madd_o_velocity_lut [10]),
    .O(\decoder/Madd_o_velocity_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<10>  (
    .I0(\decoder/o_velocity_addsub0001 [10]),
    .I1(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_lut [10])
  );
  XORCY   \decoder/Madd_o_velocity_xor<9>  (
    .CI(\decoder/Madd_o_velocity_cy [8]),
    .LI(\decoder/Madd_o_velocity_lut [9]),
    .O(w_velocity[9])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<9>  (
    .CI(\decoder/Madd_o_velocity_cy [8]),
    .DI(\decoder/o_velocity_addsub0001 [9]),
    .S(\decoder/Madd_o_velocity_lut [9]),
    .O(\decoder/Madd_o_velocity_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<9>  (
    .I0(\decoder/o_velocity_addsub0001 [9]),
    .I1(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_lut [9])
  );
  XORCY   \decoder/Madd_o_velocity_xor<8>  (
    .CI(\decoder/Madd_o_velocity_cy [7]),
    .LI(\decoder/Madd_o_velocity_lut [8]),
    .O(w_velocity[8])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<8>  (
    .CI(\decoder/Madd_o_velocity_cy [7]),
    .DI(\decoder/o_velocity_addsub0001 [8]),
    .S(\decoder/Madd_o_velocity_lut [8]),
    .O(\decoder/Madd_o_velocity_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<8>  (
    .I0(\decoder/o_velocity_addsub0001 [8]),
    .I1(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_lut [8])
  );
  XORCY   \decoder/Madd_o_velocity_xor<7>  (
    .CI(\decoder/Madd_o_velocity_cy [6]),
    .LI(\decoder/Madd_o_velocity_lut [7]),
    .O(w_velocity[7])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<7>  (
    .CI(\decoder/Madd_o_velocity_cy [6]),
    .DI(\decoder/o_velocity_addsub0001 [7]),
    .S(\decoder/Madd_o_velocity_lut [7]),
    .O(\decoder/Madd_o_velocity_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<7>  (
    .I0(\decoder/o_velocity_addsub0001 [7]),
    .I1(\decoder/w_diff [10]),
    .O(\decoder/Madd_o_velocity_lut [7])
  );
  XORCY   \decoder/Madd_o_velocity_xor<6>  (
    .CI(\decoder/Madd_o_velocity_cy [5]),
    .LI(\decoder/Madd_o_velocity_lut [6]),
    .O(w_velocity[6])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<6>  (
    .CI(\decoder/Madd_o_velocity_cy [5]),
    .DI(\decoder/o_velocity_addsub0001 [6]),
    .S(\decoder/Madd_o_velocity_lut [6]),
    .O(\decoder/Madd_o_velocity_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<6>  (
    .I0(\decoder/o_velocity_addsub0001 [6]),
    .I1(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_lut [6])
  );
  XORCY   \decoder/Madd_o_velocity_xor<5>  (
    .CI(\decoder/Madd_o_velocity_cy [4]),
    .LI(\decoder/Madd_o_velocity_lut [5]),
    .O(w_velocity[5])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<5>  (
    .CI(\decoder/Madd_o_velocity_cy [4]),
    .DI(\decoder/o_velocity_addsub0001 [5]),
    .S(\decoder/Madd_o_velocity_lut [5]),
    .O(\decoder/Madd_o_velocity_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<5>  (
    .I0(\decoder/o_velocity_addsub0001 [5]),
    .I1(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_lut [5])
  );
  XORCY   \decoder/Madd_o_velocity_xor<4>  (
    .CI(\decoder/Madd_o_velocity_cy [3]),
    .LI(\decoder/Madd_o_velocity_lut [4]),
    .O(w_velocity[4])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<4>  (
    .CI(\decoder/Madd_o_velocity_cy [3]),
    .DI(\decoder/o_velocity_addsub0001 [4]),
    .S(\decoder/Madd_o_velocity_lut [4]),
    .O(\decoder/Madd_o_velocity_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<4>  (
    .I0(\decoder/o_velocity_addsub0001 [4]),
    .I1(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_lut [4])
  );
  XORCY   \decoder/Madd_o_velocity_xor<3>  (
    .CI(\decoder/Madd_o_velocity_cy [2]),
    .LI(\decoder/Madd_o_velocity_lut [3]),
    .O(w_velocity[3])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<3>  (
    .CI(\decoder/Madd_o_velocity_cy [2]),
    .DI(\decoder/o_velocity_addsub0001 [3]),
    .S(\decoder/Madd_o_velocity_lut [3]),
    .O(\decoder/Madd_o_velocity_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<3>  (
    .I0(\decoder/o_velocity_addsub0001 [3]),
    .I1(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_lut [3])
  );
  XORCY   \decoder/Madd_o_velocity_xor<2>  (
    .CI(\decoder/Madd_o_velocity_cy [1]),
    .LI(\decoder/Madd_o_velocity_lut [2]),
    .O(w_velocity[2])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<2>  (
    .CI(\decoder/Madd_o_velocity_cy [1]),
    .DI(\decoder/o_velocity_addsub0001 [2]),
    .S(\decoder/Madd_o_velocity_lut [2]),
    .O(\decoder/Madd_o_velocity_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<2>  (
    .I0(\decoder/o_velocity_addsub0001 [2]),
    .I1(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_lut [2])
  );
  XORCY   \decoder/Madd_o_velocity_xor<1>  (
    .CI(\decoder/Madd_o_velocity_cy [0]),
    .LI(\decoder/Madd_o_velocity_lut [1]),
    .O(w_velocity[1])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<1>  (
    .CI(\decoder/Madd_o_velocity_cy [0]),
    .DI(\decoder/o_velocity_addsub0001 [1]),
    .S(\decoder/Madd_o_velocity_lut [1]),
    .O(\decoder/Madd_o_velocity_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<1>  (
    .I0(\decoder/o_velocity_addsub0001 [1]),
    .I1(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_lut [1])
  );
  XORCY   \decoder/Madd_o_velocity_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\decoder/Madd_o_velocity_lut [0]),
    .O(w_velocity[0])
  );
  MUXCY   \decoder/Madd_o_velocity_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(\decoder/o_velocity_addsub0001 [0]),
    .S(\decoder/Madd_o_velocity_lut [0]),
    .O(\decoder/Madd_o_velocity_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<0>  (
    .I0(\decoder/o_velocity_addsub0001 [0]),
    .I1(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_lut [0])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<15>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [14]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[15] ),
    .O(\decoder/o_velocity_addsub0001 [15])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<14>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] ),
    .O(\decoder/o_velocity_addsub0001 [14])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<14>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13]),
    .DI(\decoder/Madd_o_velocity_addsub0001C12 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [14])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<13>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] ),
    .O(\decoder/o_velocity_addsub0001 [13])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<13>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12]),
    .DI(\decoder/Madd_o_velocity_addsub0001C11_975 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<12>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] ),
    .O(\decoder/o_velocity_addsub0001 [12])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<12>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11]),
    .DI(\decoder/Madd_o_velocity_addsub0001C10 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<11>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] ),
    .O(\decoder/o_velocity_addsub0001 [11])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<11>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10]),
    .DI(\decoder/Madd_o_velocity_addsub0001C9 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<10>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] ),
    .O(\decoder/o_velocity_addsub0001 [10])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<10>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9]),
    .DI(\decoder/Madd_o_velocity_addsub0001C8 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<9>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] ),
    .O(\decoder/o_velocity_addsub0001 [9])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<9>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8]),
    .DI(\decoder/Madd_o_velocity_addsub0001C7 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<8>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] ),
    .O(\decoder/o_velocity_addsub0001 [8])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<8>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7]),
    .DI(\decoder/Madd_o_velocity_addsub0001C6 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<7>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] ),
    .O(\decoder/o_velocity_addsub0001 [7])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<7>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6]),
    .DI(\decoder/Madd_o_velocity_addsub0001C5 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<6>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] ),
    .O(\decoder/o_velocity_addsub0001 [6])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<6>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5]),
    .DI(\decoder/Madd_o_velocity_addsub0001C4 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<5>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] ),
    .O(\decoder/o_velocity_addsub0001 [5])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<5>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4]),
    .DI(\decoder/Madd_o_velocity_addsub0001C3 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<4>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] ),
    .O(\decoder/o_velocity_addsub0001 [4])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<4>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3]),
    .DI(\decoder/Madd_o_velocity_addsub0001C2 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<3>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] ),
    .O(\decoder/o_velocity_addsub0001 [3])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<3>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2]),
    .DI(\decoder/Madd_o_velocity_addsub0001C1_973 ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<2>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1]),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] ),
    .O(\decoder/o_velocity_addsub0001 [2])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<2>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1]),
    .DI(\decoder/Madd_o_velocity_addsub0001C ),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<1>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0]),
    .LI(\decoder/Madd_o_velocity_addsub0001R ),
    .O(\decoder/o_velocity_addsub0001 [1])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<1>  (
    .CI(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Madd_o_velocity_addsub0001R ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1])
  );
  XORCY   \decoder/Madd_o_velocity_addsub0001_Madd_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] ),
    .O(\decoder/o_velocity_addsub0001 [0])
  );
  MUXCY   \decoder/Madd_o_velocity_addsub0001_Madd_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(\decoder/w_diff [1]),
    .S(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<0>  (
    .I0(\decoder/w_diff [1]),
    .I1(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] )
  );
  XORCY   \decoder/Mcount_r_Counter_xor<16>  (
    .CI(\decoder/Mcount_r_Counter_cy [15]),
    .LI(\decoder/Mcount_r_Counter_xor<16>_rt_1140 ),
    .O(\decoder/Result [16])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<15>  (
    .CI(\decoder/Mcount_r_Counter_cy [14]),
    .LI(\decoder/Mcount_r_Counter_cy<15>_rt_1120 ),
    .O(\decoder/Result [15])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<15>  (
    .CI(\decoder/Mcount_r_Counter_cy [14]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<15>_rt_1120 ),
    .O(\decoder/Mcount_r_Counter_cy [15])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<14>  (
    .CI(\decoder/Mcount_r_Counter_cy [13]),
    .LI(\decoder/Mcount_r_Counter_cy<14>_rt_1118 ),
    .O(\decoder/Result [14])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<14>  (
    .CI(\decoder/Mcount_r_Counter_cy [13]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<14>_rt_1118 ),
    .O(\decoder/Mcount_r_Counter_cy [14])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<13>  (
    .CI(\decoder/Mcount_r_Counter_cy [12]),
    .LI(\decoder/Mcount_r_Counter_cy<13>_rt_1116 ),
    .O(\decoder/Result [13])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<13>  (
    .CI(\decoder/Mcount_r_Counter_cy [12]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<13>_rt_1116 ),
    .O(\decoder/Mcount_r_Counter_cy [13])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<12>  (
    .CI(\decoder/Mcount_r_Counter_cy [11]),
    .LI(\decoder/Mcount_r_Counter_cy<12>_rt_1114 ),
    .O(\decoder/Result [12])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<12>  (
    .CI(\decoder/Mcount_r_Counter_cy [11]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<12>_rt_1114 ),
    .O(\decoder/Mcount_r_Counter_cy [12])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<11>  (
    .CI(\decoder/Mcount_r_Counter_cy [10]),
    .LI(\decoder/Mcount_r_Counter_cy<11>_rt_1112 ),
    .O(\decoder/Result [11])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<11>  (
    .CI(\decoder/Mcount_r_Counter_cy [10]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<11>_rt_1112 ),
    .O(\decoder/Mcount_r_Counter_cy [11])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<10>  (
    .CI(\decoder/Mcount_r_Counter_cy [9]),
    .LI(\decoder/Mcount_r_Counter_cy<10>_rt_1110 ),
    .O(\decoder/Result [10])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<10>  (
    .CI(\decoder/Mcount_r_Counter_cy [9]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<10>_rt_1110 ),
    .O(\decoder/Mcount_r_Counter_cy [10])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<9>  (
    .CI(\decoder/Mcount_r_Counter_cy [8]),
    .LI(\decoder/Mcount_r_Counter_cy<9>_rt_1138 ),
    .O(\decoder/Result [9])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<9>  (
    .CI(\decoder/Mcount_r_Counter_cy [8]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<9>_rt_1138 ),
    .O(\decoder/Mcount_r_Counter_cy [9])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<8>  (
    .CI(\decoder/Mcount_r_Counter_cy [7]),
    .LI(\decoder/Mcount_r_Counter_cy<8>_rt_1136 ),
    .O(\decoder/Result [8])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<8>  (
    .CI(\decoder/Mcount_r_Counter_cy [7]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<8>_rt_1136 ),
    .O(\decoder/Mcount_r_Counter_cy [8])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<7>  (
    .CI(\decoder/Mcount_r_Counter_cy [6]),
    .LI(\decoder/Mcount_r_Counter_cy<7>_rt_1134 ),
    .O(\decoder/Result [7])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<7>  (
    .CI(\decoder/Mcount_r_Counter_cy [6]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<7>_rt_1134 ),
    .O(\decoder/Mcount_r_Counter_cy [7])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<6>  (
    .CI(\decoder/Mcount_r_Counter_cy [5]),
    .LI(\decoder/Mcount_r_Counter_cy<6>_rt_1132 ),
    .O(\decoder/Result [6])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<6>  (
    .CI(\decoder/Mcount_r_Counter_cy [5]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<6>_rt_1132 ),
    .O(\decoder/Mcount_r_Counter_cy [6])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<5>  (
    .CI(\decoder/Mcount_r_Counter_cy [4]),
    .LI(\decoder/Mcount_r_Counter_cy<5>_rt_1130 ),
    .O(\decoder/Result [5])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<5>  (
    .CI(\decoder/Mcount_r_Counter_cy [4]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<5>_rt_1130 ),
    .O(\decoder/Mcount_r_Counter_cy [5])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<4>  (
    .CI(\decoder/Mcount_r_Counter_cy [3]),
    .LI(\decoder/Mcount_r_Counter_cy<4>_rt_1128 ),
    .O(\decoder/Result [4])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<4>  (
    .CI(\decoder/Mcount_r_Counter_cy [3]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<4>_rt_1128 ),
    .O(\decoder/Mcount_r_Counter_cy [4])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<3>  (
    .CI(\decoder/Mcount_r_Counter_cy [2]),
    .LI(\decoder/Mcount_r_Counter_cy<3>_rt_1126 ),
    .O(\decoder/Result [3])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<3>  (
    .CI(\decoder/Mcount_r_Counter_cy [2]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<3>_rt_1126 ),
    .O(\decoder/Mcount_r_Counter_cy [3])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<2>  (
    .CI(\decoder/Mcount_r_Counter_cy [1]),
    .LI(\decoder/Mcount_r_Counter_cy<2>_rt_1124 ),
    .O(\decoder/Result [2])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<2>  (
    .CI(\decoder/Mcount_r_Counter_cy [1]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<2>_rt_1124 ),
    .O(\decoder/Mcount_r_Counter_cy [2])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<1>  (
    .CI(\decoder/Mcount_r_Counter_cy [0]),
    .LI(\decoder/Mcount_r_Counter_cy<1>_rt_1122 ),
    .O(\decoder/Result [1])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<1>  (
    .CI(\decoder/Mcount_r_Counter_cy [0]),
    .DI(LED_5_OBUF_24),
    .S(\decoder/Mcount_r_Counter_cy<1>_rt_1122 ),
    .O(\decoder/Mcount_r_Counter_cy [1])
  );
  XORCY   \decoder/Mcount_r_Counter_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\decoder/Mcount_r_Counter_lut [0]),
    .O(\decoder/Result [0])
  );
  MUXCY   \decoder/Mcount_r_Counter_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(N1),
    .S(\decoder/Mcount_r_Counter_lut [0]),
    .O(\decoder/Mcount_r_Counter_cy [0])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<15>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [14]),
    .DI(\decoder/r_count [15]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [15]),
    .O(\decoder/w_diff_cmp_ge0000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<15>  (
    .I0(\decoder/r_count [15]),
    .I1(\decoder/r_countPrev [15]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [15])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<14>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [13]),
    .DI(\decoder/r_count [14]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [14]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<14>  (
    .I0(\decoder/r_count [14]),
    .I1(\decoder/r_countPrev [14]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [14])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<13>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [12]),
    .DI(\decoder/r_count [13]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [13]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<13>  (
    .I0(\decoder/r_count [13]),
    .I1(\decoder/r_countPrev [13]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [13])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<12>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [11]),
    .DI(\decoder/r_count [12]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [12]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<12>  (
    .I0(\decoder/r_count [12]),
    .I1(\decoder/r_countPrev [12]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [12])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<11>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [10]),
    .DI(\decoder/r_count [11]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [11]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<11>  (
    .I0(\decoder/r_count [11]),
    .I1(\decoder/r_countPrev [11]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [11])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<10>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [9]),
    .DI(\decoder/r_count [10]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [10]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<10>  (
    .I0(\decoder/r_count [10]),
    .I1(\decoder/r_countPrev [10]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [10])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<9>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [8]),
    .DI(\decoder/r_count [9]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [9]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<9>  (
    .I0(\decoder/r_count [9]),
    .I1(\decoder/r_countPrev [9]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [9])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<8>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [7]),
    .DI(\decoder/r_count [8]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [8]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<8>  (
    .I0(\decoder/r_count [8]),
    .I1(\decoder/r_countPrev [8]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [8])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<7>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [6]),
    .DI(\decoder/r_count [7]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [7]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<7>  (
    .I0(\decoder/r_count [7]),
    .I1(\decoder/r_countPrev [7]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [7])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<6>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [5]),
    .DI(\decoder/r_count [6]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [6]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<6>  (
    .I0(\decoder/r_count [6]),
    .I1(\decoder/r_countPrev [6]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [6])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<5>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [4]),
    .DI(\decoder/r_count [5]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [5]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<5>  (
    .I0(\decoder/r_count [5]),
    .I1(\decoder/r_countPrev [5]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [5])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<4>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [3]),
    .DI(\decoder/r_count [4]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [4]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<4>  (
    .I0(\decoder/r_count [4]),
    .I1(\decoder/r_countPrev [4]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [4])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<3>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [2]),
    .DI(\decoder/r_count [3]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [3]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<3>  (
    .I0(\decoder/r_count [3]),
    .I1(\decoder/r_countPrev [3]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [3])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<2>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [1]),
    .DI(\decoder/r_count [2]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [2]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<2>  (
    .I0(\decoder/r_count [2]),
    .I1(\decoder/r_countPrev [2]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [2])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<1>  (
    .CI(\decoder/Mcompar_w_diff_cmp_ge0000_cy [0]),
    .DI(\decoder/r_count [1]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [1]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<1>  (
    .I0(\decoder/r_count [1]),
    .I1(\decoder/r_countPrev [1]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [1])
  );
  MUXCY   \decoder/Mcompar_w_diff_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(\decoder/r_count [0]),
    .S(\decoder/Mcompar_w_diff_cmp_ge0000_lut [0]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<0>  (
    .I0(\decoder/r_count [0]),
    .I1(\decoder/r_countPrev [0]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [0])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<15>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [14]),
    .LI(\decoder/Maddsub_count_mux0000_lut [15]),
    .O(\decoder/count_mux0000 [15])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<14>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [13]),
    .LI(\decoder/Maddsub_count_mux0000_lut [14]),
    .O(\decoder/count_mux0000 [14])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<14>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [13]),
    .DI(\decoder/count [14]),
    .S(\decoder/Maddsub_count_mux0000_lut [14]),
    .O(\decoder/Maddsub_count_mux0000_cy [14])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<13>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [12]),
    .LI(\decoder/Maddsub_count_mux0000_lut [13]),
    .O(\decoder/count_mux0000 [13])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<13>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [12]),
    .DI(\decoder/count [13]),
    .S(\decoder/Maddsub_count_mux0000_lut [13]),
    .O(\decoder/Maddsub_count_mux0000_cy [13])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<12>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [11]),
    .LI(\decoder/Maddsub_count_mux0000_lut [12]),
    .O(\decoder/count_mux0000 [12])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<12>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [11]),
    .DI(\decoder/count [12]),
    .S(\decoder/Maddsub_count_mux0000_lut [12]),
    .O(\decoder/Maddsub_count_mux0000_cy [12])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<11>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [10]),
    .LI(\decoder/Maddsub_count_mux0000_lut [11]),
    .O(\decoder/count_mux0000 [11])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<11>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [10]),
    .DI(\decoder/count [11]),
    .S(\decoder/Maddsub_count_mux0000_lut [11]),
    .O(\decoder/Maddsub_count_mux0000_cy [11])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<10>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [9]),
    .LI(\decoder/Maddsub_count_mux0000_lut [10]),
    .O(\decoder/count_mux0000 [10])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<10>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [9]),
    .DI(\decoder/count [10]),
    .S(\decoder/Maddsub_count_mux0000_lut [10]),
    .O(\decoder/Maddsub_count_mux0000_cy [10])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<9>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [8]),
    .LI(\decoder/Maddsub_count_mux0000_lut [9]),
    .O(\decoder/count_mux0000 [9])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<9>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [8]),
    .DI(\decoder/count [9]),
    .S(\decoder/Maddsub_count_mux0000_lut [9]),
    .O(\decoder/Maddsub_count_mux0000_cy [9])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<8>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [7]),
    .LI(\decoder/Maddsub_count_mux0000_lut [8]),
    .O(\decoder/count_mux0000 [8])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<8>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [7]),
    .DI(\decoder/count [8]),
    .S(\decoder/Maddsub_count_mux0000_lut [8]),
    .O(\decoder/Maddsub_count_mux0000_cy [8])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<7>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [6]),
    .LI(\decoder/Maddsub_count_mux0000_lut [7]),
    .O(\decoder/count_mux0000 [7])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<7>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [6]),
    .DI(\decoder/count [7]),
    .S(\decoder/Maddsub_count_mux0000_lut [7]),
    .O(\decoder/Maddsub_count_mux0000_cy [7])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<6>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [5]),
    .LI(\decoder/Maddsub_count_mux0000_lut [6]),
    .O(\decoder/count_mux0000 [6])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<6>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [5]),
    .DI(\decoder/count [6]),
    .S(\decoder/Maddsub_count_mux0000_lut [6]),
    .O(\decoder/Maddsub_count_mux0000_cy [6])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<5>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [4]),
    .LI(\decoder/Maddsub_count_mux0000_lut [5]),
    .O(\decoder/count_mux0000 [5])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<5>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [4]),
    .DI(\decoder/count [5]),
    .S(\decoder/Maddsub_count_mux0000_lut [5]),
    .O(\decoder/Maddsub_count_mux0000_cy [5])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<4>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [3]),
    .LI(\decoder/Maddsub_count_mux0000_lut [4]),
    .O(\decoder/count_mux0000 [4])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<4>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [3]),
    .DI(\decoder/count [4]),
    .S(\decoder/Maddsub_count_mux0000_lut [4]),
    .O(\decoder/Maddsub_count_mux0000_cy [4])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<3>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [2]),
    .LI(\decoder/Maddsub_count_mux0000_lut [3]),
    .O(\decoder/count_mux0000 [3])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<3>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [2]),
    .DI(\decoder/count [3]),
    .S(\decoder/Maddsub_count_mux0000_lut [3]),
    .O(\decoder/Maddsub_count_mux0000_cy [3])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<2>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [1]),
    .LI(\decoder/Maddsub_count_mux0000_lut [2]),
    .O(\decoder/count_mux0000 [2])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<2>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [1]),
    .DI(\decoder/count [2]),
    .S(\decoder/Maddsub_count_mux0000_lut [2]),
    .O(\decoder/Maddsub_count_mux0000_cy [2])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<1>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [0]),
    .LI(\decoder/Maddsub_count_mux0000_lut [1]),
    .O(\decoder/count_mux0000 [1])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<1>  (
    .CI(\decoder/Maddsub_count_mux0000_cy [0]),
    .DI(\decoder/count [1]),
    .S(\decoder/Maddsub_count_mux0000_lut [1]),
    .O(\decoder/Maddsub_count_mux0000_cy [1])
  );
  XORCY   \decoder/Maddsub_count_mux0000_xor<0>  (
    .CI(\decoder/count_mux0002 ),
    .LI(\decoder/Maddsub_count_mux0000_lut [0]),
    .O(\decoder/count_mux0000 [0])
  );
  MUXCY   \decoder/Maddsub_count_mux0000_cy<0>  (
    .CI(\decoder/count_mux0002 ),
    .DI(\decoder/count [0]),
    .S(\decoder/Maddsub_count_mux0000_lut [0]),
    .O(\decoder/Maddsub_count_mux0000_cy [0])
  );
  XORCY   \decoder/Msub_w_diff_xor<15>  (
    .CI(\decoder/Msub_w_diff_cy [14]),
    .LI(\decoder/Msub_w_diff_lut [15]),
    .O(\decoder/w_diff [15])
  );
  XORCY   \decoder/Msub_w_diff_xor<14>  (
    .CI(\decoder/Msub_w_diff_cy [13]),
    .LI(\decoder/Msub_w_diff_lut [14]),
    .O(\decoder/w_diff [14])
  );
  MUXCY   \decoder/Msub_w_diff_cy<14>  (
    .CI(\decoder/Msub_w_diff_cy [13]),
    .DI(\decoder/w_diff_mux0000 [14]),
    .S(\decoder/Msub_w_diff_lut [14]),
    .O(\decoder/Msub_w_diff_cy [14])
  );
  XORCY   \decoder/Msub_w_diff_xor<13>  (
    .CI(\decoder/Msub_w_diff_cy [12]),
    .LI(\decoder/Msub_w_diff_lut [13]),
    .O(\decoder/w_diff [13])
  );
  MUXCY   \decoder/Msub_w_diff_cy<13>  (
    .CI(\decoder/Msub_w_diff_cy [12]),
    .DI(\decoder/w_diff_mux0000 [13]),
    .S(\decoder/Msub_w_diff_lut [13]),
    .O(\decoder/Msub_w_diff_cy [13])
  );
  XORCY   \decoder/Msub_w_diff_xor<12>  (
    .CI(\decoder/Msub_w_diff_cy [11]),
    .LI(\decoder/Msub_w_diff_lut [12]),
    .O(\decoder/w_diff [12])
  );
  MUXCY   \decoder/Msub_w_diff_cy<12>  (
    .CI(\decoder/Msub_w_diff_cy [11]),
    .DI(\decoder/w_diff_mux0000 [12]),
    .S(\decoder/Msub_w_diff_lut [12]),
    .O(\decoder/Msub_w_diff_cy [12])
  );
  XORCY   \decoder/Msub_w_diff_xor<11>  (
    .CI(\decoder/Msub_w_diff_cy [10]),
    .LI(\decoder/Msub_w_diff_lut [11]),
    .O(\decoder/w_diff [11])
  );
  MUXCY   \decoder/Msub_w_diff_cy<11>  (
    .CI(\decoder/Msub_w_diff_cy [10]),
    .DI(\decoder/w_diff_mux0000 [11]),
    .S(\decoder/Msub_w_diff_lut [11]),
    .O(\decoder/Msub_w_diff_cy [11])
  );
  XORCY   \decoder/Msub_w_diff_xor<10>  (
    .CI(\decoder/Msub_w_diff_cy [9]),
    .LI(\decoder/Msub_w_diff_lut [10]),
    .O(\decoder/w_diff [10])
  );
  MUXCY   \decoder/Msub_w_diff_cy<10>  (
    .CI(\decoder/Msub_w_diff_cy [9]),
    .DI(\decoder/w_diff_mux0000 [10]),
    .S(\decoder/Msub_w_diff_lut [10]),
    .O(\decoder/Msub_w_diff_cy [10])
  );
  XORCY   \decoder/Msub_w_diff_xor<9>  (
    .CI(\decoder/Msub_w_diff_cy [8]),
    .LI(\decoder/Msub_w_diff_lut [9]),
    .O(\decoder/w_diff [9])
  );
  MUXCY   \decoder/Msub_w_diff_cy<9>  (
    .CI(\decoder/Msub_w_diff_cy [8]),
    .DI(\decoder/w_diff_mux0000 [9]),
    .S(\decoder/Msub_w_diff_lut [9]),
    .O(\decoder/Msub_w_diff_cy [9])
  );
  XORCY   \decoder/Msub_w_diff_xor<8>  (
    .CI(\decoder/Msub_w_diff_cy [7]),
    .LI(\decoder/Msub_w_diff_lut [8]),
    .O(\decoder/w_diff [8])
  );
  MUXCY   \decoder/Msub_w_diff_cy<8>  (
    .CI(\decoder/Msub_w_diff_cy [7]),
    .DI(\decoder/w_diff_mux0000 [8]),
    .S(\decoder/Msub_w_diff_lut [8]),
    .O(\decoder/Msub_w_diff_cy [8])
  );
  XORCY   \decoder/Msub_w_diff_xor<7>  (
    .CI(\decoder/Msub_w_diff_cy [6]),
    .LI(\decoder/Msub_w_diff_lut [7]),
    .O(\decoder/w_diff [7])
  );
  MUXCY   \decoder/Msub_w_diff_cy<7>  (
    .CI(\decoder/Msub_w_diff_cy [6]),
    .DI(\decoder/w_diff_mux0000 [7]),
    .S(\decoder/Msub_w_diff_lut [7]),
    .O(\decoder/Msub_w_diff_cy [7])
  );
  XORCY   \decoder/Msub_w_diff_xor<6>  (
    .CI(\decoder/Msub_w_diff_cy [5]),
    .LI(\decoder/Msub_w_diff_lut [6]),
    .O(\decoder/w_diff [6])
  );
  MUXCY   \decoder/Msub_w_diff_cy<6>  (
    .CI(\decoder/Msub_w_diff_cy [5]),
    .DI(\decoder/w_diff_mux0000 [6]),
    .S(\decoder/Msub_w_diff_lut [6]),
    .O(\decoder/Msub_w_diff_cy [6])
  );
  XORCY   \decoder/Msub_w_diff_xor<5>  (
    .CI(\decoder/Msub_w_diff_cy [4]),
    .LI(\decoder/Msub_w_diff_lut [5]),
    .O(\decoder/w_diff [5])
  );
  MUXCY   \decoder/Msub_w_diff_cy<5>  (
    .CI(\decoder/Msub_w_diff_cy [4]),
    .DI(\decoder/w_diff_mux0000 [5]),
    .S(\decoder/Msub_w_diff_lut [5]),
    .O(\decoder/Msub_w_diff_cy [5])
  );
  XORCY   \decoder/Msub_w_diff_xor<4>  (
    .CI(\decoder/Msub_w_diff_cy [3]),
    .LI(\decoder/Msub_w_diff_lut [4]),
    .O(\decoder/w_diff [4])
  );
  MUXCY   \decoder/Msub_w_diff_cy<4>  (
    .CI(\decoder/Msub_w_diff_cy [3]),
    .DI(\decoder/w_diff_mux0000 [4]),
    .S(\decoder/Msub_w_diff_lut [4]),
    .O(\decoder/Msub_w_diff_cy [4])
  );
  XORCY   \decoder/Msub_w_diff_xor<3>  (
    .CI(\decoder/Msub_w_diff_cy [2]),
    .LI(\decoder/Msub_w_diff_lut [3]),
    .O(\decoder/w_diff [3])
  );
  MUXCY   \decoder/Msub_w_diff_cy<3>  (
    .CI(\decoder/Msub_w_diff_cy [2]),
    .DI(\decoder/w_diff_mux0000 [3]),
    .S(\decoder/Msub_w_diff_lut [3]),
    .O(\decoder/Msub_w_diff_cy [3])
  );
  XORCY   \decoder/Msub_w_diff_xor<2>  (
    .CI(\decoder/Msub_w_diff_cy [1]),
    .LI(\decoder/Msub_w_diff_lut [2]),
    .O(\decoder/w_diff [2])
  );
  MUXCY   \decoder/Msub_w_diff_cy<2>  (
    .CI(\decoder/Msub_w_diff_cy [1]),
    .DI(\decoder/w_diff_mux0000 [2]),
    .S(\decoder/Msub_w_diff_lut [2]),
    .O(\decoder/Msub_w_diff_cy [2])
  );
  XORCY   \decoder/Msub_w_diff_xor<1>  (
    .CI(\decoder/Msub_w_diff_cy [0]),
    .LI(\decoder/Msub_w_diff_lut [1]),
    .O(\decoder/w_diff [1])
  );
  MUXCY   \decoder/Msub_w_diff_cy<1>  (
    .CI(\decoder/Msub_w_diff_cy [0]),
    .DI(\decoder/w_diff_mux0000 [1]),
    .S(\decoder/Msub_w_diff_lut [1]),
    .O(\decoder/Msub_w_diff_cy [1])
  );
  XORCY   \decoder/Msub_w_diff_xor<0>  (
    .CI(N1),
    .LI(\decoder/Msub_w_diff_lut [0]),
    .O(\decoder/w_diff [0])
  );
  MUXCY   \decoder/Msub_w_diff_cy<0>  (
    .CI(N1),
    .DI(\decoder/w_diff_mux0000 [0]),
    .S(\decoder/Msub_w_diff_lut [0]),
    .O(\decoder/Msub_w_diff_cy [0])
  );
  FDC   \decoder/r_Counter_16  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [16]),
    .Q(\decoder/r_Counter_161 )
  );
  FDC   \decoder/r_Counter_15  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [15]),
    .Q(\decoder/r_Counter [15])
  );
  FDC   \decoder/r_Counter_14  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [14]),
    .Q(\decoder/r_Counter [14])
  );
  FDC   \decoder/r_Counter_13  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [13]),
    .Q(\decoder/r_Counter [13])
  );
  FDC   \decoder/r_Counter_12  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [12]),
    .Q(\decoder/r_Counter [12])
  );
  FDC   \decoder/r_Counter_11  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [11]),
    .Q(\decoder/r_Counter [11])
  );
  FDC   \decoder/r_Counter_10  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [10]),
    .Q(\decoder/r_Counter [10])
  );
  FDC   \decoder/r_Counter_9  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [9]),
    .Q(\decoder/r_Counter [9])
  );
  FDC   \decoder/r_Counter_8  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [8]),
    .Q(\decoder/r_Counter [8])
  );
  FDC   \decoder/r_Counter_7  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [7]),
    .Q(\decoder/r_Counter [7])
  );
  FDC   \decoder/r_Counter_6  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [6]),
    .Q(\decoder/r_Counter [6])
  );
  FDC   \decoder/r_Counter_5  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [5]),
    .Q(\decoder/r_Counter [5])
  );
  FDC   \decoder/r_Counter_4  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [4]),
    .Q(\decoder/r_Counter [4])
  );
  FDC   \decoder/r_Counter_3  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [3]),
    .Q(\decoder/r_Counter [3])
  );
  FDC   \decoder/r_Counter_2  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [2]),
    .Q(\decoder/r_Counter [2])
  );
  FDC   \decoder/r_Counter_1  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [1]),
    .Q(\decoder/r_Counter [1])
  );
  FDC   \decoder/r_Counter_0  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\decoder/Result [0]),
    .Q(\decoder/r_Counter [0])
  );
  FDC   \decoder/r_countPrev_15  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [15]),
    .Q(\decoder/r_countPrev [15])
  );
  FDC   \decoder/r_countPrev_14  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [14]),
    .Q(\decoder/r_countPrev [14])
  );
  FDC   \decoder/r_countPrev_13  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [13]),
    .Q(\decoder/r_countPrev [13])
  );
  FDC   \decoder/r_countPrev_12  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [12]),
    .Q(\decoder/r_countPrev [12])
  );
  FDC   \decoder/r_countPrev_11  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [11]),
    .Q(\decoder/r_countPrev [11])
  );
  FDC   \decoder/r_countPrev_10  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [10]),
    .Q(\decoder/r_countPrev [10])
  );
  FDC   \decoder/r_countPrev_9  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [9]),
    .Q(\decoder/r_countPrev [9])
  );
  FDC   \decoder/r_countPrev_8  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [8]),
    .Q(\decoder/r_countPrev [8])
  );
  FDC   \decoder/r_countPrev_7  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [7]),
    .Q(\decoder/r_countPrev [7])
  );
  FDC   \decoder/r_countPrev_6  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [6]),
    .Q(\decoder/r_countPrev [6])
  );
  FDC   \decoder/r_countPrev_5  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [5]),
    .Q(\decoder/r_countPrev [5])
  );
  FDC   \decoder/r_countPrev_4  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [4]),
    .Q(\decoder/r_countPrev [4])
  );
  FDC   \decoder/r_countPrev_3  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [3]),
    .Q(\decoder/r_countPrev [3])
  );
  FDC   \decoder/r_countPrev_2  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [2]),
    .Q(\decoder/r_countPrev [2])
  );
  FDC   \decoder/r_countPrev_1  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [1]),
    .Q(\decoder/r_countPrev [1])
  );
  FDC   \decoder/r_countPrev_0  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/r_count [0]),
    .Q(\decoder/r_countPrev [0])
  );
  FDC   \decoder/r_count_15  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [15]),
    .Q(\decoder/r_count [15])
  );
  FDC   \decoder/r_count_14  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [14]),
    .Q(\decoder/r_count [14])
  );
  FDC   \decoder/r_count_13  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [13]),
    .Q(\decoder/r_count [13])
  );
  FDC   \decoder/r_count_12  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [12]),
    .Q(\decoder/r_count [12])
  );
  FDC   \decoder/r_count_11  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [11]),
    .Q(\decoder/r_count [11])
  );
  FDC   \decoder/r_count_10  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [10]),
    .Q(\decoder/r_count [10])
  );
  FDC   \decoder/r_count_9  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [9]),
    .Q(\decoder/r_count [9])
  );
  FDC   \decoder/r_count_8  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [8]),
    .Q(\decoder/r_count [8])
  );
  FDC   \decoder/r_count_7  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [7]),
    .Q(\decoder/r_count [7])
  );
  FDC   \decoder/r_count_6  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [6]),
    .Q(\decoder/r_count [6])
  );
  FDC   \decoder/r_count_5  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [5]),
    .Q(\decoder/r_count [5])
  );
  FDC   \decoder/r_count_4  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [4]),
    .Q(\decoder/r_count [4])
  );
  FDC   \decoder/r_count_3  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [3]),
    .Q(\decoder/r_count [3])
  );
  FDC   \decoder/r_count_2  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [2]),
    .Q(\decoder/r_count [2])
  );
  FDC   \decoder/r_count_1  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [1]),
    .Q(\decoder/r_count [1])
  );
  FDC   \decoder/r_count_0  (
    .C(\decoder/r_Counter [16]),
    .CLR(decoder_not0000),
    .D(\decoder/count [0]),
    .Q(\decoder/r_count [0])
  );
  FDCE   \decoder/count_15  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [0]),
    .Q(\decoder/count [15])
  );
  FDCE   \decoder/count_14  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [1]),
    .Q(\decoder/count [14])
  );
  FDCE   \decoder/count_13  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [2]),
    .Q(\decoder/count [13])
  );
  FDCE   \decoder/count_12  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [3]),
    .Q(\decoder/count [12])
  );
  FDCE   \decoder/count_11  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [4]),
    .Q(\decoder/count [11])
  );
  FDCE   \decoder/count_10  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [5]),
    .Q(\decoder/count [10])
  );
  FDCE   \decoder/count_9  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [6]),
    .Q(\decoder/count [9])
  );
  FDCE   \decoder/count_8  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [7]),
    .Q(\decoder/count [8])
  );
  FDCE   \decoder/count_7  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [8]),
    .Q(\decoder/count [7])
  );
  FDCE   \decoder/count_6  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [9]),
    .Q(\decoder/count [6])
  );
  FDCE   \decoder/count_5  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [10]),
    .Q(\decoder/count [5])
  );
  FDCE   \decoder/count_4  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [11]),
    .Q(\decoder/count [4])
  );
  FDCE   \decoder/count_3  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [12]),
    .Q(\decoder/count [3])
  );
  FDCE   \decoder/count_2  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [13]),
    .Q(\decoder/count [2])
  );
  FDCE   \decoder/count_1  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [14]),
    .Q(\decoder/count [1])
  );
  FDCE   \decoder/count_0  (
    .C(Clk_BUFGP_2),
    .CE(\decoder/count_enable ),
    .CLR(decoder_not0000),
    .D(\decoder/count_mux0001 [15]),
    .Q(\decoder/count [0])
  );
  FD   \decoder/quadB_delayed  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/DB_out_952 ),
    .Q(\decoder/quadB_delayed_1267 )
  );
  FD   \decoder/quadA_delayed  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/DB_out_932 ),
    .Q(\decoder/quadA_delayed_1266 )
  );
  FDE   \debouncer5/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer5/q_reg [6]),
    .D(\debouncer5/DFF2_914 ),
    .Q(\debouncer5/DB_out_912 )
  );
  FDR   \debouncer5/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/DFF1_913 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/DFF2_914 )
  );
  FDR   \debouncer5/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_5_IBUF_647),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/DFF1_913 )
  );
  FDR   \debouncer5/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [6])
  );
  FDR   \debouncer5/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [5])
  );
  FDR   \debouncer5/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [4])
  );
  FDR   \debouncer5/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [3])
  );
  FDR   \debouncer5/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [2])
  );
  FDR   \debouncer5/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [1])
  );
  FDR   \debouncer5/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer5/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer5/q_reg [0])
  );
  FDE   \debouncer4/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer4/q_reg [6]),
    .D(\debouncer4/DFF2_894 ),
    .Q(\debouncer4/DB_out_892 )
  );
  FDR   \debouncer4/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/DFF1_893 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/DFF2_894 )
  );
  FDR   \debouncer4/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_4_IBUF_646),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/DFF1_893 )
  );
  FDR   \debouncer4/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [6])
  );
  FDR   \debouncer4/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [5])
  );
  FDR   \debouncer4/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [4])
  );
  FDR   \debouncer4/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [3])
  );
  FDR   \debouncer4/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [2])
  );
  FDR   \debouncer4/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [1])
  );
  FDR   \debouncer4/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer4/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer4/q_reg [0])
  );
  FDE   \debouncer3/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer3/q_reg [6]),
    .D(\debouncer3/DFF2_874 ),
    .Q(\debouncer3/DB_out_872 )
  );
  FDR   \debouncer3/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/DFF1_873 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/DFF2_874 )
  );
  FDR   \debouncer3/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_3_IBUF_645),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/DFF1_873 )
  );
  FDR   \debouncer3/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [6])
  );
  FDR   \debouncer3/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [5])
  );
  FDR   \debouncer3/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [4])
  );
  FDR   \debouncer3/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [3])
  );
  FDR   \debouncer3/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [2])
  );
  FDR   \debouncer3/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [1])
  );
  FDR   \debouncer3/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer3/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer3/q_reg [0])
  );
  FDE   \debouncer2/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer2/q_reg [6]),
    .D(\debouncer2/DFF2_854 ),
    .Q(\debouncer2/DB_out_852 )
  );
  FDR   \debouncer2/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/DFF1_853 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/DFF2_854 )
  );
  FDR   \debouncer2/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_2_IBUF_644),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/DFF1_853 )
  );
  FDR   \debouncer2/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [6])
  );
  FDR   \debouncer2/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [5])
  );
  FDR   \debouncer2/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [4])
  );
  FDR   \debouncer2/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [3])
  );
  FDR   \debouncer2/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [2])
  );
  FDR   \debouncer2/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [1])
  );
  FDR   \debouncer2/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer2/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer2/q_reg [0])
  );
  FDE   \debouncer1/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer1/q_reg [6]),
    .D(\debouncer1/DFF2_834 ),
    .Q(\debouncer1/DB_out_832 )
  );
  FDR   \debouncer1/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/DFF1_833 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/DFF2_834 )
  );
  FDR   \debouncer1/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_1_IBUF_643),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/DFF1_833 )
  );
  FDR   \debouncer1/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [6])
  );
  FDR   \debouncer1/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [5])
  );
  FDR   \debouncer1/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [4])
  );
  FDR   \debouncer1/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [3])
  );
  FDR   \debouncer1/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [2])
  );
  FDR   \debouncer1/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [1])
  );
  FDR   \debouncer1/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer1/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer1/q_reg [0])
  );
  FDE   \debouncer0/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncer0/q_reg [6]),
    .D(\debouncer0/DFF2_814 ),
    .Q(\debouncer0/DB_out_812 )
  );
  FDR   \debouncer0/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/DFF1_813 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/DFF2_814 )
  );
  FDR   \debouncer0/DFF1  (
    .C(Clk_BUFGP_2),
    .D(Switch_0_IBUF_642),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/DFF1_813 )
  );
  FDR   \debouncer0/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [6])
  );
  FDR   \debouncer0/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [5])
  );
  FDR   \debouncer0/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [4])
  );
  FDR   \debouncer0/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [3])
  );
  FDR   \debouncer0/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [2])
  );
  FDR   \debouncer0/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [1])
  );
  FDR   \debouncer0/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncer0/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncer0/q_reg [0])
  );
  FDE   \debouncerB/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncerB/q_reg [6]),
    .D(\debouncerB/DFF2_954 ),
    .Q(\debouncerB/DB_out_952 )
  );
  FDR   \debouncerB/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/DFF1_953 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/DFF2_954 )
  );
  FDR   \debouncerB/DFF1  (
    .C(Clk_BUFGP_2),
    .D(i_B_IBUF_1354),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/DFF1_953 )
  );
  FDR   \debouncerB/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [6])
  );
  FDR   \debouncerB/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [5])
  );
  FDR   \debouncerB/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [4])
  );
  FDR   \debouncerB/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [3])
  );
  FDR   \debouncerB/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [2])
  );
  FDR   \debouncerB/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [1])
  );
  FDR   \debouncerB/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncerB/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerB/q_reg [0])
  );
  FDE   \debouncerA/DB_out  (
    .C(Clk_BUFGP_2),
    .CE(\debouncerA/q_reg [6]),
    .D(\debouncerA/DFF2_934 ),
    .Q(\debouncerA/DB_out_932 )
  );
  FDR   \debouncerA/DFF2  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/DFF1_933 ),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/DFF2_934 )
  );
  FDR   \debouncerA/DFF1  (
    .C(Clk_BUFGP_2),
    .D(i_A_IBUF_1352),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/DFF1_933 )
  );
  FDR   \debouncerA/q_reg_6  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [6]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [6])
  );
  FDR   \debouncerA/q_reg_5  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [5]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [5])
  );
  FDR   \debouncerA/q_reg_4  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [4]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [4])
  );
  FDR   \debouncerA/q_reg_3  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [3]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [3])
  );
  FDR   \debouncerA/q_reg_2  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [2]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [2])
  );
  FDR   \debouncerA/q_reg_1  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [1]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [1])
  );
  FDR   \debouncerA/q_reg_0  (
    .C(Clk_BUFGP_2),
    .D(\debouncerA/q_next [0]),
    .R(LED_5_OBUF_24),
    .Q(\debouncerA/q_reg [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \converter/r_SM_Main_FSM_FFd6  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_SM_Main_FSM_FFd3_787 ),
    .Q(\converter/r_SM_Main_FSM_FFd6_791 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd4  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_SM_Main_FSM_FFd5_790 ),
    .Q(\converter/r_SM_Main_FSM_FFd4_789 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd1  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_SM_Main_FSM_FFd2_783 ),
    .Q(\converter/r_SM_Main_FSM_FFd1_782 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd2  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_SM_Main_FSM_FFd2-In ),
    .Q(\converter/r_SM_Main_FSM_FFd2_783 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd3  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_SM_Main_FSM_FFd3_787 )
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<7>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [6]),
    .LI(\converter/Mcount_r_Loop_Count_xor<7>_rt_666 ),
    .O(\converter/Result [7])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<6>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [5]),
    .LI(\converter/Mcount_r_Loop_Count_cy<6>_rt_664 ),
    .O(\converter/Result [6])
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<6>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [5]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<6>_rt_664 ),
    .O(\converter/Mcount_r_Loop_Count_cy [6])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<5>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [4]),
    .LI(\converter/Mcount_r_Loop_Count_cy<5>_rt_662 ),
    .O(\converter/Result [5])
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<5>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [4]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<5>_rt_662 ),
    .O(\converter/Mcount_r_Loop_Count_cy [5])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<4>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [3]),
    .LI(\converter/Mcount_r_Loop_Count_cy<4>_rt_660 ),
    .O(\converter/Result [4])
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<4>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [3]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<4>_rt_660 ),
    .O(\converter/Mcount_r_Loop_Count_cy [4])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<3>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [2]),
    .LI(\converter/Mcount_r_Loop_Count_cy<3>_rt_658 ),
    .O(\converter/Result<3>1 )
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<3>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [2]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<3>_rt_658 ),
    .O(\converter/Mcount_r_Loop_Count_cy [3])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<2>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [1]),
    .LI(\converter/Mcount_r_Loop_Count_cy<2>_rt_656 ),
    .O(\converter/Result<2>1 )
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<2>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [1]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<2>_rt_656 ),
    .O(\converter/Mcount_r_Loop_Count_cy [2])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<1>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [0]),
    .LI(\converter/Mcount_r_Loop_Count_cy<1>_rt_654 ),
    .O(\converter/Result<1>1 )
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<1>  (
    .CI(\converter/Mcount_r_Loop_Count_cy [0]),
    .DI(LED_5_OBUF_24),
    .S(\converter/Mcount_r_Loop_Count_cy<1>_rt_654 ),
    .O(\converter/Mcount_r_Loop_Count_cy [1])
  );
  XORCY   \converter/Mcount_r_Loop_Count_xor<0>  (
    .CI(LED_5_OBUF_24),
    .LI(\converter/Mcount_r_Loop_Count_lut [0]),
    .O(\converter/Result<0>1 )
  );
  MUXCY   \converter/Mcount_r_Loop_Count_cy<0>  (
    .CI(LED_5_OBUF_24),
    .DI(N1),
    .S(\converter/Mcount_r_Loop_Count_lut [0]),
    .O(\converter/Mcount_r_Loop_Count_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_3  (
    .I0(\converter/r_BCD [12]),
    .I1(\converter/r_BCD [8]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_3_667 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_4  (
    .I0(\converter/r_BCD [4]),
    .I1(\converter/r_BCD [0]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_4_671 )
  );
  MUXF5   \converter/Mmux_w_BCD_Digit_2_f5  (
    .I0(\converter/Mmux_w_BCD_Digit_4_671 ),
    .I1(\converter/Mmux_w_BCD_Digit_3_667 ),
    .S(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_31  (
    .I0(\converter/r_BCD [13]),
    .I1(\converter/r_BCD [9]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_31_668 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_41  (
    .I0(\converter/r_BCD [5]),
    .I1(\converter/r_BCD [1]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_41_672 )
  );
  MUXF5   \converter/Mmux_w_BCD_Digit_2_f5_0  (
    .I0(\converter/Mmux_w_BCD_Digit_41_672 ),
    .I1(\converter/Mmux_w_BCD_Digit_31_668 ),
    .S(\converter/r_Digit_Index [1]),
    .O(\converter/w_BCD_Digit [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_32  (
    .I0(\converter/r_BCD [14]),
    .I1(\converter/r_BCD [10]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_32_669 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_42  (
    .I0(\converter/r_BCD [6]),
    .I1(\converter/r_BCD [2]),
    .I2(\converter/r_Digit_Index_0_1_769 ),
    .O(\converter/Mmux_w_BCD_Digit_42_673 )
  );
  MUXF5   \converter/Mmux_w_BCD_Digit_2_f5_1  (
    .I0(\converter/Mmux_w_BCD_Digit_42_673 ),
    .I1(\converter/Mmux_w_BCD_Digit_32_669 ),
    .S(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_33  (
    .I0(\converter/r_BCD [15]),
    .I1(\converter/r_BCD [11]),
    .I2(\converter/r_Digit_Index [0]),
    .O(\converter/Mmux_w_BCD_Digit_33_670 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_43  (
    .I0(\converter/r_BCD [7]),
    .I1(\converter/r_BCD [3]),
    .I2(\converter/r_Digit_Index [0]),
    .O(\converter/Mmux_w_BCD_Digit_43_674 )
  );
  MUXF5   \converter/Mmux_w_BCD_Digit_2_f5_2  (
    .I0(\converter/Mmux_w_BCD_Digit_43_674 ),
    .I1(\converter/Mmux_w_BCD_Digit_33_670 ),
    .S(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_lut [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_7  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result [7]),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_6  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result [6]),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_5  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result [5]),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_4  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result [4]),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_3  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result<3>1 ),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_2  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result<2>1 ),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_1  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result<1>1 ),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_0  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd4_789 ),
    .D(\converter/Result<0>1 ),
    .R(\converter/r_SM_Main_FSM_FFd3-In ),
    .Q(\converter/r_Loop_Count [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_3  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd1_782 ),
    .D(\converter/Result [3]),
    .R(\converter/r_Digit_Index_and0000 ),
    .Q(\converter/r_Digit_Index [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_2  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd1_782 ),
    .D(\converter/Result [2]),
    .R(\converter/r_Digit_Index_and0000 ),
    .Q(\converter/r_Digit_Index [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_1  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd1_782 ),
    .D(\converter/Result [1]),
    .R(\converter/r_Digit_Index_and0000 ),
    .Q(\converter/r_Digit_Index [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_0  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd1_782 ),
    .D(\converter/Result [0]),
    .R(\converter/r_Digit_Index_and0000 ),
    .Q(\converter/r_Digit_Index [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_12  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000 [12]),
    .Q(\converter/r_Binary [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_11  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000 [11]),
    .Q(\converter/r_Binary [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_10  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000 [10]),
    .Q(\converter/r_Binary [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_9  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000 [9]),
    .Q(\converter/r_Binary [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_8  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000 [8]),
    .Q(\converter/r_Binary [8])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [3])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [4]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [4])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [5]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [5])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [6]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [6])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [7]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [7])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [8]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [8])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [9]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [9])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [10]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [10])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [11]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [11])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [12]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [12])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [13]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [13])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [14]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [14])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [15]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md [15])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [3])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [4]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [4])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [5]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [5])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [6]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [6])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [7]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [7])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [8]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [8])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [9]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [9])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [10]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [10])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [11]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [11])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [12]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [12])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [13]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [13])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [14]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [14])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [15]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr [15])
  );
  FDC   \pidController/multiplier_16x16bit_pipelined/stage_0_ready  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/start_1942 ),
    .Q(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w1 ),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w0 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/negation [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w4 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/negation [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w7 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [5]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [6]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [0]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [0])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [1])
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1852 ),
    .CLR(decoder_not0000),
    .D(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [2])
  );
  FDC   \pidController/state_1_FSM_FFd1  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd2_1946 ),
    .Q(\pidController/state_1_FSM_FFd1_1944 )
  );
  FDC   \pidController/state_1_FSM_FFd2  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd3_1947 ),
    .Q(\pidController/state_1_FSM_FFd2_1946 )
  );
  FDC   \pidController/state_1_FSM_FFd3  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd4_1948 ),
    .Q(\pidController/state_1_FSM_FFd3_1947 )
  );
  FDC   \pidController/state_1_FSM_FFd4  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd5_1949 ),
    .Q(\pidController/state_1_FSM_FFd4_1948 )
  );
  FDC   \pidController/state_1_FSM_FFd5  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd6_1950 ),
    .Q(\pidController/state_1_FSM_FFd5_1949 )
  );
  FDC   \pidController/state_1_FSM_FFd6  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd7_1951 ),
    .Q(\pidController/state_1_FSM_FFd6_1950 )
  );
  FDC   \pidController/state_1_FSM_FFd7  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd8_1952 ),
    .Q(\pidController/state_1_FSM_FFd7_1951 )
  );
  FDC   \pidController/state_1_FSM_FFd8  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd9_1953 ),
    .Q(\pidController/state_1_FSM_FFd8_1952 )
  );
  FDC   \pidController/state_1_FSM_FFd9  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/state_1_FSM_FFd10_1945 ),
    .Q(\pidController/state_1_FSM_FFd9_1953 )
  );
  FDP   \pidController/state_1_FSM_FFd10  (
    .C(Clk_BUFGP_2),
    .D(\pidController/state_1_FSM_FFd1_1944 ),
    .PRE(decoder_not0000),
    .Q(\pidController/state_1_FSM_FFd10_1945 )
  );
  FDC   \pidController/md_index_2  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/md_index_mux0000 [0]),
    .Q(\pidController/md_index [2])
  );
  FDC   \pidController/md_index_1  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/md_index_mux0000 [1]),
    .Q(\pidController/md_index [1])
  );
  FDCE   \pidController/sigma_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [15]),
    .Q(\pidController/sigma [15])
  );
  FDCE   \pidController/sigma_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [14]),
    .Q(\pidController/sigma [14])
  );
  FDCE   \pidController/sigma_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [13]),
    .Q(\pidController/sigma [13])
  );
  FDCE   \pidController/sigma_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [12]),
    .Q(\pidController/sigma [12])
  );
  FDCE   \pidController/sigma_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [11]),
    .Q(\pidController/sigma [11])
  );
  FDCE   \pidController/sigma_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [10]),
    .Q(\pidController/sigma [10])
  );
  FDCE   \pidController/sigma_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [9]),
    .Q(\pidController/sigma [9])
  );
  FDCE   \pidController/sigma_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [8]),
    .Q(\pidController/sigma [8])
  );
  FDCE   \pidController/sigma_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [7]),
    .Q(\pidController/sigma [7])
  );
  FDCE   \pidController/sigma_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [6]),
    .Q(\pidController/sigma [6])
  );
  FDCE   \pidController/sigma_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [5]),
    .Q(\pidController/sigma [5])
  );
  FDCE   \pidController/sigma_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [4]),
    .Q(\pidController/sigma [4])
  );
  FDCE   \pidController/sigma_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [3]),
    .Q(\pidController/sigma [3])
  );
  FDCE   \pidController/sigma_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [2]),
    .Q(\pidController/sigma [2])
  );
  FDCE   \pidController/sigma_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [1]),
    .Q(\pidController/sigma [1])
  );
  FDCE   \pidController/sigma_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd3_1947 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [0]),
    .Q(\pidController/sigma [0])
  );
  FDCE   \pidController/un_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [15]),
    .Q(\pidController/un [15])
  );
  FDCE   \pidController/un_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [14]),
    .Q(\pidController/un [14])
  );
  FDCE   \pidController/un_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [13]),
    .Q(\pidController/un [13])
  );
  FDCE   \pidController/un_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [12]),
    .Q(\pidController/un [12])
  );
  FDCE   \pidController/un_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [11]),
    .Q(\pidController/un [11])
  );
  FDCE   \pidController/un_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [10]),
    .Q(\pidController/un [10])
  );
  FDCE   \pidController/un_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [9]),
    .Q(\pidController/un [9])
  );
  FDCE   \pidController/un_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [8]),
    .Q(\pidController/un [8])
  );
  FDCE   \pidController/un_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [7]),
    .Q(\pidController/un [7])
  );
  FDCE   \pidController/un_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [6]),
    .Q(\pidController/un [6])
  );
  FDCE   \pidController/un_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [5]),
    .Q(\pidController/un [5])
  );
  FDCE   \pidController/un_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [4]),
    .Q(\pidController/un [4])
  );
  FDCE   \pidController/un_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [3]),
    .Q(\pidController/un [3])
  );
  FDCE   \pidController/un_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [2]),
    .Q(\pidController/un [2])
  );
  FDCE   \pidController/un_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [1]),
    .Q(\pidController/un [1])
  );
  FDCE   \pidController/un_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd1_1944 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [0]),
    .Q(\pidController/un [0])
  );
  FDCE   \pidController/err_1_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [15]),
    .Q(\pidController/err_1_15_1477 )
  );
  FDCE   \pidController/err_1_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [14]),
    .Q(\pidController/err_1_14_1476 )
  );
  FDCE   \pidController/err_1_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [13]),
    .Q(\pidController/err_1_13_1475 )
  );
  FDCE   \pidController/err_1_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [12]),
    .Q(\pidController/err_1_12_1474 )
  );
  FDCE   \pidController/err_1_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [11]),
    .Q(\pidController/err_1_11_1473 )
  );
  FDCE   \pidController/err_1_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [10]),
    .Q(\pidController/err_1_10_1472 )
  );
  FDCE   \pidController/err_1_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [9]),
    .Q(\pidController/err_1_9_1485 )
  );
  FDCE   \pidController/err_1_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [8]),
    .Q(\pidController/err_1_8_1484 )
  );
  FDCE   \pidController/err_1_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [7]),
    .Q(\pidController/err_1_7_1483 )
  );
  FDCE   \pidController/err_1_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [6]),
    .Q(\pidController/err_1_6_1482 )
  );
  FDCE   \pidController/err_1_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [5]),
    .Q(\pidController/err_1_5_1481 )
  );
  FDCE   \pidController/err_1_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [4]),
    .Q(\pidController/err_1_4_1480 )
  );
  FDCE   \pidController/err_1_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [3]),
    .Q(\pidController/err_1_3_1479 )
  );
  FDCE   \pidController/err_1_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [2]),
    .Q(\pidController/err_1_2_1478 )
  );
  FDCE   \pidController/err_1_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [1]),
    .Q(\pidController/err_1_1_1471 )
  );
  FDCE   \pidController/err_1_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd5_1949 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [0]),
    .Q(\pidController/err_1_0_1470 )
  );
  FDCE   \pidController/err_0_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [15]),
    .Q(\pidController/err_0_15_1461 )
  );
  FDCE   \pidController/err_0_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [14]),
    .Q(\pidController/err_0_14_1460 )
  );
  FDCE   \pidController/err_0_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [13]),
    .Q(\pidController/err_0_13_1459 )
  );
  FDCE   \pidController/err_0_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [12]),
    .Q(\pidController/err_0_12_1458 )
  );
  FDCE   \pidController/err_0_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [11]),
    .Q(\pidController/err_0_11_1457 )
  );
  FDCE   \pidController/err_0_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [10]),
    .Q(\pidController/err_0_10_1456 )
  );
  FDCE   \pidController/err_0_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [9]),
    .Q(\pidController/err_0_9_1469 )
  );
  FDCE   \pidController/err_0_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [8]),
    .Q(\pidController/err_0_8_1468 )
  );
  FDCE   \pidController/err_0_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [7]),
    .Q(\pidController/err_0_7_1467 )
  );
  FDCE   \pidController/err_0_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [6]),
    .Q(\pidController/err_0_6_1466 )
  );
  FDCE   \pidController/err_0_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [5]),
    .Q(\pidController/err_0_5_1465 )
  );
  FDCE   \pidController/err_0_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [4]),
    .Q(\pidController/err_0_4_1464 )
  );
  FDCE   \pidController/err_0_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [3]),
    .Q(\pidController/err_0_3_1463 )
  );
  FDCE   \pidController/err_0_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [2]),
    .Q(\pidController/err_0_2_1462 )
  );
  FDCE   \pidController/err_0_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [1]),
    .Q(\pidController/err_0_1_1455 )
  );
  FDCE   \pidController/err_0_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd6_1950 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [0]),
    .Q(\pidController/err_0_0_1454 )
  );
  FDCE   \pidController/kpd_15  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [15]),
    .Q(\pidController/kpd [15])
  );
  FDCE   \pidController/kpd_14  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [14]),
    .Q(\pidController/kpd [14])
  );
  FDCE   \pidController/kpd_13  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [13]),
    .Q(\pidController/kpd [13])
  );
  FDCE   \pidController/kpd_12  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [12]),
    .Q(\pidController/kpd [12])
  );
  FDCE   \pidController/kpd_11  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [11]),
    .Q(\pidController/kpd [11])
  );
  FDCE   \pidController/kpd_10  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [10]),
    .Q(\pidController/kpd [10])
  );
  FDCE   \pidController/kpd_9  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [9]),
    .Q(\pidController/kpd [9])
  );
  FDCE   \pidController/kpd_8  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [8]),
    .Q(\pidController/kpd [8])
  );
  FDCE   \pidController/kpd_7  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [7]),
    .Q(\pidController/kpd [7])
  );
  FDCE   \pidController/kpd_6  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [6]),
    .Q(\pidController/kpd [6])
  );
  FDCE   \pidController/kpd_5  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [5]),
    .Q(\pidController/kpd [5])
  );
  FDCE   \pidController/kpd_4  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [4]),
    .Q(\pidController/kpd [4])
  );
  FDCE   \pidController/kpd_3  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [3]),
    .Q(\pidController/kpd [3])
  );
  FDCE   \pidController/kpd_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [2]),
    .Q(\pidController/kpd [2])
  );
  FDCE   \pidController/kpd_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [1]),
    .Q(\pidController/kpd [1])
  );
  FDCE   \pidController/kpd_0  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/state_1_FSM_FFd8_1952 ),
    .CLR(decoder_not0000),
    .D(\pidController/sum [0]),
    .Q(\pidController/kpd [0])
  );
  FDC   \pidController/start  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/start_mux0000 ),
    .Q(\pidController/start_1942 )
  );
  FDC   \pidController/cout  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/cout_mux0000 ),
    .Q(\pidController/cout_1452 )
  );
  FDC   \pidController/a_15  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [15]),
    .Q(\pidController/a [15])
  );
  FDC   \pidController/a_14  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [14]),
    .Q(\pidController/a [14])
  );
  FDC   \pidController/a_13  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [13]),
    .Q(\pidController/a [13])
  );
  FDC   \pidController/a_12  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [12]),
    .Q(\pidController/a [12])
  );
  FDC   \pidController/a_11  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [11]),
    .Q(\pidController/a [11])
  );
  FDC   \pidController/a_10  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [10]),
    .Q(\pidController/a [10])
  );
  FDC   \pidController/a_9  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [9]),
    .Q(\pidController/a [9])
  );
  FDC   \pidController/a_8  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [8]),
    .Q(\pidController/a [8])
  );
  FDC   \pidController/a_7  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [7]),
    .Q(\pidController/a [7])
  );
  FDC   \pidController/a_6  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [6]),
    .Q(\pidController/a [6])
  );
  FDC   \pidController/a_5  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [5]),
    .Q(\pidController/a [5])
  );
  FDC   \pidController/a_4  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [4]),
    .Q(\pidController/a [4])
  );
  FDC   \pidController/a_3  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [3]),
    .Q(\pidController/a [3])
  );
  FDC   \pidController/a_2  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [2]),
    .Q(\pidController/a [2])
  );
  FDC   \pidController/a_1  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [1]),
    .Q(\pidController/a [1])
  );
  FDC   \pidController/a_0  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/a_mux0000 [0]),
    .Q(\pidController/a [0])
  );
  FDC   \pidController/p_15  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [15]),
    .Q(\pidController/p [15])
  );
  FDC   \pidController/p_14  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [14]),
    .Q(\pidController/p [14])
  );
  FDC   \pidController/p_13  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [13]),
    .Q(\pidController/p [13])
  );
  FDC   \pidController/p_12  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [12]),
    .Q(\pidController/p [12])
  );
  FDC   \pidController/p_11  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [11]),
    .Q(\pidController/p [11])
  );
  FDC   \pidController/p_10  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [10]),
    .Q(\pidController/p [10])
  );
  FDC   \pidController/p_9  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [9]),
    .Q(\pidController/p [9])
  );
  FDC   \pidController/p_8  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [8]),
    .Q(\pidController/p [8])
  );
  FDC   \pidController/p_7  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [7]),
    .Q(\pidController/p [7])
  );
  FDC   \pidController/p_6  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [6]),
    .Q(\pidController/p [6])
  );
  FDC   \pidController/p_5  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [5]),
    .Q(\pidController/p [5])
  );
  FDC   \pidController/p_4  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [4]),
    .Q(\pidController/p [4])
  );
  FDC   \pidController/p_3  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [3]),
    .Q(\pidController/p [3])
  );
  FDC   \pidController/p_2  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [2]),
    .Q(\pidController/p [2])
  );
  FDC   \pidController/p_1  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [1]),
    .Q(\pidController/p [1])
  );
  FDC   \pidController/p_0  (
    .C(Clk_BUFGP_2),
    .CLR(decoder_not0000),
    .D(\pidController/p_mux0000 [0]),
    .Q(\pidController/p [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_9__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[9]),
    .O(r_kp_9__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_9__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[9]),
    .O(r_kp_9__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_8__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[8]),
    .O(r_kp_8__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_8__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[8]),
    .O(r_kp_8__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_7__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[7]),
    .O(r_kp_7__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_7__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[7]),
    .O(r_kp_7__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_6__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[6]),
    .O(r_kp_6__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_6__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[6]),
    .O(r_kp_6__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_5__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[5]),
    .O(r_kp_5__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_5__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[5]),
    .O(r_kp_5__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_4__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[4]),
    .O(r_kp_4__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_4__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[4]),
    .O(r_kp_4__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_3__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[3]),
    .O(r_kp_3__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_3__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[3]),
    .O(r_kp_3__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_2__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[2]),
    .O(r_kp_2__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_2__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[2]),
    .O(r_kp_2__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_1__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[1]),
    .O(r_kp_1__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_1__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[1]),
    .O(r_kp_1__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_15__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[15]),
    .O(r_kp_15__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_15__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[15]),
    .O(r_kp_15__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_14__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[14]),
    .O(r_kp_14__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_14__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[14]),
    .O(r_kp_14__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_13__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[13]),
    .O(r_kp_13__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_13__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[13]),
    .O(r_kp_13__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_12__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[12]),
    .O(r_kp_12__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_12__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[12]),
    .O(r_kp_12__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_11__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[11]),
    .O(r_kp_11__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_11__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[11]),
    .O(r_kp_11__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_10__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[10]),
    .O(r_kp_10__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_10__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[10]),
    .O(r_kp_10__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_0__and00011 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[0]),
    .O(r_kp_0__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_0__and00001 (
    .I0(\debouncer3/DB_out_872 ),
    .I1(r_kp_mux0000[0]),
    .O(r_kp_0__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_9__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[9]),
    .O(r_ki_9__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_9__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[9]),
    .O(r_ki_9__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_8__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[8]),
    .O(r_ki_8__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_8__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[8]),
    .O(r_ki_8__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_7__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[7]),
    .O(r_ki_7__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_7__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[7]),
    .O(r_ki_7__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_6__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[6]),
    .O(r_ki_6__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_6__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[6]),
    .O(r_ki_6__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_5__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[5]),
    .O(r_ki_5__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_5__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[5]),
    .O(r_ki_5__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_4__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[4]),
    .O(r_ki_4__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_4__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[4]),
    .O(r_ki_4__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_3__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[3]),
    .O(r_ki_3__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_3__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[3]),
    .O(r_ki_3__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_2__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[2]),
    .O(r_ki_2__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_2__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[2]),
    .O(r_ki_2__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_1__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[1]),
    .O(r_ki_1__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_1__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[1]),
    .O(r_ki_1__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_15__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[15]),
    .O(r_ki_15__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_15__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[15]),
    .O(r_ki_15__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_14__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[14]),
    .O(r_ki_14__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_14__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[14]),
    .O(r_ki_14__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_13__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[13]),
    .O(r_ki_13__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_13__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[13]),
    .O(r_ki_13__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_12__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[12]),
    .O(r_ki_12__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_12__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[12]),
    .O(r_ki_12__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_11__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[11]),
    .O(r_ki_11__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_11__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[11]),
    .O(r_ki_11__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_10__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[10]),
    .O(r_ki_10__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_10__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[10]),
    .O(r_ki_10__and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_0__and00011 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[0]),
    .O(r_ki_0__and0001)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_0__and00001 (
    .I0(\debouncer5/DB_out_912 ),
    .I1(r_ki_mux0000[0]),
    .O(r_ki_0__and0000)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \decoder/Madd_o_velocity_addsub0001R1  (
    .I0(\decoder/w_diff [2]),
    .I1(\decoder/w_diff [1]),
    .I2(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001R )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<9>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [9]),
    .I2(\decoder/r_count [9]),
    .O(\decoder/w_diff_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<8>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [8]),
    .I2(\decoder/r_count [8]),
    .O(\decoder/w_diff_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<7>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [7]),
    .I2(\decoder/r_count [7]),
    .O(\decoder/w_diff_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<6>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [6]),
    .I2(\decoder/r_count [6]),
    .O(\decoder/w_diff_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<5>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [5]),
    .I2(\decoder/r_count [5]),
    .O(\decoder/w_diff_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<4>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [4]),
    .I2(\decoder/r_count [4]),
    .O(\decoder/w_diff_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<3>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [3]),
    .I2(\decoder/r_count [3]),
    .O(\decoder/w_diff_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<2>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [2]),
    .I2(\decoder/r_count [2]),
    .O(\decoder/w_diff_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<1>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [1]),
    .I2(\decoder/r_count [1]),
    .O(\decoder/w_diff_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<14>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [14]),
    .I2(\decoder/r_count [14]),
    .O(\decoder/w_diff_mux0000 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<13>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [13]),
    .I2(\decoder/r_count [13]),
    .O(\decoder/w_diff_mux0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<12>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [12]),
    .I2(\decoder/r_count [12]),
    .O(\decoder/w_diff_mux0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<11>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [11]),
    .I2(\decoder/r_count [11]),
    .O(\decoder/w_diff_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<10>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [10]),
    .I2(\decoder/r_count [10]),
    .O(\decoder/w_diff_mux0000 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<0>1  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/r_countPrev [0]),
    .I2(\decoder/r_count [0]),
    .O(\decoder/w_diff_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C91  (
    .I0(\decoder/w_diff [10]),
    .I1(\decoder/w_diff [9]),
    .I2(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_addsub0001C9 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C81  (
    .I0(\decoder/w_diff [10]),
    .I1(\decoder/w_diff [9]),
    .I2(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_addsub0001C8 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C71  (
    .I0(\decoder/w_diff [7]),
    .I1(\decoder/w_diff [8]),
    .I2(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001C7 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C61  (
    .I0(\decoder/w_diff [7]),
    .I1(\decoder/w_diff [8]),
    .I2(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_addsub0001C6 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C51  (
    .I0(\decoder/w_diff [5]),
    .I1(\decoder/w_diff [6]),
    .I2(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_addsub0001C5 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C41  (
    .I0(\decoder/w_diff [5]),
    .I1(\decoder/w_diff [6]),
    .I2(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_addsub0001C4 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C31  (
    .I0(\decoder/w_diff [3]),
    .I1(\decoder/w_diff [4]),
    .I2(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_addsub0001C3 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C21  (
    .I0(\decoder/w_diff [3]),
    .I1(\decoder/w_diff [4]),
    .I2(\decoder/w_diff [2]),
    .O(\decoder/Madd_o_velocity_addsub0001C2 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C121  (
    .I0(\decoder/w_diff [13]),
    .I1(\decoder/w_diff [14]),
    .I2(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_addsub0001C12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C111  (
    .I0(\decoder/w_diff [11]),
    .I1(\decoder/w_diff [12]),
    .I2(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001C11_975 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C101  (
    .I0(\decoder/w_diff [11]),
    .I1(\decoder/w_diff [12]),
    .I2(\decoder/w_diff [10]),
    .O(\decoder/Madd_o_velocity_addsub0001C10 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C11  (
    .I0(\decoder/w_diff [1]),
    .I1(\decoder/w_diff [2]),
    .I2(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_addsub0001C1_973 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C1  (
    .I0(\decoder/w_diff [1]),
    .I1(\decoder/w_diff [2]),
    .I2(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001C )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \converter/Mcount_r_Digit_Index_xor<1>11  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .O(\converter/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/start_mux00001  (
    .I0(\pidController/start_1942 ),
    .I1(\pidController/state_1_FSM_FFd4_1948 ),
    .I2(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/start_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/cout_mux00001  (
    .I0(\pidController/cout_1452 ),
    .I1(\pidController/state_1_FSM_FFd6_1950 ),
    .I2(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/cout_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<0>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w0 [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \converter/Mcount_r_Digit_Index_xor<2>11  (
    .I0(\converter/r_Digit_Index [2]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/r_Digit_Index [0]),
    .O(\converter/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \pidController/md_index_mux0000<1>1  (
    .I0(\pidController/state_1_FSM_FFd5_1949 ),
    .I1(\pidController/state_1_FSM_FFd4_1948 ),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/state_1_FSM_FFd6_1950 ),
    .O(\pidController/md_index_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \pidController/md_index_mux0000<0>1  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/state_1_FSM_FFd4_1948 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/state_1_FSM_FFd5_1949 ),
    .O(\pidController/md_index_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<1>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \converter/Mcount_r_Digit_Index_xor<3>11  (
    .I0(\converter/r_Digit_Index [3]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/r_Digit_Index [0]),
    .I3(\converter/r_Digit_Index [2]),
    .O(\converter/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \decoder/Mxor_count_enable_xo<0>1  (
    .I0(\debouncerB/DB_out_952 ),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .I3(\decoder/quadA_delayed_1266 ),
    .O(\decoder/count_enable )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncerB/q_next<5>11  (
    .I0(\debouncerB/DFF1_953 ),
    .I1(\debouncerB/DFF2_954 ),
    .O(\debouncerB/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncerA/q_next<5>11  (
    .I0(\debouncerA/DFF1_933 ),
    .I1(\debouncerA/DFF2_934 ),
    .O(\debouncerA/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer5/q_next<5>11  (
    .I0(\debouncer5/DFF1_913 ),
    .I1(\debouncer5/DFF2_914 ),
    .O(\debouncer5/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer4/q_next<5>11  (
    .I0(\debouncer4/DFF1_893 ),
    .I1(\debouncer4/DFF2_894 ),
    .O(\debouncer4/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer3/q_next<5>11  (
    .I0(\debouncer3/DFF1_873 ),
    .I1(\debouncer3/DFF2_874 ),
    .O(\debouncer3/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer2/q_next<5>11  (
    .I0(\debouncer2/DFF1_853 ),
    .I1(\debouncer2/DFF2_854 ),
    .O(\debouncer2/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer1/q_next<5>11  (
    .I0(\debouncer1/DFF1_833 ),
    .I1(\debouncer1/DFF2_834 ),
    .O(\debouncer1/N01 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer0/q_next<5>11  (
    .I0(\debouncer0/DFF1_813 ),
    .I1(\debouncer0/DFF2_814 ),
    .O(\debouncer0/N01 )
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<3>1  (
    .I0(\debouncerB/N01 ),
    .I1(\debouncerB/q_reg [3]),
    .I2(\debouncerB/q_reg [2]),
    .I3(\debouncerB/N02 ),
    .O(\debouncerB/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<1>1  (
    .I0(\debouncerB/N01 ),
    .I1(\debouncerB/q_reg [1]),
    .I2(\debouncerB/q_reg [0]),
    .I3(\debouncerB/q_reg [6]),
    .O(\debouncerB/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<3>1  (
    .I0(\debouncerA/N01 ),
    .I1(\debouncerA/q_reg [3]),
    .I2(\debouncerA/q_reg [2]),
    .I3(\debouncerA/N02 ),
    .O(\debouncerA/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<1>1  (
    .I0(\debouncerA/N01 ),
    .I1(\debouncerA/q_reg [1]),
    .I2(\debouncerA/q_reg [0]),
    .I3(\debouncerA/q_reg [6]),
    .O(\debouncerA/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<3>1  (
    .I0(\debouncer5/N01 ),
    .I1(\debouncer5/q_reg [3]),
    .I2(\debouncer5/q_reg [2]),
    .I3(\debouncer5/N02 ),
    .O(\debouncer5/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<1>1  (
    .I0(\debouncer5/N01 ),
    .I1(\debouncer5/q_reg [1]),
    .I2(\debouncer5/q_reg [0]),
    .I3(\debouncer5/q_reg [6]),
    .O(\debouncer5/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<3>1  (
    .I0(\debouncer4/N01 ),
    .I1(\debouncer4/q_reg [3]),
    .I2(\debouncer4/q_reg [2]),
    .I3(\debouncer4/N02 ),
    .O(\debouncer4/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<1>1  (
    .I0(\debouncer4/N01 ),
    .I1(\debouncer4/q_reg [1]),
    .I2(\debouncer4/q_reg [0]),
    .I3(\debouncer4/q_reg [6]),
    .O(\debouncer4/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<3>1  (
    .I0(\debouncer3/N01 ),
    .I1(\debouncer3/q_reg [3]),
    .I2(\debouncer3/q_reg [2]),
    .I3(\debouncer3/N02 ),
    .O(\debouncer3/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<1>1  (
    .I0(\debouncer3/N01 ),
    .I1(\debouncer3/q_reg [1]),
    .I2(\debouncer3/q_reg [0]),
    .I3(\debouncer3/q_reg [6]),
    .O(\debouncer3/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<3>1  (
    .I0(\debouncer2/N01 ),
    .I1(\debouncer2/q_reg [3]),
    .I2(\debouncer2/q_reg [2]),
    .I3(\debouncer2/N02 ),
    .O(\debouncer2/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<1>1  (
    .I0(\debouncer2/N01 ),
    .I1(\debouncer2/q_reg [1]),
    .I2(\debouncer2/q_reg [0]),
    .I3(\debouncer2/q_reg [6]),
    .O(\debouncer2/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<3>1  (
    .I0(\debouncer1/N01 ),
    .I1(\debouncer1/q_reg [3]),
    .I2(\debouncer1/q_reg [2]),
    .I3(\debouncer1/N02 ),
    .O(\debouncer1/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<1>1  (
    .I0(\debouncer1/N01 ),
    .I1(\debouncer1/q_reg [1]),
    .I2(\debouncer1/q_reg [0]),
    .I3(\debouncer1/q_reg [6]),
    .O(\debouncer1/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<3>1  (
    .I0(\debouncer0/N01 ),
    .I1(\debouncer0/q_reg [3]),
    .I2(\debouncer0/q_reg [2]),
    .I3(\debouncer0/N02 ),
    .O(\debouncer0/q_next [3])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<1>1  (
    .I0(\debouncer0/N01 ),
    .I1(\debouncer0/q_reg [1]),
    .I2(\debouncer0/q_reg [0]),
    .I3(\debouncer0/q_reg [6]),
    .O(\debouncer0/q_next [1])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<5>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>10  (
    .I0(r_displayValue[7]),
    .I1(r_displayValue[5]),
    .I2(r_displayValue[6]),
    .I3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<4>10_2111 )
  );
  LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>28  (
    .I0(r_displayValue[11]),
    .I1(r_displayValue[9]),
    .I2(r_displayValue[10]),
    .I3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<4>28_2112 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<4>37  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(\r_SevenSegment_mux0000<4>10_2111 ),
    .I2(s_Main_FSM_FFd2_2331),
    .I3(\r_SevenSegment_mux0000<4>28_2112 ),
    .O(\r_SevenSegment_mux0000<4>37_2113 )
  );
  LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>25  (
    .I0(r_displayValue[8]),
    .I1(r_displayValue[9]),
    .I2(r_displayValue[10]),
    .I3(r_displayValue[11]),
    .O(\r_SevenSegment_mux0000<5>25_2116 )
  );
  LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>63  (
    .I0(r_displayValue[4]),
    .I1(r_displayValue[5]),
    .I2(r_displayValue[6]),
    .I3(r_displayValue[7]),
    .O(\r_SevenSegment_mux0000<5>63_2117 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<5>76  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(\r_SevenSegment_mux0000<5>25_2116 ),
    .I2(s_Main_FSM_FFd3_2332),
    .I3(\r_SevenSegment_mux0000<5>63_2117 ),
    .O(\r_SevenSegment_mux0000<5>76_2118 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<0>12  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[0]),
    .I3(\w_setpoint[0] ),
    .O(\converter/r_Binary_mux0000<0>12_746 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \converter/r_Binary_mux0000<0>20  (
    .I0(\converter/r_Binary [0]),
    .I1(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .O(\converter/r_Binary_mux0000<0>20_747 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<7>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [6]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [7]),
    .O(\converter/r_Binary_mux0000<7>12_763 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<7>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[7]),
    .I3(\w_setpoint[7] ),
    .O(\converter/r_Binary_mux0000<7>25_764 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<6>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [5]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [6]),
    .O(\converter/r_Binary_mux0000<6>12_761 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<6>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[6]),
    .I3(\w_setpoint[6] ),
    .O(\converter/r_Binary_mux0000<6>25_762 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<5>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [4]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [5]),
    .O(\converter/r_Binary_mux0000<5>12_759 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<5>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[5]),
    .I3(\w_setpoint[5] ),
    .O(\converter/r_Binary_mux0000<5>25_760 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<4>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [3]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [4]),
    .O(\converter/r_Binary_mux0000<4>12_757 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<4>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[4]),
    .I3(\w_setpoint[4] ),
    .O(\converter/r_Binary_mux0000<4>25_758 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<3>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [2]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [3]),
    .O(\converter/r_Binary_mux0000<3>12_755 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<3>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[3]),
    .I3(\w_setpoint[0] ),
    .O(\converter/r_Binary_mux0000<3>25_756 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<2>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [1]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [2]),
    .O(\converter/r_Binary_mux0000<2>12_753 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<2>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[2]),
    .I3(\w_setpoint[2] ),
    .O(\converter/r_Binary_mux0000<2>25_754 )
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<1>12  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [0]),
    .I2(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I3(\converter/r_Binary [1]),
    .O(\converter/r_Binary_mux0000<1>12_751 )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<1>25  (
    .I0(\converter/r_SM_Main_FSM_FFd6_791 ),
    .I1(DPSwitch_0_IBUF_8),
    .I2(w_velocity[1]),
    .I3(\w_setpoint[1] ),
    .O(\converter/r_Binary_mux0000<1>25_752 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<0>_Result1  (
    .I0(\pidController/a [0]),
    .I1(\pidController/p [0]),
    .I2(\pidController/cout_1452 ),
    .O(\pidController/sum [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncerB/q_next<6>5  (
    .I0(\debouncerB/q_reg [3]),
    .I1(\debouncerB/q_reg [2]),
    .I2(\debouncerB/q_reg [1]),
    .I3(\debouncerB/q_reg [0]),
    .O(\debouncerB/q_next<6>5_964 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncerA/q_next<6>5  (
    .I0(\debouncerA/q_reg [3]),
    .I1(\debouncerA/q_reg [2]),
    .I2(\debouncerA/q_reg [1]),
    .I3(\debouncerA/q_reg [0]),
    .O(\debouncerA/q_next<6>5_944 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer5/q_next<6>5  (
    .I0(\debouncer5/q_reg [3]),
    .I1(\debouncer5/q_reg [2]),
    .I2(\debouncer5/q_reg [1]),
    .I3(\debouncer5/q_reg [0]),
    .O(\debouncer5/q_next<6>5_924 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer4/q_next<6>5  (
    .I0(\debouncer4/q_reg [3]),
    .I1(\debouncer4/q_reg [2]),
    .I2(\debouncer4/q_reg [1]),
    .I3(\debouncer4/q_reg [0]),
    .O(\debouncer4/q_next<6>5_904 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer3/q_next<6>5  (
    .I0(\debouncer3/q_reg [3]),
    .I1(\debouncer3/q_reg [2]),
    .I2(\debouncer3/q_reg [1]),
    .I3(\debouncer3/q_reg [0]),
    .O(\debouncer3/q_next<6>5_884 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer2/q_next<6>5  (
    .I0(\debouncer2/q_reg [3]),
    .I1(\debouncer2/q_reg [2]),
    .I2(\debouncer2/q_reg [1]),
    .I3(\debouncer2/q_reg [0]),
    .O(\debouncer2/q_next<6>5_864 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer1/q_next<6>5  (
    .I0(\debouncer1/q_reg [3]),
    .I1(\debouncer1/q_reg [2]),
    .I2(\debouncer1/q_reg [1]),
    .I3(\debouncer1/q_reg [0]),
    .O(\debouncer1/q_next<6>5_844 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer0/q_next<6>5  (
    .I0(\debouncer0/q_reg [3]),
    .I1(\debouncer0/q_reg [2]),
    .I2(\debouncer0/q_reg [1]),
    .I3(\debouncer0/q_reg [0]),
    .O(\debouncer0/q_next<6>5_824 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<0>5  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[0]),
    .O(\pidController/a_mux0000<0>5_1375 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/a_mux0000<0>8  (
    .I0(\pidController/sigma [0]),
    .I1(\pidController/state_1_FSM_FFd4_1948 ),
    .I2(\pidController/state_1_FSM_FFd6_1950 ),
    .I3(\pidController/a_mux0000<0>5_1375 ),
    .O(\pidController/a_mux0000<0>8_1376 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \pidController/a_mux0000<0>13  (
    .I0(\pidController/sum [0]),
    .I1(\pidController/state_1_FSM_FFd3_1947 ),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .O(\pidController/a_mux0000<0>13_1374 )
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/a_mux0000<0>28  (
    .I0(\pidController/a_mux0000<0>8_1376 ),
    .I1(\pidController/a [0]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/a_mux0000<0>13_1374 ),
    .O(\pidController/a_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<0>51  (
    .I0(\pidController/p_mux0000<0>11_1870 ),
    .I1(\pidController/p [0]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/p_mux0000<0>31_1871 ),
    .O(\pidController/p_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>45  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[6]),
    .I2(r_displayValue[5]),
    .I3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>45_2110 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>411  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[2]),
    .I2(r_displayValue[1]),
    .I3(r_displayValue[0]),
    .O(\r_SevenSegment_mux0000<3>411_2108 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>424  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(r_displayValue[10]),
    .I2(r_displayValue[9]),
    .I3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<3>424_2109 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>426  (
    .I0(\r_SevenSegment_mux0000<3>45_2110 ),
    .I1(\r_SevenSegment_mux0000<3>411_2108 ),
    .I2(\r_SevenSegment_mux0000<3>424_2109 ),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<2>22  (
    .I0(r_SevenSegment[5]),
    .I1(s_Main_FSM_FFd2_2331),
    .I2(s_Main_FSM_FFd3_2332),
    .I3(s_Main_FSM_FFd1_2330),
    .O(\r_SevenSegment_mux0000<2>22_2095 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>45  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[5]),
    .I2(r_displayValue[4]),
    .I3(r_displayValue[6]),
    .O(\r_SevenSegment_mux0000<2>45_2096 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>58  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[1]),
    .I2(r_displayValue[0]),
    .I3(r_displayValue[2]),
    .O(\r_SevenSegment_mux0000<2>58_2097 )
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>23  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[2]),
    .I2(r_displayValue[0]),
    .I3(r_displayValue[1]),
    .O(\r_SevenSegment_mux0000<1>23_2091 )
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>47  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(r_displayValue[10]),
    .I2(r_displayValue[8]),
    .I3(r_displayValue[9]),
    .O(\r_SevenSegment_mux0000<1>47_2092 )
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>86  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[6]),
    .I2(r_displayValue[4]),
    .I3(r_displayValue[5]),
    .O(\r_SevenSegment_mux0000<1>86_2093 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<1>98  (
    .I0(r_SevenSegment[6]),
    .I1(s_Main_FSM_FFd1_2330),
    .I2(s_Main_FSM_FFd3_2332),
    .I3(s_Main_FSM_FFd2_2331),
    .O(\r_SevenSegment_mux0000<1>98_2094 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<1>114  (
    .I0(\r_SevenSegment_mux0000<1>23_2091 ),
    .I1(\r_SevenSegment_mux0000<1>47_2092 ),
    .I2(\r_SevenSegment_mux0000<1>86_2093 ),
    .I3(\r_SevenSegment_mux0000<1>98_2094 ),
    .O(\r_SevenSegment_mux0000<1>114_2090 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_Digit_Index_and00001  (
    .I0(N638),
    .I1(\converter/r_SM_Main_FSM_FFd1_782 ),
    .O(\converter/r_Digit_Index_and0000 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \converter/r_BCD_9_mux0000111  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .O(\converter/N21 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \converter/r_BCD_0_cmp_eq00001  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .O(\converter/r_BCD_0_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_6/Mxor_P_Result1  (
    .I0(\pidController/p [6]),
    .I1(\pidController/a [6]),
    .O(\pidController/adder_32bit_0/P0[6] )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \r_SevenSegment_mux0000<5>112  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(s_Main_FSM_FFd3_2332),
    .I2(s_Main_FSM_FFd2_2331),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>31  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(r_displayValue[10]),
    .I2(r_displayValue[9]),
    .O(N25)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>21  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[1]),
    .I2(r_displayValue[2]),
    .O(N23)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>11  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[5]),
    .I2(r_displayValue[6]),
    .O(N22)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncerB/q_next<2>21  (
    .I0(\debouncerB/q_reg [1]),
    .I1(\debouncerB/q_reg [0]),
    .I2(\debouncerB/q_reg [6]),
    .O(\debouncerB/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncerA/q_next<2>21  (
    .I0(\debouncerA/q_reg [1]),
    .I1(\debouncerA/q_reg [0]),
    .I2(\debouncerA/q_reg [6]),
    .O(\debouncerA/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer5/q_next<2>21  (
    .I0(\debouncer5/q_reg [1]),
    .I1(\debouncer5/q_reg [0]),
    .I2(\debouncer5/q_reg [6]),
    .O(\debouncer5/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer4/q_next<2>21  (
    .I0(\debouncer4/q_reg [1]),
    .I1(\debouncer4/q_reg [0]),
    .I2(\debouncer4/q_reg [6]),
    .O(\debouncer4/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer3/q_next<2>21  (
    .I0(\debouncer3/q_reg [1]),
    .I1(\debouncer3/q_reg [0]),
    .I2(\debouncer3/q_reg [6]),
    .O(\debouncer3/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer2/q_next<2>21  (
    .I0(\debouncer2/q_reg [1]),
    .I1(\debouncer2/q_reg [0]),
    .I2(\debouncer2/q_reg [6]),
    .O(\debouncer2/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer1/q_next<2>21  (
    .I0(\debouncer1/q_reg [1]),
    .I1(\debouncer1/q_reg [0]),
    .I2(\debouncer1/q_reg [6]),
    .O(\debouncer1/N02 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer0/q_next<2>21  (
    .I0(\debouncer0/q_reg [1]),
    .I1(\debouncer0/q_reg [0]),
    .I2(\debouncer0/q_reg [6]),
    .O(\debouncer0/N02 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<1>_Result1  (
    .I0(\pidController/adder_32bit_0/G1[0] ),
    .I1(\pidController/a [1]),
    .I2(\pidController/p [1]),
    .O(\pidController/sum [1])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<7>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<15>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [15]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[0] )
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<4>  (
    .I0(\debouncerB/N01 ),
    .I1(\debouncerB/q_reg [4]),
    .I2(\debouncerB/q_reg [3]),
    .I3(N29),
    .O(\debouncerB/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<4>  (
    .I0(\debouncerA/N01 ),
    .I1(\debouncerA/q_reg [4]),
    .I2(\debouncerA/q_reg [3]),
    .I3(N311),
    .O(\debouncerA/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<4>  (
    .I0(\debouncer5/N01 ),
    .I1(\debouncer5/q_reg [4]),
    .I2(\debouncer5/q_reg [3]),
    .I3(N33),
    .O(\debouncer5/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<4>  (
    .I0(\debouncer4/N01 ),
    .I1(\debouncer4/q_reg [4]),
    .I2(\debouncer4/q_reg [3]),
    .I3(N35),
    .O(\debouncer4/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<4>  (
    .I0(\debouncer3/N01 ),
    .I1(\debouncer3/q_reg [4]),
    .I2(\debouncer3/q_reg [3]),
    .I3(N37),
    .O(\debouncer3/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<4>  (
    .I0(\debouncer2/N01 ),
    .I1(\debouncer2/q_reg [4]),
    .I2(\debouncer2/q_reg [3]),
    .I3(N39),
    .O(\debouncer2/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<4>  (
    .I0(\debouncer1/N01 ),
    .I1(\debouncer1/q_reg [4]),
    .I2(\debouncer1/q_reg [3]),
    .I3(N411),
    .O(\debouncer1/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<4>  (
    .I0(\debouncer0/N01 ),
    .I1(\debouncer0/q_reg [4]),
    .I2(\debouncer0/q_reg [3]),
    .I3(N43),
    .O(\debouncer0/q_next [4])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \pidController/p_or0000  (
    .I0(\pidController/state_1_FSM_FFd2_1946 ),
    .I1(\pidController/state_1_FSM_FFd3_1947 ),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(N45),
    .O(\pidController/p_or0000_1925 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<1>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[1]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [1]),
    .O(\pidController/a_mux0000<1>7_1398 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \r_SevenSegment_mux0000<6>8  (
    .I0(N25),
    .I1(r_displayValue[11]),
    .I2(r_SevenSegment[1]),
    .I3(N4),
    .O(\r_SevenSegment_mux0000<6>8_2121 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \r_SevenSegment_mux0000<6>19  (
    .I0(N23),
    .I1(r_displayValue[3]),
    .I2(N22),
    .I3(r_displayValue[7]),
    .O(\r_SevenSegment_mux0000<6>19_2119 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<3>4  (
    .I0(N23),
    .I1(r_displayValue[0]),
    .I2(N22),
    .I3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>4_2107 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<3>13  (
    .I0(r_displayValue[8]),
    .I1(N25),
    .I2(N4),
    .I3(r_SevenSegment[4]),
    .O(\r_SevenSegment_mux0000<3>13_2099 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<1>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_1_1455 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[1]),
    .O(\pidController/p_mux0000<1>7_1890 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<1>8  (
    .I0(\w_setpoint[1] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<1>8_1891 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>2111  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(r_displayValue[11]),
    .I2(r_displayValue[10]),
    .I3(r_displayValue[9]),
    .O(\r_SevenSegment_mux0000<3>211 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>224  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[7]),
    .I2(r_displayValue[5]),
    .I3(r_displayValue[6]),
    .O(\r_SevenSegment_mux0000<3>224_2102 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>226  (
    .I0(\r_SevenSegment_mux0000<3>25_2103 ),
    .I1(\r_SevenSegment_mux0000<3>211 ),
    .I2(\r_SevenSegment_mux0000<3>224_2102 ),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>310  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[2]),
    .I2(r_displayValue[1]),
    .I3(r_displayValue[0]),
    .O(\r_SevenSegment_mux0000<3>310_2104 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>321  (
    .I0(s_Main_FSM_FFd2_2331),
    .I1(r_displayValue[10]),
    .I2(r_displayValue[9]),
    .I3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<3>321_2105 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>341  (
    .I0(s_Main_FSM_FFd3_2332),
    .I1(r_displayValue[6]),
    .I2(r_displayValue[5]),
    .I3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>341_2106 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<3>358  (
    .I0(N11),
    .I1(\r_SevenSegment_mux0000<3>310_2104 ),
    .I2(\r_SevenSegment_mux0000<3>321_2105 ),
    .I3(\r_SevenSegment_mux0000<3>341_2106 ),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>5  (
    .I0(r_displayValue[8]),
    .I1(r_displayValue[11]),
    .I2(N25),
    .O(\r_SevenSegment_mux0000<0>5_2089 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>111  (
    .I0(r_displayValue[0]),
    .I1(r_displayValue[3]),
    .I2(N23),
    .O(\r_SevenSegment_mux0000<0>11_2085 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>24  (
    .I0(r_displayValue[4]),
    .I1(r_displayValue[7]),
    .I2(N22),
    .O(\r_SevenSegment_mux0000<0>24_2086 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<0>36  (
    .I0(r_SevenSegment[7]),
    .I1(s_Main_FSM_FFd2_2331),
    .I2(s_Main_FSM_FFd1_2330),
    .I3(s_Main_FSM_FFd3_2332),
    .O(\r_SevenSegment_mux0000<0>36_2087 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<0>48  (
    .I0(\r_SevenSegment_mux0000<0>5_2089 ),
    .I1(\r_SevenSegment_mux0000<0>11_2085 ),
    .I2(\r_SevenSegment_mux0000<0>24_2086 ),
    .I3(\r_SevenSegment_mux0000<0>36_2087 ),
    .O(\r_SevenSegment_mux0000<0>48_2088 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \converter/r_SM_Main_cmp_eq00008  (
    .I0(\converter/r_Loop_Count [3]),
    .I1(\converter/r_Loop_Count [2]),
    .I2(\converter/r_Loop_Count [1]),
    .I3(\converter/r_Loop_Count [0]),
    .O(\converter/r_SM_Main_cmp_eq00008_793 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \converter/r_SM_Main_cmp_eq000021  (
    .I0(\converter/r_Loop_Count [7]),
    .I1(\converter/r_Loop_Count [6]),
    .I2(\converter/r_Loop_Count [5]),
    .I3(\converter/r_Loop_Count [4]),
    .O(\converter/r_SM_Main_cmp_eq000021_792 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_and0000  (
    .I0(\decoder/count [0]),
    .I1(\decoder/count [3]),
    .I2(\decoder/count [4]),
    .I3(N65),
    .O(\decoder/count_and0000_1207 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_mux0001<11>24  (
    .I0(\decoder/count [12]),
    .I1(\decoder/count [11]),
    .I2(\decoder/count [9]),
    .I3(\decoder/count [5]),
    .O(\decoder/count_mux0001<11>24_1235 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_mux0001<11>215  (
    .I0(\decoder/count [14]),
    .I1(\decoder/count [13]),
    .I2(\decoder/count [15]),
    .I3(\decoder/count_mux0001<11>210_1233 ),
    .O(\decoder/count_mux0001<11>215_1234 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<15>1  (
    .I0(\decoder/count_mux0000 [0]),
    .I1(N718),
    .O(\decoder/count_mux0001 [15])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_1/cout1  (
    .I0(N640),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [0])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_0/cout1  (
    .I0(N641),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_1/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w4 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<11>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<2>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[2]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [2]),
    .O(\pidController/a_mux0000<2>7_1401 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \decoder/count_mux0001<11>112  (
    .I0(\decoder/count [5]),
    .I1(\decoder/count [2]),
    .I2(\decoder/count [1]),
    .I3(\decoder/count [14]),
    .O(\decoder/count_mux0001<11>112_1228 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \decoder/count_mux0001<11>121  (
    .I0(\decoder/count [12]),
    .I1(\decoder/count [11]),
    .I2(\decoder/count [9]),
    .O(\decoder/count_mux0001<11>121_1229 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \decoder/count_mux0001<11>150  (
    .I0(\decoder/count [5]),
    .I1(\decoder/count [2]),
    .I2(\decoder/count [1]),
    .I3(\decoder/count [13]),
    .O(\decoder/count_mux0001<11>150_1230 )
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \decoder/count_mux0001<11>170  (
    .I0(\decoder/count [15]),
    .I1(\decoder/count_mux0001<11>121_1229 ),
    .I2(\decoder/count_mux0001<11>112_1228 ),
    .I3(\decoder/count_mux0001<11>151_1231 ),
    .O(\decoder/count_mux0001<11>170_1232 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<2>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_2_1462 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[2]),
    .O(\pidController/p_mux0000<2>7_1895 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<2>8  (
    .I0(\w_setpoint[2] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<2>8_1896 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<2>51  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/p_mux0000<2>42_1894 ),
    .I2(\pidController/p_mux0000<2>21_1893 ),
    .O(\pidController/p_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_14/Mxor_P_Result1  (
    .I0(\pidController/p [14]),
    .I1(\pidController/a [14]),
    .O(\pidController/adder_32bit_0/P0[14] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<14>1  (
    .I0(\decoder/count_mux0000 [1]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<13>1  (
    .I0(\decoder/count_mux0000 [2]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [13])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<12>1  (
    .I0(\decoder/count_mux0000 [3]),
    .I1(N639),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [12])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_2/cout1  (
    .I0(N646),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_2/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [1]),
    .I2(N645),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<3>_Result1  (
    .I0(\pidController/adder_32bit_0/G2 [1]),
    .I1(\pidController/a [3]),
    .I2(\pidController/p [3]),
    .O(\pidController/sum [3])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .I3(N652),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/cout1  (
    .I0(N642),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1])
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<13>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0])
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<4>_Result1  (
    .I0(\pidController/adder_32bit_0/G2 [1]),
    .I1(\pidController/p [3]),
    .I2(\pidController/adder_32bit_0/P0[4] ),
    .I3(\pidController/a [3]),
    .O(\pidController/sum [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<4>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_4_1480 ),
    .O(N83)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<3>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_3_1479 ),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<4>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[4]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [4]),
    .O(\pidController/a_mux0000<4>7_1407 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<3>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[3]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [3]),
    .O(\pidController/a_mux0000<3>7_1404 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<3>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_3_1463 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[3]),
    .O(\pidController/p_mux0000<3>7_1899 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<3>8  (
    .I0(\w_setpoint[0] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<3>8_1900 )
  );
  LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/p_mux0000<3>81  (
    .I0(N637),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .O(\pidController/p_mux0000<3>81_1901 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pidController/p_mux0000<3>82  (
    .I0(\pidController/p_mux0000<3>81_1901 ),
    .I1(\pidController/p_mux0000<3>21_1898 ),
    .O(\pidController/p_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<11>1  (
    .I0(\decoder/count_mux0000 [4]),
    .I1(\decoder/N111 ),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<10>1  (
    .I0(\decoder/count_mux0000 [5]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [10])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<9>1  (
    .I0(\decoder/count_mux0000 [6]),
    .I1(\decoder/N111 ),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [9])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<8>1  (
    .I0(\decoder/count_mux0000 [7]),
    .I1(\decoder/N111 ),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [8])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<7>1  (
    .I0(\decoder/count_mux0000 [8]),
    .I1(\decoder/N111 ),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<6>1  (
    .I0(\decoder/count_mux0000 [9]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_12/Mxor_P_Result1  (
    .I0(\pidController/p [12]),
    .I1(\pidController/a [12]),
    .O(\pidController/adder_32bit_0/P0[12] )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<3>1  (
    .I0(N656),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N10 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5])
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \pidController/adder_32bit_0/operator_B_stage_2_6/Go11  (
    .I0(\pidController/p [10]),
    .I1(\pidController/a [10]),
    .I2(\pidController/a [9]),
    .I3(\pidController/p [9]),
    .O(\pidController/adder_32bit_0/N26 )
  );
  LUT4 #(
    .INIT ( 16'h53A0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<14>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [14]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0])
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<5>1  (
    .I0(\decoder/count_mux0000 [10]),
    .I1(\decoder/N111 ),
    .I2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<4>1  (
    .I0(\decoder/count_mux0000 [11]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<3>1  (
    .I0(\decoder/count_mux0000 [12]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<2>1  (
    .I0(\decoder/count_mux0000 [13]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<1>1  (
    .I0(\decoder/count_mux0000 [14]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [1])
  );
  LUT4 #(
    .INIT ( 16'hA8A0 ))
  \converter/r_BCD_10_mux000011  (
    .I0(\converter/r_SM_Main_FSM_FFd2_783 ),
    .I1(\converter/Madd_add0000_addsub0000_lut [2]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(N650),
    .O(\converter/N12 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_3_mux0000_SW0  (
    .I0(\converter/r_BCD [3]),
    .I1(\converter/r_BCD [2]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N01 ),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_11_mux0000_SW0  (
    .I0(\converter/r_BCD [11]),
    .I1(\converter/r_BCD [10]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N5 ),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_9_mux0000_SW0  (
    .I0(\converter/r_BCD [9]),
    .I1(\converter/r_BCD [8]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N5 ),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_8_mux0000_SW0  (
    .I0(\converter/r_BCD [8]),
    .I1(\converter/r_BCD [7]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N5 ),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_7_mux0000_SW0  (
    .I0(\converter/r_BCD [7]),
    .I1(\converter/r_BCD [6]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N6 ),
    .O(N102)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_6_mux0000_SW0  (
    .I0(\converter/r_BCD [5]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I2(\converter/r_BCD [6]),
    .I3(\converter/N6 ),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_5_mux0000_SW0  (
    .I0(\converter/r_BCD [5]),
    .I1(\converter/r_BCD [4]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N6 ),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_2_mux0000_SW0  (
    .I0(\converter/r_BCD [1]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I2(\converter/r_BCD [2]),
    .I3(\converter/N01 ),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_1_mux0000_SW0  (
    .I0(\converter/r_BCD [1]),
    .I1(\converter/r_BCD [0]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N01 ),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_15_mux0000_SW0  (
    .I0(\converter/r_BCD [15]),
    .I1(\converter/r_BCD [14]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N4 ),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_14_mux0000_SW0  (
    .I0(\converter/r_BCD [13]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I2(\converter/r_BCD [14]),
    .I3(\converter/N4 ),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_13_mux0000_SW0  (
    .I0(\converter/r_BCD [13]),
    .I1(\converter/r_BCD [12]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N4 ),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_10_mux0000_SW0  (
    .I0(\converter/r_BCD [9]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I2(\converter/r_BCD [10]),
    .I3(\converter/N5 ),
    .O(N118)
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \converter/r_BCD_0_mux0000_SW0  (
    .I0(\converter/r_Binary [12]),
    .I1(\converter/r_BCD [0]),
    .I2(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I3(\converter/N01 ),
    .O(N120)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_4_mux00000  (
    .I0(\converter/r_BCD [3]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .O(\converter/r_BCD_4_mux00000_719 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \converter/r_BCD_4_mux00003  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .O(\converter/r_BCD_4_mux00003_722 )
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \converter/r_BCD_4_mux000017  (
    .I0(\converter/r_BCD_4_mux00000_719 ),
    .I1(\converter/r_BCD_4_mux00003_722 ),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_4_mux000017_720 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_12_mux00000  (
    .I0(\converter/r_BCD [11]),
    .I1(\converter/r_SM_Main_FSM_FFd5_790 ),
    .O(\converter/r_BCD_12_mux00000_705 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<0>1  (
    .I0(\decoder/count_mux0000 [15]),
    .I1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/count_mux00022  (
    .I0(\decoder/quadB_delayed_1267 ),
    .I1(\debouncerA/DB_out_932 ),
    .O(\decoder/count_mux0002 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_1/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [0])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_3/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [6]),
    .I2(N651),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_1/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I2(N698),
    .I3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<4>1  (
    .I0(N714),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1])
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<6>_Result1  (
    .I0(\pidController/a [5]),
    .I1(\pidController/p [5]),
    .I2(\pidController/adder_32bit_0/P0[6] ),
    .I3(N681),
    .O(\pidController/sum [6])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/Mxor_S_Result1  (
    .I0(N648),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .I3(N665),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<6>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_6_1482 ),
    .O(N127)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<5>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_5_1465 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[5]),
    .O(\pidController/p_mux0000<5>7_1909 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<5>8  (
    .I0(\w_setpoint[5] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<5>8_1910 )
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/p_mux0000<5>46  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .I3(\pidController/p_mux0000<5>21_1908 ),
    .O(\pidController/p_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<4>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_4_1464 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[4]),
    .O(\pidController/p_mux0000<4>7_1904 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<4>8  (
    .I0(\w_setpoint[4] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<4>8_1905 )
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/p_mux0000<4>83  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .I2(N686),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1]),
    .O(\pidController/p_mux0000<4>83_1906 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<4>100  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/p_mux0000<4>83_1906 ),
    .I2(\pidController/p_mux0000<4>21_1903 ),
    .O(\pidController/p_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<0>1  (
    .I0(w_error[15]),
    .I1(w_error[0]),
    .I2(r_error_unsigned_addsub0000[0]),
    .O(r_error_unsigned_mux0000[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_10/Mxor_P_Result1  (
    .I0(\pidController/p [10]),
    .I1(\pidController/a [10]),
    .O(\pidController/adder_32bit_0/P0[10] )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<7>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I2(N700),
    .I3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<11>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11]),
    .I1(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I3(N692),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1])
  );
  LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_8/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<6>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[6]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [6]),
    .O(\pidController/a_mux0000<6>7_1412 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<6>23  (
    .I0(\pidController/a_mux0000<6>7_1412 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<6>10_1411 ),
    .I3(\pidController/sum [6]),
    .O(\pidController/a_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<5>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[5]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [5]),
    .O(\pidController/a_mux0000<5>7_1409 )
  );
  LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .I3(N147),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w15 [1])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<6>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_6_1466 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[6]),
    .O(\pidController/p_mux0000<6>7_1913 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<6>8  (
    .I0(\w_setpoint[6] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<6>8_1914 )
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/p_mux0000<6>83  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[6] ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .O(\pidController/p_mux0000<6>83_1915 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<6>100  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/p_mux0000<6>83_1915 ),
    .I2(\pidController/p_mux0000<6>21_1912 ),
    .O(\pidController/p_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<1>1  (
    .I0(w_error[15]),
    .I1(w_error[1]),
    .I2(r_error_unsigned_addsub0000[1]),
    .O(r_error_unsigned_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<2>1  (
    .I0(w_error[15]),
    .I1(w_error[2]),
    .I2(r_error_unsigned_addsub0000[2]),
    .O(r_error_unsigned_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<3>1  (
    .I0(w_error[15]),
    .I1(w_error[3]),
    .I2(r_error_unsigned_addsub0000[3]),
    .O(r_error_unsigned_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<4>1  (
    .I0(w_error[15]),
    .I1(w_error[4]),
    .I2(r_error_unsigned_addsub0000[4]),
    .O(r_error_unsigned_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<5>1  (
    .I0(w_error[15]),
    .I1(w_error[5]),
    .I2(r_error_unsigned_addsub0000[5]),
    .O(r_error_unsigned_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<6>1  (
    .I0(w_error[15]),
    .I1(w_error[6]),
    .I2(r_error_unsigned_addsub0000[6]),
    .O(r_error_unsigned_mux0000[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_8/Mxor_P_Result1  (
    .I0(\pidController/p [8]),
    .I1(\pidController/a [8]),
    .O(\pidController/adder_32bit_0/P0[8] )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_7/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [7])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_6/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [6])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_5/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [5])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_3/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [2]),
    .I2(N668),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [0])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_0/cout1  (
    .I0(N647),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_3/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1]),
    .I1(N653),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w7 [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/Mxor_S_Result1  (
    .I0(N716),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3]),
    .I2(N655),
    .I3(\pidController/multiplier_16x16bit_pipelined/N2 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/N13 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3]),
    .I2(N674),
    .I3(\pidController/multiplier_16x16bit_pipelined/N6 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<2>1  (
    .I0(N675),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N14 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I2(N699),
    .I3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<12>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [12]),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I3(N666),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [1])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/cout1  (
    .I0(N715),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/cout1  (
    .I0(N659),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [2])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [1])
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N151)
  );
  LUT4 #(
    .INIT ( 16'h8CAF ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I2(N670),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N152)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I1(N152),
    .I2(N151),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [4])
  );
  LUT4 #(
    .INIT ( 16'h8CAF ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N155)
  );
  LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4]),
    .I3(N725),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1654 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .I1(N705),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'hD5AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry_SW1  (
    .I0(N649),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .O(N162)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<7>1  (
    .I0(w_error[15]),
    .I1(w_error[7]),
    .I2(r_error_unsigned_addsub0000[7]),
    .O(r_error_unsigned_mux0000[7])
  );
  LUT4 #(
    .INIT ( 16'hFFE9 ))
  \w_setpoint<7>1  (
    .I0(DPSwitch_3_IBUF_11),
    .I1(DPSwitch_4_IBUF_12),
    .I2(DPSwitch_1_IBUF_9),
    .I3(DPSwitch_2_IBUF_10),
    .O(\w_setpoint[7] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<8>1  (
    .I0(w_error[15]),
    .I1(w_error[8]),
    .I2(r_error_unsigned_addsub0000[8]),
    .O(r_error_unsigned_mux0000[8])
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  \w_setpoint<6>1  (
    .I0(DPSwitch_2_IBUF_10),
    .I1(DPSwitch_3_IBUF_11),
    .I2(DPSwitch_1_IBUF_9),
    .I3(DPSwitch_4_IBUF_12),
    .O(\w_setpoint[6] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<9>1  (
    .I0(w_error[15]),
    .I1(w_error[9]),
    .I2(r_error_unsigned_addsub0000[9]),
    .O(r_error_unsigned_mux0000[9])
  );
  LUT4 #(
    .INIT ( 16'h0114 ))
  \w_setpoint<5>1  (
    .I0(DPSwitch_1_IBUF_9),
    .I1(DPSwitch_2_IBUF_10),
    .I2(DPSwitch_3_IBUF_11),
    .I3(DPSwitch_4_IBUF_12),
    .O(\w_setpoint[5] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<10>1  (
    .I0(w_error[15]),
    .I1(w_error[10]),
    .I2(r_error_unsigned_addsub0000[10]),
    .O(r_error_unsigned_mux0000[10])
  );
  LUT4 #(
    .INIT ( 16'hFFE9 ))
  \w_setpoint<4>1  (
    .I0(DPSwitch_2_IBUF_10),
    .I1(DPSwitch_4_IBUF_12),
    .I2(DPSwitch_1_IBUF_9),
    .I3(DPSwitch_3_IBUF_11),
    .O(\w_setpoint[4] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<11>1  (
    .I0(w_error[15]),
    .I1(w_error[11]),
    .I2(r_error_unsigned_addsub0000[11]),
    .O(r_error_unsigned_mux0000[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<12>1  (
    .I0(w_error[15]),
    .I1(w_error[12]),
    .I2(r_error_unsigned_addsub0000[12]),
    .O(r_error_unsigned_mux0000[12])
  );
  LUT4 #(
    .INIT ( 16'hFFF9 ))
  \w_setpoint<2>1  (
    .I0(DPSwitch_1_IBUF_9),
    .I1(DPSwitch_3_IBUF_11),
    .I2(DPSwitch_4_IBUF_12),
    .I3(DPSwitch_2_IBUF_10),
    .O(\w_setpoint[2] )
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<10>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1778 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/N4 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<7>_Result1  (
    .I0(\pidController/p [7]),
    .I1(\pidController/a [7]),
    .I2(N689),
    .O(\pidController/sum [7])
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<8>_Result1  (
    .I0(\pidController/a [7]),
    .I1(\pidController/p [7]),
    .I2(\pidController/adder_32bit_0/P0[8] ),
    .I3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<8>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_8_1484 ),
    .O(N168)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<7>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_7_1483 ),
    .O(N171)
  );
  LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .I2(N707),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1657 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry37  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1658 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1657 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0])
  );
  LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .I2(N708),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1650 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry37  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1651 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1650 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<7>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_7_1467 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[7]),
    .O(\pidController/p_mux0000<7>7_1918 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<7>8  (
    .I0(\w_setpoint[7] ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .O(\pidController/p_mux0000<7>8_1919 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<13>1  (
    .I0(w_error[15]),
    .I1(w_error[13]),
    .I2(r_error_unsigned_addsub0000[13]),
    .O(r_error_unsigned_mux0000[13])
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \w_setpoint<1>1  (
    .I0(DPSwitch_4_IBUF_12),
    .I1(DPSwitch_1_IBUF_9),
    .I2(DPSwitch_3_IBUF_11),
    .I3(DPSwitch_2_IBUF_10),
    .O(\w_setpoint[1] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<14>1  (
    .I0(w_error[15]),
    .I1(w_error[14]),
    .I2(r_error_unsigned_addsub0000[14]),
    .O(r_error_unsigned_mux0000[14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \r_error_unsigned_mux0000<15>1  (
    .I0(w_error[15]),
    .I1(r_error_unsigned_addsub0000[15]),
    .O(r_error_unsigned_mux0000[15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \r_error_unsigned_mux0000<16>1  (
    .I0(w_error[15]),
    .I1(r_error_unsigned_addsub0000[16]),
    .O(r_error_unsigned_mux0000[16])
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  \w_setpoint<0>1  (
    .I0(DPSwitch_3_IBUF_11),
    .I1(DPSwitch_4_IBUF_12),
    .I2(DPSwitch_1_IBUF_9),
    .I3(DPSwitch_2_IBUF_10),
    .O(\w_setpoint[0] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_3/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_2/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \pidController/adder_32bit_0/Mxor_o_s<6>_Result111  (
    .I0(\pidController/a [5]),
    .I1(\pidController/p [5]),
    .O(\pidController/adder_32bit_0/N33 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_4/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_3/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [1])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_1/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [1])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<10>1  (
    .I0(N663),
    .I1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [10]),
    .I3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1])
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_7/Go11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .I3(N677),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [1])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .I3(N717),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2])
  );
  LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .I3(N173),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1])
  );
  LUT4 #(
    .INIT ( 16'hE800 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .I3(N177),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<8>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[8]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [8]),
    .O(\pidController/a_mux0000<8>7_1418 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<8>23  (
    .I0(\pidController/a_mux0000<8>7_1418 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<8>10_1417 ),
    .I3(\pidController/sum [8]),
    .O(\pidController/a_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<7>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[7]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [7]),
    .O(\pidController/a_mux0000<7>7_1415 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<7>23  (
    .I0(\pidController/a_mux0000<7>7_1415 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<7>10_1414 ),
    .I3(\pidController/sum [7]),
    .O(\pidController/a_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<0>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/N13 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pidController/adder_32bit_0/Mxor_o_s<5>_Result11  (
    .I0(\pidController/a [5]),
    .I1(\pidController/p [5]),
    .O(\pidController/adder_32bit_0/N4 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_4/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [4])
  );
  LUT3 #(
    .INIT ( 8'h42 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<10>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/N5 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<10>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_10_1472 ),
    .O(N188)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I1(N701),
    .I2(N190),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<8>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_8_1468 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[8]),
    .O(\pidController/p_mux0000<8>7_1922 )
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_B_stage_1_2/Go1  (
    .I0(\pidController/a [4]),
    .I1(\pidController/a [3]),
    .I2(\pidController/p [3]),
    .I3(\pidController/p [4]),
    .O(\pidController/adder_32bit_0/G1[2] )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<9>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[9]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [9]),
    .O(\pidController/a_mux0000<9>7_1421 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<9>23  (
    .I0(\pidController/a_mux0000<9>7_1421 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<9>10_1420 ),
    .I3(\pidController/sum [9]),
    .O(\pidController/a_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<10>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[10]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [10]),
    .O(\pidController/a_mux0000<10>7_1380 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<10>23  (
    .I0(\pidController/a_mux0000<10>7_1380 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<10>10_1378 ),
    .I3(\pidController/sum [10]),
    .O(\pidController/a_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_1/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_2/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [1])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_3/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [3])
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_2/negation1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [2])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/N13 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<12>_SW1  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_12_1474 ),
    .O(N196)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<9>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_9_1469 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[9]),
    .O(\pidController/p_mux0000<9>7_1924 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<12>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[12]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [12]),
    .O(\pidController/a_mux0000<12>7_1386 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<12>23  (
    .I0(\pidController/a_mux0000<12>7_1386 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<12>10_1385 ),
    .I3(\pidController/sum [12]),
    .O(\pidController/a_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<11>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[11]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [11]),
    .O(\pidController/a_mux0000<11>7_1383 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<11>23  (
    .I0(\pidController/a_mux0000<11>7_1383 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<11>10_1382 ),
    .I3(\pidController/sum [11]),
    .O(\pidController/a_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<10>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_10_1456 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[10]),
    .O(\pidController/p_mux0000<10>7_1875 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_4/Mxor_P_Result1  (
    .I0(\pidController/p [4]),
    .I1(\pidController/a [4]),
    .O(\pidController/adder_32bit_0/P0[4] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go0  (
    .I0(\pidController/a [2]),
    .I1(\pidController/p [2]),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1445 )
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go110  (
    .I0(\pidController/a [8]),
    .I1(\pidController/a [7]),
    .I2(\pidController/p [7]),
    .I3(\pidController/p [8]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 )
  );
  LUT4 #(
    .INIT ( 16'hFCF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169  (
    .I0(N682),
    .I1(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 ),
    .O(\pidController/adder_32bit_0/N20 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<13>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_13_1459 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[13]),
    .O(\pidController/p_mux0000<13>7_1883 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<11>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_11_1457 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[11]),
    .O(\pidController/p_mux0000<11>7_1877 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<14>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[14]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [14]),
    .O(\pidController/a_mux0000<14>7_1392 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<13>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[13]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [13]),
    .O(\pidController/a_mux0000<13>7_1389 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<13>23  (
    .I0(\pidController/a_mux0000<13>7_1389 ),
    .I1(\pidController/a_mux0000<10>18 ),
    .I2(\pidController/a_mux0000<13>10_1388 ),
    .I3(\pidController/sum [13]),
    .O(\pidController/a_mux0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<12>13  (
    .I0(\pidController/p [12]),
    .I1(\pidController/p_mux0000<12>7_1881 ),
    .I2(\pidController/p_or0000_1925 ),
    .O(\pidController/p_mux0000<12>13_1880 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_1_0/Go1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_1/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w4 [1])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/adder_32bit_0/operator_C_stage_1_0/Go1  (
    .I0(\pidController/p [0]),
    .I1(\pidController/cout_1452 ),
    .I2(\pidController/a [0]),
    .O(\pidController/adder_32bit_0/G1[0] )
  );
  LUT4 #(
    .INIT ( 16'hF8F0 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_2/Go  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 ),
    .I2(N690),
    .I3(N213),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2])
  );
  LUT4 #(
    .INIT ( 16'hB2FA ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [1]),
    .I3(N218),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3])
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/G4<7>10  (
    .I0(\pidController/a [14]),
    .I1(\pidController/a [13]),
    .I2(\pidController/p [13]),
    .I3(\pidController/p [14]),
    .O(\pidController/adder_32bit_0/G4<7>10_1430 )
  );
  LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<14>13  (
    .I0(\pidController/p [14]),
    .I1(\pidController/p_mux0000<14>7_1886 ),
    .I2(\pidController/p_or0000_1925 ),
    .O(\pidController/p_mux0000<14>13_1885 )
  );
  IBUF   i_A_IBUF (
    .I(i_A),
    .O(i_A_IBUF_1352)
  );
  IBUF   i_B_IBUF (
    .I(i_B),
    .O(i_B_IBUF_1354)
  );
  IBUF   DPSwitch_4_IBUF (
    .I(DPSwitch[4]),
    .O(DPSwitch_4_IBUF_12)
  );
  IBUF   DPSwitch_3_IBUF (
    .I(DPSwitch[3]),
    .O(DPSwitch_3_IBUF_11)
  );
  IBUF   DPSwitch_2_IBUF (
    .I(DPSwitch[2]),
    .O(DPSwitch_2_IBUF_10)
  );
  IBUF   DPSwitch_1_IBUF (
    .I(DPSwitch[1]),
    .O(DPSwitch_1_IBUF_9)
  );
  IBUF   DPSwitch_0_IBUF (
    .I(DPSwitch[0]),
    .O(DPSwitch_0_IBUF_8)
  );
  IBUF   Switch_5_IBUF (
    .I(Switch[5]),
    .O(Switch_5_IBUF_647)
  );
  IBUF   Switch_4_IBUF (
    .I(Switch[4]),
    .O(Switch_4_IBUF_646)
  );
  IBUF   Switch_3_IBUF (
    .I(Switch[3]),
    .O(Switch_3_IBUF_645)
  );
  IBUF   Switch_2_IBUF (
    .I(Switch[2]),
    .O(Switch_2_IBUF_644)
  );
  IBUF   Switch_1_IBUF (
    .I(Switch[1]),
    .O(Switch_1_IBUF_643)
  );
  IBUF   Switch_0_IBUF (
    .I(Switch[0]),
    .O(Switch_0_IBUF_642)
  );
  OBUF   SevenSegment_7_OBUF (
    .I(r_SevenSegment[7]),
    .O(SevenSegment[7])
  );
  OBUF   SevenSegment_6_OBUF (
    .I(r_SevenSegment[6]),
    .O(SevenSegment[6])
  );
  OBUF   SevenSegment_5_OBUF (
    .I(r_SevenSegment[5]),
    .O(SevenSegment[5])
  );
  OBUF   SevenSegment_4_OBUF (
    .I(r_SevenSegment[4]),
    .O(SevenSegment[4])
  );
  OBUF   SevenSegment_3_OBUF (
    .I(r_SevenSegment[3]),
    .O(SevenSegment[3])
  );
  OBUF   SevenSegment_2_OBUF (
    .I(r_SevenSegment[2]),
    .O(SevenSegment[2])
  );
  OBUF   SevenSegment_1_OBUF (
    .I(r_SevenSegment[1]),
    .O(SevenSegment[1])
  );
  OBUF   SevenSegment_0_OBUF (
    .I(r_SevenSegment[0]),
    .O(SevenSegment[0])
  );
  OBUF   Enable_2_OBUF (
    .I(r_Enable[2]),
    .O(Enable[2])
  );
  OBUF   Enable_1_OBUF (
    .I(r_Enable[1]),
    .O(Enable[1])
  );
  OBUF   Enable_0_OBUF (
    .I(r_Enable[0]),
    .O(Enable[0])
  );
  OBUF   o_controlPin_1_OBUF (
    .I(r_controllerPin[1]),
    .O(o_controlPin[1])
  );
  OBUF   o_controlPin_0_OBUF (
    .I(LED_5_OBUF_24),
    .O(o_controlPin[0])
  );
  OBUF   LED_7_OBUF (
    .I(r_controllerPin[1]),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_5_OBUF_24),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_24),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_5_OBUF_24),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_5_OBUF_24),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(r_LED[2]),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(r_LED[1]),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(r_LED[0]),
    .O(LED[0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_Enable_0 (
    .C(Clk_5_1),
    .D(\r_Enable_mux0000<2>1 ),
    .S(s_Main_FSM_FFd3_2332),
    .Q(r_Enable[0])
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<2>11  (
    .I0(r_Enable[0]),
    .I1(s_Main_FSM_FFd1_2330),
    .I2(s_Main_FSM_FFd2_2331),
    .O(\r_Enable_mux0000<2>1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_Enable_1 (
    .C(Clk_5_1),
    .D(\r_Enable_mux0000<1>1 ),
    .S(s_Main_FSM_FFd1_2330),
    .Q(r_Enable[1])
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<1>11  (
    .I0(r_Enable[1]),
    .I1(s_Main_FSM_FFd3_2332),
    .I2(s_Main_FSM_FFd2_2331),
    .O(\r_Enable_mux0000<1>1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_Enable_2 (
    .C(Clk_5_1),
    .D(\r_Enable_mux0000<0>1 ),
    .S(s_Main_FSM_FFd1_2330),
    .Q(r_Enable[2])
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<0>11  (
    .I0(r_Enable[2]),
    .I1(s_Main_FSM_FFd2_2331),
    .I2(s_Main_FSM_FFd3_2332),
    .O(\r_Enable_mux0000<0>1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_0 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<7>1 ),
    .S(N11),
    .Q(r_SevenSegment[0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_1 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<6>32 ),
    .S(N3),
    .Q(r_SevenSegment[1])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<6>321  (
    .I0(N11),
    .I1(\r_SevenSegment_mux0000<6>8_2121 ),
    .I2(\r_SevenSegment_mux0000<6>19_2119 ),
    .O(\r_SevenSegment_mux0000<6>32 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_2 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<5>141_2115 ),
    .S(\r_SevenSegment_mux0000<5>76_2118 ),
    .Q(r_SevenSegment[2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_3 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<4>81_2114 ),
    .S(\r_SevenSegment_mux0000<4>37_2113 ),
    .Q(r_SevenSegment[3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_4 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<3>20 ),
    .S(N3),
    .Q(r_SevenSegment[4])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>201  (
    .I0(\r_SevenSegment_mux0000<3>4_2107 ),
    .I1(N2),
    .I2(\r_SevenSegment_mux0000<3>13_2099 ),
    .O(\r_SevenSegment_mux0000<3>20 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_5 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<2>86 ),
    .S(N11),
    .Q(r_SevenSegment[5])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_6 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<1>114_2090 ),
    .S(N11),
    .Q(r_SevenSegment[6])
  );
  FDS #(
    .INIT ( 1'b0 ))
  r_SevenSegment_7 (
    .C(Clk_5_1),
    .D(\r_SevenSegment_mux0000<0>48_2088 ),
    .S(N2),
    .Q(r_SevenSegment[7])
  );
  FDR   r_LED_1 (
    .C(Clk_BUFGP_2),
    .D(\r_LED_mux0000<6>11 ),
    .R(w_error[15]),
    .Q(r_LED[1])
  );
  FDR   r_LED_2 (
    .C(Clk_BUFGP_2),
    .D(w_error[15]),
    .R(N01),
    .Q(r_LED[2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd2 (
    .C(Clk_5_1),
    .D(s_Main_FSM_FFd4_2333),
    .S(s_Main_FSM_FFd1_2330),
    .Q(s_Main_FSM_FFd2_2331)
  );
  FDR   \pwmGenerator/pwm_out  (
    .C(Clk_BUFGP_2),
    .D(N1),
    .R(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [15]),
    .Q(\pwmGenerator/pwm_out_2049 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd5  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Digit_Index_and0000 ),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .Q(\converter/r_SM_Main_FSM_FFd5_790 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_0  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_0_mux00001_698 ),
    .S(N120),
    .Q(\converter/r_BCD [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_2  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_2_mux00001_715 ),
    .S(N108),
    .Q(\converter/r_BCD [2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_3  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_3_mux00001_717 ),
    .S(N91),
    .Q(\converter/r_BCD [3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_1  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_1_mux00001_713 ),
    .S(N110),
    .Q(\converter/r_BCD [1])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_5  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_5_mux00001_724 ),
    .S(N106),
    .Q(\converter/r_BCD [5])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_6  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_6_mux00001_726 ),
    .S(N104),
    .Q(\converter/r_BCD [6])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_4  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_4_mux000023 ),
    .S(\converter/r_BCD_4_mux000017_720 ),
    .Q(\converter/r_BCD [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_4_mux0000231  (
    .I0(\converter/r_BCD [4]),
    .I1(\converter/N6 ),
    .O(\converter/r_BCD_4_mux000023 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_8  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_8_mux00001_730 ),
    .S(N100),
    .Q(\converter/r_BCD [8])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_9  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_9_mux00001_732 ),
    .S(N98),
    .Q(\converter/r_BCD [9])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_7  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_7_mux00001_728 ),
    .S(N102),
    .Q(\converter/r_BCD [7])
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \converter/r_BCD_7_mux00001  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(N719),
    .O(\converter/r_BCD_7_mux00001_728 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_11  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_11_mux00001_703 ),
    .S(N93),
    .Q(\converter/r_BCD [11])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_12  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_12_mux000019 ),
    .S(\converter/r_BCD_12_mux00000_705 ),
    .Q(\converter/r_BCD [12])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_10  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_10_mux00001_701 ),
    .S(N118),
    .Q(\converter/r_BCD [10])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_14  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_14_mux00001_710 ),
    .S(N114),
    .Q(\converter/r_BCD [14])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_15  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_15_mux00001_712 ),
    .S(N112),
    .Q(\converter/r_BCD [15])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \converter/r_BCD_15_mux00001  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/N10 ),
    .O(\converter/r_BCD_15_mux00001_712 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_13  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_BCD_13_mux00001_708 ),
    .S(N116),
    .Q(\converter/r_BCD [13])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_7  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<7>25_764 ),
    .S(\converter/r_Binary_mux0000<7>12_763 ),
    .Q(\converter/r_Binary [7])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_6  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<6>25_762 ),
    .S(\converter/r_Binary_mux0000<6>12_761 ),
    .Q(\converter/r_Binary [6])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_5  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<5>25_760 ),
    .S(\converter/r_Binary_mux0000<5>12_759 ),
    .Q(\converter/r_Binary [5])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_4  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<4>25_758 ),
    .S(\converter/r_Binary_mux0000<4>12_757 ),
    .Q(\converter/r_Binary [4])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_3  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<3>25_756 ),
    .S(\converter/r_Binary_mux0000<3>12_755 ),
    .Q(\converter/r_Binary [3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_2  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<2>25_754 ),
    .S(\converter/r_Binary_mux0000<2>12_753 ),
    .Q(\converter/r_Binary [2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_1  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<1>25_752 ),
    .S(\converter/r_Binary_mux0000<1>12_751 ),
    .Q(\converter/r_Binary [1])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_0  (
    .C(Clk_BUFGP_2),
    .D(\converter/r_Binary_mux0000<0>20_747 ),
    .S(\converter/r_Binary_mux0000<0>12_746 ),
    .Q(\converter/r_Binary [0])
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \converter/r_DV  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd6_791 ),
    .D(LED_5_OBUF_24),
    .S(\converter/r_SM_Main_FSM_FFd3_787 ),
    .Q(\converter/r_DV_767 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<7>_rt  (
    .I0(counter[7]),
    .O(\Mcount_counter_cy<7>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<8>_rt  (
    .I0(counter[8]),
    .O(\Mcount_counter_cy<8>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<9>_rt  (
    .I0(counter[9]),
    .O(\Mcount_counter_cy<9>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<10>_rt  (
    .I0(counter[10]),
    .O(\Mcount_counter_cy<10>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<11>_rt  (
    .I0(counter[11]),
    .O(\Mcount_counter_cy<11>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<12>_rt  (
    .I0(counter[12]),
    .O(\Mcount_counter_cy<12>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<13>_rt  (
    .I0(counter[13]),
    .O(\Mcount_counter_cy<13>_rt_134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<14>_rt  (
    .I0(counter[14]),
    .O(\Mcount_counter_cy<14>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<1>_rt  (
    .I0(\pwmGenerator/rampa [1]),
    .O(\pwmGenerator/Mcount_rampa_cy<1>_rt_2030 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<2>_rt  (
    .I0(\pwmGenerator/rampa [2]),
    .O(\pwmGenerator/Mcount_rampa_cy<2>_rt_2032 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<3>_rt  (
    .I0(\pwmGenerator/rampa [3]),
    .O(\pwmGenerator/Mcount_rampa_cy<3>_rt_2034 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<4>_rt  (
    .I0(\pwmGenerator/rampa [4]),
    .O(\pwmGenerator/Mcount_rampa_cy<4>_rt_2036 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<5>_rt  (
    .I0(\pwmGenerator/rampa [5]),
    .O(\pwmGenerator/Mcount_rampa_cy<5>_rt_2038 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<6>_rt  (
    .I0(\pwmGenerator/rampa [6]),
    .O(\pwmGenerator/Mcount_rampa_cy<6>_rt_2040 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<7>_rt  (
    .I0(\pwmGenerator/rampa [7]),
    .O(\pwmGenerator/Mcount_rampa_cy<7>_rt_2042 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<8>_rt  (
    .I0(\pwmGenerator/rampa [8]),
    .O(\pwmGenerator/Mcount_rampa_cy<8>_rt_2044 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<9>_rt  (
    .I0(\pwmGenerator/rampa [9]),
    .O(\pwmGenerator/Mcount_rampa_cy<9>_rt_2046 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<10>_rt  (
    .I0(\pwmGenerator/rampa [10]),
    .O(\pwmGenerator/Mcount_rampa_cy<10>_rt_2020 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<11>_rt  (
    .I0(\pwmGenerator/rampa [11]),
    .O(\pwmGenerator/Mcount_rampa_cy<11>_rt_2022 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<12>_rt  (
    .I0(\pwmGenerator/rampa [12]),
    .O(\pwmGenerator/Mcount_rampa_cy<12>_rt_2024 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<13>_rt  (
    .I0(\pwmGenerator/rampa [13]),
    .O(\pwmGenerator/Mcount_rampa_cy<13>_rt_2026 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_cy<14>_rt  (
    .I0(\pwmGenerator/rampa [14]),
    .O(\pwmGenerator/Mcount_rampa_cy<14>_rt_2028 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt  (
    .I0(w_velocity[1]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt  (
    .I0(w_velocity[3]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Madd_o_velocity_cy<14>_rt  (
    .I0(\decoder/o_velocity_addsub0001 [14]),
    .O(\decoder/Madd_o_velocity_cy<14>_rt_1023 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Madd_o_velocity_cy<13>_rt  (
    .I0(\decoder/o_velocity_addsub0001 [13]),
    .O(\decoder/Madd_o_velocity_cy<13>_rt_1021 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<15>_rt  (
    .I0(\decoder/r_Counter [15]),
    .O(\decoder/Mcount_r_Counter_cy<15>_rt_1120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<14>_rt  (
    .I0(\decoder/r_Counter [14]),
    .O(\decoder/Mcount_r_Counter_cy<14>_rt_1118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<13>_rt  (
    .I0(\decoder/r_Counter [13]),
    .O(\decoder/Mcount_r_Counter_cy<13>_rt_1116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<12>_rt  (
    .I0(\decoder/r_Counter [12]),
    .O(\decoder/Mcount_r_Counter_cy<12>_rt_1114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<11>_rt  (
    .I0(\decoder/r_Counter [11]),
    .O(\decoder/Mcount_r_Counter_cy<11>_rt_1112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<10>_rt  (
    .I0(\decoder/r_Counter [10]),
    .O(\decoder/Mcount_r_Counter_cy<10>_rt_1110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<9>_rt  (
    .I0(\decoder/r_Counter [9]),
    .O(\decoder/Mcount_r_Counter_cy<9>_rt_1138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<8>_rt  (
    .I0(\decoder/r_Counter [8]),
    .O(\decoder/Mcount_r_Counter_cy<8>_rt_1136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<7>_rt  (
    .I0(\decoder/r_Counter [7]),
    .O(\decoder/Mcount_r_Counter_cy<7>_rt_1134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<6>_rt  (
    .I0(\decoder/r_Counter [6]),
    .O(\decoder/Mcount_r_Counter_cy<6>_rt_1132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<5>_rt  (
    .I0(\decoder/r_Counter [5]),
    .O(\decoder/Mcount_r_Counter_cy<5>_rt_1130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<4>_rt  (
    .I0(\decoder/r_Counter [4]),
    .O(\decoder/Mcount_r_Counter_cy<4>_rt_1128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<3>_rt  (
    .I0(\decoder/r_Counter [3]),
    .O(\decoder/Mcount_r_Counter_cy<3>_rt_1126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<2>_rt  (
    .I0(\decoder/r_Counter [2]),
    .O(\decoder/Mcount_r_Counter_cy<2>_rt_1124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_cy<1>_rt  (
    .I0(\decoder/r_Counter [1]),
    .O(\decoder/Mcount_r_Counter_cy<1>_rt_1122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<6>_rt  (
    .I0(\converter/r_Loop_Count [6]),
    .O(\converter/Mcount_r_Loop_Count_cy<6>_rt_664 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<5>_rt  (
    .I0(\converter/r_Loop_Count [5]),
    .O(\converter/Mcount_r_Loop_Count_cy<5>_rt_662 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<4>_rt  (
    .I0(\converter/r_Loop_Count [4]),
    .O(\converter/Mcount_r_Loop_Count_cy<4>_rt_660 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<3>_rt  (
    .I0(\converter/r_Loop_Count [3]),
    .O(\converter/Mcount_r_Loop_Count_cy<3>_rt_658 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<2>_rt  (
    .I0(\converter/r_Loop_Count [2]),
    .O(\converter/Mcount_r_Loop_Count_cy<2>_rt_656 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_cy<1>_rt  (
    .I0(\converter/r_Loop_Count [1]),
    .O(\converter/Mcount_r_Loop_Count_cy<1>_rt_654 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_xor<15>_rt  (
    .I0(counter[15]),
    .O(\Mcount_counter_xor<15>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwmGenerator/Mcount_rampa_xor<15>_rt  (
    .I0(\pwmGenerator/rampa [15]),
    .O(\pwmGenerator/Mcount_rampa_xor<15>_rt_2048 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \decoder/Mcount_r_Counter_xor<16>_rt  (
    .I0(\decoder/r_Counter_161 ),
    .O(\decoder/Mcount_r_Counter_xor<16>_rt_1140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \converter/Mcount_r_Loop_Count_xor<7>_rt  (
    .I0(\converter/r_Loop_Count [7]),
    .O(\converter/Mcount_r_Loop_Count_xor<7>_rt_666 )
  );
  LUT4 #(
    .INIT ( 16'h2800 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_2/Go_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .I2(N679),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/operator_B_stage_1_2/Po1  (
    .I0(\pidController/p [4]),
    .I1(\pidController/a [4]),
    .I2(\pidController/a [3]),
    .I3(\pidController/p [3]),
    .O(\pidController/adder_32bit_0/P1 [2])
  );
  LUT4 #(
    .INIT ( 16'hE080 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go12  (
    .I0(\pidController/a [1]),
    .I1(\pidController/p [1]),
    .I2(N236),
    .I3(\pidController/adder_32bit_0/G1[0] ),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1446 )
  );
  LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1  (
    .I0(\pidController/adder_32bit_0/N25 ),
    .I1(\pidController/a [13]),
    .I2(\pidController/p [13]),
    .I3(\pidController/adder_32bit_0/G4<6>51_1429 ),
    .O(\pidController/sum [13])
  );
  LUT4 #(
    .INIT ( 16'h7887 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<5>_Result11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w12<1>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .O(N193)
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/adder_32bit_0/G4<6>64_SW0  (
    .I0(N644),
    .I1(\pidController/p [13]),
    .I2(\pidController/a [13]),
    .O(N238)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \pidController/adder_32bit_0/G4<6>64_SW1  (
    .I0(\pidController/p [13]),
    .I1(\pidController/a [13]),
    .O(N239)
  );
  LUT4 #(
    .INIT ( 16'h99A5 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1  (
    .I0(\pidController/adder_32bit_0/P0[14] ),
    .I1(N239),
    .I2(N238),
    .I3(\pidController/adder_32bit_0/G4<6>51_1429 ),
    .O(\pidController/sum [14])
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW1  (
    .I0(N710),
    .I1(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I2(\pidController/adder_32bit_0/N26 ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .O(N248)
  );
  LUT4 #(
    .INIT ( 16'h88A0 ))
  \pidController/adder_32bit_0/G4<6>51  (
    .I0(\pidController/adder_32bit_0/G4<6>48_1428 ),
    .I1(N248),
    .I2(N247),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 ),
    .O(\pidController/adder_32bit_0/G4<6>51_1429 )
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go125  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1445 ),
    .I1(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1446 ),
    .I2(N251),
    .I3(N250),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 )
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW1  (
    .I0(N727),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1555 ),
    .O(N256)
  );
  LUT4 #(
    .INIT ( 16'hFCEE ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64  (
    .I0(N255),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .I2(N256),
    .I3(N696),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4 [6])
  );
  LUT4 #(
    .INIT ( 16'hD7FF ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 ),
    .I1(N678),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ),
    .O(N258)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<11>76  (
    .I0(\pidController/p_mux0000<11>7_1877 ),
    .I1(\pidController/p [11]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/p_mux0000<11>74_1878 ),
    .O(\pidController/p_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'h9666 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_8/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] )
  );
  LUT4 #(
    .INIT ( 16'hF77F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<6>_Result111  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 )
  );
  LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [4])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] )
  );
  LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<9>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9])
  );
  LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<5>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW2  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .I3(N667),
    .O(N260)
  );
  LUT4 #(
    .INIT ( 16'hFE98 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ),
    .I2(N260),
    .I3(N261),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [0])
  );
  LUT4 #(
    .INIT ( 16'h8882 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW1  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(N222),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1557 ),
    .I3(N721),
    .O(N267)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \converter/r_BCD_13_mux000011_SW1  (
    .I0(\converter/Madd_add0000_addsub0000_lut [2]),
    .I1(\converter/w_BCD_Digit [1]),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'h7080 ))
  \pidController/p_mux0000<14>77_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N671),
    .O(N272)
  );
  LUT4 #(
    .INIT ( 16'hD8E4 ))
  \pidController/p_mux0000<13>77  (
    .I0(N672),
    .I1(N275),
    .I2(N276),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4 [6]),
    .O(\pidController/p_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hCE00 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW0  (
    .I0(N709),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1572 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .O(N278)
  );
  LUT4 #(
    .INIT ( 16'h09F6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>75_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 ),
    .I2(N149),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w15 [1]),
    .O(N222)
  );
  LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [4])
  );
  LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<1>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] )
  );
  LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3])
  );
  LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<12>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1767 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [12])
  );
  LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<11>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1767 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11])
  );
  LUT4 #(
    .INIT ( 16'hA74F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(N190)
  );
  LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW1  (
    .I0(\pidController/p [5]),
    .I1(\pidController/p [6]),
    .I2(\pidController/a [6]),
    .I3(\pidController/a [5]),
    .O(N231)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<11>_Result1_SW0  (
    .I0(\pidController/p [11]),
    .I1(\pidController/a [11]),
    .O(N287)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<9>_Result1_SW0  (
    .I0(\pidController/p [9]),
    .I1(\pidController/a [9]),
    .O(N289)
  );
  LUT4 #(
    .INIT ( 16'h7080 ))
  \pidController/p_mux0000<12>77_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N676),
    .O(N295)
  );
  LUT4 #(
    .INIT ( 16'h10E0 ))
  \pidController/p_mux0000<12>77_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .I1(N654),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] ),
    .O(N296)
  );
  LUT4 #(
    .INIT ( 16'hFAEE ))
  \pidController/p_mux0000<12>94  (
    .I0(\pidController/p_mux0000<12>13_1880 ),
    .I1(N295),
    .I2(N296),
    .I3(N693),
    .O(\pidController/p_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'h9060 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N726),
    .O(N298)
  );
  LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/G4<7>62_SW1  (
    .I0(\pidController/adder_32bit_0/G4<7>59_1431 ),
    .I1(\pidController/p [15]),
    .I2(\pidController/a [15]),
    .I3(\pidController/adder_32bit_0/G4<7>10_1430 ),
    .O(N302)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1  (
    .I0(\pidController/adder_32bit_0/G4<6>48_1428 ),
    .I1(N302),
    .I2(N301),
    .I3(N688),
    .O(\pidController/sum [15])
  );
  LUT4 #(
    .INIT ( 16'hEEE8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1_SW1  (
    .I0(\pidController/a [4]),
    .I1(\pidController/p [4]),
    .I2(\pidController/a [3]),
    .I3(\pidController/p [3]),
    .O(N304)
  );
  LUT4 #(
    .INIT ( 16'h1F7F ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW0  (
    .I0(\pidController/a [5]),
    .I1(\pidController/p [5]),
    .I2(N683),
    .I3(\pidController/adder_32bit_0/G1[2] ),
    .O(N250)
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I3(N702),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N313)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N703),
    .I2(N313),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N316)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N704),
    .I2(N316),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N325)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N326),
    .I2(N325),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3])
  );
  LUT4 #(
    .INIT ( 16'h533F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N328)
  );
  LUT4 #(
    .INIT ( 16'hFCCA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N329)
  );
  LUT4 #(
    .INIT ( 16'h179F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(N331)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(N332),
    .I2(N331),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(N334)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(N335),
    .I2(N334),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7]),
    .I1(N723),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .O(N337)
  );
  LUT4 #(
    .INIT ( 16'hC993 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW1  (
    .I0(N713),
    .I1(\pidController/adder_32bit_0/P0[12] ),
    .I2(\pidController/p [11]),
    .I3(\pidController/a [11]),
    .O(N340)
  );
  LUT4 #(
    .INIT ( 16'h270F ))
  \pidController/adder_32bit_0/Mxor_o_s<12>_Result1  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I1(N340),
    .I2(N339),
    .I3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [12])
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<15>75_SW1  (
    .I0(N684),
    .I1(\pidController/p [15]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(N267),
    .O(N343)
  );
  LUT4 #(
    .INIT ( 16'hDF80 ))
  \pidController/p_mux0000<15>77  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1555 ),
    .I1(N343),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 ),
    .I3(N342),
    .O(\pidController/p_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'h0096 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I3(N179),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0])
  );
  LUT4 #(
    .INIT ( 16'h1117 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW3  (
    .I0(\pidController/p [9]),
    .I1(\pidController/a [9]),
    .I2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .O(N346)
  );
  LUT4 #(
    .INIT ( 16'h99A5 ))
  \pidController/adder_32bit_0/Mxor_o_s<10>_Result1  (
    .I0(\pidController/adder_32bit_0/P0[10] ),
    .I1(N346),
    .I2(N345),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 ),
    .O(\pidController/sum [10])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_3/Mxor_AxorB_Result1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[5] ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[6] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[7] ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [2]),
    .O(N283)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  r_LED_and00001 (
    .I0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .I1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .O(N01)
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_6/Go11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I2(N711),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go110  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I2(N350),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go110 )
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1572 )
  );
  LUT4 #(
    .INIT ( 16'hB34C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2])
  );
  LUT4 #(
    .INIT ( 16'hB34C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<1>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [1])
  );
  LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<5>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<1>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [1])
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go151  (
    .I0(\pidController/p [8]),
    .I1(\pidController/a [8]),
    .I2(\pidController/a [7]),
    .I3(\pidController/p [7]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \decoder/Maddsub_count_mux0000_lut<0>  (
    .I0(\decoder/count [0]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<1>  (
    .I0(\decoder/count [1]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<2>  (
    .I0(\decoder/count [2]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<3>  (
    .I0(\decoder/count [3]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<4>  (
    .I0(\decoder/count [4]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<5>  (
    .I0(\decoder/count [5]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<6>  (
    .I0(\decoder/count [6]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<7>  (
    .I0(\decoder/count [7]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hFF84 ))
  \pidController/p_mux0000<7>82  (
    .I0(N352),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .I3(\pidController/p_mux0000<7>21_1917 ),
    .O(\pidController/p_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h868F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .I3(N354),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1655 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_S_Result1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[0] ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[4] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[1] ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [1]),
    .O(N361)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_3/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD ),
    .I1(N283),
    .I2(N361),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [2])
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  r_controllerPin_or00001 (
    .I0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .I1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .I2(w_error[15]),
    .O(r_controllerPin_or0000)
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .I2(N706),
    .O(N363)
  );
  LUT4 #(
    .INIT ( 16'hCB0E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .I2(N657),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2]),
    .O(N364)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1696 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .I2(N364),
    .I3(N363),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [0])
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .I2(N720),
    .O(N366)
  );
  LUT4 #(
    .INIT ( 16'hCB0E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .I2(N658),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2]),
    .O(N367)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1693 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .I2(N367),
    .I3(N366),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .I1(N697),
    .O(N369)
  );
  LUT4 #(
    .INIT ( 16'hEEE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_2/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2]),
    .I2(N369),
    .I3(N669),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [0])
  );
  LUT4 #(
    .INIT ( 16'h9969 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_2/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2]),
    .I2(N371),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1647 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I2(N348),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1554 ),
    .O(N264)
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<2>21  (
    .I0(\pidController/state_1_FSM_FFd3_1947 ),
    .I1(\pidController/sum [2]),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .I3(\pidController/a_mux0000<2>13_1400 ),
    .O(\pidController/a_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<4>21  (
    .I0(\pidController/state_1_FSM_FFd3_1947 ),
    .I1(\pidController/sum [4]),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .I3(\pidController/a_mux0000<4>13_1406 ),
    .O(\pidController/a_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<3>21  (
    .I0(\pidController/state_1_FSM_FFd3_1947 ),
    .I1(\pidController/sum [3]),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .I3(\pidController/a_mux0000<3>13_1403 ),
    .O(\pidController/a_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [6])
  );
  LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4])
  );
  LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_5_mux00001  (
    .I0(N643),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/r_Digit_Index [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_5_mux00001_724 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \converter/r_BCD_13_mux00001  (
    .I0(\converter/add0000_addsub0000 [1]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/r_Digit_Index [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_13_mux00001_708 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \converter/r_BCD_14_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/add0000_addsub0000 [2]),
    .I2(\converter/r_Digit_Index [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_14_mux00001_710 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<8>  (
    .I0(\decoder/count [8]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<6>48  (
    .I0(\pidController/p [12]),
    .I1(\pidController/a [12]),
    .I2(\pidController/a [11]),
    .I3(\pidController/p [11]),
    .O(\pidController/adder_32bit_0/G4<6>48_1428 )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<7>59  (
    .I0(\pidController/p [14]),
    .I1(\pidController/a [14]),
    .I2(\pidController/a [13]),
    .I3(\pidController/p [13]),
    .O(\pidController/adder_32bit_0/G4<7>59_1431 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<9>  (
    .I0(\decoder/count [9]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<10>  (
    .I0(\decoder/count [10]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<11>  (
    .I0(\decoder/count [11]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<12>  (
    .I0(\decoder/count [12]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<13>  (
    .I0(\decoder/count [13]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [13])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_6_mux00001  (
    .I0(N724),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/r_Digit_Index [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_6_mux00001_726 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1  (
    .I0(N373),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<2>_Result_SW0_SW2  (
    .I0(\pidController/p [2]),
    .I1(\pidController/a [2]),
    .O(N375)
  );
  LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<2>_Result1  (
    .I0(\pidController/adder_32bit_0/G1[0] ),
    .I1(\pidController/p [1]),
    .I2(N375),
    .I3(\pidController/a [1]),
    .O(\pidController/sum [2])
  );
  LUT4 #(
    .INIT ( 16'h0048 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .I1(N348),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1]),
    .I3(N377),
    .O(N255)
  );
  LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .I3(N379),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1693 )
  );
  LUT4 #(
    .INIT ( 16'h2882 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .I2(N381),
    .I3(N3111),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1696 )
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \pidController/p_mux0000<10>77_SW0  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(N691),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .O(N383)
  );
  LUT4 #(
    .INIT ( 16'h3060 ))
  \pidController/p_mux0000<10>77_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N662),
    .O(N384)
  );
  LUT4 #(
    .INIT ( 16'hFAFC ))
  \pidController/p_mux0000<10>94  (
    .I0(N384),
    .I1(N383),
    .I2(\pidController/p_mux0000<10>13_1873 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .O(\pidController/p_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \pidController/p_mux0000<8>77_SW0  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0]),
    .O(N386)
  );
  LUT4 #(
    .INIT ( 16'h3060 ))
  \pidController/p_mux0000<8>77_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] ),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0]),
    .O(N387)
  );
  LUT4 #(
    .INIT ( 16'hFFB8 ))
  \pidController/p_mux0000<8>94  (
    .I0(N387),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .I2(N386),
    .I3(\pidController/p_mux0000<8>13_1921 ),
    .O(\pidController/p_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW3  (
    .I0(N225),
    .I1(\pidController/p [11]),
    .I2(\pidController/a [11]),
    .O(N390)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/Mxor_o_s<11>_Result1  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I1(N390),
    .I2(N389),
    .I3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [11])
  );
  LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW5  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .I1(\pidController/p [9]),
    .I2(\pidController/a [9]),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .O(N393)
  );
  LUT4 #(
    .INIT ( 16'hF0E4 ))
  \pidController/adder_32bit_0/Mxor_o_s<9>_Result1  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1448 ),
    .I1(N392),
    .I2(N393),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1450 ),
    .O(\pidController/sum [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW1  (
    .I0(N302),
    .I1(N233),
    .I2(N234),
    .O(N396)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/md<15>  (
    .I0(\pidController/adder_32bit_0/G4<6>48_1428 ),
    .I1(N396),
    .I2(N395),
    .I3(\pidController/adder_32bit_0/N19 ),
    .O(\pidController/md [15])
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1_SW0  (
    .I0(\pidController/p [13]),
    .I1(\pidController/a [13]),
    .I2(N245),
    .I3(N244),
    .O(N398)
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1_SW1  (
    .I0(\pidController/p [13]),
    .I1(\pidController/a [13]),
    .I2(N244),
    .I3(N245),
    .O(N399)
  );
  LUT4 #(
    .INIT ( 16'hF0E4 ))
  \pidController/md<13>  (
    .I0(\pidController/adder_32bit_0/N25 ),
    .I1(N398),
    .I2(N399),
    .I3(\pidController/adder_32bit_0/G4<6>51_1429 ),
    .O(\pidController/md [13])
  );
  LUT4 #(
    .INIT ( 16'hB3A0 ))
  \converter/r_BCD_12_mux0000191  (
    .I0(\converter/r_BCD [12]),
    .I1(N401),
    .I2(\converter/N4 ),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_12_mux000019 )
  );
  LUT4 #(
    .INIT ( 16'h8117 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .O(N403)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48  (
    .I0(N403),
    .I1(N193),
    .I2(N660),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1555 )
  );
  LUT4 #(
    .INIT ( 16'h07F8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1655 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1654 ),
    .I3(N405),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [1])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .O(N408)
  );
  LUT4 #(
    .INIT ( 16'hB010 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1554 ),
    .I1(N407),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N408),
    .O(N299)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1_SW0  (
    .I0(\pidController/a_mux0000<10>18 ),
    .I1(N238),
    .I2(\pidController/adder_32bit_0/P0[14] ),
    .I3(\pidController/a_mux0000<14>7_1392 ),
    .O(N410)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1_SW1  (
    .I0(N661),
    .I1(\pidController/adder_32bit_0/P0[14] ),
    .I2(N239),
    .I3(\pidController/a_mux0000<14>7_1392 ),
    .O(N4111)
  );
  LUT4 #(
    .INIT ( 16'hFAFC ))
  \pidController/a_mux0000<14>23  (
    .I0(N4111),
    .I1(N410),
    .I2(\pidController/a_mux0000<14>10_1391 ),
    .I3(\pidController/adder_32bit_0/G4<6>51_1429 ),
    .O(\pidController/a_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hD8E4 ))
  \pidController/p_mux0000<9>76  (
    .I0(N664),
    .I1(N413),
    .I2(N414),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .O(\pidController/p_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hFCFA ))
  \pidController/a_mux0000<15>23  (
    .I0(N416),
    .I1(N417),
    .I2(\pidController/a_mux0000<15>10_1394 ),
    .I3(\pidController/adder_32bit_0/N19 ),
    .O(\pidController/a_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hFE10 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .I1(N256),
    .I2(N272),
    .I3(N695),
    .O(N420)
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \pidController/p_mux0000<14>94  (
    .I0(\pidController/p_mux0000<14>13_1885 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .I2(N419),
    .I3(N420),
    .O(\pidController/p_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'h569A ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_CxorD_Result1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I2(N154),
    .I3(N155),
    .O(N422)
  );
  LUT4 #(
    .INIT ( 16'h1781 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .I3(N673),
    .O(N426)
  );
  LUT4 #(
    .INIT ( 16'h1428 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59  (
    .I0(N175),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .I3(N426),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1557 )
  );
  LUT4 #(
    .INIT ( 16'h7FE9 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .I3(N694),
    .O(N428)
  );
  LUT4 #(
    .INIT ( 16'h533F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N430)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N722),
    .I2(N430),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1772 ),
    .O(N433)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(N434),
    .I2(N433),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2])
  );
  LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(N436)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(N437),
    .I2(N436),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2])
  );
  LUT4 #(
    .INIT ( 16'hE999 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(N440)
  );
  LUT4 #(
    .INIT ( 16'h096F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I2(N439),
    .I3(N440),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 )
  );
  LUT4 #(
    .INIT ( 16'h437F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md_1_1_1749 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N442)
  );
  LUT4 #(
    .INIT ( 16'hFEC2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md_1_1_1749 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N443)
  );
  MUXF5   \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0  (
    .I0(N445),
    .I1(N446),
    .S(\pidController/adder_32bit_0/N4 ),
    .O(N230)
  );
  LUT4 #(
    .INIT ( 16'hE8EE ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0_F  (
    .I0(\pidController/a [6]),
    .I1(\pidController/p [6]),
    .I2(\pidController/adder_32bit_0/G1[2] ),
    .I3(\pidController/adder_32bit_0/N33 ),
    .O(N445)
  );
  MUXF5   \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0  (
    .I0(N459),
    .I1(N460),
    .S(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .O(N247)
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0_F  (
    .I0(\pidController/adder_32bit_0/G4<6>16_1427 ),
    .I1(\pidController/adder_32bit_0/N26 ),
    .I2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .O(N459)
  );
  LUT4 #(
    .INIT ( 16'hFCF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0_G  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1448 ),
    .I1(\pidController/adder_32bit_0/G4<6>16_1427 ),
    .I2(\pidController/adder_32bit_0/N26 ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .O(N460)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW1  (
    .I0(N467),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .S(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1572 ),
    .O(N279)
  );
  LUT4 #(
    .INIT ( 16'h2A00 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW1_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1573 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .O(N467)
  );
  MUXF5   \pidController/adder_32bit_0/G4<7>62_SW0  (
    .I0(N469),
    .I1(N470),
    .S(\pidController/adder_32bit_0/G4<7>59_1431 ),
    .O(N301)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/G4<7>62_SW0_F  (
    .I0(\pidController/adder_32bit_0/G4<7>10_1430 ),
    .I1(\pidController/p [15]),
    .I2(\pidController/a [15]),
    .O(N469)
  );
  LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/G4<7>62_SW0_G  (
    .I0(\pidController/adder_32bit_0/N25 ),
    .I1(\pidController/p [15]),
    .I2(\pidController/a [15]),
    .I3(\pidController/adder_32bit_0/G4<7>10_1430 ),
    .O(N470)
  );
  MUXF5   \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2  (
    .I0(N471),
    .I1(N472),
    .S(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .O(N345)
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2_F  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .I1(\pidController/p [9]),
    .I2(\pidController/a [9]),
    .O(N471)
  );
  LUT4 #(
    .INIT ( 16'h1117 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2_G  (
    .I0(\pidController/p [9]),
    .I1(\pidController/a [9]),
    .I2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1448 ),
    .O(N472)
  );
  MUXF5   \pidController/md<6>  (
    .I0(N473),
    .I1(N474),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [6])
  );
  LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<6>_F  (
    .I0(\pidController/err_0_6_1466 ),
    .I1(\pidController/md_index [1]),
    .I2(N127),
    .I3(\pidController/sum [6]),
    .O(N473)
  );
  MUXF5   \pidController/md<10>  (
    .I0(N475),
    .I1(N476),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [10])
  );
  LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<10>_F  (
    .I0(\pidController/err_0_10_1456 ),
    .I1(\pidController/md_index [1]),
    .I2(N188),
    .I3(\pidController/sum [10]),
    .O(N475)
  );
  MUXF5   \pidController/md<9>  (
    .I0(N477),
    .I1(N478),
    .S(\pidController/md_index [1]),
    .O(\pidController/md [9])
  );
  LUT4 #(
    .INIT ( 16'h8BB8 ))
  \pidController/md<9>_F  (
    .I0(\pidController/err_1_9_1485 ),
    .I1(\pidController/md_index [2]),
    .I2(N289),
    .I3(\pidController/adder_32bit_0/N20 ),
    .O(N477)
  );
  MUXF5   \pidController/md<8>  (
    .I0(N479),
    .I1(N480),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [8])
  );
  LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<8>_F  (
    .I0(\pidController/err_0_8_1468 ),
    .I1(\pidController/md_index [1]),
    .I2(N168),
    .I3(\pidController/sum [8]),
    .O(N479)
  );
  MUXF5   \pidController/md<7>  (
    .I0(N481),
    .I1(N482),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [7])
  );
  LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<7>_F  (
    .I0(\pidController/err_0_7_1467 ),
    .I1(\pidController/md_index [1]),
    .I2(N171),
    .I3(\pidController/sum [7]),
    .O(N481)
  );
  MUXF5   \pidController/md<12>  (
    .I0(N483),
    .I1(N484),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [12])
  );
  LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<12>_F  (
    .I0(\pidController/err_0_12_1458 ),
    .I1(\pidController/md_index [1]),
    .I2(N196),
    .I3(\pidController/sum [12]),
    .O(N483)
  );
  MUXF5   \pidController/md<11>  (
    .I0(N485),
    .I1(N486),
    .S(\pidController/md_index [1]),
    .O(\pidController/md [11])
  );
  LUT4 #(
    .INIT ( 16'h8BB8 ))
  \pidController/md<11>_F  (
    .I0(\pidController/err_1_11_1473 ),
    .I1(\pidController/md_index [2]),
    .I2(N287),
    .I3(\pidController/adder_32bit_0/N19 ),
    .O(N485)
  );
  MUXF5   \pidController/md<14>  (
    .I0(N487),
    .I1(N488),
    .S(\pidController/adder_32bit_0/G4<6>51_1429 ),
    .O(\pidController/md [14])
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/md<14>_F  (
    .I0(\pidController/adder_32bit_0/P0[14] ),
    .I1(N238),
    .I2(N241),
    .I3(N242),
    .O(N487)
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/md<14>_G  (
    .I0(\pidController/adder_32bit_0/P0[14] ),
    .I1(N239),
    .I2(N241),
    .I3(N242),
    .O(N488)
  );
  MUXF5   \pidController/md<4>  (
    .I0(N489),
    .I1(N490),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [4])
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pidController/md<4>_F  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_0_4_1464 ),
    .I2(\pidController/sum [4]),
    .I3(N83),
    .O(N489)
  );
  MUXF5   \pidController/md<3>  (
    .I0(N491),
    .I1(N492),
    .S(\pidController/md_index [2]),
    .O(\pidController/md [3])
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pidController/md<3>_F  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_0_3_1463 ),
    .I2(\pidController/sum [3]),
    .I3(N86),
    .O(N491)
  );
  MUXF5   \pidController/md<5>  (
    .I0(N493),
    .I1(N494),
    .S(\pidController/md_index [1]),
    .O(\pidController/md [5])
  );
  LUT4 #(
    .INIT ( 16'hEB41 ))
  \pidController/md<5>_F  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/adder_32bit_0/G3 [2]),
    .I2(\pidController/adder_32bit_0/N4 ),
    .I3(\pidController/err_1_5_1481 ),
    .O(N493)
  );
  MUXF5   \pidController/p_mux0000<9>74_SW0  (
    .I0(N495),
    .I1(N496),
    .S(\pidController/p_or0000_1925 ),
    .O(N413)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/p_mux0000<9>74_SW0_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/p_mux0000<9>7_1924 ),
    .I3(\pidController/p [9]),
    .O(N495)
  );
  MUXF5   \pidController/p_mux0000<9>74_SW1  (
    .I0(N497),
    .I1(N498),
    .S(\pidController/p_or0000_1925 ),
    .O(N414)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<9>74_SW1_F  (
    .I0(\pidController/p [9]),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .I3(\pidController/p_mux0000<9>7_1924 ),
    .O(N497)
  );
  MUXF5   \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3  (
    .I0(N499),
    .I1(N500),
    .S(N301),
    .O(N417)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3_F  (
    .I0(N302),
    .I1(\pidController/adder_32bit_0/G4<6>48_1428 ),
    .I2(\pidController/a_mux0000<10>18 ),
    .I3(\pidController/a_mux0000<15>7_1395 ),
    .O(N499)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3_G  (
    .I0(\pidController/a_mux0000<10>18 ),
    .I1(N302),
    .I2(\pidController/adder_32bit_0/G4<6>48_1428 ),
    .I3(\pidController/a_mux0000<15>7_1395 ),
    .O(N500)
  );
  MUXF5   \converter/N61  (
    .I0(N501),
    .I1(N502),
    .S(\converter/r_SM_Main_FSM_FFd2_783 ),
    .O(\converter/N6 )
  );
  LUT4 #(
    .INIT ( 16'hBBBF ))
  \converter/N61_G  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(N96),
    .O(N502)
  );
  MUXF5   \converter/N41  (
    .I0(N503),
    .I1(N504),
    .S(\converter/r_SM_Main_FSM_FFd2_783 ),
    .O(\converter/N4 )
  );
  LUT4 #(
    .INIT ( 16'h777F ))
  \converter/N41_G  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(N96),
    .O(N504)
  );
  MUXF5   \converter/N51  (
    .I0(N505),
    .I1(N506),
    .S(\converter/r_SM_Main_FSM_FFd2_783 ),
    .O(\converter/N5 )
  );
  LUT4 #(
    .INIT ( 16'hDDDF ))
  \converter/N51_G  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(N96),
    .O(N506)
  );
  MUXF5   \converter/r_BCD_0_mux000011  (
    .I0(N507),
    .I1(N508),
    .S(\converter/r_SM_Main_FSM_FFd2_783 ),
    .O(\converter/N01 )
  );
  LUT4 #(
    .INIT ( 16'hEEEF ))
  \converter/r_BCD_0_mux000011_G  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(N96),
    .O(N508)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<15>  (
    .I0(\decoder/r_countPrev [15]),
    .I1(\decoder/r_count [15]),
    .O(\decoder/Msub_w_diff_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h8E ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<15>  (
    .I0(\decoder/w_diff [14]),
    .I1(\decoder/w_diff [15]),
    .I2(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[15] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<9>_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .O(N356)
  );
  LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2])
  );
  LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [1])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>861_SW0  (
    .I0(r_displayValue[9]),
    .I1(s_Main_FSM_FFd2_2331),
    .I2(r_displayValue[10]),
    .I3(r_displayValue[8]),
    .O(N509)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<2>861  (
    .I0(\r_SevenSegment_mux0000<2>22_2095 ),
    .I1(\r_SevenSegment_mux0000<2>45_2096 ),
    .I2(\r_SevenSegment_mux0000<2>58_2097 ),
    .I3(N509),
    .O(\r_SevenSegment_mux0000<2>86 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<9>_G  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_9_1485 ),
    .I2(\pidController/err_0_9_1469 ),
    .O(N478)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<11>_G  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_11_1473 ),
    .I2(\pidController/err_0_11_1457 ),
    .O(N486)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<5>_G  (
    .I0(\pidController/md_index [2]),
    .I1(\pidController/err_1_5_1481 ),
    .I2(\pidController/err_0_5_1465 ),
    .O(N494)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<15>_SW0_SW0  (
    .I0(\pidController/err_1_15_1477 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_15_1461 ),
    .O(N233)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<15>_SW0_SW1  (
    .I0(\pidController/err_1_15_1477 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_15_1461 ),
    .O(N234)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<13>_SW0_SW0  (
    .I0(\pidController/err_1_13_1475 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_13_1459 ),
    .O(N244)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<13>_SW0_SW1  (
    .I0(\pidController/err_1_13_1475 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_13_1459 ),
    .O(N245)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<14>_SW0_SW0  (
    .I0(\pidController/err_1_14_1476 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_14_1460 ),
    .O(N241)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<14>_SW0_SW1  (
    .I0(\pidController/err_1_14_1476 ),
    .I1(\pidController/md_index [2]),
    .I2(\pidController/md_index [1]),
    .I3(\pidController/err_0_14_1460 ),
    .O(N242)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/a_mux0000<1>21  (
    .I0(\pidController/a_mux0000<1>7_1398 ),
    .I1(\pidController/a [1]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/a_mux0000<1>20_1397 ),
    .O(\pidController/a_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF60 ))
  \pidController/p_mux0000<1>44  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] ),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(N513),
    .O(\pidController/p_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/p_mux0000<0>111_SW0  (
    .I0(r_kp[0]),
    .I1(\pidController/state_1_FSM_FFd9_1953 ),
    .I2(\w_setpoint[0] ),
    .I3(\pidController/state_1_FSM_FFd7_1951 ),
    .O(N515)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/p_mux0000<0>111  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_0_1454 ),
    .I2(N515),
    .O(\pidController/p_mux0000<0>11_1870 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<14>  (
    .I0(\decoder/r_countPrev [14]),
    .I1(\decoder/r_count [14]),
    .O(\decoder/Msub_w_diff_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<13>  (
    .I0(\decoder/r_countPrev [13]),
    .I1(\decoder/r_count [13]),
    .O(\decoder/Msub_w_diff_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<12>  (
    .I0(\decoder/r_countPrev [12]),
    .I1(\decoder/r_count [12]),
    .O(\decoder/Msub_w_diff_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<11>  (
    .I0(\decoder/r_countPrev [11]),
    .I1(\decoder/r_count [11]),
    .O(\decoder/Msub_w_diff_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<10>  (
    .I0(\decoder/r_countPrev [10]),
    .I1(\decoder/r_count [10]),
    .O(\decoder/Msub_w_diff_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<9>  (
    .I0(\decoder/r_countPrev [9]),
    .I1(\decoder/r_count [9]),
    .O(\decoder/Msub_w_diff_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<8>  (
    .I0(\decoder/r_countPrev [8]),
    .I1(\decoder/r_count [8]),
    .O(\decoder/Msub_w_diff_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<7>  (
    .I0(\decoder/r_countPrev [7]),
    .I1(\decoder/r_count [7]),
    .O(\decoder/Msub_w_diff_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<6>  (
    .I0(\decoder/r_countPrev [6]),
    .I1(\decoder/r_count [6]),
    .O(\decoder/Msub_w_diff_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<5>  (
    .I0(\decoder/r_countPrev [5]),
    .I1(\decoder/r_count [5]),
    .O(\decoder/Msub_w_diff_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<4>  (
    .I0(\decoder/r_countPrev [4]),
    .I1(\decoder/r_count [4]),
    .O(\decoder/Msub_w_diff_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<3>  (
    .I0(\decoder/r_countPrev [3]),
    .I1(\decoder/r_count [3]),
    .O(\decoder/Msub_w_diff_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<2>  (
    .I0(\decoder/r_countPrev [2]),
    .I1(\decoder/r_count [2]),
    .O(\decoder/Msub_w_diff_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<1>  (
    .I0(\decoder/r_countPrev [1]),
    .I1(\decoder/r_count [1]),
    .O(\decoder/Msub_w_diff_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<14>  (
    .I0(\decoder/w_diff [13]),
    .I1(\decoder/w_diff [15]),
    .I2(\decoder/w_diff [12]),
    .I3(\decoder/w_diff [14]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<13>  (
    .I0(\decoder/w_diff [12]),
    .I1(\decoder/w_diff [14]),
    .I2(\decoder/w_diff [11]),
    .I3(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<12>  (
    .I0(\decoder/w_diff [11]),
    .I1(\decoder/w_diff [13]),
    .I2(\decoder/w_diff [10]),
    .I3(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<11>  (
    .I0(\decoder/w_diff [10]),
    .I1(\decoder/w_diff [12]),
    .I2(\decoder/w_diff [9]),
    .I3(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<10>  (
    .I0(\decoder/w_diff [10]),
    .I1(\decoder/w_diff [11]),
    .I2(\decoder/w_diff [8]),
    .I3(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<9>  (
    .I0(\decoder/w_diff [8]),
    .I1(\decoder/w_diff [10]),
    .I2(\decoder/w_diff [7]),
    .I3(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<8>  (
    .I0(\decoder/w_diff [7]),
    .I1(\decoder/w_diff [9]),
    .I2(\decoder/w_diff [6]),
    .I3(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<7>  (
    .I0(\decoder/w_diff [6]),
    .I1(\decoder/w_diff [8]),
    .I2(\decoder/w_diff [5]),
    .I3(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<6>  (
    .I0(\decoder/w_diff [5]),
    .I1(\decoder/w_diff [7]),
    .I2(\decoder/w_diff [4]),
    .I3(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<5>  (
    .I0(\decoder/w_diff [4]),
    .I1(\decoder/w_diff [6]),
    .I2(\decoder/w_diff [3]),
    .I3(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<4>  (
    .I0(\decoder/w_diff [3]),
    .I1(\decoder/w_diff [5]),
    .I2(\decoder/w_diff [2]),
    .I3(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<3>  (
    .I0(\decoder/w_diff [2]),
    .I1(\decoder/w_diff [4]),
    .I2(\decoder/w_diff [1]),
    .I3(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] )
  );
  LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<2>  (
    .I0(\decoder/w_diff [1]),
    .I1(\decoder/w_diff [3]),
    .I2(\decoder/w_diff [0]),
    .I3(\decoder/w_diff [2]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] )
  );
  LUT4 #(
    .INIT ( 16'hC963 ))
  \decoder/Msub_w_diff_lut<0>  (
    .I0(\decoder/w_diff_cmp_ge0000 ),
    .I1(\decoder/w_diff_mux0000 [0]),
    .I2(\decoder/r_count [0]),
    .I3(\decoder/r_countPrev [0]),
    .O(\decoder/Msub_w_diff_lut [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \r_LED_mux0000<6>111  (
    .I0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .I1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .O(\r_LED_mux0000<6>11 )
  );
  LUT4 #(
    .INIT ( 16'h9666 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_6/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[6] )
  );
  LUT4 #(
    .INIT ( 16'h6999 ))
  \pidController/p_mux0000<7>81_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .O(N352)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/a_mux0000<5>23  (
    .I0(\pidController/a_mux0000<10>18 ),
    .I1(\pidController/adder_32bit_0/G3 [2]),
    .I2(\pidController/adder_32bit_0/N4 ),
    .I3(N523),
    .O(\pidController/a_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0_G  (
    .I0(\pidController/a [6]),
    .I1(\pidController/a [5]),
    .I2(\pidController/p [5]),
    .I3(\pidController/p [6]),
    .O(N446)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<14>  (
    .I0(\decoder/count [14]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N61_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(N501)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N41_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(N503)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N51_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(N505)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \converter/r_BCD_0_mux000011_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(N507)
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2])
  );
  LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<1>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [1])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<15>  (
    .I0(\decoder/count [15]),
    .I1(\decoder/quadB_delayed_1267 ),
    .I2(\debouncerA/DB_out_932 ),
    .O(\decoder/Maddsub_count_mux0000_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \converter/r_SM_Main_FSM_FFd3-In1  (
    .I0(\converter/r_SM_Main_cmp_eq00008_793 ),
    .I1(\converter/r_SM_Main_cmp_eq000021_792 ),
    .I2(\converter/r_SM_Main_FSM_FFd4_789 ),
    .O(\converter/r_SM_Main_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncerB/q_next<4>_SW0  (
    .I0(\debouncerB/q_reg [1]),
    .I1(\debouncerB/q_reg [6]),
    .I2(\debouncerB/q_reg [0]),
    .I3(\debouncerB/q_reg [2]),
    .O(N29)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncerA/q_next<4>_SW0  (
    .I0(\debouncerA/q_reg [1]),
    .I1(\debouncerA/q_reg [6]),
    .I2(\debouncerA/q_reg [0]),
    .I3(\debouncerA/q_reg [2]),
    .O(N311)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer5/q_next<4>_SW0  (
    .I0(\debouncer5/q_reg [1]),
    .I1(\debouncer5/q_reg [6]),
    .I2(\debouncer5/q_reg [0]),
    .I3(\debouncer5/q_reg [2]),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer4/q_next<4>_SW0  (
    .I0(\debouncer4/q_reg [1]),
    .I1(\debouncer4/q_reg [6]),
    .I2(\debouncer4/q_reg [0]),
    .I3(\debouncer4/q_reg [2]),
    .O(N35)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer3/q_next<4>_SW0  (
    .I0(\debouncer3/q_reg [1]),
    .I1(\debouncer3/q_reg [6]),
    .I2(\debouncer3/q_reg [0]),
    .I3(\debouncer3/q_reg [2]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer2/q_next<4>_SW0  (
    .I0(\debouncer2/q_reg [1]),
    .I1(\debouncer2/q_reg [6]),
    .I2(\debouncer2/q_reg [0]),
    .I3(\debouncer2/q_reg [2]),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer1/q_next<4>_SW0  (
    .I0(\debouncer1/q_reg [1]),
    .I1(\debouncer1/q_reg [6]),
    .I2(\debouncer1/q_reg [0]),
    .I3(\debouncer1/q_reg [2]),
    .O(N411)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer0/q_next<4>_SW0  (
    .I0(\debouncer0/q_reg [1]),
    .I1(\debouncer0/q_reg [6]),
    .I2(\debouncer0/q_reg [0]),
    .I3(\debouncer0/q_reg [2]),
    .O(N43)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<6>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_6_1482 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_6_1466 ),
    .O(N474)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<10>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_10_1472 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_10_1456 ),
    .O(N476)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<8>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_8_1484 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_8_1468 ),
    .O(N480)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<7>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_7_1483 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_7_1467 ),
    .O(N482)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<12>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_12_1474 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_12_1458 ),
    .O(N484)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<4>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_4_1480 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_4_1464 ),
    .O(N490)
  );
  LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<3>_G  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_1_3_1479 ),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_0_3_1463 ),
    .O(N492)
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<9>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [9]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[9]),
    .O(\pidController/mr [9])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<8>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [8]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[8]),
    .O(\pidController/mr [8])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<7>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [7]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[7]),
    .O(\pidController/mr [7])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<6>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [6]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[6]),
    .O(\pidController/mr [6])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<5>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [5]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[5]),
    .O(\pidController/mr [5])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<4>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [4]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[4]),
    .O(\pidController/mr [4])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<3>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [3]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[3]),
    .O(\pidController/mr [3])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<2>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [2]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[2]),
    .O(\pidController/mr [2])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<1>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [1]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[1]),
    .O(\pidController/mr [1])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<15>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [15]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[15]),
    .O(\pidController/mr [15])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<14>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [14]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[14]),
    .O(\pidController/mr [14])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<13>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [13]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[13]),
    .O(\pidController/mr [13])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<12>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [12]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[12]),
    .O(\pidController/mr [12])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<11>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [11]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[11]),
    .O(\pidController/mr [11])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<10>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [10]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[10]),
    .O(\pidController/mr [10])
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<0>1  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/kpd [0]),
    .I2(\pidController/md_index [2]),
    .I3(r_ki[0]),
    .O(\pidController/mr [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerB/q_next<0>1  (
    .I0(\debouncerB/DFF1_953 ),
    .I1(\debouncerB/DFF2_954 ),
    .I2(\debouncerB/q_reg [0]),
    .I3(\debouncerB/q_reg [6]),
    .O(\debouncerB/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerA/q_next<0>1  (
    .I0(\debouncerA/DFF1_933 ),
    .I1(\debouncerA/DFF2_934 ),
    .I2(\debouncerA/q_reg [0]),
    .I3(\debouncerA/q_reg [6]),
    .O(\debouncerA/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer5/q_next<0>1  (
    .I0(\debouncer5/DFF1_913 ),
    .I1(\debouncer5/DFF2_914 ),
    .I2(\debouncer5/q_reg [0]),
    .I3(\debouncer5/q_reg [6]),
    .O(\debouncer5/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer4/q_next<0>1  (
    .I0(\debouncer4/DFF1_893 ),
    .I1(\debouncer4/DFF2_894 ),
    .I2(\debouncer4/q_reg [0]),
    .I3(\debouncer4/q_reg [6]),
    .O(\debouncer4/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer3/q_next<0>1  (
    .I0(\debouncer3/DFF1_873 ),
    .I1(\debouncer3/DFF2_874 ),
    .I2(\debouncer3/q_reg [0]),
    .I3(\debouncer3/q_reg [6]),
    .O(\debouncer3/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer2/q_next<0>1  (
    .I0(\debouncer2/DFF1_853 ),
    .I1(\debouncer2/DFF2_854 ),
    .I2(\debouncer2/q_reg [0]),
    .I3(\debouncer2/q_reg [6]),
    .O(\debouncer2/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer1/q_next<0>1  (
    .I0(\debouncer1/DFF1_833 ),
    .I1(\debouncer1/DFF2_834 ),
    .I2(\debouncer1/q_reg [0]),
    .I3(\debouncer1/q_reg [6]),
    .O(\debouncer1/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer0/q_next<0>1  (
    .I0(\debouncer0/DFF1_813 ),
    .I1(\debouncer0/DFF2_814 ),
    .I2(\debouncer0/q_reg [0]),
    .I3(\debouncer0/q_reg [6]),
    .O(\debouncer0/q_next [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<7>11  (
    .I0(r_SevenSegment[0]),
    .I1(s_Main_FSM_FFd1_2330),
    .I2(s_Main_FSM_FFd3_2332),
    .I3(s_Main_FSM_FFd2_2331),
    .O(\r_SevenSegment_mux0000<7>1 )
  );
  LUT4 #(
    .INIT ( 16'h9000 ))
  \converter/r_BCD_1_mux00001  (
    .I0(\converter/w_BCD_Digit [1]),
    .I1(\converter/Madd_add0000_addsub0000_cy [0]),
    .I2(\converter/r_BCD_0_cmp_eq0000 ),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_1_mux00001_713 )
  );
  LUT4 #(
    .INIT ( 16'h0900 ))
  \converter/r_BCD_9_mux00001  (
    .I0(\converter/w_BCD_Digit [1]),
    .I1(\converter/Madd_add0000_addsub0000_cy [0]),
    .I2(\converter/N21 ),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_9_mux00001_732 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerB/q_next<2>1  (
    .I0(\debouncerB/DFF1_953 ),
    .I1(\debouncerB/DFF2_954 ),
    .I2(\debouncerB/q_reg [2]),
    .I3(\debouncerB/N02 ),
    .O(\debouncerB/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerA/q_next<2>1  (
    .I0(\debouncerA/DFF1_933 ),
    .I1(\debouncerA/DFF2_934 ),
    .I2(\debouncerA/q_reg [2]),
    .I3(\debouncerA/N02 ),
    .O(\debouncerA/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer5/q_next<2>1  (
    .I0(\debouncer5/DFF1_913 ),
    .I1(\debouncer5/DFF2_914 ),
    .I2(\debouncer5/q_reg [2]),
    .I3(\debouncer5/N02 ),
    .O(\debouncer5/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer4/q_next<2>1  (
    .I0(\debouncer4/DFF1_893 ),
    .I1(\debouncer4/DFF2_894 ),
    .I2(\debouncer4/q_reg [2]),
    .I3(\debouncer4/N02 ),
    .O(\debouncer4/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer3/q_next<2>1  (
    .I0(\debouncer3/DFF1_873 ),
    .I1(\debouncer3/DFF2_874 ),
    .I2(\debouncer3/q_reg [2]),
    .I3(\debouncer3/N02 ),
    .O(\debouncer3/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer2/q_next<2>1  (
    .I0(\debouncer2/DFF1_853 ),
    .I1(\debouncer2/DFF2_854 ),
    .I2(\debouncer2/q_reg [2]),
    .I3(\debouncer2/N02 ),
    .O(\debouncer2/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer1/q_next<2>1  (
    .I0(\debouncer1/DFF1_833 ),
    .I1(\debouncer1/DFF2_834 ),
    .I2(\debouncer1/q_reg [2]),
    .I3(\debouncer1/N02 ),
    .O(\debouncer1/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer0/q_next<2>1  (
    .I0(\debouncer0/DFF1_813 ),
    .I1(\debouncer0/DFF2_814 ),
    .I2(\debouncer0/q_reg [2]),
    .I3(\debouncer0/N02 ),
    .O(\debouncer0/q_next [2])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \pidController/p_mux0000<9>74_SW0_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(\pidController/p_mux0000<9>7_1924 ),
    .O(N496)
  );
  LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW2  (
    .I0(\pidController/state_1_FSM_FFd3_1947 ),
    .I1(N301),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .I3(N685),
    .O(N416)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \pidController/p_mux0000<2>42  (
    .I0(N680),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 ),
    .O(\pidController/p_mux0000<2>42_1894 )
  );
  LUT4 #(
    .INIT ( 16'h6000 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW0_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .I2(N712),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .O(N525)
  );
  LUT4 #(
    .INIT ( 16'h96AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_3/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [3])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncerB/q_next<5>_SW1  (
    .I0(\debouncerB/q_reg [2]),
    .I1(\debouncerB/N02 ),
    .I2(\debouncerB/q_reg [3]),
    .I3(\debouncerB/q_reg [4]),
    .O(N529)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncerB/q_next<5>  (
    .I0(\debouncerB/DFF1_953 ),
    .I1(\debouncerB/DFF2_954 ),
    .I2(\debouncerB/q_reg [5]),
    .I3(N529),
    .O(\debouncerB/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncerA/q_next<5>_SW1  (
    .I0(\debouncerA/q_reg [2]),
    .I1(\debouncerA/N02 ),
    .I2(\debouncerA/q_reg [3]),
    .I3(\debouncerA/q_reg [4]),
    .O(N531)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncerA/q_next<5>  (
    .I0(\debouncerA/DFF1_933 ),
    .I1(\debouncerA/DFF2_934 ),
    .I2(\debouncerA/q_reg [5]),
    .I3(N531),
    .O(\debouncerA/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer5/q_next<5>_SW1  (
    .I0(\debouncer5/q_reg [2]),
    .I1(\debouncer5/N02 ),
    .I2(\debouncer5/q_reg [3]),
    .I3(\debouncer5/q_reg [4]),
    .O(N533)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer5/q_next<5>  (
    .I0(\debouncer5/DFF1_913 ),
    .I1(\debouncer5/DFF2_914 ),
    .I2(\debouncer5/q_reg [5]),
    .I3(N533),
    .O(\debouncer5/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer4/q_next<5>_SW1  (
    .I0(\debouncer4/q_reg [2]),
    .I1(\debouncer4/N02 ),
    .I2(\debouncer4/q_reg [3]),
    .I3(\debouncer4/q_reg [4]),
    .O(N535)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer4/q_next<5>  (
    .I0(\debouncer4/DFF1_893 ),
    .I1(\debouncer4/DFF2_894 ),
    .I2(\debouncer4/q_reg [5]),
    .I3(N535),
    .O(\debouncer4/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer3/q_next<5>_SW1  (
    .I0(\debouncer3/q_reg [2]),
    .I1(\debouncer3/N02 ),
    .I2(\debouncer3/q_reg [3]),
    .I3(\debouncer3/q_reg [4]),
    .O(N537)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer3/q_next<5>  (
    .I0(\debouncer3/DFF1_873 ),
    .I1(\debouncer3/DFF2_874 ),
    .I2(\debouncer3/q_reg [5]),
    .I3(N537),
    .O(\debouncer3/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer2/q_next<5>_SW1  (
    .I0(\debouncer2/q_reg [2]),
    .I1(\debouncer2/N02 ),
    .I2(\debouncer2/q_reg [3]),
    .I3(\debouncer2/q_reg [4]),
    .O(N539)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer2/q_next<5>  (
    .I0(\debouncer2/DFF1_853 ),
    .I1(\debouncer2/DFF2_854 ),
    .I2(\debouncer2/q_reg [5]),
    .I3(N539),
    .O(\debouncer2/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer1/q_next<5>_SW1  (
    .I0(\debouncer1/q_reg [2]),
    .I1(\debouncer1/N02 ),
    .I2(\debouncer1/q_reg [3]),
    .I3(\debouncer1/q_reg [4]),
    .O(N541)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer1/q_next<5>  (
    .I0(\debouncer1/DFF1_833 ),
    .I1(\debouncer1/DFF2_834 ),
    .I2(\debouncer1/q_reg [5]),
    .I3(N541),
    .O(\debouncer1/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer0/q_next<5>_SW1  (
    .I0(\debouncer0/q_reg [2]),
    .I1(\debouncer0/N02 ),
    .I2(\debouncer0/q_reg [3]),
    .I3(\debouncer0/q_reg [4]),
    .O(N543)
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer0/q_next<5>  (
    .I0(\debouncer0/DFF1_813 ),
    .I1(\debouncer0/DFF2_814 ),
    .I2(\debouncer0/q_reg [5]),
    .I3(N543),
    .O(\debouncer0/q_next [5])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \converter/r_BCD_0_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_0_mux00001_698 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \converter/r_BCD_2_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/add0000_addsub0000 [2]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_2_mux00001_715 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \converter/r_BCD_3_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/N10 ),
    .O(\converter/r_BCD_3_mux00001_717 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \converter/r_BCD_8_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_8_mux00001_730 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \converter/r_BCD_11_mux00001  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/N10 ),
    .O(\converter/r_BCD_11_mux00001_703 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_10_mux00001  (
    .I0(\converter/add0000_addsub0000 [2]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/r_Digit_Index [1]),
    .I3(\converter/N12 ),
    .O(\converter/r_BCD_10_mux00001_701 )
  );
  LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_2_1/Go1  (
    .I0(N687),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \pidController/p_mux0000<9>74_SW1_G  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I3(\pidController/p_mux0000<9>7_1924 ),
    .O(N498)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncerB/q_next<6>19_SW0  (
    .I0(\debouncerB/q_next<6>5_964 ),
    .I1(\debouncerB/q_reg [4]),
    .I2(\debouncerB/q_reg [5]),
    .O(N545)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncerB/q_next<6>19  (
    .I0(\debouncerB/q_reg [6]),
    .I1(\debouncerB/DFF1_953 ),
    .I2(\debouncerB/DFF2_954 ),
    .I3(N545),
    .O(\debouncerB/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncerA/q_next<6>19_SW0  (
    .I0(\debouncerA/q_next<6>5_944 ),
    .I1(\debouncerA/q_reg [4]),
    .I2(\debouncerA/q_reg [5]),
    .O(N547)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncerA/q_next<6>19  (
    .I0(\debouncerA/q_reg [6]),
    .I1(\debouncerA/DFF1_933 ),
    .I2(\debouncerA/DFF2_934 ),
    .I3(N547),
    .O(\debouncerA/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer5/q_next<6>19_SW0  (
    .I0(\debouncer5/q_next<6>5_924 ),
    .I1(\debouncer5/q_reg [4]),
    .I2(\debouncer5/q_reg [5]),
    .O(N549)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer5/q_next<6>19  (
    .I0(\debouncer5/q_reg [6]),
    .I1(\debouncer5/DFF1_913 ),
    .I2(\debouncer5/DFF2_914 ),
    .I3(N549),
    .O(\debouncer5/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer4/q_next<6>19_SW0  (
    .I0(\debouncer4/q_next<6>5_904 ),
    .I1(\debouncer4/q_reg [4]),
    .I2(\debouncer4/q_reg [5]),
    .O(N551)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer4/q_next<6>19  (
    .I0(\debouncer4/q_reg [6]),
    .I1(\debouncer4/DFF1_893 ),
    .I2(\debouncer4/DFF2_894 ),
    .I3(N551),
    .O(\debouncer4/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer3/q_next<6>19_SW0  (
    .I0(\debouncer3/q_next<6>5_884 ),
    .I1(\debouncer3/q_reg [4]),
    .I2(\debouncer3/q_reg [5]),
    .O(N553)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer3/q_next<6>19  (
    .I0(\debouncer3/q_reg [6]),
    .I1(\debouncer3/DFF1_873 ),
    .I2(\debouncer3/DFF2_874 ),
    .I3(N553),
    .O(\debouncer3/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer2/q_next<6>19_SW0  (
    .I0(\debouncer2/q_next<6>5_864 ),
    .I1(\debouncer2/q_reg [4]),
    .I2(\debouncer2/q_reg [5]),
    .O(N555)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer2/q_next<6>19  (
    .I0(\debouncer2/q_reg [6]),
    .I1(\debouncer2/DFF1_853 ),
    .I2(\debouncer2/DFF2_854 ),
    .I3(N555),
    .O(\debouncer2/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer1/q_next<6>19_SW0  (
    .I0(\debouncer1/q_next<6>5_844 ),
    .I1(\debouncer1/q_reg [4]),
    .I2(\debouncer1/q_reg [5]),
    .O(N557)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer1/q_next<6>19  (
    .I0(\debouncer1/q_reg [6]),
    .I1(\debouncer1/DFF1_833 ),
    .I2(\debouncer1/DFF2_834 ),
    .I3(N557),
    .O(\debouncer1/q_next [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer0/q_next<6>19_SW0  (
    .I0(\debouncer0/q_next<6>5_824 ),
    .I1(\debouncer0/q_reg [4]),
    .I2(\debouncer0/q_reg [5]),
    .O(N559)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer0/q_next<6>19  (
    .I0(\debouncer0/q_reg [6]),
    .I1(\debouncer0/DFF1_813 ),
    .I2(\debouncer0/DFF2_814 ),
    .I3(N559),
    .O(\debouncer0/q_next [6])
  );
  LUT4 #(
    .INIT ( 16'h690F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/Mxor_S_Result1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N561)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .I2(N561),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<5>_Result2  (
    .I0(\pidController/adder_32bit_0/G3 [2]),
    .I1(\pidController/a [5]),
    .I2(\pidController/p [5]),
    .O(\pidController/sum [5])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_r_error_unsigned_addsub0000_cy<0>_rt  (
    .I0(w_error[0]),
    .O(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_26 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_1_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1766 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_7_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [7]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1778 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_2_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [2]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1769 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_1_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1767 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_3_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_4_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [4]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/md_1_1  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/md [1]),
    .Q(\pidController/multiplier_16x16bit_pipelined/md_1_1_1749 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_7_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [7]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_0_1  (
    .C(Clk_BUFGP_2),
    .CE(\converter/r_SM_Main_FSM_FFd1_782 ),
    .D(\converter/Result [0]),
    .R(\converter/r_Digit_Index_and0000 ),
    .Q(\converter/r_Digit_Index_0_1_769 )
  );
  FDCE   \pidController/multiplier_16x16bit_pipelined/mr_3_2  (
    .C(Clk_BUFGP_2),
    .CE(\pidController/start_1942 ),
    .CLR(decoder_not0000),
    .D(\pidController/mr [3]),
    .Q(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1772 )
  );
  BUFGP   Clk_BUFGP (
    .I(Clk),
    .O(Clk_BUFGP_2)
  );
  BUFG   \decoder/r_Counter_16_BUFG  (
    .I(\decoder/r_Counter_161 ),
    .O(\decoder/r_Counter [16])
  );
  INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
  INV   \pwmGenerator/Mcount_rampa_lut<0>_INV_0  (
    .I(\pwmGenerator/rampa [0]),
    .O(\pwmGenerator/Mcount_rampa_lut [0])
  );
  INV   \Msub_w_error_lut<8>_INV_0  (
    .I(w_velocity[8]),
    .O(Msub_w_error_lut[8])
  );
  INV   \Msub_w_error_lut<9>_INV_0  (
    .I(w_velocity[9]),
    .O(Msub_w_error_lut[9])
  );
  INV   \Msub_w_error_lut<10>_INV_0  (
    .I(w_velocity[10]),
    .O(Msub_w_error_lut[10])
  );
  INV   \Msub_w_error_lut<11>_INV_0  (
    .I(w_velocity[11]),
    .O(Msub_w_error_lut[11])
  );
  INV   \Msub_w_error_lut<12>_INV_0  (
    .I(w_velocity[12]),
    .O(Msub_w_error_lut[12])
  );
  INV   \Msub_w_error_lut<13>_INV_0  (
    .I(w_velocity[13]),
    .O(Msub_w_error_lut[13])
  );
  INV   \Msub_w_error_lut<14>_INV_0  (
    .I(w_velocity[14]),
    .O(Msub_w_error_lut[14])
  );
  INV   \Msub_w_error_lut<15>_INV_0  (
    .I(w_velocity[15]),
    .O(Msub_w_error_lut[15])
  );
  INV   \Mcompar_r_controllerPin_cmp_lt0000_lut<1>_INV_0  (
    .I(w_velocity[2]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[1] )
  );
  INV   \decoder/Mcount_r_Counter_lut<0>_INV_0  (
    .I(\decoder/r_Counter [0]),
    .O(\decoder/Mcount_r_Counter_lut [0])
  );
  INV   \converter/Mcount_r_Loop_Count_lut<0>_INV_0  (
    .I(\converter/r_Loop_Count [0]),
    .O(\converter/Mcount_r_Loop_Count_lut [0])
  );
  INV   \pidController/multiplier_16x16bit_pipelined/i_rst_inv361_INV_0  (
    .I(\debouncer0/DB_out_812 ),
    .O(decoder_not0000)
  );
  INV   \converter/Mcount_r_Digit_Index_xor<0>11_INV_0  (
    .I(\converter/r_Digit_Index [0]),
    .O(\converter/Result [0])
  );
  INV   \r_error_unsigned_not0000<9>1_INV_0  (
    .I(w_error[9]),
    .O(r_error_unsigned_not0000[9])
  );
  INV   \r_error_unsigned_not0000<8>1_INV_0  (
    .I(w_error[8]),
    .O(r_error_unsigned_not0000[8])
  );
  INV   \r_error_unsigned_not0000<7>1_INV_0  (
    .I(w_error[7]),
    .O(r_error_unsigned_not0000[7])
  );
  INV   \r_error_unsigned_not0000<6>1_INV_0  (
    .I(w_error[6]),
    .O(r_error_unsigned_not0000[6])
  );
  INV   \r_error_unsigned_not0000<5>1_INV_0  (
    .I(w_error[5]),
    .O(r_error_unsigned_not0000[5])
  );
  INV   \r_error_unsigned_not0000<4>1_INV_0  (
    .I(w_error[4]),
    .O(r_error_unsigned_not0000[4])
  );
  INV   \r_error_unsigned_not0000<3>1_INV_0  (
    .I(w_error[3]),
    .O(r_error_unsigned_not0000[3])
  );
  INV   \r_error_unsigned_not0000<2>1_INV_0  (
    .I(w_error[2]),
    .O(r_error_unsigned_not0000[2])
  );
  INV   \r_error_unsigned_not0000<1>1_INV_0  (
    .I(w_error[1]),
    .O(r_error_unsigned_not0000[1])
  );
  INV   \r_error_unsigned_not0000<14>1_INV_0  (
    .I(w_error[14]),
    .O(r_error_unsigned_not0000[14])
  );
  INV   \r_error_unsigned_not0000<13>1_INV_0  (
    .I(w_error[13]),
    .O(r_error_unsigned_not0000[13])
  );
  INV   \r_error_unsigned_not0000<12>1_INV_0  (
    .I(w_error[12]),
    .O(r_error_unsigned_not0000[12])
  );
  INV   \r_error_unsigned_not0000<11>1_INV_0  (
    .I(w_error[11]),
    .O(r_error_unsigned_not0000[11])
  );
  INV   \r_error_unsigned_not0000<10>1_INV_0  (
    .I(w_error[10]),
    .O(r_error_unsigned_not0000[10])
  );
  INV   \r_LED_mux0000<6>1_INV_0  (
    .I(w_error[15]),
    .O(r_LED_mux0000[6])
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62  (
    .I0(N563),
    .I1(N564),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[7] )
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N563)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N564)
  );
  MUXF5   \pidController/md<1>  (
    .I0(N565),
    .I1(N566),
    .S(\pidController/sum [1]),
    .O(\pidController/md [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<1>_F  (
    .I0(\pidController/md_index [1]),
    .I1(\pidController/err_0_1_1455 ),
    .I2(\pidController/err_1_1_1471 ),
    .I3(\pidController/md_index [2]),
    .O(N565)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<1>_G  (
    .I0(\pidController/err_0_1_1455 ),
    .I1(\pidController/md_index [1]),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_1_1_1471 ),
    .O(N566)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>  (
    .I0(N567),
    .I1(N568),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[6] )
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N567)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N568)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>  (
    .I0(N569),
    .I1(N570),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[2] )
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(N569)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(N570)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry  (
    .I0(N571),
    .I1(N572),
    .S(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0])
  );
  LUT4 #(
    .INIT ( 16'hDE48 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .O(N571)
  );
  LUT4 #(
    .INIT ( 16'hFD94 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/negation [3]),
    .O(N572)
  );
  MUXF5   \converter/r_Binary_mux0000<9>  (
    .I0(N573),
    .I1(N574),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(\converter/r_Binary_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<9>_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [9]),
    .I2(\converter/r_Binary [8]),
    .O(N573)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<9>_G  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [8]),
    .I2(DPSwitch_0_IBUF_8),
    .I3(w_velocity[9]),
    .O(N574)
  );
  MUXF5   \converter/r_Binary_mux0000<8>  (
    .I0(N575),
    .I1(N576),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(\converter/r_Binary_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<8>_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [8]),
    .I2(\converter/r_Binary [7]),
    .O(N575)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<8>_G  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [7]),
    .I2(DPSwitch_0_IBUF_8),
    .I3(w_velocity[8]),
    .O(N576)
  );
  MUXF5   \converter/r_Binary_mux0000<12>  (
    .I0(N577),
    .I1(N578),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(\converter/r_Binary_mux0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<12>_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [12]),
    .I2(\converter/r_Binary [11]),
    .O(N577)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<12>_G  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [11]),
    .I2(DPSwitch_0_IBUF_8),
    .I3(w_velocity[12]),
    .O(N578)
  );
  MUXF5   \converter/r_Binary_mux0000<11>  (
    .I0(N579),
    .I1(N580),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(\converter/r_Binary_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<11>_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [11]),
    .I2(\converter/r_Binary [10]),
    .O(N579)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<11>_G  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [10]),
    .I2(DPSwitch_0_IBUF_8),
    .I3(w_velocity[11]),
    .O(N580)
  );
  MUXF5   \converter/r_Binary_mux0000<10>  (
    .I0(N581),
    .I1(N582),
    .S(\converter/r_SM_Main_FSM_FFd6_791 ),
    .O(\converter/r_Binary_mux0000 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<10>_F  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [10]),
    .I2(\converter/r_Binary [9]),
    .O(N581)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<10>_G  (
    .I0(\converter/r_SM_Main_FSM_FFd5_790 ),
    .I1(\converter/r_Binary [9]),
    .I2(DPSwitch_0_IBUF_8),
    .I3(w_velocity[10]),
    .O(N582)
  );
  MUXF5   \pidController/adder_32bit_0/operator_C_stage_2_1/Go1  (
    .I0(N583),
    .I1(N584),
    .S(\pidController/adder_32bit_0/G1[0] ),
    .O(\pidController/adder_32bit_0/G2 [1])
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_2_1/Go1_F  (
    .I0(\pidController/p [2]),
    .I1(\pidController/p [1]),
    .I2(\pidController/a [1]),
    .I3(\pidController/a [2]),
    .O(N583)
  );
  LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_2_1/Go1_G  (
    .I0(\pidController/p [1]),
    .I1(\pidController/p [2]),
    .I2(\pidController/a [2]),
    .I3(\pidController/a [1]),
    .O(N584)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry  (
    .I0(N585),
    .I1(N586),
    .S(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [0])
  );
  LUT4 #(
    .INIT ( 16'h9428 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .O(N585)
  );
  LUT4 #(
    .INIT ( 16'hEFF6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .O(N586)
  );
  MUXF5   \pidController/md<2>  (
    .I0(N587),
    .I1(N588),
    .S(\pidController/sum [2]),
    .O(\pidController/md [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<2>_F  (
    .I0(\pidController/err_0_2_1462 ),
    .I1(\pidController/md_index [1]),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_1_2_1478 ),
    .O(N587)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<2>_G  (
    .I0(\pidController/err_0_2_1462 ),
    .I1(\pidController/md_index [1]),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_1_2_1478 ),
    .O(N588)
  );
  MUXF5   \pidController/md<0>  (
    .I0(N589),
    .I1(N590),
    .S(\pidController/sum [0]),
    .O(\pidController/md [0])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<0>_F  (
    .I0(\pidController/err_0_0_1454 ),
    .I1(\pidController/md_index [1]),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_1_0_1470 ),
    .O(N589)
  );
  LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<0>_G  (
    .I0(\pidController/err_0_0_1454 ),
    .I1(\pidController/md_index [1]),
    .I2(\pidController/md_index [2]),
    .I3(\pidController/err_1_0_1470 ),
    .O(N590)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>  (
    .I0(N591),
    .I1(N592),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[5] )
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N591)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N592)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>  (
    .I0(N593),
    .I1(N594),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[1] )
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(N593)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(N594)
  );
  MUXF5   \r_SevenSegment_mux0000<4>81  (
    .I0(N595),
    .I1(N596),
    .S(s_Main_FSM_FFd1_2330),
    .O(\r_SevenSegment_mux0000<4>81_2114 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<4>81_F  (
    .I0(r_SevenSegment[3]),
    .I1(s_Main_FSM_FFd3_2332),
    .I2(s_Main_FSM_FFd2_2331),
    .O(N595)
  );
  LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>81_G  (
    .I0(r_displayValue[3]),
    .I1(r_displayValue[1]),
    .I2(r_displayValue[2]),
    .I3(r_displayValue[0]),
    .O(N596)
  );
  MUXF5   \r_SevenSegment_mux0000<5>141  (
    .I0(N597),
    .I1(N598),
    .S(s_Main_FSM_FFd1_2330),
    .O(\r_SevenSegment_mux0000<5>141_2115 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<5>141_F  (
    .I0(r_SevenSegment[2]),
    .I1(s_Main_FSM_FFd3_2332),
    .I2(s_Main_FSM_FFd2_2331),
    .O(N597)
  );
  LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>141_G  (
    .I0(r_displayValue[0]),
    .I1(r_displayValue[1]),
    .I2(r_displayValue[2]),
    .I3(r_displayValue[3]),
    .O(N598)
  );
  MUXF5   \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0  (
    .I0(N599),
    .I1(N600),
    .S(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .O(N224)
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0_F  (
    .I0(\pidController/a [10]),
    .I1(\pidController/a [9]),
    .I2(\pidController/p [9]),
    .I3(\pidController/p [10]),
    .O(N599)
  );
  LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0_G  (
    .I0(\pidController/p [9]),
    .I1(\pidController/a [10]),
    .I2(\pidController/p [10]),
    .I3(\pidController/a [9]),
    .O(N600)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>  (
    .I0(N601),
    .I1(N602),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [6])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N601)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N602)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>  (
    .I0(N603),
    .I1(N604),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[4] )
  );
  LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(N603)
  );
  LUT4 #(
    .INIT ( 16'h3606 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(N604)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>  (
    .I0(N605),
    .I1(N606),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N605)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N606)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>  (
    .I0(N607),
    .I1(N608),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [1])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N607)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N608)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>  (
    .I0(N609),
    .I1(N610),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [5])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N609)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N610)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>  (
    .I0(N611),
    .I1(N612),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [3])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N611)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N612)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>  (
    .I0(N613),
    .I1(N614),
    .S(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(N613)
  );
  LUT4 #(
    .INIT ( 16'h7E66 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .O(N614)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>  (
    .I0(N615),
    .I1(N616),
    .S(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(N615)
  );
  LUT4 #(
    .INIT ( 16'h7E66 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .O(N616)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0  (
    .I0(N617),
    .I1(N618),
    .S(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .O(N266)
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0_F  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(N222),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1556 ),
    .O(N617)
  );
  LUT4 #(
    .INIT ( 16'h8882 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0_G  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(N222),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1557 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1556 ),
    .O(N618)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry  (
    .I0(N619),
    .I1(N620),
    .S(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0])
  );
  LUT4 #(
    .INIT ( 16'hDE48 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N619)
  );
  LUT4 #(
    .INIT ( 16'hFD94 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N620)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1  (
    .I0(N621),
    .I1(N622),
    .S(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB )
  );
  LUT4 #(
    .INIT ( 16'h7EE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .O(N621)
  );
  LUT4 #(
    .INIT ( 16'h177E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N622)
  );
  MUXF5   \pidController/p_mux0000<13>75_SW1  (
    .I0(N623),
    .I1(N624),
    .S(\pidController/p_or0000_1925 ),
    .O(N276)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<13>75_SW1_F  (
    .I0(\pidController/p [13]),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I3(\pidController/p_mux0000<13>7_1883 ),
    .O(N623)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/p_mux0000<13>75_SW1_G  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I2(\pidController/p_mux0000<13>7_1883 ),
    .O(N624)
  );
  MUXF5   \pidController/p_mux0000<13>75_SW0  (
    .I0(N625),
    .I1(N626),
    .S(\pidController/p_or0000_1925 ),
    .O(N275)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/p_mux0000<13>75_SW0_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/p_mux0000<13>7_1883 ),
    .I3(\pidController/p [13]),
    .O(N625)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<13>75_SW0_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I1(\pidController/p_mux0000<10>20 ),
    .I2(\pidController/p_mux0000<13>7_1883 ),
    .O(N626)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1  (
    .I0(N627),
    .I1(N628),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N627)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N628)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1  (
    .I0(N629),
    .I1(N630),
    .S(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2])
  );
  LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .O(N629)
  );
  LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .O(N630)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>  (
    .I0(N631),
    .I1(N632),
    .S(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N631)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N632)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0  (
    .I0(N633),
    .I1(N634),
    .S(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(N354)
  );
  LUT4 #(
    .INIT ( 16'h153F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N633)
  );
  LUT4 #(
    .INIT ( 16'hCF45 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N634)
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>  (
    .I0(N635),
    .I1(N636),
    .S(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>_F  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N635)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>_G  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .O(N636)
  );
  LUT4 #(
    .INIT ( 16'h5DFF ))
  \converter/r_SM_Main_FSM_FFd2-In11  (
    .I0(\converter/r_SM_Main_cmp_eq00008_793 ),
    .I1(\converter/r_SM_Main_FSM_FFd1_782 ),
    .I2(\converter/r_SM_Main_cmp_eq0001 ),
    .I3(\converter/r_SM_Main_cmp_eq000021_792 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \converter/r_SM_Main_FSM_FFd2-In12  (
    .I0(\converter/r_SM_Main_FSM_FFd1_782 ),
    .I1(\converter/r_SM_Main_cmp_eq0001 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In11_786 )
  );
  MUXF5   \converter/r_SM_Main_FSM_FFd2-In1_f5  (
    .I0(\converter/r_SM_Main_FSM_FFd2-In11_786 ),
    .I1(\converter/r_SM_Main_FSM_FFd2-In1 ),
    .S(\converter/r_SM_Main_FSM_FFd4_789 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1655 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1654 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout12  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1655 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1654 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1698 )
  );
  MUXF5   \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1_f5  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1698 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 ),
    .S(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [0])
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \pidController/p_mux0000<0>11  (
    .I0(\pidController/state_1_FSM_FFd2_1946 ),
    .I1(\pidController/state_1_FSM_FFd4_1948 ),
    .I2(\pidController/state_1_FSM_FFd3_1947 ),
    .LO(N637),
    .O(\pidController/p_mux0000<10>20 )
  );
  LUT3_L #(
    .INIT ( 8'h28 ))
  \pidController/p_mux0000<0>31  (
    .I0(\pidController/p_mux0000<10>20 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .LO(\pidController/p_mux0000<0>31_1871 )
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \converter/r_SM_Main_cmp_eq00011  (
    .I0(\converter/r_Digit_Index [1]),
    .I1(\converter/r_Digit_Index [0]),
    .I2(\converter/r_Digit_Index [3]),
    .I3(\converter/r_Digit_Index [2]),
    .LO(N638),
    .O(\converter/r_SM_Main_cmp_eq0001 )
  );
  LUT3_L #(
    .INIT ( 8'hFE ))
  \pidController/p_or0000_SW0  (
    .I0(\pidController/state_1_FSM_FFd9_1953 ),
    .I1(\pidController/state_1_FSM_FFd7_1951 ),
    .I2(\pidController/state_1_FSM_FFd6_1950 ),
    .LO(N45)
  );
  LUT3_L #(
    .INIT ( 8'hA8 ))
  \pidController/a_mux0000<1>20  (
    .I0(\pidController/sum [1]),
    .I1(\pidController/state_1_FSM_FFd3_1947 ),
    .I2(\pidController/state_1_FSM_FFd2_1946 ),
    .LO(\pidController/a_mux0000<1>20_1397 )
  );
  LUT4_L #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>25  (
    .I0(s_Main_FSM_FFd1_2330),
    .I1(r_displayValue[3]),
    .I2(r_displayValue[1]),
    .I3(r_displayValue[2]),
    .LO(\r_SevenSegment_mux0000<3>25_2103 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \decoder/count_and0000_SW0  (
    .I0(\decoder/count [6]),
    .I1(\decoder/count [7]),
    .I2(\decoder/count [8]),
    .I3(\decoder/count [10]),
    .LO(N65)
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<11>210  (
    .I0(\decoder/count [2]),
    .I1(\decoder/count [1]),
    .LO(\decoder/count_mux0001<11>210_1233 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \decoder/count_mux0001<11>218  (
    .I0(\decoder/count_and0000_1207 ),
    .I1(\decoder/count_mux0001<11>24_1235 ),
    .I2(\decoder/count_mux0001<11>215_1234 ),
    .LO(N639),
    .O(\decoder/N111 )
  );
  LUT4_D #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .LO(N640),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [1])
  );
  LUT4_D #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .LO(N641),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [1])
  );
  LUT4_D #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .LO(N642),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0])
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<2>13  (
    .I0(\pidController/a [2]),
    .I1(\pidController/a_mux0000<2>7_1401 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<2>13_1400 )
  );
  LUT4_L #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<2>21  (
    .I0(\pidController/p [2]),
    .I1(\pidController/p_mux0000<2>8_1896 ),
    .I2(\pidController/p_mux0000<2>7_1895 ),
    .I3(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<2>21_1893 )
  );
  LUT2_D #(
    .INIT ( 4'h9 ))
  \converter/Madd_add0000_addsub0000_xor<1>11  (
    .I0(\converter/w_BCD_Digit [1]),
    .I1(\converter/Madd_add0000_addsub0000_cy [0]),
    .LO(N643),
    .O(\converter/add0000_addsub0000 [1])
  );
  LUT4_D #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_B_stage_2_7/Go11  (
    .I0(\pidController/a [12]),
    .I1(\pidController/p [11]),
    .I2(\pidController/a [11]),
    .I3(\pidController/p [12]),
    .LO(N644),
    .O(\pidController/adder_32bit_0/N25 )
  );
  LUT3_L #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .LO(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [2])
  );
  LUT4_D #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<3>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N6 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N14 ),
    .LO(N645),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [2])
  );
  LUT4_D #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<5>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [4]),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .LO(N646),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [1])
  );
  LUT4_D #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .LO(N647),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [1])
  );
  LUT4_D #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<9>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .LO(N648),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0])
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<4>13  (
    .I0(\pidController/a [4]),
    .I1(\pidController/a_mux0000<4>7_1407 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<4>13_1406 )
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<3>13  (
    .I0(\pidController/a [3]),
    .I1(\pidController/a_mux0000<3>7_1404 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<3>13_1403 )
  );
  LUT4_L #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<3>21  (
    .I0(\pidController/p [3]),
    .I1(\pidController/p_mux0000<3>8_1900 ),
    .I2(\pidController/p_mux0000<3>7_1899 ),
    .I3(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<3>21_1898 )
  );
  LUT4_D #(
    .INIT ( 16'h53A0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<10>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .LO(N649),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0])
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \converter/Madd_add0000_addsub0000_cy<1>11  (
    .I0(\converter/w_BCD_Digit [1]),
    .I1(\converter/Madd_add0000_addsub0000_cy [0]),
    .LO(N650),
    .O(\converter/Madd_add0000_addsub0000_cy [1])
  );
  LUT4_D #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/N2 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/N10 ),
    .LO(N651),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [5])
  );
  LUT4_D #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<9>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9]),
    .I3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [8]),
    .LO(N652),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1])
  );
  LUT4_L #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .LO(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [1])
  );
  LUT4_D #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD ),
    .LO(N653),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [2])
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<5>21  (
    .I0(\pidController/p_mux0000<5>7_1909 ),
    .I1(\pidController/p [5]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/p_mux0000<5>8_1910 ),
    .LO(\pidController/p_mux0000<5>21_1908 )
  );
  LUT4_L #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<4>21  (
    .I0(\pidController/p [4]),
    .I1(\pidController/p_mux0000<4>8_1905 ),
    .I2(\pidController/p_mux0000<4>7_1904 ),
    .I3(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<4>21_1903 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_7/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .LO(N654),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0])
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .LO(N655),
    .O(\pidController/multiplier_16x16bit_pipelined/N10 )
  );
  LUT3_D #(
    .INIT ( 8'h24 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<10>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .LO(N656),
    .O(\pidController/multiplier_16x16bit_pipelined/N2 )
  );
  LUT4_D #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .LO(N657),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1])
  );
  LUT4_D #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .LO(N658),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1])
  );
  LUT4_D #(
    .INIT ( 16'h35C0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<12>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .LO(N659),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0])
  );
  LUT4_D #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_8/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .LO(N660),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1])
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<6>10  (
    .I0(\pidController/a [6]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<6>10_1411 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \pidController/a_mux0000<6>18  (
    .I0(\pidController/state_1_FSM_FFd3_1947 ),
    .I1(\pidController/state_1_FSM_FFd2_1946 ),
    .LO(N661),
    .O(\pidController/a_mux0000<10>18 )
  );
  LUT3_L #(
    .INIT ( 8'h17 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .LO(N149)
  );
  LUT4_L #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<6>21  (
    .I0(\pidController/p [6]),
    .I1(\pidController/p_mux0000<6>8_1914 ),
    .I2(\pidController/p_mux0000<6>7_1913 ),
    .I3(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<6>21_1912 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_5/carry1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .LO(N662),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0])
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<0>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1769 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1766 ),
    .LO(N663),
    .O(\pidController/multiplier_16x16bit_pipelined/N15 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_6/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .LO(N664),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1])
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .LO(N665),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD )
  );
  LUT3_D #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<10>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1769 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1766 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .LO(N666),
    .O(\pidController/multiplier_16x16bit_pipelined/N7 )
  );
  LUT4_D #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD ),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .LO(N667),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3])
  );
  LUT4_L #(
    .INIT ( 16'h135F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .LO(N154)
  );
  LUT4_D #(
    .INIT ( 16'hFE98 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .I2(N161),
    .I3(N162),
    .LO(N668),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [0])
  );
  LUT4_D #(
    .INIT ( 16'hAE08 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD ),
    .LO(N669),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1647 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<0>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1778 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .LO(N670),
    .O(\pidController/multiplier_16x16bit_pipelined/N12 )
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<7>21  (
    .I0(\pidController/p_mux0000<7>7_1918 ),
    .I1(\pidController/p [7]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(\pidController/p_mux0000<7>8_1919 ),
    .LO(\pidController/p_mux0000<7>21_1917 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_14/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .LO(N671),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] )
  );
  LUT4_D #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .I3(N175),
    .LO(N672),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1])
  );
  LUT3_D #(
    .INIT ( 8'h17 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<0>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .LO(N673),
    .O(N179)
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<8>10  (
    .I0(\pidController/a [8]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<8>10_1417 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<7>10  (
    .I0(\pidController/a [7]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<7>10_1414 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<0>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N674),
    .O(\pidController/multiplier_16x16bit_pipelined/N14 )
  );
  LUT3_D #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(N675),
    .O(\pidController/multiplier_16x16bit_pipelined/N6 )
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<8>13  (
    .I0(\pidController/p [8]),
    .I1(\pidController/p_mux0000<8>7_1922 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<8>13_1921 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_12/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1]),
    .LO(N676),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] )
  );
  LUT4_D #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w12<1>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .I3(N193),
    .LO(N677),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1])
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<9>10  (
    .I0(\pidController/a [9]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<9>10_1420 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<10>10  (
    .I0(\pidController/a [10]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<10>10_1378 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<12>10  (
    .I0(\pidController/a [12]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<12>10_1385 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<11>10  (
    .I0(\pidController/a [11]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<11>10_1382 )
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<10>13  (
    .I0(\pidController/p [10]),
    .I1(\pidController/p_mux0000<10>7_1875 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(\pidController/p_mux0000<10>13_1873 )
  );
  LUT2_D #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .LO(N678),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1])
  );
  LUT3_D #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/cout1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .LO(N679),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0])
  );
  LUT3_D #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/Mxor_S_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .LO(N680),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 )
  );
  LUT4_D #(
    .INIT ( 16'hFAF8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35  (
    .I0(\pidController/adder_32bit_0/P1 [2]),
    .I1(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1445 ),
    .I2(\pidController/adder_32bit_0/G1[2] ),
    .I3(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1446 ),
    .LO(N681),
    .O(\pidController/adder_32bit_0/G3 [2])
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go111  (
    .I0(\pidController/a [6]),
    .I1(\pidController/p [6]),
    .LO(N682),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1448 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go112  (
    .I0(\pidController/a [6]),
    .I1(\pidController/p [6]),
    .LO(N683),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1449 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<14>10  (
    .I0(\pidController/a [14]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<14>10_1391 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<13>10  (
    .I0(\pidController/a [13]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<13>10_1388 )
  );
  LUT4_L #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<12>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_12_1458 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[12]),
    .LO(\pidController/p_mux0000<12>7_1881 )
  );
  LUT4_D #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<15>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_15_1461 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[15]),
    .LO(N684),
    .O(\pidController/p_mux0000<15>7_1888 )
  );
  LUT4_L #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<14>7  (
    .I0(\pidController/state_1_FSM_FFd6_1950 ),
    .I1(\pidController/err_0_14_1460 ),
    .I2(\pidController/state_1_FSM_FFd9_1953 ),
    .I3(r_kp[14]),
    .LO(\pidController/p_mux0000<14>7_1886 )
  );
  LUT4_D #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<15>7  (
    .I0(\pidController/state_1_FSM_FFd7_1951 ),
    .I1(w_velocity[15]),
    .I2(\pidController/state_1_FSM_FFd4_1948 ),
    .I3(\pidController/sigma [15]),
    .LO(N685),
    .O(\pidController/a_mux0000<15>7_1395 )
  );
  LUT2_L #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<15>10  (
    .I0(\pidController/a [15]),
    .I1(\pidController/p_or0000_1925 ),
    .LO(\pidController/a_mux0000<15>10_1394 )
  );
  LUT4_D #(
    .INIT ( 16'h8778 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_4/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .LO(N686),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<2>_Result11  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1816 ),
    .LO(N687),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 )
  );
  LUT4_D #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1451 ),
    .I1(N225),
    .I2(N224),
    .I3(\pidController/adder_32bit_0/G3 [3]),
    .LO(N688),
    .O(\pidController/adder_32bit_0/N19 )
  );
  LUT4_D #(
    .INIT ( 16'hDF80 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go  (
    .I0(\pidController/adder_32bit_0/P1 [2]),
    .I1(N231),
    .I2(\pidController/adder_32bit_0/G2 [1]),
    .I3(N230),
    .LO(N689),
    .O(\pidController/adder_32bit_0/G3 [3])
  );
  LUT2_L #(
    .INIT ( 4'hE ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0  (
    .I0(\pidController/p [2]),
    .I1(\pidController/a [2]),
    .LO(N236)
  );
  LUT4_D #(
    .INIT ( 16'hE080 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_1_2/Go1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w4 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .LO(N690),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] )
  );
  LUT4_L #(
    .INIT ( 16'hCFCD ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] ),
    .I3(N258),
    .LO(N218)
  );
  LUT4_L #(
    .INIT ( 16'h8F86 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .LO(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1658 )
  );
  LUT4_L #(
    .INIT ( 16'h8F86 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .LO(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1651 )
  );
  LUT4_D #(
    .INIT ( 16'h8778 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_10/Mxor_P_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .LO(N691),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] )
  );
  LUT4_L #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] )
  );
  LUT4_D #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<10>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1769 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1766 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N692),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [10])
  );
  LUT4_L #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1779 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] )
  );
  LUT3_L #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .LO(N173)
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .LO(N177)
  );
  LUT4_L #(
    .INIT ( 16'hD5AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .LO(N261)
  );
  LUT4_D #(
    .INIT ( 16'hE4CC ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .I1(N263),
    .I2(N264),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .LO(N693),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 )
  );
  LUT3_D #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .LO(N694),
    .O(N175)
  );
  LUT4_D #(
    .INIT ( 16'h10E0 ))
  \pidController/p_mux0000<14>77_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .I2(\pidController/p_mux0000<10>20 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] ),
    .LO(N695),
    .O(N273)
  );
  LUT4_D #(
    .INIT ( 16'hFEBA ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go169  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go110 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .I2(N278),
    .I3(N279),
    .LO(N696),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 )
  );
  LUT3_L #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [2]),
    .LO(N147)
  );
  LUT4_D #(
    .INIT ( 16'hE332 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .LO(N697),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1648 )
  );
  LUT4_D #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<6>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N698),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [6])
  );
  LUT4_D #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<8>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N699),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [8])
  );
  LUT4_D #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<7>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N700),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [7])
  );
  LUT4_D #(
    .INIT ( 16'hFE19 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1778 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .LO(N701),
    .O(N191)
  );
  LUT4_L #(
    .INIT ( 16'hDF80 ))
  \pidController/p_mux0000<11>74  (
    .I0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .I1(N299),
    .I2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .I3(N298),
    .LO(\pidController/p_mux0000<11>74_1878 )
  );
  LUT4_L #(
    .INIT ( 16'h17FF ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1  (
    .I0(\pidController/p [5]),
    .I1(\pidController/a [5]),
    .I2(N304),
    .I3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1449 ),
    .LO(N251)
  );
  LUT4_D #(
    .INIT ( 16'h569A ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .I2(N151),
    .I3(N152),
    .LO(N702),
    .O(N3111)
  );
  LUT4_D #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(N703),
    .O(N314)
  );
  LUT4_D #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(N704),
    .O(N317)
  );
  LUT4_L #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(N326)
  );
  LUT3_D #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N329),
    .I2(N328),
    .LO(N705),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3])
  );
  LUT4_L #(
    .INIT ( 16'hF9E8 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1771 ),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .LO(N332)
  );
  LUT4_L #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N335)
  );
  LUT4_D #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .I2(N337),
    .I3(N3111),
    .LO(N706),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD )
  );
  LUT4_L #(
    .INIT ( 16'hE187 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0  (
    .I0(\pidController/a [11]),
    .I1(\pidController/p [11]),
    .I2(\pidController/adder_32bit_0/P0[12] ),
    .I3(N224),
    .LO(N339)
  );
  LUT4_L #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<15>75_SW0  (
    .I0(\pidController/p_mux0000<15>7_1888 ),
    .I1(\pidController/p [15]),
    .I2(\pidController/p_or0000_1925 ),
    .I3(N266),
    .LO(N342)
  );
  LUT4_D #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N314),
    .I2(N313),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .LO(N707),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD )
  );
  LUT4_D #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N317),
    .I2(N316),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .LO(N708),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD )
  );
  LUT4_D #(
    .INIT ( 16'h8FF8 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .LO(N709),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1573 )
  );
  LUT4_D #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<6>16  (
    .I0(\pidController/p [10]),
    .I1(\pidController/a [10]),
    .I2(\pidController/a [9]),
    .I3(\pidController/p [9]),
    .LO(N710),
    .O(\pidController/adder_32bit_0/G4<6>16_1427 )
  );
  LUT4_D #(
    .INIT ( 16'hE888 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_6/Go11_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .LO(N711),
    .O(N348)
  );
  LUT4_D #(
    .INIT ( 16'hE888 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go110_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .LO(N712),
    .O(N350)
  );
  LUT4_D #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW1  (
    .I0(\pidController/p [9]),
    .I1(\pidController/p [10]),
    .I2(\pidController/a [10]),
    .I3(\pidController/a [9]),
    .LO(N713),
    .O(N225)
  );
  LUT4_D #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<4>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .LO(N714),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [4])
  );
  LUT4_D #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .I2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .LO(N715),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5])
  );
  LUT4_D #(
    .INIT ( 16'h162A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<0>  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .I1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .LO(N716),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7])
  );
  LUT4_D #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N329),
    .I2(N328),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .LO(N717),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD )
  );
  LUT4_L #(
    .INIT ( 16'h3666 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1  (
    .I0(N356),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[2] ),
    .I2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] ),
    .I3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .LO(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD )
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1648 ),
    .LO(N371)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \decoder/count_mux0001<11>151  (
    .I0(\decoder/count [9]),
    .I1(\decoder/count [12]),
    .I2(\decoder/count [11]),
    .I3(\decoder/count_mux0001<11>150_1230 ),
    .LO(\decoder/count_mux0001<11>151_1231 )
  );
  LUT4_D #(
    .INIT ( 16'hFF5D ))
  \decoder/count_mux0001<11>189  (
    .I0(\decoder/count_and0000_1207 ),
    .I1(\decoder/count [14]),
    .I2(\decoder/count [13]),
    .I3(\decoder/count_mux0001<11>170_1232 ),
    .LO(N718),
    .O(\decoder/N0 )
  );
  LUT4_D #(
    .INIT ( 16'h28A0 ))
  \converter/r_BCD_11_mux000021  (
    .I0(\converter/r_SM_Main_FSM_FFd2_783 ),
    .I1(\converter/Madd_add0000_addsub0000_lut [2]),
    .I2(\converter/Madd_add0000_addsub0000_lut [3]),
    .I3(\converter/Madd_add0000_addsub0000_cy [1]),
    .LO(N719),
    .O(\converter/N10 )
  );
  LUT4_L #(
    .INIT ( 16'h27D8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I1(N191),
    .I2(N190),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .LO(N373)
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .LO(N379)
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .LO(N381)
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2  (
    .I0(\pidController/a [11]),
    .I1(\pidController/p [11]),
    .I2(N224),
    .LO(N389)
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4  (
    .I0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1447 ),
    .I1(\pidController/p [9]),
    .I2(\pidController/a [9]),
    .LO(N392)
  );
  LUT3_L #(
    .INIT ( 8'hE4 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0  (
    .I0(N301),
    .I1(N233),
    .I2(N234),
    .LO(N395)
  );
  LUT3_L #(
    .INIT ( 8'hF7 ))
  \converter/r_BCD_12_mux00009_SW0  (
    .I0(\converter/r_Digit_Index [0]),
    .I1(\converter/r_Digit_Index [1]),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .LO(N401)
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2]),
    .LO(N405)
  );
  LUT4_L #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I2(N348),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .LO(N407)
  );
  LUT3_L #(
    .INIT ( 8'h9F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .LO(N377)
  );
  LUT4_L #(
    .INIT ( 16'hFE10 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0  (
    .I0(N255),
    .I1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .I2(N272),
    .I3(N273),
    .LO(N419)
  );
  LUT4_D #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .I3(N422),
    .LO(N720),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD )
  );
  LUT4_D #(
    .INIT ( 16'hC0D4 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10  (
    .I0(N179),
    .I1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .I3(N428),
    .LO(N721),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1556 )
  );
  LUT4_D #(
    .INIT ( 16'hFCCA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .LO(N722),
    .O(N431)
  );
  LUT4_L #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1774 ),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1772 ),
    .LO(N434)
  );
  LUT4_L #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .I1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .I2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .I3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .LO(N437)
  );
  LUT4_L #(
    .INIT ( 16'h7FFF ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .LO(N439)
  );
  LUT3_D #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .I1(N443),
    .I2(N442),
    .LO(N723),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6])
  );
  LUT4_L #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<1>44_SW0  (
    .I0(\pidController/p [1]),
    .I1(\pidController/p_mux0000<1>8_1891 ),
    .I2(\pidController/p_mux0000<1>7_1890 ),
    .I3(\pidController/p_or0000_1925 ),
    .LO(N513)
  );
  LUT3_L #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<5>23_SW0  (
    .I0(\pidController/a [5]),
    .I1(\pidController/a_mux0000<5>7_1409 ),
    .I2(\pidController/p_or0000_1925 ),
    .LO(N523)
  );
  LUT3_D #(
    .INIT ( 8'h36 ))
  \converter/Madd_add0000_addsub0000_xor<2>11  (
    .I0(\converter/w_BCD_Digit [1]),
    .I1(\converter/Madd_add0000_addsub0000_lut [2]),
    .I2(\converter/Madd_add0000_addsub0000_cy [0]),
    .LO(N724),
    .O(\converter/add0000_addsub0000 [2])
  );
  LUT4_D #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_CxorD_Result1  (
    .I0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .I1(N431),
    .I2(N430),
    .I3(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .LO(N725),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD )
  );
  LUT4_D #(
    .INIT ( 16'hFF60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW0  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I2(N525),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 ),
    .LO(N726),
    .O(N263)
  );
  LUT4_D #(
    .INIT ( 16'h7800 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16  (
    .I0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .I1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .I2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .I3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .LO(N727),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1554 )
  );
endmodule


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

