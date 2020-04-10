////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: led_velocity_translate.v
// /___/   /\     Timestamp: Tue Apr  7 09:47:58 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim led_velocity.ngd led_velocity_translate.v 
// Device	: 3s50atq144-4
// Input file	: led_velocity.ngd
// Output file	: /home/kuro/Documents/FPGA/ElbertV2/ledTest/netgen/translate/led_velocity_translate.v
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
  wire Clk_5_4;
  wire Clk_BUFGP;
  wire DPSwitch_0_IBUF_11;
  wire DPSwitch_1_IBUF_12;
  wire DPSwitch_2_IBUF_13;
  wire DPSwitch_3_IBUF_14;
  wire DPSwitch_4_IBUF_15;
  wire LED_5_OBUF_27;
  wire \Madd_r_error_unsigned_addsub0000_cy<0>_rt_29 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_108 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_111 ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[1] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[3] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[4] ;
  wire \Mcompar_r_controllerPin_cmp_lt0000_lut[5] ;
  wire \Mcount_counter_cy<10>_rt_131 ;
  wire \Mcount_counter_cy<11>_rt_133 ;
  wire \Mcount_counter_cy<12>_rt_135 ;
  wire \Mcount_counter_cy<13>_rt_137 ;
  wire \Mcount_counter_cy<14>_rt_139 ;
  wire \Mcount_counter_cy<1>_rt_141 ;
  wire \Mcount_counter_cy<2>_rt_143 ;
  wire \Mcount_counter_cy<3>_rt_145 ;
  wire \Mcount_counter_cy<4>_rt_147 ;
  wire \Mcount_counter_cy<5>_rt_149 ;
  wire \Mcount_counter_cy<6>_rt_151 ;
  wire \Mcount_counter_cy<7>_rt_153 ;
  wire \Mcount_counter_cy<8>_rt_155 ;
  wire \Mcount_counter_cy<9>_rt_157 ;
  wire \Mcount_counter_xor<15>_rt_159 ;
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
  wire Switch_0_IBUF_645;
  wire Switch_1_IBUF_646;
  wire Switch_2_IBUF_647;
  wire Switch_3_IBUF_648;
  wire Switch_4_IBUF_649;
  wire Switch_5_IBUF_650;
  wire \converter/Mcount_r_Loop_Count_cy<1>_rt_657 ;
  wire \converter/Mcount_r_Loop_Count_cy<2>_rt_659 ;
  wire \converter/Mcount_r_Loop_Count_cy<3>_rt_661 ;
  wire \converter/Mcount_r_Loop_Count_cy<4>_rt_663 ;
  wire \converter/Mcount_r_Loop_Count_cy<5>_rt_665 ;
  wire \converter/Mcount_r_Loop_Count_cy<6>_rt_667 ;
  wire \converter/Mcount_r_Loop_Count_xor<7>_rt_669 ;
  wire \converter/Mmux_w_BCD_Digit_3_670 ;
  wire \converter/Mmux_w_BCD_Digit_31_671 ;
  wire \converter/Mmux_w_BCD_Digit_32_672 ;
  wire \converter/Mmux_w_BCD_Digit_33_673 ;
  wire \converter/Mmux_w_BCD_Digit_4_674 ;
  wire \converter/Mmux_w_BCD_Digit_41_675 ;
  wire \converter/Mmux_w_BCD_Digit_42_676 ;
  wire \converter/Mmux_w_BCD_Digit_43_677 ;
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
  wire \converter/r_BCD_0_mux00001_701 ;
  wire \converter/r_BCD_10_mux00001_704 ;
  wire \converter/r_BCD_11_mux00001_706 ;
  wire \converter/r_BCD_12_mux00000_708 ;
  wire \converter/r_BCD_12_mux000019 ;
  wire \converter/r_BCD_13_mux00001_711 ;
  wire \converter/r_BCD_14_mux00001_713 ;
  wire \converter/r_BCD_15_mux00001_715 ;
  wire \converter/r_BCD_1_mux00001_716 ;
  wire \converter/r_BCD_2_mux00001_718 ;
  wire \converter/r_BCD_3_mux00001_720 ;
  wire \converter/r_BCD_4_mux00000_722 ;
  wire \converter/r_BCD_4_mux000017_723 ;
  wire \converter/r_BCD_4_mux000023 ;
  wire \converter/r_BCD_4_mux00003_725 ;
  wire \converter/r_BCD_5_mux00001_727 ;
  wire \converter/r_BCD_6_mux00001_729 ;
  wire \converter/r_BCD_7_mux00001_731 ;
  wire \converter/r_BCD_8_mux00001_733 ;
  wire \converter/r_BCD_9_mux00001_735 ;
  wire \converter/r_Binary_mux0000<0>12_749 ;
  wire \converter/r_Binary_mux0000<0>20_750 ;
  wire \converter/r_Binary_mux0000<1>12_754 ;
  wire \converter/r_Binary_mux0000<1>25_755 ;
  wire \converter/r_Binary_mux0000<2>12_756 ;
  wire \converter/r_Binary_mux0000<2>25_757 ;
  wire \converter/r_Binary_mux0000<3>12_758 ;
  wire \converter/r_Binary_mux0000<3>25_759 ;
  wire \converter/r_Binary_mux0000<4>12_760 ;
  wire \converter/r_Binary_mux0000<4>25_761 ;
  wire \converter/r_Binary_mux0000<5>12_762 ;
  wire \converter/r_Binary_mux0000<5>25_763 ;
  wire \converter/r_Binary_mux0000<6>12_764 ;
  wire \converter/r_Binary_mux0000<6>25_765 ;
  wire \converter/r_Binary_mux0000<7>12_766 ;
  wire \converter/r_Binary_mux0000<7>25_767 ;
  wire \converter/r_DV_770 ;
  wire \converter/r_Digit_Index_0_1_772 ;
  wire \converter/r_Digit_Index_and0000 ;
  wire \converter/r_SM_Main_FSM_FFd1_785 ;
  wire \converter/r_SM_Main_FSM_FFd2_786 ;
  wire \converter/r_SM_Main_FSM_FFd2-In ;
  wire \converter/r_SM_Main_FSM_FFd2-In1 ;
  wire \converter/r_SM_Main_FSM_FFd2-In11_789 ;
  wire \converter/r_SM_Main_FSM_FFd3_790 ;
  wire \converter/r_SM_Main_FSM_FFd3-In ;
  wire \converter/r_SM_Main_FSM_FFd4_792 ;
  wire \converter/r_SM_Main_FSM_FFd5_793 ;
  wire \converter/r_SM_Main_FSM_FFd6_794 ;
  wire \converter/r_SM_Main_cmp_eq000021_795 ;
  wire \converter/r_SM_Main_cmp_eq00008_796 ;
  wire \converter/r_SM_Main_cmp_eq0001 ;
  wire \debouncer0/DB_out_815 ;
  wire \debouncer0/DFF1_816 ;
  wire \debouncer0/DFF2_817 ;
  wire \debouncer0/N01 ;
  wire \debouncer0/N02 ;
  wire \debouncer0/q_next<6>5_827 ;
  wire \debouncer1/DB_out_835 ;
  wire \debouncer1/DFF1_836 ;
  wire \debouncer1/DFF2_837 ;
  wire \debouncer1/N01 ;
  wire \debouncer1/N02 ;
  wire \debouncer1/q_next<6>5_847 ;
  wire \debouncer2/DB_out_855 ;
  wire \debouncer2/DFF1_856 ;
  wire \debouncer2/DFF2_857 ;
  wire \debouncer2/N01 ;
  wire \debouncer2/N02 ;
  wire \debouncer2/q_next<6>5_867 ;
  wire \debouncer3/DB_out_875 ;
  wire \debouncer3/DFF1_876 ;
  wire \debouncer3/DFF2_877 ;
  wire \debouncer3/N01 ;
  wire \debouncer3/N02 ;
  wire \debouncer3/q_next<6>5_887 ;
  wire \debouncer4/DB_out_895 ;
  wire \debouncer4/DFF1_896 ;
  wire \debouncer4/DFF2_897 ;
  wire \debouncer4/N01 ;
  wire \debouncer4/N02 ;
  wire \debouncer4/q_next<6>5_907 ;
  wire \debouncer5/DB_out_915 ;
  wire \debouncer5/DFF1_916 ;
  wire \debouncer5/DFF2_917 ;
  wire \debouncer5/N01 ;
  wire \debouncer5/N02 ;
  wire \debouncer5/q_next<6>5_927 ;
  wire \debouncerA/DB_out_935 ;
  wire \debouncerA/DFF1_936 ;
  wire \debouncerA/DFF2_937 ;
  wire \debouncerA/N01 ;
  wire \debouncerA/N02 ;
  wire \debouncerA/q_next<6>5_947 ;
  wire \debouncerB/DB_out_955 ;
  wire \debouncerB/DFF1_956 ;
  wire \debouncerB/DFF2_957 ;
  wire \debouncerB/N01 ;
  wire \debouncerB/N02 ;
  wire \debouncerB/q_next<6>5_967 ;
  wire \decoder/Madd_o_velocity_addsub0001C ;
  wire \decoder/Madd_o_velocity_addsub0001C1_976 ;
  wire \decoder/Madd_o_velocity_addsub0001C10 ;
  wire \decoder/Madd_o_velocity_addsub0001C11_978 ;
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
  wire \decoder/Madd_o_velocity_cy<13>_rt_1024 ;
  wire \decoder/Madd_o_velocity_cy<14>_rt_1026 ;
  wire \decoder/Mcount_r_Counter_cy<10>_rt_1113 ;
  wire \decoder/Mcount_r_Counter_cy<11>_rt_1115 ;
  wire \decoder/Mcount_r_Counter_cy<12>_rt_1117 ;
  wire \decoder/Mcount_r_Counter_cy<13>_rt_1119 ;
  wire \decoder/Mcount_r_Counter_cy<14>_rt_1121 ;
  wire \decoder/Mcount_r_Counter_cy<15>_rt_1123 ;
  wire \decoder/Mcount_r_Counter_cy<1>_rt_1125 ;
  wire \decoder/Mcount_r_Counter_cy<2>_rt_1127 ;
  wire \decoder/Mcount_r_Counter_cy<3>_rt_1129 ;
  wire \decoder/Mcount_r_Counter_cy<4>_rt_1131 ;
  wire \decoder/Mcount_r_Counter_cy<5>_rt_1133 ;
  wire \decoder/Mcount_r_Counter_cy<6>_rt_1135 ;
  wire \decoder/Mcount_r_Counter_cy<7>_rt_1137 ;
  wire \decoder/Mcount_r_Counter_cy<8>_rt_1139 ;
  wire \decoder/Mcount_r_Counter_cy<9>_rt_1141 ;
  wire \decoder/Mcount_r_Counter_xor<16>_rt_1143 ;
  wire \decoder/N0 ;
  wire \decoder/N111 ;
  wire \decoder/count_and0000_1210 ;
  wire \decoder/count_enable ;
  wire \decoder/count_mux0001<11>112_1231 ;
  wire \decoder/count_mux0001<11>121_1232 ;
  wire \decoder/count_mux0001<11>150_1233 ;
  wire \decoder/count_mux0001<11>151_1234 ;
  wire \decoder/count_mux0001<11>170_1235 ;
  wire \decoder/count_mux0001<11>210_1236 ;
  wire \decoder/count_mux0001<11>215_1237 ;
  wire \decoder/count_mux0001<11>24_1238 ;
  wire \decoder/count_mux0002 ;
  wire \decoder/quadA_delayed_1269 ;
  wire \decoder/quadB_delayed_1270 ;
  wire \decoder/r_Counter_161 ;
  wire \decoder/w_diff_cmp_ge0000 ;
  wire decoder_not0000;
  wire NlwRenamedSig_IO_i_A;
  wire i_A_IBUF_1355;
  wire NlwRenamedSig_IO_i_B;
  wire i_B_IBUF_1357;
  wire \pidController/a_mux0000<0>13_1377 ;
  wire \pidController/a_mux0000<0>5_1378 ;
  wire \pidController/a_mux0000<0>8_1379 ;
  wire \pidController/a_mux0000<10>10_1381 ;
  wire \pidController/a_mux0000<10>18 ;
  wire \pidController/a_mux0000<10>7_1383 ;
  wire \pidController/a_mux0000<11>10_1385 ;
  wire \pidController/a_mux0000<11>7_1386 ;
  wire \pidController/a_mux0000<12>10_1388 ;
  wire \pidController/a_mux0000<12>7_1389 ;
  wire \pidController/a_mux0000<13>10_1391 ;
  wire \pidController/a_mux0000<13>7_1392 ;
  wire \pidController/a_mux0000<14>10_1394 ;
  wire \pidController/a_mux0000<14>7_1395 ;
  wire \pidController/a_mux0000<15>10_1397 ;
  wire \pidController/a_mux0000<15>7_1398 ;
  wire \pidController/a_mux0000<1>20_1400 ;
  wire \pidController/a_mux0000<1>7_1401 ;
  wire \pidController/a_mux0000<2>13_1403 ;
  wire \pidController/a_mux0000<2>7_1404 ;
  wire \pidController/a_mux0000<3>13_1406 ;
  wire \pidController/a_mux0000<3>7_1407 ;
  wire \pidController/a_mux0000<4>13_1409 ;
  wire \pidController/a_mux0000<4>7_1410 ;
  wire \pidController/a_mux0000<5>7_1412 ;
  wire \pidController/a_mux0000<6>10_1414 ;
  wire \pidController/a_mux0000<6>7_1415 ;
  wire \pidController/a_mux0000<7>10_1417 ;
  wire \pidController/a_mux0000<7>7_1418 ;
  wire \pidController/a_mux0000<8>10_1420 ;
  wire \pidController/a_mux0000<8>7_1421 ;
  wire \pidController/a_mux0000<9>10_1423 ;
  wire \pidController/a_mux0000<9>7_1424 ;
  wire \pidController/adder_32bit_0/G1[0] ;
  wire \pidController/adder_32bit_0/G1[2] ;
  wire \pidController/adder_32bit_0/G4<6>16_1430 ;
  wire \pidController/adder_32bit_0/G4<6>48_1431 ;
  wire \pidController/adder_32bit_0/G4<6>51_1432 ;
  wire \pidController/adder_32bit_0/G4<7>10_1433 ;
  wire \pidController/adder_32bit_0/G4<7>59_1434 ;
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
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1448 ;
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1449 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1452 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ;
  wire \pidController/cout_1455 ;
  wire \pidController/cout_mux0000 ;
  wire \pidController/err_0_0_1457 ;
  wire \pidController/err_0_1_1458 ;
  wire \pidController/err_0_10_1459 ;
  wire \pidController/err_0_11_1460 ;
  wire \pidController/err_0_12_1461 ;
  wire \pidController/err_0_13_1462 ;
  wire \pidController/err_0_14_1463 ;
  wire \pidController/err_0_15_1464 ;
  wire \pidController/err_0_2_1465 ;
  wire \pidController/err_0_3_1466 ;
  wire \pidController/err_0_4_1467 ;
  wire \pidController/err_0_5_1468 ;
  wire \pidController/err_0_6_1469 ;
  wire \pidController/err_0_7_1470 ;
  wire \pidController/err_0_8_1471 ;
  wire \pidController/err_0_9_1472 ;
  wire \pidController/err_1_0_1473 ;
  wire \pidController/err_1_1_1474 ;
  wire \pidController/err_1_10_1475 ;
  wire \pidController/err_1_11_1476 ;
  wire \pidController/err_1_12_1477 ;
  wire \pidController/err_1_13_1478 ;
  wire \pidController/err_1_14_1479 ;
  wire \pidController/err_1_15_1480 ;
  wire \pidController/err_1_2_1481 ;
  wire \pidController/err_1_3_1482 ;
  wire \pidController/err_1_4_1483 ;
  wire \pidController/err_1_5_1484 ;
  wire \pidController/err_1_6_1485 ;
  wire \pidController/err_1_7_1486 ;
  wire \pidController/err_1_8_1487 ;
  wire \pidController/err_1_9_1488 ;
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
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1557 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1558 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1559 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1560 ;
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
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1575 ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1576 ;
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
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1650 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1651 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1653 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1654 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1657 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1658 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1660 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1661 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1696 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1699 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1701 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w2 ;
  wire \pidController/multiplier_16x16bit_pipelined/md_1_1_1752 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_1_1_1769 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_1_2_1770 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_2_1_1772 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_3_2_1775 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_7_1_1781 ;
  wire \pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] ;
  wire \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ;
  wire \pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ;
  wire \pidController/p_mux0000<0>11_1873 ;
  wire \pidController/p_mux0000<0>31_1874 ;
  wire \pidController/p_mux0000<10>13_1876 ;
  wire \pidController/p_mux0000<10>20 ;
  wire \pidController/p_mux0000<10>7_1878 ;
  wire \pidController/p_mux0000<11>7_1880 ;
  wire \pidController/p_mux0000<11>74_1881 ;
  wire \pidController/p_mux0000<12>13_1883 ;
  wire \pidController/p_mux0000<12>7_1884 ;
  wire \pidController/p_mux0000<13>7_1886 ;
  wire \pidController/p_mux0000<14>13_1888 ;
  wire \pidController/p_mux0000<14>7_1889 ;
  wire \pidController/p_mux0000<15>7_1891 ;
  wire \pidController/p_mux0000<1>7_1893 ;
  wire \pidController/p_mux0000<1>8_1894 ;
  wire \pidController/p_mux0000<2>21_1896 ;
  wire \pidController/p_mux0000<2>42_1897 ;
  wire \pidController/p_mux0000<2>7_1898 ;
  wire \pidController/p_mux0000<2>8_1899 ;
  wire \pidController/p_mux0000<3>21_1901 ;
  wire \pidController/p_mux0000<3>7_1902 ;
  wire \pidController/p_mux0000<3>8_1903 ;
  wire \pidController/p_mux0000<3>81_1904 ;
  wire \pidController/p_mux0000<4>21_1906 ;
  wire \pidController/p_mux0000<4>7_1907 ;
  wire \pidController/p_mux0000<4>8_1908 ;
  wire \pidController/p_mux0000<4>83_1909 ;
  wire \pidController/p_mux0000<5>21_1911 ;
  wire \pidController/p_mux0000<5>7_1912 ;
  wire \pidController/p_mux0000<5>8_1913 ;
  wire \pidController/p_mux0000<6>21_1915 ;
  wire \pidController/p_mux0000<6>7_1916 ;
  wire \pidController/p_mux0000<6>8_1917 ;
  wire \pidController/p_mux0000<6>83_1918 ;
  wire \pidController/p_mux0000<7>21_1920 ;
  wire \pidController/p_mux0000<7>7_1921 ;
  wire \pidController/p_mux0000<7>8_1922 ;
  wire \pidController/p_mux0000<8>13_1924 ;
  wire \pidController/p_mux0000<8>7_1925 ;
  wire \pidController/p_mux0000<9>7_1927 ;
  wire \pidController/p_or0000_1928 ;
  wire \pidController/start_1945 ;
  wire \pidController/start_mux0000 ;
  wire \pidController/state_1_FSM_FFd1_1947 ;
  wire \pidController/state_1_FSM_FFd10_1948 ;
  wire \pidController/state_1_FSM_FFd2_1949 ;
  wire \pidController/state_1_FSM_FFd3_1950 ;
  wire \pidController/state_1_FSM_FFd4_1951 ;
  wire \pidController/state_1_FSM_FFd5_1952 ;
  wire \pidController/state_1_FSM_FFd6_1953 ;
  wire \pidController/state_1_FSM_FFd7_1954 ;
  wire \pidController/state_1_FSM_FFd8_1955 ;
  wire \pidController/state_1_FSM_FFd9_1956 ;
  wire \pwmGenerator/Mcount_rampa_cy<10>_rt_2023 ;
  wire \pwmGenerator/Mcount_rampa_cy<11>_rt_2025 ;
  wire \pwmGenerator/Mcount_rampa_cy<12>_rt_2027 ;
  wire \pwmGenerator/Mcount_rampa_cy<13>_rt_2029 ;
  wire \pwmGenerator/Mcount_rampa_cy<14>_rt_2031 ;
  wire \pwmGenerator/Mcount_rampa_cy<1>_rt_2033 ;
  wire \pwmGenerator/Mcount_rampa_cy<2>_rt_2035 ;
  wire \pwmGenerator/Mcount_rampa_cy<3>_rt_2037 ;
  wire \pwmGenerator/Mcount_rampa_cy<4>_rt_2039 ;
  wire \pwmGenerator/Mcount_rampa_cy<5>_rt_2041 ;
  wire \pwmGenerator/Mcount_rampa_cy<6>_rt_2043 ;
  wire \pwmGenerator/Mcount_rampa_cy<7>_rt_2045 ;
  wire \pwmGenerator/Mcount_rampa_cy<8>_rt_2047 ;
  wire \pwmGenerator/Mcount_rampa_cy<9>_rt_2049 ;
  wire \pwmGenerator/Mcount_rampa_xor<15>_rt_2051 ;
  wire \pwmGenerator/pwm_out_2052 ;
  wire \r_Enable_mux0000<0>1 ;
  wire \r_Enable_mux0000<1>1 ;
  wire \r_Enable_mux0000<2>1 ;
  wire \r_LED_mux0000<6>11 ;
  wire \r_SevenSegment_mux0000<0>11_2088 ;
  wire \r_SevenSegment_mux0000<0>24_2089 ;
  wire \r_SevenSegment_mux0000<0>36_2090 ;
  wire \r_SevenSegment_mux0000<0>48_2091 ;
  wire \r_SevenSegment_mux0000<0>5_2092 ;
  wire \r_SevenSegment_mux0000<1>114_2093 ;
  wire \r_SevenSegment_mux0000<1>23_2094 ;
  wire \r_SevenSegment_mux0000<1>47_2095 ;
  wire \r_SevenSegment_mux0000<1>86_2096 ;
  wire \r_SevenSegment_mux0000<1>98_2097 ;
  wire \r_SevenSegment_mux0000<2>22_2098 ;
  wire \r_SevenSegment_mux0000<2>45_2099 ;
  wire \r_SevenSegment_mux0000<2>58_2100 ;
  wire \r_SevenSegment_mux0000<2>86 ;
  wire \r_SevenSegment_mux0000<3>13_2102 ;
  wire \r_SevenSegment_mux0000<3>20 ;
  wire \r_SevenSegment_mux0000<3>211 ;
  wire \r_SevenSegment_mux0000<3>224_2105 ;
  wire \r_SevenSegment_mux0000<3>25_2106 ;
  wire \r_SevenSegment_mux0000<3>310_2107 ;
  wire \r_SevenSegment_mux0000<3>321_2108 ;
  wire \r_SevenSegment_mux0000<3>341_2109 ;
  wire \r_SevenSegment_mux0000<3>4_2110 ;
  wire \r_SevenSegment_mux0000<3>411_2111 ;
  wire \r_SevenSegment_mux0000<3>424_2112 ;
  wire \r_SevenSegment_mux0000<3>45_2113 ;
  wire \r_SevenSegment_mux0000<4>10_2114 ;
  wire \r_SevenSegment_mux0000<4>28_2115 ;
  wire \r_SevenSegment_mux0000<4>37_2116 ;
  wire \r_SevenSegment_mux0000<4>81_2117 ;
  wire \r_SevenSegment_mux0000<5>141_2118 ;
  wire \r_SevenSegment_mux0000<5>25_2119 ;
  wire \r_SevenSegment_mux0000<5>63_2120 ;
  wire \r_SevenSegment_mux0000<5>76_2121 ;
  wire \r_SevenSegment_mux0000<6>19_2122 ;
  wire \r_SevenSegment_mux0000<6>32 ;
  wire \r_SevenSegment_mux0000<6>8_2124 ;
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
  wire s_Main_FSM_FFd1_2333;
  wire s_Main_FSM_FFd2_2334;
  wire s_Main_FSM_FFd3_2335;
  wire s_Main_FSM_FFd4_2336;
  wire \w_setpoint[0] ;
  wire \w_setpoint[1] ;
  wire \w_setpoint[2] ;
  wire \w_setpoint[4] ;
  wire \w_setpoint[5] ;
  wire \w_setpoint[6] ;
  wire \w_setpoint[7] ;
  wire \pidController/p_mux0000<0>31/O ;
  wire \pidController/p_or0000_SW0/O ;
  wire \pidController/a_mux0000<1>20/O ;
  wire \r_SevenSegment_mux0000<3>25/O ;
  wire \decoder/count_and0000_SW0/O ;
  wire \decoder/count_mux0001<11>210/O ;
  wire \pidController/a_mux0000<2>13/O ;
  wire \pidController/p_mux0000<2>21/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1/O ;
  wire \pidController/a_mux0000<4>13/O ;
  wire \pidController/a_mux0000<3>13/O ;
  wire \pidController/p_mux0000<3>21/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1/O ;
  wire \pidController/p_mux0000<5>21/O ;
  wire \pidController/p_mux0000<4>21/O ;
  wire \pidController/a_mux0000<6>10/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0/O ;
  wire \pidController/p_mux0000<6>21/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0/O ;
  wire \pidController/p_mux0000<7>21/O ;
  wire \pidController/a_mux0000<8>10/O ;
  wire \pidController/a_mux0000<7>10/O ;
  wire \pidController/p_mux0000<8>13/O ;
  wire \pidController/a_mux0000<9>10/O ;
  wire \pidController/a_mux0000<10>10/O ;
  wire \pidController/a_mux0000<12>10/O ;
  wire \pidController/a_mux0000<11>10/O ;
  wire \pidController/p_mux0000<10>13/O ;
  wire \pidController/a_mux0000<14>10/O ;
  wire \pidController/a_mux0000<13>10/O ;
  wire \pidController/p_mux0000<12>7/O ;
  wire \pidController/p_mux0000<14>7/O ;
  wire \pidController/a_mux0000<15>10/O ;
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0/O ;
  wire \pidController/p_mux0000<11>74/O ;
  wire \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1/O ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0/O ;
  wire \pidController/p_mux0000<15>75_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0/O ;
  wire \decoder/count_mux0001<11>151/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2/O ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2/O ;
  wire \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4/O ;
  wire \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0/O ;
  wire \converter/r_BCD_12_mux00009_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1/O ;
  wire \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0/O ;
  wire \pidController/p_mux0000<1>44_SW0/O ;
  wire \pidController/a_mux0000<5>23_SW0/O ;
  wire \DPSwitch<7>_IBUF_2448 ;
  wire \DPSwitch<6>_IBUF_2449 ;
  wire \DPSwitch<5>_IBUF_2450 ;
  wire \Clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [7 : 0] NlwRenamedSig_IO_DPSwitch;
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
  wire [5 : 0] NlwRenamedSig_IO_Switch;
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
  assign
    NlwRenamedSig_IO_i_A = i_A,
    NlwRenamedSig_IO_i_B = i_B,
    NlwRenamedSig_IO_DPSwitch[7] = DPSwitch[7],
    NlwRenamedSig_IO_DPSwitch[6] = DPSwitch[6],
    NlwRenamedSig_IO_DPSwitch[5] = DPSwitch[5],
    NlwRenamedSig_IO_DPSwitch[4] = DPSwitch[4],
    NlwRenamedSig_IO_DPSwitch[3] = DPSwitch[3],
    NlwRenamedSig_IO_DPSwitch[2] = DPSwitch[2],
    NlwRenamedSig_IO_DPSwitch[1] = DPSwitch[1],
    NlwRenamedSig_IO_DPSwitch[0] = DPSwitch[0],
    NlwRenamedSig_IO_Switch[5] = Switch[5],
    NlwRenamedSig_IO_Switch[4] = Switch[4],
    NlwRenamedSig_IO_Switch[3] = Switch[3],
    NlwRenamedSig_IO_Switch[2] = Switch[2],
    NlwRenamedSig_IO_Switch[1] = Switch[1],
    NlwRenamedSig_IO_Switch[0] = Switch[0];
  X_ZERO   XST_GND (
    .O(LED_5_OBUF_27)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_0 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[0]),
    .O(r_error_unsigned[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_1 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[1]),
    .O(r_error_unsigned[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_2 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[2]),
    .O(r_error_unsigned[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_3 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[3]),
    .O(r_error_unsigned[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_4 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[4]),
    .O(r_error_unsigned[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_5 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[5]),
    .O(r_error_unsigned[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_6 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[6]),
    .O(r_error_unsigned[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_7 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[7]),
    .O(r_error_unsigned[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_8 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[8]),
    .O(r_error_unsigned[8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_9 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[9]),
    .O(r_error_unsigned[9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_10 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[10]),
    .O(r_error_unsigned[10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_11 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[11]),
    .O(r_error_unsigned[11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_12 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[12]),
    .O(r_error_unsigned[12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_13 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[13]),
    .O(r_error_unsigned[13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_14 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[14]),
    .O(r_error_unsigned[14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_15 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[15]),
    .O(r_error_unsigned[15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_error_unsigned_16 (
    .CLK(Clk_BUFGP),
    .I(r_error_unsigned_mux0000[16]),
    .O(r_error_unsigned[16]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_0 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [0]),
    .O(r_displayValue[0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_1 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [1]),
    .O(r_displayValue[1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_2 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [2]),
    .O(r_displayValue[2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_3 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [3]),
    .O(r_displayValue[3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_4 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [4]),
    .O(r_displayValue[4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_5 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [5]),
    .O(r_displayValue[5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_6 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [6]),
    .O(r_displayValue[6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_7 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [7]),
    .O(r_displayValue[7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_8 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [8]),
    .O(r_displayValue[8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_9 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [9]),
    .O(r_displayValue[9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_10 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [10]),
    .O(r_displayValue[10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_displayValue_11 (
    .CLK(\converter/r_DV_770 ),
    .CE(\debouncer1/DB_out_835 ),
    .I(\converter/r_BCD [11]),
    .O(r_displayValue[11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  Clk_5 (
    .CLK(Clk_BUFGP),
    .I(counter[15]),
    .O(Clk_5_4),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_LED_0 (
    .CLK(Clk_BUFGP),
    .I(N01),
    .O(r_LED[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_controllerPin_1 (
    .CLK(Clk_BUFGP),
    .I(\pwmGenerator/pwm_out_2052 ),
    .SRST(r_controllerPin_or0000),
    .O(r_controllerPin[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  s_Main_FSM_FFd4 (
    .CLK(Clk_5_4),
    .I(LED_5_OBUF_27),
    .O(s_Main_FSM_FFd4_2336),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd3 (
    .CLK(Clk_5_4),
    .I(s_Main_FSM_FFd2_2334),
    .O(s_Main_FSM_FFd3_2335),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd1 (
    .CLK(Clk_5_4),
    .I(s_Main_FSM_FFd3_2335),
    .O(s_Main_FSM_FFd1_2333),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_0 (
    .CLK(Clk_BUFGP),
    .I(Result[0]),
    .O(counter[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_1 (
    .CLK(Clk_BUFGP),
    .I(Result[1]),
    .O(counter[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_2 (
    .CLK(Clk_BUFGP),
    .I(Result[2]),
    .O(counter[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_3 (
    .CLK(Clk_BUFGP),
    .I(Result[3]),
    .O(counter[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_4 (
    .CLK(Clk_BUFGP),
    .I(Result[4]),
    .O(counter[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_5 (
    .CLK(Clk_BUFGP),
    .I(Result[5]),
    .O(counter[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_6 (
    .CLK(Clk_BUFGP),
    .I(Result[6]),
    .O(counter[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_7 (
    .CLK(Clk_BUFGP),
    .I(Result[7]),
    .O(counter[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_8 (
    .CLK(Clk_BUFGP),
    .I(Result[8]),
    .O(counter[8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_9 (
    .CLK(Clk_BUFGP),
    .I(Result[9]),
    .O(counter[9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_10 (
    .CLK(Clk_BUFGP),
    .I(Result[10]),
    .O(counter[10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_11 (
    .CLK(Clk_BUFGP),
    .I(Result[11]),
    .O(counter[11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_12 (
    .CLK(Clk_BUFGP),
    .I(Result[12]),
    .O(counter[12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_13 (
    .CLK(Clk_BUFGP),
    .I(Result[13]),
    .O(counter[13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_14 (
    .CLK(Clk_BUFGP),
    .I(Result[14]),
    .O(counter[14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  counter_15 (
    .CLK(Clk_BUFGP),
    .I(Result[15]),
    .O(counter[15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_0  (
    .CLK(Clk_BUFGP),
    .I(\Result<0>1 ),
    .O(\pwmGenerator/rampa [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_1  (
    .CLK(Clk_BUFGP),
    .I(\Result<1>1 ),
    .O(\pwmGenerator/rampa [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_2  (
    .CLK(Clk_BUFGP),
    .I(\Result<2>1 ),
    .O(\pwmGenerator/rampa [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_3  (
    .CLK(Clk_BUFGP),
    .I(\Result<3>1 ),
    .O(\pwmGenerator/rampa [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_4  (
    .CLK(Clk_BUFGP),
    .I(\Result<4>1 ),
    .O(\pwmGenerator/rampa [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_5  (
    .CLK(Clk_BUFGP),
    .I(\Result<5>1 ),
    .O(\pwmGenerator/rampa [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_6  (
    .CLK(Clk_BUFGP),
    .I(\Result<6>1 ),
    .O(\pwmGenerator/rampa [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_7  (
    .CLK(Clk_BUFGP),
    .I(\Result<7>1 ),
    .O(\pwmGenerator/rampa [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_8  (
    .CLK(Clk_BUFGP),
    .I(\Result<8>1 ),
    .O(\pwmGenerator/rampa [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_9  (
    .CLK(Clk_BUFGP),
    .I(\Result<9>1 ),
    .O(\pwmGenerator/rampa [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_10  (
    .CLK(Clk_BUFGP),
    .I(\Result<10>1 ),
    .O(\pwmGenerator/rampa [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_11  (
    .CLK(Clk_BUFGP),
    .I(\Result<11>1 ),
    .O(\pwmGenerator/rampa [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_12  (
    .CLK(Clk_BUFGP),
    .I(\Result<12>1 ),
    .O(\pwmGenerator/rampa [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_13  (
    .CLK(Clk_BUFGP),
    .I(\Result<13>1 ),
    .O(\pwmGenerator/rampa [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_14  (
    .CLK(Clk_BUFGP),
    .I(\Result<14>1 ),
    .O(\pwmGenerator/rampa [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/rampa_15  (
    .CLK(Clk_BUFGP),
    .I(\Result<15>1 ),
    .O(\pwmGenerator/rampa [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(N1),
    .SEL(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_29 ),
    .O(Madd_r_error_unsigned_addsub0000_cy[0])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_29 ),
    .O(r_error_unsigned_addsub0000[0])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<1>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[0]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[1]),
    .O(Madd_r_error_unsigned_addsub0000_cy[1])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<1>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[0]),
    .I1(r_error_unsigned_not0000[1]),
    .O(r_error_unsigned_addsub0000[1])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<2>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[1]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[2]),
    .O(Madd_r_error_unsigned_addsub0000_cy[2])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<2>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[1]),
    .I1(r_error_unsigned_not0000[2]),
    .O(r_error_unsigned_addsub0000[2])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<3>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[2]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[3]),
    .O(Madd_r_error_unsigned_addsub0000_cy[3])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<3>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[2]),
    .I1(r_error_unsigned_not0000[3]),
    .O(r_error_unsigned_addsub0000[3])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<4>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[3]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[4]),
    .O(Madd_r_error_unsigned_addsub0000_cy[4])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<4>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[3]),
    .I1(r_error_unsigned_not0000[4]),
    .O(r_error_unsigned_addsub0000[4])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<5>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[4]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[5]),
    .O(Madd_r_error_unsigned_addsub0000_cy[5])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<5>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[4]),
    .I1(r_error_unsigned_not0000[5]),
    .O(r_error_unsigned_addsub0000[5])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<6>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[5]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[6]),
    .O(Madd_r_error_unsigned_addsub0000_cy[6])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<6>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[5]),
    .I1(r_error_unsigned_not0000[6]),
    .O(r_error_unsigned_addsub0000[6])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<7>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[6]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[7]),
    .O(Madd_r_error_unsigned_addsub0000_cy[7])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<7>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[6]),
    .I1(r_error_unsigned_not0000[7]),
    .O(r_error_unsigned_addsub0000[7])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<8>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[7]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[8]),
    .O(Madd_r_error_unsigned_addsub0000_cy[8])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<8>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[7]),
    .I1(r_error_unsigned_not0000[8]),
    .O(r_error_unsigned_addsub0000[8])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<9>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[8]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[9]),
    .O(Madd_r_error_unsigned_addsub0000_cy[9])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<9>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[8]),
    .I1(r_error_unsigned_not0000[9]),
    .O(r_error_unsigned_addsub0000[9])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<10>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[9]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[10]),
    .O(Madd_r_error_unsigned_addsub0000_cy[10])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<10>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[9]),
    .I1(r_error_unsigned_not0000[10]),
    .O(r_error_unsigned_addsub0000[10])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<11>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[10]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[11]),
    .O(Madd_r_error_unsigned_addsub0000_cy[11])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<11>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[10]),
    .I1(r_error_unsigned_not0000[11]),
    .O(r_error_unsigned_addsub0000[11])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<12>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[11]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[12]),
    .O(Madd_r_error_unsigned_addsub0000_cy[12])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<12>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[11]),
    .I1(r_error_unsigned_not0000[12]),
    .O(r_error_unsigned_addsub0000[12])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<13>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[12]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[13]),
    .O(Madd_r_error_unsigned_addsub0000_cy[13])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<13>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[12]),
    .I1(r_error_unsigned_not0000[13]),
    .O(r_error_unsigned_addsub0000[13])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<14>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[13]),
    .IA(LED_5_OBUF_27),
    .SEL(r_error_unsigned_not0000[14]),
    .O(Madd_r_error_unsigned_addsub0000_cy[14])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<14>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[13]),
    .I1(r_error_unsigned_not0000[14]),
    .O(r_error_unsigned_addsub0000[14])
  );
  X_MUX2   \Madd_r_error_unsigned_addsub0000_cy<15>  (
    .IB(Madd_r_error_unsigned_addsub0000_cy[14]),
    .IA(LED_5_OBUF_27),
    .SEL(r_LED_mux0000[6]),
    .O(Madd_r_error_unsigned_addsub0000_cy[15])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<15>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[14]),
    .I1(r_LED_mux0000[6]),
    .O(r_error_unsigned_addsub0000[15])
  );
  X_XOR2   \Madd_r_error_unsigned_addsub0000_xor<16>  (
    .I0(Madd_r_error_unsigned_addsub0000_cy[15]),
    .I1(N1),
    .O(r_error_unsigned_addsub0000[16])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<0>  (
    .ADR0(r_error_unsigned[0]),
    .ADR1(r_error_unsigned[1]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[0])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0001_cy<0>  (
    .IB(N1),
    .IA(LED_5_OBUF_27),
    .SEL(Mcompar_r_controllerPin_cmp_lt0001_lut[0]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[0])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<1>  (
    .ADR0(r_error_unsigned[2]),
    .ADR1(r_error_unsigned[3]),
    .ADR2(r_error_unsigned[4]),
    .ADR3(r_error_unsigned[5]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[1])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0001_cy<1>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0001_cy[0]),
    .IA(N1),
    .SEL(Mcompar_r_controllerPin_cmp_lt0001_lut[1]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<2>  (
    .ADR0(r_error_unsigned[6]),
    .ADR1(r_error_unsigned[7]),
    .ADR2(r_error_unsigned[8]),
    .ADR3(r_error_unsigned[9]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[2])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0001_cy<2>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0001_cy[1]),
    .IA(N1),
    .SEL(Mcompar_r_controllerPin_cmp_lt0001_lut[2]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<3>  (
    .ADR0(r_error_unsigned[10]),
    .ADR1(r_error_unsigned[11]),
    .ADR2(r_error_unsigned[12]),
    .ADR3(r_error_unsigned[13]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[3])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0001_cy<3>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0001_cy[2]),
    .IA(N1),
    .SEL(Mcompar_r_controllerPin_cmp_lt0001_lut[3]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[3])
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_r_controllerPin_cmp_lt0001_lut<4>  (
    .ADR0(r_error_unsigned[14]),
    .ADR1(r_error_unsigned[15]),
    .ADR2(r_error_unsigned[16]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_lut[4])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0001_cy<4>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0001_cy[3]),
    .IA(N1),
    .SEL(Mcompar_r_controllerPin_cmp_lt0001_lut[4]),
    .O(Mcompar_r_controllerPin_cmp_lt0001_cy[4])
  );
  X_MUX2   \Mcount_counter_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(N1),
    .SEL(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  X_XOR2   \Mcount_counter_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(Mcount_counter_lut[0]),
    .O(Result[0])
  );
  X_MUX2   \Mcount_counter_cy<1>  (
    .IB(Mcount_counter_cy[0]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<1>_rt_141 ),
    .O(Mcount_counter_cy[1])
  );
  X_XOR2   \Mcount_counter_xor<1>  (
    .I0(Mcount_counter_cy[0]),
    .I1(\Mcount_counter_cy<1>_rt_141 ),
    .O(Result[1])
  );
  X_MUX2   \Mcount_counter_cy<2>  (
    .IB(Mcount_counter_cy[1]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<2>_rt_143 ),
    .O(Mcount_counter_cy[2])
  );
  X_XOR2   \Mcount_counter_xor<2>  (
    .I0(Mcount_counter_cy[1]),
    .I1(\Mcount_counter_cy<2>_rt_143 ),
    .O(Result[2])
  );
  X_MUX2   \Mcount_counter_cy<3>  (
    .IB(Mcount_counter_cy[2]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<3>_rt_145 ),
    .O(Mcount_counter_cy[3])
  );
  X_XOR2   \Mcount_counter_xor<3>  (
    .I0(Mcount_counter_cy[2]),
    .I1(\Mcount_counter_cy<3>_rt_145 ),
    .O(Result[3])
  );
  X_MUX2   \Mcount_counter_cy<4>  (
    .IB(Mcount_counter_cy[3]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<4>_rt_147 ),
    .O(Mcount_counter_cy[4])
  );
  X_XOR2   \Mcount_counter_xor<4>  (
    .I0(Mcount_counter_cy[3]),
    .I1(\Mcount_counter_cy<4>_rt_147 ),
    .O(Result[4])
  );
  X_MUX2   \Mcount_counter_cy<5>  (
    .IB(Mcount_counter_cy[4]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<5>_rt_149 ),
    .O(Mcount_counter_cy[5])
  );
  X_XOR2   \Mcount_counter_xor<5>  (
    .I0(Mcount_counter_cy[4]),
    .I1(\Mcount_counter_cy<5>_rt_149 ),
    .O(Result[5])
  );
  X_MUX2   \Mcount_counter_cy<6>  (
    .IB(Mcount_counter_cy[5]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<6>_rt_151 ),
    .O(Mcount_counter_cy[6])
  );
  X_XOR2   \Mcount_counter_xor<6>  (
    .I0(Mcount_counter_cy[5]),
    .I1(\Mcount_counter_cy<6>_rt_151 ),
    .O(Result[6])
  );
  X_MUX2   \Mcount_counter_cy<7>  (
    .IB(Mcount_counter_cy[6]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<7>_rt_153 ),
    .O(Mcount_counter_cy[7])
  );
  X_XOR2   \Mcount_counter_xor<7>  (
    .I0(Mcount_counter_cy[6]),
    .I1(\Mcount_counter_cy<7>_rt_153 ),
    .O(Result[7])
  );
  X_MUX2   \Mcount_counter_cy<8>  (
    .IB(Mcount_counter_cy[7]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<8>_rt_155 ),
    .O(Mcount_counter_cy[8])
  );
  X_XOR2   \Mcount_counter_xor<8>  (
    .I0(Mcount_counter_cy[7]),
    .I1(\Mcount_counter_cy<8>_rt_155 ),
    .O(Result[8])
  );
  X_MUX2   \Mcount_counter_cy<9>  (
    .IB(Mcount_counter_cy[8]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<9>_rt_157 ),
    .O(Mcount_counter_cy[9])
  );
  X_XOR2   \Mcount_counter_xor<9>  (
    .I0(Mcount_counter_cy[8]),
    .I1(\Mcount_counter_cy<9>_rt_157 ),
    .O(Result[9])
  );
  X_MUX2   \Mcount_counter_cy<10>  (
    .IB(Mcount_counter_cy[9]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<10>_rt_131 ),
    .O(Mcount_counter_cy[10])
  );
  X_XOR2   \Mcount_counter_xor<10>  (
    .I0(Mcount_counter_cy[9]),
    .I1(\Mcount_counter_cy<10>_rt_131 ),
    .O(Result[10])
  );
  X_MUX2   \Mcount_counter_cy<11>  (
    .IB(Mcount_counter_cy[10]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<11>_rt_133 ),
    .O(Mcount_counter_cy[11])
  );
  X_XOR2   \Mcount_counter_xor<11>  (
    .I0(Mcount_counter_cy[10]),
    .I1(\Mcount_counter_cy<11>_rt_133 ),
    .O(Result[11])
  );
  X_MUX2   \Mcount_counter_cy<12>  (
    .IB(Mcount_counter_cy[11]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<12>_rt_135 ),
    .O(Mcount_counter_cy[12])
  );
  X_XOR2   \Mcount_counter_xor<12>  (
    .I0(Mcount_counter_cy[11]),
    .I1(\Mcount_counter_cy<12>_rt_135 ),
    .O(Result[12])
  );
  X_MUX2   \Mcount_counter_cy<13>  (
    .IB(Mcount_counter_cy[12]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<13>_rt_137 ),
    .O(Mcount_counter_cy[13])
  );
  X_XOR2   \Mcount_counter_xor<13>  (
    .I0(Mcount_counter_cy[12]),
    .I1(\Mcount_counter_cy<13>_rt_137 ),
    .O(Result[13])
  );
  X_MUX2   \Mcount_counter_cy<14>  (
    .IB(Mcount_counter_cy[13]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcount_counter_cy<14>_rt_139 ),
    .O(Mcount_counter_cy[14])
  );
  X_XOR2   \Mcount_counter_xor<14>  (
    .I0(Mcount_counter_cy[13]),
    .I1(\Mcount_counter_cy<14>_rt_139 ),
    .O(Result[14])
  );
  X_XOR2   \Mcount_counter_xor<15>  (
    .I0(Mcount_counter_cy[14]),
    .I1(\Mcount_counter_xor<15>_rt_159 ),
    .O(Result[15])
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(N1),
    .SEL(\pwmGenerator/Mcount_rampa_lut [0]),
    .O(\pwmGenerator/Mcount_rampa_cy [0])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\pwmGenerator/Mcount_rampa_lut [0]),
    .O(\Result<0>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<1>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [0]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<1>_rt_2033 ),
    .O(\pwmGenerator/Mcount_rampa_cy [1])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<1>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [0]),
    .I1(\pwmGenerator/Mcount_rampa_cy<1>_rt_2033 ),
    .O(\Result<1>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<2>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [1]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<2>_rt_2035 ),
    .O(\pwmGenerator/Mcount_rampa_cy [2])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<2>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [1]),
    .I1(\pwmGenerator/Mcount_rampa_cy<2>_rt_2035 ),
    .O(\Result<2>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<3>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [2]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<3>_rt_2037 ),
    .O(\pwmGenerator/Mcount_rampa_cy [3])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<3>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [2]),
    .I1(\pwmGenerator/Mcount_rampa_cy<3>_rt_2037 ),
    .O(\Result<3>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<4>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [3]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<4>_rt_2039 ),
    .O(\pwmGenerator/Mcount_rampa_cy [4])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<4>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [3]),
    .I1(\pwmGenerator/Mcount_rampa_cy<4>_rt_2039 ),
    .O(\Result<4>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<5>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [4]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<5>_rt_2041 ),
    .O(\pwmGenerator/Mcount_rampa_cy [5])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<5>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [4]),
    .I1(\pwmGenerator/Mcount_rampa_cy<5>_rt_2041 ),
    .O(\Result<5>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<6>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [5]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<6>_rt_2043 ),
    .O(\pwmGenerator/Mcount_rampa_cy [6])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<6>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [5]),
    .I1(\pwmGenerator/Mcount_rampa_cy<6>_rt_2043 ),
    .O(\Result<6>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<7>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [6]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<7>_rt_2045 ),
    .O(\pwmGenerator/Mcount_rampa_cy [7])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<7>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [6]),
    .I1(\pwmGenerator/Mcount_rampa_cy<7>_rt_2045 ),
    .O(\Result<7>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<8>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [7]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<8>_rt_2047 ),
    .O(\pwmGenerator/Mcount_rampa_cy [8])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<8>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [7]),
    .I1(\pwmGenerator/Mcount_rampa_cy<8>_rt_2047 ),
    .O(\Result<8>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<9>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [8]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<9>_rt_2049 ),
    .O(\pwmGenerator/Mcount_rampa_cy [9])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<9>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [8]),
    .I1(\pwmGenerator/Mcount_rampa_cy<9>_rt_2049 ),
    .O(\Result<9>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<10>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [9]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<10>_rt_2023 ),
    .O(\pwmGenerator/Mcount_rampa_cy [10])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<10>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [9]),
    .I1(\pwmGenerator/Mcount_rampa_cy<10>_rt_2023 ),
    .O(\Result<10>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<11>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [10]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<11>_rt_2025 ),
    .O(\pwmGenerator/Mcount_rampa_cy [11])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<11>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [10]),
    .I1(\pwmGenerator/Mcount_rampa_cy<11>_rt_2025 ),
    .O(\Result<11>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<12>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [11]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<12>_rt_2027 ),
    .O(\pwmGenerator/Mcount_rampa_cy [12])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<12>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [11]),
    .I1(\pwmGenerator/Mcount_rampa_cy<12>_rt_2027 ),
    .O(\Result<12>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<13>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [12]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<13>_rt_2029 ),
    .O(\pwmGenerator/Mcount_rampa_cy [13])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<13>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [12]),
    .I1(\pwmGenerator/Mcount_rampa_cy<13>_rt_2029 ),
    .O(\Result<13>1 )
  );
  X_MUX2   \pwmGenerator/Mcount_rampa_cy<14>  (
    .IB(\pwmGenerator/Mcount_rampa_cy [13]),
    .IA(LED_5_OBUF_27),
    .SEL(\pwmGenerator/Mcount_rampa_cy<14>_rt_2031 ),
    .O(\pwmGenerator/Mcount_rampa_cy [14])
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<14>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [13]),
    .I1(\pwmGenerator/Mcount_rampa_cy<14>_rt_2031 ),
    .O(\Result<14>1 )
  );
  X_XOR2   \pwmGenerator/Mcount_rampa_xor<15>  (
    .I0(\pwmGenerator/Mcount_rampa_cy [14]),
    .I1(\pwmGenerator/Mcount_rampa_xor<15>_rt_2051 ),
    .O(\Result<15>1 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Maddsub_r_kp_mux0000_lut<0>  (
    .ADR0(r_kp[0]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[0])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<0>  (
    .IB(\debouncer3/DB_out_875 ),
    .IA(r_kp[0]),
    .SEL(Maddsub_r_kp_mux0000_lut[0]),
    .O(Maddsub_r_kp_mux0000_cy[0])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<0>  (
    .I0(\debouncer3/DB_out_875 ),
    .I1(Maddsub_r_kp_mux0000_lut[0]),
    .O(r_kp_mux0000[0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<1>  (
    .ADR0(r_kp[1]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[1])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<1>  (
    .IB(Maddsub_r_kp_mux0000_cy[0]),
    .IA(r_kp[1]),
    .SEL(Maddsub_r_kp_mux0000_lut[1]),
    .O(Maddsub_r_kp_mux0000_cy[1])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<1>  (
    .I0(Maddsub_r_kp_mux0000_cy[0]),
    .I1(Maddsub_r_kp_mux0000_lut[1]),
    .O(r_kp_mux0000[1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<2>  (
    .ADR0(r_kp[2]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[2])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<2>  (
    .IB(Maddsub_r_kp_mux0000_cy[1]),
    .IA(r_kp[2]),
    .SEL(Maddsub_r_kp_mux0000_lut[2]),
    .O(Maddsub_r_kp_mux0000_cy[2])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<2>  (
    .I0(Maddsub_r_kp_mux0000_cy[1]),
    .I1(Maddsub_r_kp_mux0000_lut[2]),
    .O(r_kp_mux0000[2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<3>  (
    .ADR0(r_kp[3]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[3])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<3>  (
    .IB(Maddsub_r_kp_mux0000_cy[2]),
    .IA(r_kp[3]),
    .SEL(Maddsub_r_kp_mux0000_lut[3]),
    .O(Maddsub_r_kp_mux0000_cy[3])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<3>  (
    .I0(Maddsub_r_kp_mux0000_cy[2]),
    .I1(Maddsub_r_kp_mux0000_lut[3]),
    .O(r_kp_mux0000[3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<4>  (
    .ADR0(r_kp[4]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[4])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<4>  (
    .IB(Maddsub_r_kp_mux0000_cy[3]),
    .IA(r_kp[4]),
    .SEL(Maddsub_r_kp_mux0000_lut[4]),
    .O(Maddsub_r_kp_mux0000_cy[4])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<4>  (
    .I0(Maddsub_r_kp_mux0000_cy[3]),
    .I1(Maddsub_r_kp_mux0000_lut[4]),
    .O(r_kp_mux0000[4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<5>  (
    .ADR0(r_kp[5]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[5])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<5>  (
    .IB(Maddsub_r_kp_mux0000_cy[4]),
    .IA(r_kp[5]),
    .SEL(Maddsub_r_kp_mux0000_lut[5]),
    .O(Maddsub_r_kp_mux0000_cy[5])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<5>  (
    .I0(Maddsub_r_kp_mux0000_cy[4]),
    .I1(Maddsub_r_kp_mux0000_lut[5]),
    .O(r_kp_mux0000[5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<6>  (
    .ADR0(r_kp[6]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[6])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<6>  (
    .IB(Maddsub_r_kp_mux0000_cy[5]),
    .IA(r_kp[6]),
    .SEL(Maddsub_r_kp_mux0000_lut[6]),
    .O(Maddsub_r_kp_mux0000_cy[6])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<6>  (
    .I0(Maddsub_r_kp_mux0000_cy[5]),
    .I1(Maddsub_r_kp_mux0000_lut[6]),
    .O(r_kp_mux0000[6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<7>  (
    .ADR0(r_kp[7]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[7])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<7>  (
    .IB(Maddsub_r_kp_mux0000_cy[6]),
    .IA(r_kp[7]),
    .SEL(Maddsub_r_kp_mux0000_lut[7]),
    .O(Maddsub_r_kp_mux0000_cy[7])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<7>  (
    .I0(Maddsub_r_kp_mux0000_cy[6]),
    .I1(Maddsub_r_kp_mux0000_lut[7]),
    .O(r_kp_mux0000[7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<8>  (
    .ADR0(r_kp[8]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[8])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<8>  (
    .IB(Maddsub_r_kp_mux0000_cy[7]),
    .IA(r_kp[8]),
    .SEL(Maddsub_r_kp_mux0000_lut[8]),
    .O(Maddsub_r_kp_mux0000_cy[8])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<8>  (
    .I0(Maddsub_r_kp_mux0000_cy[7]),
    .I1(Maddsub_r_kp_mux0000_lut[8]),
    .O(r_kp_mux0000[8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<9>  (
    .ADR0(r_kp[9]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[9])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<9>  (
    .IB(Maddsub_r_kp_mux0000_cy[8]),
    .IA(r_kp[9]),
    .SEL(Maddsub_r_kp_mux0000_lut[9]),
    .O(Maddsub_r_kp_mux0000_cy[9])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<9>  (
    .I0(Maddsub_r_kp_mux0000_cy[8]),
    .I1(Maddsub_r_kp_mux0000_lut[9]),
    .O(r_kp_mux0000[9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<10>  (
    .ADR0(r_kp[10]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[10])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<10>  (
    .IB(Maddsub_r_kp_mux0000_cy[9]),
    .IA(r_kp[10]),
    .SEL(Maddsub_r_kp_mux0000_lut[10]),
    .O(Maddsub_r_kp_mux0000_cy[10])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<10>  (
    .I0(Maddsub_r_kp_mux0000_cy[9]),
    .I1(Maddsub_r_kp_mux0000_lut[10]),
    .O(r_kp_mux0000[10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<11>  (
    .ADR0(r_kp[11]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[11])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<11>  (
    .IB(Maddsub_r_kp_mux0000_cy[10]),
    .IA(r_kp[11]),
    .SEL(Maddsub_r_kp_mux0000_lut[11]),
    .O(Maddsub_r_kp_mux0000_cy[11])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<11>  (
    .I0(Maddsub_r_kp_mux0000_cy[10]),
    .I1(Maddsub_r_kp_mux0000_lut[11]),
    .O(r_kp_mux0000[11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<12>  (
    .ADR0(r_kp[12]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[12])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<12>  (
    .IB(Maddsub_r_kp_mux0000_cy[11]),
    .IA(r_kp[12]),
    .SEL(Maddsub_r_kp_mux0000_lut[12]),
    .O(Maddsub_r_kp_mux0000_cy[12])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<12>  (
    .I0(Maddsub_r_kp_mux0000_cy[11]),
    .I1(Maddsub_r_kp_mux0000_lut[12]),
    .O(r_kp_mux0000[12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<13>  (
    .ADR0(r_kp[13]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[13])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<13>  (
    .IB(Maddsub_r_kp_mux0000_cy[12]),
    .IA(r_kp[13]),
    .SEL(Maddsub_r_kp_mux0000_lut[13]),
    .O(Maddsub_r_kp_mux0000_cy[13])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<13>  (
    .I0(Maddsub_r_kp_mux0000_cy[12]),
    .I1(Maddsub_r_kp_mux0000_lut[13]),
    .O(r_kp_mux0000[13])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<14>  (
    .ADR0(r_kp[14]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[14])
  );
  X_MUX2   \Maddsub_r_kp_mux0000_cy<14>  (
    .IB(Maddsub_r_kp_mux0000_cy[13]),
    .IA(r_kp[14]),
    .SEL(Maddsub_r_kp_mux0000_lut[14]),
    .O(Maddsub_r_kp_mux0000_cy[14])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<14>  (
    .I0(Maddsub_r_kp_mux0000_cy[13]),
    .I1(Maddsub_r_kp_mux0000_lut[14]),
    .O(r_kp_mux0000[14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_kp_mux0000_lut<15>  (
    .ADR0(r_kp[15]),
    .ADR1(\debouncer3/DB_out_875 ),
    .O(Maddsub_r_kp_mux0000_lut[15])
  );
  X_XOR2   \Maddsub_r_kp_mux0000_xor<15>  (
    .I0(Maddsub_r_kp_mux0000_cy[14]),
    .I1(Maddsub_r_kp_mux0000_lut[15]),
    .O(r_kp_mux0000[15])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Maddsub_r_ki_mux0000_lut<0>  (
    .ADR0(r_ki[0]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[0])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<0>  (
    .IB(\debouncer5/DB_out_915 ),
    .IA(r_ki[0]),
    .SEL(Maddsub_r_ki_mux0000_lut[0]),
    .O(Maddsub_r_ki_mux0000_cy[0])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<0>  (
    .I0(\debouncer5/DB_out_915 ),
    .I1(Maddsub_r_ki_mux0000_lut[0]),
    .O(r_ki_mux0000[0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<1>  (
    .ADR0(r_ki[1]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[1])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<1>  (
    .IB(Maddsub_r_ki_mux0000_cy[0]),
    .IA(r_ki[1]),
    .SEL(Maddsub_r_ki_mux0000_lut[1]),
    .O(Maddsub_r_ki_mux0000_cy[1])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<1>  (
    .I0(Maddsub_r_ki_mux0000_cy[0]),
    .I1(Maddsub_r_ki_mux0000_lut[1]),
    .O(r_ki_mux0000[1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<2>  (
    .ADR0(r_ki[2]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[2])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<2>  (
    .IB(Maddsub_r_ki_mux0000_cy[1]),
    .IA(r_ki[2]),
    .SEL(Maddsub_r_ki_mux0000_lut[2]),
    .O(Maddsub_r_ki_mux0000_cy[2])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<2>  (
    .I0(Maddsub_r_ki_mux0000_cy[1]),
    .I1(Maddsub_r_ki_mux0000_lut[2]),
    .O(r_ki_mux0000[2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<3>  (
    .ADR0(r_ki[3]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[3])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<3>  (
    .IB(Maddsub_r_ki_mux0000_cy[2]),
    .IA(r_ki[3]),
    .SEL(Maddsub_r_ki_mux0000_lut[3]),
    .O(Maddsub_r_ki_mux0000_cy[3])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<3>  (
    .I0(Maddsub_r_ki_mux0000_cy[2]),
    .I1(Maddsub_r_ki_mux0000_lut[3]),
    .O(r_ki_mux0000[3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<4>  (
    .ADR0(r_ki[4]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[4])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<4>  (
    .IB(Maddsub_r_ki_mux0000_cy[3]),
    .IA(r_ki[4]),
    .SEL(Maddsub_r_ki_mux0000_lut[4]),
    .O(Maddsub_r_ki_mux0000_cy[4])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<4>  (
    .I0(Maddsub_r_ki_mux0000_cy[3]),
    .I1(Maddsub_r_ki_mux0000_lut[4]),
    .O(r_ki_mux0000[4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<5>  (
    .ADR0(r_ki[5]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[5])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<5>  (
    .IB(Maddsub_r_ki_mux0000_cy[4]),
    .IA(r_ki[5]),
    .SEL(Maddsub_r_ki_mux0000_lut[5]),
    .O(Maddsub_r_ki_mux0000_cy[5])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<5>  (
    .I0(Maddsub_r_ki_mux0000_cy[4]),
    .I1(Maddsub_r_ki_mux0000_lut[5]),
    .O(r_ki_mux0000[5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<6>  (
    .ADR0(r_ki[6]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[6])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<6>  (
    .IB(Maddsub_r_ki_mux0000_cy[5]),
    .IA(r_ki[6]),
    .SEL(Maddsub_r_ki_mux0000_lut[6]),
    .O(Maddsub_r_ki_mux0000_cy[6])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<6>  (
    .I0(Maddsub_r_ki_mux0000_cy[5]),
    .I1(Maddsub_r_ki_mux0000_lut[6]),
    .O(r_ki_mux0000[6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<7>  (
    .ADR0(r_ki[7]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[7])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<7>  (
    .IB(Maddsub_r_ki_mux0000_cy[6]),
    .IA(r_ki[7]),
    .SEL(Maddsub_r_ki_mux0000_lut[7]),
    .O(Maddsub_r_ki_mux0000_cy[7])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<7>  (
    .I0(Maddsub_r_ki_mux0000_cy[6]),
    .I1(Maddsub_r_ki_mux0000_lut[7]),
    .O(r_ki_mux0000[7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<8>  (
    .ADR0(r_ki[8]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[8])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<8>  (
    .IB(Maddsub_r_ki_mux0000_cy[7]),
    .IA(r_ki[8]),
    .SEL(Maddsub_r_ki_mux0000_lut[8]),
    .O(Maddsub_r_ki_mux0000_cy[8])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<8>  (
    .I0(Maddsub_r_ki_mux0000_cy[7]),
    .I1(Maddsub_r_ki_mux0000_lut[8]),
    .O(r_ki_mux0000[8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<9>  (
    .ADR0(r_ki[9]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[9])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<9>  (
    .IB(Maddsub_r_ki_mux0000_cy[8]),
    .IA(r_ki[9]),
    .SEL(Maddsub_r_ki_mux0000_lut[9]),
    .O(Maddsub_r_ki_mux0000_cy[9])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<9>  (
    .I0(Maddsub_r_ki_mux0000_cy[8]),
    .I1(Maddsub_r_ki_mux0000_lut[9]),
    .O(r_ki_mux0000[9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<10>  (
    .ADR0(r_ki[10]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[10])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<10>  (
    .IB(Maddsub_r_ki_mux0000_cy[9]),
    .IA(r_ki[10]),
    .SEL(Maddsub_r_ki_mux0000_lut[10]),
    .O(Maddsub_r_ki_mux0000_cy[10])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<10>  (
    .I0(Maddsub_r_ki_mux0000_cy[9]),
    .I1(Maddsub_r_ki_mux0000_lut[10]),
    .O(r_ki_mux0000[10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<11>  (
    .ADR0(r_ki[11]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[11])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<11>  (
    .IB(Maddsub_r_ki_mux0000_cy[10]),
    .IA(r_ki[11]),
    .SEL(Maddsub_r_ki_mux0000_lut[11]),
    .O(Maddsub_r_ki_mux0000_cy[11])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<11>  (
    .I0(Maddsub_r_ki_mux0000_cy[10]),
    .I1(Maddsub_r_ki_mux0000_lut[11]),
    .O(r_ki_mux0000[11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<12>  (
    .ADR0(r_ki[12]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[12])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<12>  (
    .IB(Maddsub_r_ki_mux0000_cy[11]),
    .IA(r_ki[12]),
    .SEL(Maddsub_r_ki_mux0000_lut[12]),
    .O(Maddsub_r_ki_mux0000_cy[12])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<12>  (
    .I0(Maddsub_r_ki_mux0000_cy[11]),
    .I1(Maddsub_r_ki_mux0000_lut[12]),
    .O(r_ki_mux0000[12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<13>  (
    .ADR0(r_ki[13]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[13])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<13>  (
    .IB(Maddsub_r_ki_mux0000_cy[12]),
    .IA(r_ki[13]),
    .SEL(Maddsub_r_ki_mux0000_lut[13]),
    .O(Maddsub_r_ki_mux0000_cy[13])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<13>  (
    .I0(Maddsub_r_ki_mux0000_cy[12]),
    .I1(Maddsub_r_ki_mux0000_lut[13]),
    .O(r_ki_mux0000[13])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<14>  (
    .ADR0(r_ki[14]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[14])
  );
  X_MUX2   \Maddsub_r_ki_mux0000_cy<14>  (
    .IB(Maddsub_r_ki_mux0000_cy[13]),
    .IA(r_ki[14]),
    .SEL(Maddsub_r_ki_mux0000_lut[14]),
    .O(Maddsub_r_ki_mux0000_cy[14])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<14>  (
    .I0(Maddsub_r_ki_mux0000_cy[13]),
    .I1(Maddsub_r_ki_mux0000_lut[14]),
    .O(r_ki_mux0000[14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maddsub_r_ki_mux0000_lut<15>  (
    .ADR0(r_ki[15]),
    .ADR1(\debouncer5/DB_out_915 ),
    .O(Maddsub_r_ki_mux0000_lut[15])
  );
  X_XOR2   \Maddsub_r_ki_mux0000_xor<15>  (
    .I0(Maddsub_r_ki_mux0000_cy[14]),
    .I1(Maddsub_r_ki_mux0000_lut[15]),
    .O(r_ki_mux0000[15])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<0>  (
    .ADR0(\w_setpoint[0] ),
    .ADR1(w_velocity[0]),
    .O(Msub_w_error_lut[0])
  );
  X_MUX2   \Msub_w_error_cy<0>  (
    .IB(N1),
    .IA(\w_setpoint[0] ),
    .SEL(Msub_w_error_lut[0]),
    .O(Msub_w_error_cy[0])
  );
  X_XOR2   \Msub_w_error_xor<0>  (
    .I0(N1),
    .I1(Msub_w_error_lut[0]),
    .O(w_error[0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<1>  (
    .ADR0(\w_setpoint[1] ),
    .ADR1(w_velocity[1]),
    .O(Msub_w_error_lut[1])
  );
  X_MUX2   \Msub_w_error_cy<1>  (
    .IB(Msub_w_error_cy[0]),
    .IA(\w_setpoint[1] ),
    .SEL(Msub_w_error_lut[1]),
    .O(Msub_w_error_cy[1])
  );
  X_XOR2   \Msub_w_error_xor<1>  (
    .I0(Msub_w_error_cy[0]),
    .I1(Msub_w_error_lut[1]),
    .O(w_error[1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<2>  (
    .ADR0(\w_setpoint[2] ),
    .ADR1(w_velocity[2]),
    .O(Msub_w_error_lut[2])
  );
  X_MUX2   \Msub_w_error_cy<2>  (
    .IB(Msub_w_error_cy[1]),
    .IA(\w_setpoint[2] ),
    .SEL(Msub_w_error_lut[2]),
    .O(Msub_w_error_cy[2])
  );
  X_XOR2   \Msub_w_error_xor<2>  (
    .I0(Msub_w_error_cy[1]),
    .I1(Msub_w_error_lut[2]),
    .O(w_error[2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<3>  (
    .ADR0(\w_setpoint[0] ),
    .ADR1(w_velocity[3]),
    .O(Msub_w_error_lut[3])
  );
  X_MUX2   \Msub_w_error_cy<3>  (
    .IB(Msub_w_error_cy[2]),
    .IA(\w_setpoint[0] ),
    .SEL(Msub_w_error_lut[3]),
    .O(Msub_w_error_cy[3])
  );
  X_XOR2   \Msub_w_error_xor<3>  (
    .I0(Msub_w_error_cy[2]),
    .I1(Msub_w_error_lut[3]),
    .O(w_error[3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<4>  (
    .ADR0(\w_setpoint[4] ),
    .ADR1(w_velocity[4]),
    .O(Msub_w_error_lut[4])
  );
  X_MUX2   \Msub_w_error_cy<4>  (
    .IB(Msub_w_error_cy[3]),
    .IA(\w_setpoint[4] ),
    .SEL(Msub_w_error_lut[4]),
    .O(Msub_w_error_cy[4])
  );
  X_XOR2   \Msub_w_error_xor<4>  (
    .I0(Msub_w_error_cy[3]),
    .I1(Msub_w_error_lut[4]),
    .O(w_error[4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<5>  (
    .ADR0(\w_setpoint[5] ),
    .ADR1(w_velocity[5]),
    .O(Msub_w_error_lut[5])
  );
  X_MUX2   \Msub_w_error_cy<5>  (
    .IB(Msub_w_error_cy[4]),
    .IA(\w_setpoint[5] ),
    .SEL(Msub_w_error_lut[5]),
    .O(Msub_w_error_cy[5])
  );
  X_XOR2   \Msub_w_error_xor<5>  (
    .I0(Msub_w_error_cy[4]),
    .I1(Msub_w_error_lut[5]),
    .O(w_error[5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<6>  (
    .ADR0(\w_setpoint[6] ),
    .ADR1(w_velocity[6]),
    .O(Msub_w_error_lut[6])
  );
  X_MUX2   \Msub_w_error_cy<6>  (
    .IB(Msub_w_error_cy[5]),
    .IA(\w_setpoint[6] ),
    .SEL(Msub_w_error_lut[6]),
    .O(Msub_w_error_cy[6])
  );
  X_XOR2   \Msub_w_error_xor<6>  (
    .I0(Msub_w_error_cy[5]),
    .I1(Msub_w_error_lut[6]),
    .O(w_error[6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_w_error_lut<7>  (
    .ADR0(\w_setpoint[7] ),
    .ADR1(w_velocity[7]),
    .O(Msub_w_error_lut[7])
  );
  X_MUX2   \Msub_w_error_cy<7>  (
    .IB(Msub_w_error_cy[6]),
    .IA(\w_setpoint[7] ),
    .SEL(Msub_w_error_lut[7]),
    .O(Msub_w_error_cy[7])
  );
  X_XOR2   \Msub_w_error_xor<7>  (
    .I0(Msub_w_error_cy[6]),
    .I1(Msub_w_error_lut[7]),
    .O(w_error[7])
  );
  X_MUX2   \Msub_w_error_cy<8>  (
    .IB(Msub_w_error_cy[7]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[8]),
    .O(Msub_w_error_cy[8])
  );
  X_XOR2   \Msub_w_error_xor<8>  (
    .I0(Msub_w_error_cy[7]),
    .I1(Msub_w_error_lut[8]),
    .O(w_error[8])
  );
  X_MUX2   \Msub_w_error_cy<9>  (
    .IB(Msub_w_error_cy[8]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[9]),
    .O(Msub_w_error_cy[9])
  );
  X_XOR2   \Msub_w_error_xor<9>  (
    .I0(Msub_w_error_cy[8]),
    .I1(Msub_w_error_lut[9]),
    .O(w_error[9])
  );
  X_MUX2   \Msub_w_error_cy<10>  (
    .IB(Msub_w_error_cy[9]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[10]),
    .O(Msub_w_error_cy[10])
  );
  X_XOR2   \Msub_w_error_xor<10>  (
    .I0(Msub_w_error_cy[9]),
    .I1(Msub_w_error_lut[10]),
    .O(w_error[10])
  );
  X_MUX2   \Msub_w_error_cy<11>  (
    .IB(Msub_w_error_cy[10]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[11]),
    .O(Msub_w_error_cy[11])
  );
  X_XOR2   \Msub_w_error_xor<11>  (
    .I0(Msub_w_error_cy[10]),
    .I1(Msub_w_error_lut[11]),
    .O(w_error[11])
  );
  X_MUX2   \Msub_w_error_cy<12>  (
    .IB(Msub_w_error_cy[11]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[12]),
    .O(Msub_w_error_cy[12])
  );
  X_XOR2   \Msub_w_error_xor<12>  (
    .I0(Msub_w_error_cy[11]),
    .I1(Msub_w_error_lut[12]),
    .O(w_error[12])
  );
  X_MUX2   \Msub_w_error_cy<13>  (
    .IB(Msub_w_error_cy[12]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[13]),
    .O(Msub_w_error_cy[13])
  );
  X_XOR2   \Msub_w_error_xor<13>  (
    .I0(Msub_w_error_cy[12]),
    .I1(Msub_w_error_lut[13]),
    .O(w_error[13])
  );
  X_MUX2   \Msub_w_error_cy<14>  (
    .IB(Msub_w_error_cy[13]),
    .IA(LED_5_OBUF_27),
    .SEL(Msub_w_error_lut[14]),
    .O(Msub_w_error_cy[14])
  );
  X_XOR2   \Msub_w_error_xor<14>  (
    .I0(Msub_w_error_cy[13]),
    .I1(Msub_w_error_lut[14]),
    .O(w_error[14])
  );
  X_XOR2   \Msub_w_error_xor<15>  (
    .I0(Msub_w_error_cy[14]),
    .I1(Msub_w_error_lut[15]),
    .O(w_error[15])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<0>  (
    .IB(N1),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_108 ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[0])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<1>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0000_cy[0]),
    .IA(N1),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_lut[1] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[1])
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<2>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0000_cy[1]),
    .IA(LED_5_OBUF_27),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_111 ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[2])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<3>  (
    .ADR0(w_velocity[4]),
    .ADR1(w_velocity[5]),
    .ADR2(w_velocity[6]),
    .ADR3(w_velocity[7]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[3] )
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<3>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0000_cy[2]),
    .IA(N1),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_lut[3] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<4>  (
    .ADR0(w_velocity[8]),
    .ADR1(w_velocity[9]),
    .ADR2(w_velocity[10]),
    .ADR3(w_velocity[11]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[4] )
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<4>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0000_cy[3]),
    .IA(N1),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_lut[4] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[4])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_r_controllerPin_cmp_lt0000_lut<5>  (
    .ADR0(w_velocity[12]),
    .ADR1(w_velocity[13]),
    .ADR2(w_velocity[14]),
    .ADR3(w_velocity[15]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[5] )
  );
  X_MUX2   \Mcompar_r_controllerPin_cmp_lt0000_cy<5>  (
    .IB(Mcompar_r_controllerPin_cmp_lt0000_cy[4]),
    .IA(N1),
    .SEL(\Mcompar_r_controllerPin_cmp_lt0000_lut[5] ),
    .O(Mcompar_r_controllerPin_cmp_lt0000_cy[5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<0>  (
    .ADR0(\pwmGenerator/rampa [0]),
    .ADR1(\pidController/un [0]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [0])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<0>  (
    .IB(N1),
    .IA(\pwmGenerator/rampa [0]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [0]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<1>  (
    .ADR0(\pwmGenerator/rampa [1]),
    .ADR1(\pidController/un [1]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [1])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<1>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [0]),
    .IA(\pwmGenerator/rampa [1]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [1]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<2>  (
    .ADR0(\pwmGenerator/rampa [2]),
    .ADR1(\pidController/un [2]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [2])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<2>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [1]),
    .IA(\pwmGenerator/rampa [2]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [2]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<3>  (
    .ADR0(\pwmGenerator/rampa [3]),
    .ADR1(\pidController/un [3]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [3])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<3>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [2]),
    .IA(\pwmGenerator/rampa [3]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [3]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<4>  (
    .ADR0(\pwmGenerator/rampa [4]),
    .ADR1(\pidController/un [4]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [4])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<4>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [3]),
    .IA(\pwmGenerator/rampa [4]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [4]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<5>  (
    .ADR0(\pwmGenerator/rampa [5]),
    .ADR1(\pidController/un [5]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [5])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<5>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [4]),
    .IA(\pwmGenerator/rampa [5]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [5]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<6>  (
    .ADR0(\pwmGenerator/rampa [6]),
    .ADR1(\pidController/un [6]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [6])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<6>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [5]),
    .IA(\pwmGenerator/rampa [6]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [6]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<7>  (
    .ADR0(\pwmGenerator/rampa [7]),
    .ADR1(\pidController/un [7]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [7])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<7>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [6]),
    .IA(\pwmGenerator/rampa [7]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [7]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [7])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<8>  (
    .ADR0(\pwmGenerator/rampa [8]),
    .ADR1(\pidController/un [8]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [8])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<8>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [7]),
    .IA(\pwmGenerator/rampa [8]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [8]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [8])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<9>  (
    .ADR0(\pwmGenerator/rampa [9]),
    .ADR1(\pidController/un [9]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [9])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<9>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [8]),
    .IA(\pwmGenerator/rampa [9]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [9]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [9])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<10>  (
    .ADR0(\pwmGenerator/rampa [10]),
    .ADR1(\pidController/un [10]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [10])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<10>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [9]),
    .IA(\pwmGenerator/rampa [10]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [10]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [10])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<11>  (
    .ADR0(\pwmGenerator/rampa [11]),
    .ADR1(\pidController/un [11]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [11])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<11>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [10]),
    .IA(\pwmGenerator/rampa [11]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [11]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [11])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<12>  (
    .ADR0(\pwmGenerator/rampa [12]),
    .ADR1(\pidController/un [12]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [12])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<12>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [11]),
    .IA(\pwmGenerator/rampa [12]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [12]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [12])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<13>  (
    .ADR0(\pwmGenerator/rampa [13]),
    .ADR1(\pidController/un [13]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [13])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<13>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [12]),
    .IA(\pwmGenerator/rampa [13]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [13]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [13])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<14>  (
    .ADR0(\pwmGenerator/rampa [14]),
    .ADR1(\pidController/un [14]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [14])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<14>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [13]),
    .IA(\pwmGenerator/rampa [14]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [14]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [14])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut<15>  (
    .ADR0(\pwmGenerator/rampa [15]),
    .ADR1(\pidController/un [15]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [15])
  );
  X_MUX2   \pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy<15>  (
    .IB(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [14]),
    .IA(\pwmGenerator/rampa [15]),
    .SEL(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_lut [15]),
    .O(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [15])
  );
  X_LATCHE #(
    .INIT ( 1'b1 ))
  r_ki_0 (
    .RST(r_ki_0__and0000),
    .I(r_ki_mux0000[0]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_0__and0001),
    .O(r_ki[0]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_1 (
    .RST(r_ki_1__and0000),
    .I(r_ki_mux0000[1]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_1__and0001),
    .O(r_ki[1]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_2 (
    .RST(r_ki_2__and0000),
    .I(r_ki_mux0000[2]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_2__and0001),
    .O(r_ki[2]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_3 (
    .RST(r_ki_3__and0000),
    .I(r_ki_mux0000[3]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_3__and0001),
    .O(r_ki[3]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_4 (
    .RST(r_ki_4__and0000),
    .I(r_ki_mux0000[4]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_4__and0001),
    .O(r_ki[4]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_5 (
    .RST(r_ki_5__and0000),
    .I(r_ki_mux0000[5]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_5__and0001),
    .O(r_ki[5]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_6 (
    .RST(r_ki_6__and0000),
    .I(r_ki_mux0000[6]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_6__and0001),
    .O(r_ki[6]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_7 (
    .RST(r_ki_7__and0000),
    .I(r_ki_mux0000[7]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_7__and0001),
    .O(r_ki[7]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_8 (
    .RST(r_ki_8__and0000),
    .I(r_ki_mux0000[8]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_8__and0001),
    .O(r_ki[8]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_9 (
    .RST(r_ki_9__and0000),
    .I(r_ki_mux0000[9]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_9__and0001),
    .O(r_ki[9]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_10 (
    .RST(r_ki_10__and0000),
    .I(r_ki_mux0000[10]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_10__and0001),
    .O(r_ki[10]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_11 (
    .RST(r_ki_11__and0000),
    .I(r_ki_mux0000[11]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_11__and0001),
    .O(r_ki[11]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_12 (
    .RST(r_ki_12__and0000),
    .I(r_ki_mux0000[12]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_12__and0001),
    .O(r_ki[12]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_13 (
    .RST(r_ki_13__and0000),
    .I(r_ki_mux0000[13]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_13__and0001),
    .O(r_ki[13]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_14 (
    .RST(r_ki_14__and0000),
    .I(r_ki_mux0000[14]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_14__and0001),
    .O(r_ki[14]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_ki_15 (
    .RST(r_ki_15__and0000),
    .I(r_ki_mux0000[15]),
    .CLK(\debouncer4/DB_out_895 ),
    .SET(r_ki_15__and0001),
    .O(r_ki[15]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b1 ))
  r_kp_0 (
    .RST(r_kp_0__and0000),
    .I(r_kp_mux0000[0]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_0__and0001),
    .O(r_kp[0]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_1 (
    .RST(r_kp_1__and0000),
    .I(r_kp_mux0000[1]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_1__and0001),
    .O(r_kp[1]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b1 ))
  r_kp_2 (
    .RST(r_kp_2__and0000),
    .I(r_kp_mux0000[2]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_2__and0001),
    .O(r_kp[2]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_3 (
    .RST(r_kp_3__and0000),
    .I(r_kp_mux0000[3]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_3__and0001),
    .O(r_kp[3]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_4 (
    .RST(r_kp_4__and0000),
    .I(r_kp_mux0000[4]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_4__and0001),
    .O(r_kp[4]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_5 (
    .RST(r_kp_5__and0000),
    .I(r_kp_mux0000[5]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_5__and0001),
    .O(r_kp[5]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_6 (
    .RST(r_kp_6__and0000),
    .I(r_kp_mux0000[6]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_6__and0001),
    .O(r_kp[6]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_7 (
    .RST(r_kp_7__and0000),
    .I(r_kp_mux0000[7]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_7__and0001),
    .O(r_kp[7]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_8 (
    .RST(r_kp_8__and0000),
    .I(r_kp_mux0000[8]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_8__and0001),
    .O(r_kp[8]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_9 (
    .RST(r_kp_9__and0000),
    .I(r_kp_mux0000[9]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_9__and0001),
    .O(r_kp[9]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_10 (
    .RST(r_kp_10__and0000),
    .I(r_kp_mux0000[10]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_10__and0001),
    .O(r_kp[10]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_11 (
    .RST(r_kp_11__and0000),
    .I(r_kp_mux0000[11]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_11__and0001),
    .O(r_kp[11]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_12 (
    .RST(r_kp_12__and0000),
    .I(r_kp_mux0000[12]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_12__and0001),
    .O(r_kp[12]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_13 (
    .RST(r_kp_13__and0000),
    .I(r_kp_mux0000[13]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_13__and0001),
    .O(r_kp[13]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_14 (
    .RST(r_kp_14__and0000),
    .I(r_kp_mux0000[14]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_14__and0001),
    .O(r_kp[14]),
    .GE(VCC)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  r_kp_15 (
    .RST(r_kp_15__and0000),
    .I(r_kp_mux0000[15]),
    .CLK(\debouncer2/DB_out_855 ),
    .SET(r_kp_15__and0001),
    .O(r_kp[15]),
    .GE(VCC)
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<15>  (
    .I0(\decoder/Madd_o_velocity_cy [14]),
    .I1(\decoder/o_velocity_addsub0001 [15]),
    .O(w_velocity[15])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<14>  (
    .I0(\decoder/Madd_o_velocity_cy [13]),
    .I1(\decoder/Madd_o_velocity_cy<14>_rt_1026 ),
    .O(w_velocity[14])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<14>  (
    .IB(\decoder/Madd_o_velocity_cy [13]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Madd_o_velocity_cy<14>_rt_1026 ),
    .O(\decoder/Madd_o_velocity_cy [14])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<13>  (
    .I0(\decoder/Madd_o_velocity_cy [12]),
    .I1(\decoder/Madd_o_velocity_cy<13>_rt_1024 ),
    .O(w_velocity[13])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<13>  (
    .IB(\decoder/Madd_o_velocity_cy [12]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Madd_o_velocity_cy<13>_rt_1024 ),
    .O(\decoder/Madd_o_velocity_cy [13])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<12>  (
    .I0(\decoder/Madd_o_velocity_cy [11]),
    .I1(\decoder/Madd_o_velocity_lut [12]),
    .O(w_velocity[12])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<12>  (
    .IB(\decoder/Madd_o_velocity_cy [11]),
    .IA(\decoder/o_velocity_addsub0001 [12]),
    .SEL(\decoder/Madd_o_velocity_lut [12]),
    .O(\decoder/Madd_o_velocity_cy [12])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<12>  (
    .ADR0(\decoder/o_velocity_addsub0001 [12]),
    .ADR1(\decoder/w_diff [15]),
    .O(\decoder/Madd_o_velocity_lut [12])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<11>  (
    .I0(\decoder/Madd_o_velocity_cy [10]),
    .I1(\decoder/Madd_o_velocity_lut [11]),
    .O(w_velocity[11])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<11>  (
    .IB(\decoder/Madd_o_velocity_cy [10]),
    .IA(\decoder/o_velocity_addsub0001 [11]),
    .SEL(\decoder/Madd_o_velocity_lut [11]),
    .O(\decoder/Madd_o_velocity_cy [11])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<11>  (
    .ADR0(\decoder/o_velocity_addsub0001 [11]),
    .ADR1(\decoder/w_diff [14]),
    .O(\decoder/Madd_o_velocity_lut [11])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<10>  (
    .I0(\decoder/Madd_o_velocity_cy [9]),
    .I1(\decoder/Madd_o_velocity_lut [10]),
    .O(w_velocity[10])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<10>  (
    .IB(\decoder/Madd_o_velocity_cy [9]),
    .IA(\decoder/o_velocity_addsub0001 [10]),
    .SEL(\decoder/Madd_o_velocity_lut [10]),
    .O(\decoder/Madd_o_velocity_cy [10])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<10>  (
    .ADR0(\decoder/o_velocity_addsub0001 [10]),
    .ADR1(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_lut [10])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<9>  (
    .I0(\decoder/Madd_o_velocity_cy [8]),
    .I1(\decoder/Madd_o_velocity_lut [9]),
    .O(w_velocity[9])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<9>  (
    .IB(\decoder/Madd_o_velocity_cy [8]),
    .IA(\decoder/o_velocity_addsub0001 [9]),
    .SEL(\decoder/Madd_o_velocity_lut [9]),
    .O(\decoder/Madd_o_velocity_cy [9])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<9>  (
    .ADR0(\decoder/o_velocity_addsub0001 [9]),
    .ADR1(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_lut [9])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<8>  (
    .I0(\decoder/Madd_o_velocity_cy [7]),
    .I1(\decoder/Madd_o_velocity_lut [8]),
    .O(w_velocity[8])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<8>  (
    .IB(\decoder/Madd_o_velocity_cy [7]),
    .IA(\decoder/o_velocity_addsub0001 [8]),
    .SEL(\decoder/Madd_o_velocity_lut [8]),
    .O(\decoder/Madd_o_velocity_cy [8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<8>  (
    .ADR0(\decoder/o_velocity_addsub0001 [8]),
    .ADR1(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_lut [8])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<7>  (
    .I0(\decoder/Madd_o_velocity_cy [6]),
    .I1(\decoder/Madd_o_velocity_lut [7]),
    .O(w_velocity[7])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<7>  (
    .IB(\decoder/Madd_o_velocity_cy [6]),
    .IA(\decoder/o_velocity_addsub0001 [7]),
    .SEL(\decoder/Madd_o_velocity_lut [7]),
    .O(\decoder/Madd_o_velocity_cy [7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<7>  (
    .ADR0(\decoder/o_velocity_addsub0001 [7]),
    .ADR1(\decoder/w_diff [10]),
    .O(\decoder/Madd_o_velocity_lut [7])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<6>  (
    .I0(\decoder/Madd_o_velocity_cy [5]),
    .I1(\decoder/Madd_o_velocity_lut [6]),
    .O(w_velocity[6])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<6>  (
    .IB(\decoder/Madd_o_velocity_cy [5]),
    .IA(\decoder/o_velocity_addsub0001 [6]),
    .SEL(\decoder/Madd_o_velocity_lut [6]),
    .O(\decoder/Madd_o_velocity_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<6>  (
    .ADR0(\decoder/o_velocity_addsub0001 [6]),
    .ADR1(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_lut [6])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<5>  (
    .I0(\decoder/Madd_o_velocity_cy [4]),
    .I1(\decoder/Madd_o_velocity_lut [5]),
    .O(w_velocity[5])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<5>  (
    .IB(\decoder/Madd_o_velocity_cy [4]),
    .IA(\decoder/o_velocity_addsub0001 [5]),
    .SEL(\decoder/Madd_o_velocity_lut [5]),
    .O(\decoder/Madd_o_velocity_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<5>  (
    .ADR0(\decoder/o_velocity_addsub0001 [5]),
    .ADR1(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_lut [5])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<4>  (
    .I0(\decoder/Madd_o_velocity_cy [3]),
    .I1(\decoder/Madd_o_velocity_lut [4]),
    .O(w_velocity[4])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<4>  (
    .IB(\decoder/Madd_o_velocity_cy [3]),
    .IA(\decoder/o_velocity_addsub0001 [4]),
    .SEL(\decoder/Madd_o_velocity_lut [4]),
    .O(\decoder/Madd_o_velocity_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<4>  (
    .ADR0(\decoder/o_velocity_addsub0001 [4]),
    .ADR1(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_lut [4])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<3>  (
    .I0(\decoder/Madd_o_velocity_cy [2]),
    .I1(\decoder/Madd_o_velocity_lut [3]),
    .O(w_velocity[3])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<3>  (
    .IB(\decoder/Madd_o_velocity_cy [2]),
    .IA(\decoder/o_velocity_addsub0001 [3]),
    .SEL(\decoder/Madd_o_velocity_lut [3]),
    .O(\decoder/Madd_o_velocity_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<3>  (
    .ADR0(\decoder/o_velocity_addsub0001 [3]),
    .ADR1(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_lut [3])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<2>  (
    .I0(\decoder/Madd_o_velocity_cy [1]),
    .I1(\decoder/Madd_o_velocity_lut [2]),
    .O(w_velocity[2])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<2>  (
    .IB(\decoder/Madd_o_velocity_cy [1]),
    .IA(\decoder/o_velocity_addsub0001 [2]),
    .SEL(\decoder/Madd_o_velocity_lut [2]),
    .O(\decoder/Madd_o_velocity_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<2>  (
    .ADR0(\decoder/o_velocity_addsub0001 [2]),
    .ADR1(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_lut [2])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<1>  (
    .I0(\decoder/Madd_o_velocity_cy [0]),
    .I1(\decoder/Madd_o_velocity_lut [1]),
    .O(w_velocity[1])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<1>  (
    .IB(\decoder/Madd_o_velocity_cy [0]),
    .IA(\decoder/o_velocity_addsub0001 [1]),
    .SEL(\decoder/Madd_o_velocity_lut [1]),
    .O(\decoder/Madd_o_velocity_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<1>  (
    .ADR0(\decoder/o_velocity_addsub0001 [1]),
    .ADR1(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_lut [1])
  );
  X_XOR2   \decoder/Madd_o_velocity_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\decoder/Madd_o_velocity_lut [0]),
    .O(w_velocity[0])
  );
  X_MUX2   \decoder/Madd_o_velocity_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(\decoder/o_velocity_addsub0001 [0]),
    .SEL(\decoder/Madd_o_velocity_lut [0]),
    .O(\decoder/Madd_o_velocity_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_lut<0>  (
    .ADR0(\decoder/o_velocity_addsub0001 [0]),
    .ADR1(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_lut [0])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<15>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [14]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[15] ),
    .O(\decoder/o_velocity_addsub0001 [15])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<14>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] ),
    .O(\decoder/o_velocity_addsub0001 [14])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<14>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13]),
    .IA(\decoder/Madd_o_velocity_addsub0001C12 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [14])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<13>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] ),
    .O(\decoder/o_velocity_addsub0001 [13])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<13>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12]),
    .IA(\decoder/Madd_o_velocity_addsub0001C11_978 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [13])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<12>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] ),
    .O(\decoder/o_velocity_addsub0001 [12])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<12>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11]),
    .IA(\decoder/Madd_o_velocity_addsub0001C10 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [12])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<11>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] ),
    .O(\decoder/o_velocity_addsub0001 [11])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<11>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10]),
    .IA(\decoder/Madd_o_velocity_addsub0001C9 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [11])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<10>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] ),
    .O(\decoder/o_velocity_addsub0001 [10])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<10>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9]),
    .IA(\decoder/Madd_o_velocity_addsub0001C8 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [10])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<9>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] ),
    .O(\decoder/o_velocity_addsub0001 [9])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<9>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8]),
    .IA(\decoder/Madd_o_velocity_addsub0001C7 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [9])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<8>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] ),
    .O(\decoder/o_velocity_addsub0001 [8])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<8>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7]),
    .IA(\decoder/Madd_o_velocity_addsub0001C6 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [8])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<7>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] ),
    .O(\decoder/o_velocity_addsub0001 [7])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<7>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6]),
    .IA(\decoder/Madd_o_velocity_addsub0001C5 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [7])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<6>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] ),
    .O(\decoder/o_velocity_addsub0001 [6])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<6>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5]),
    .IA(\decoder/Madd_o_velocity_addsub0001C4 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [6])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<5>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] ),
    .O(\decoder/o_velocity_addsub0001 [5])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<5>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4]),
    .IA(\decoder/Madd_o_velocity_addsub0001C3 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [5])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<4>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] ),
    .O(\decoder/o_velocity_addsub0001 [4])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<4>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3]),
    .IA(\decoder/Madd_o_velocity_addsub0001C2 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [4])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<3>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] ),
    .O(\decoder/o_velocity_addsub0001 [3])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<3>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2]),
    .IA(\decoder/Madd_o_velocity_addsub0001C1_976 ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [3])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<2>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1]),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] ),
    .O(\decoder/o_velocity_addsub0001 [2])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<2>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1]),
    .IA(\decoder/Madd_o_velocity_addsub0001C ),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [2])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<1>  (
    .I0(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0]),
    .I1(\decoder/Madd_o_velocity_addsub0001R ),
    .O(\decoder/o_velocity_addsub0001 [1])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<1>  (
    .IB(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Madd_o_velocity_addsub0001R ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [1])
  );
  X_XOR2   \decoder/Madd_o_velocity_addsub0001_Madd_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] ),
    .O(\decoder/o_velocity_addsub0001 [0])
  );
  X_MUX2   \decoder/Madd_o_velocity_addsub0001_Madd_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(\decoder/w_diff [1]),
    .SEL(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] ),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<0>  (
    .ADR0(\decoder/w_diff [1]),
    .ADR1(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[0] )
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<16>  (
    .I0(\decoder/Mcount_r_Counter_cy [15]),
    .I1(\decoder/Mcount_r_Counter_xor<16>_rt_1143 ),
    .O(\decoder/Result [16])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<15>  (
    .I0(\decoder/Mcount_r_Counter_cy [14]),
    .I1(\decoder/Mcount_r_Counter_cy<15>_rt_1123 ),
    .O(\decoder/Result [15])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<15>  (
    .IB(\decoder/Mcount_r_Counter_cy [14]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<15>_rt_1123 ),
    .O(\decoder/Mcount_r_Counter_cy [15])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<14>  (
    .I0(\decoder/Mcount_r_Counter_cy [13]),
    .I1(\decoder/Mcount_r_Counter_cy<14>_rt_1121 ),
    .O(\decoder/Result [14])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<14>  (
    .IB(\decoder/Mcount_r_Counter_cy [13]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<14>_rt_1121 ),
    .O(\decoder/Mcount_r_Counter_cy [14])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<13>  (
    .I0(\decoder/Mcount_r_Counter_cy [12]),
    .I1(\decoder/Mcount_r_Counter_cy<13>_rt_1119 ),
    .O(\decoder/Result [13])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<13>  (
    .IB(\decoder/Mcount_r_Counter_cy [12]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<13>_rt_1119 ),
    .O(\decoder/Mcount_r_Counter_cy [13])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<12>  (
    .I0(\decoder/Mcount_r_Counter_cy [11]),
    .I1(\decoder/Mcount_r_Counter_cy<12>_rt_1117 ),
    .O(\decoder/Result [12])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<12>  (
    .IB(\decoder/Mcount_r_Counter_cy [11]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<12>_rt_1117 ),
    .O(\decoder/Mcount_r_Counter_cy [12])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<11>  (
    .I0(\decoder/Mcount_r_Counter_cy [10]),
    .I1(\decoder/Mcount_r_Counter_cy<11>_rt_1115 ),
    .O(\decoder/Result [11])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<11>  (
    .IB(\decoder/Mcount_r_Counter_cy [10]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<11>_rt_1115 ),
    .O(\decoder/Mcount_r_Counter_cy [11])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<10>  (
    .I0(\decoder/Mcount_r_Counter_cy [9]),
    .I1(\decoder/Mcount_r_Counter_cy<10>_rt_1113 ),
    .O(\decoder/Result [10])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<10>  (
    .IB(\decoder/Mcount_r_Counter_cy [9]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<10>_rt_1113 ),
    .O(\decoder/Mcount_r_Counter_cy [10])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<9>  (
    .I0(\decoder/Mcount_r_Counter_cy [8]),
    .I1(\decoder/Mcount_r_Counter_cy<9>_rt_1141 ),
    .O(\decoder/Result [9])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<9>  (
    .IB(\decoder/Mcount_r_Counter_cy [8]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<9>_rt_1141 ),
    .O(\decoder/Mcount_r_Counter_cy [9])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<8>  (
    .I0(\decoder/Mcount_r_Counter_cy [7]),
    .I1(\decoder/Mcount_r_Counter_cy<8>_rt_1139 ),
    .O(\decoder/Result [8])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<8>  (
    .IB(\decoder/Mcount_r_Counter_cy [7]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<8>_rt_1139 ),
    .O(\decoder/Mcount_r_Counter_cy [8])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<7>  (
    .I0(\decoder/Mcount_r_Counter_cy [6]),
    .I1(\decoder/Mcount_r_Counter_cy<7>_rt_1137 ),
    .O(\decoder/Result [7])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<7>  (
    .IB(\decoder/Mcount_r_Counter_cy [6]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<7>_rt_1137 ),
    .O(\decoder/Mcount_r_Counter_cy [7])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<6>  (
    .I0(\decoder/Mcount_r_Counter_cy [5]),
    .I1(\decoder/Mcount_r_Counter_cy<6>_rt_1135 ),
    .O(\decoder/Result [6])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<6>  (
    .IB(\decoder/Mcount_r_Counter_cy [5]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<6>_rt_1135 ),
    .O(\decoder/Mcount_r_Counter_cy [6])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<5>  (
    .I0(\decoder/Mcount_r_Counter_cy [4]),
    .I1(\decoder/Mcount_r_Counter_cy<5>_rt_1133 ),
    .O(\decoder/Result [5])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<5>  (
    .IB(\decoder/Mcount_r_Counter_cy [4]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<5>_rt_1133 ),
    .O(\decoder/Mcount_r_Counter_cy [5])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<4>  (
    .I0(\decoder/Mcount_r_Counter_cy [3]),
    .I1(\decoder/Mcount_r_Counter_cy<4>_rt_1131 ),
    .O(\decoder/Result [4])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<4>  (
    .IB(\decoder/Mcount_r_Counter_cy [3]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<4>_rt_1131 ),
    .O(\decoder/Mcount_r_Counter_cy [4])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<3>  (
    .I0(\decoder/Mcount_r_Counter_cy [2]),
    .I1(\decoder/Mcount_r_Counter_cy<3>_rt_1129 ),
    .O(\decoder/Result [3])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<3>  (
    .IB(\decoder/Mcount_r_Counter_cy [2]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<3>_rt_1129 ),
    .O(\decoder/Mcount_r_Counter_cy [3])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<2>  (
    .I0(\decoder/Mcount_r_Counter_cy [1]),
    .I1(\decoder/Mcount_r_Counter_cy<2>_rt_1127 ),
    .O(\decoder/Result [2])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<2>  (
    .IB(\decoder/Mcount_r_Counter_cy [1]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<2>_rt_1127 ),
    .O(\decoder/Mcount_r_Counter_cy [2])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<1>  (
    .I0(\decoder/Mcount_r_Counter_cy [0]),
    .I1(\decoder/Mcount_r_Counter_cy<1>_rt_1125 ),
    .O(\decoder/Result [1])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<1>  (
    .IB(\decoder/Mcount_r_Counter_cy [0]),
    .IA(LED_5_OBUF_27),
    .SEL(\decoder/Mcount_r_Counter_cy<1>_rt_1125 ),
    .O(\decoder/Mcount_r_Counter_cy [1])
  );
  X_XOR2   \decoder/Mcount_r_Counter_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\decoder/Mcount_r_Counter_lut [0]),
    .O(\decoder/Result [0])
  );
  X_MUX2   \decoder/Mcount_r_Counter_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(N1),
    .SEL(\decoder/Mcount_r_Counter_lut [0]),
    .O(\decoder/Mcount_r_Counter_cy [0])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<15>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [14]),
    .IA(\decoder/r_count [15]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [15]),
    .O(\decoder/w_diff_cmp_ge0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<15>  (
    .ADR0(\decoder/r_count [15]),
    .ADR1(\decoder/r_countPrev [15]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [15])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<14>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [13]),
    .IA(\decoder/r_count [14]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [14]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [14])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<14>  (
    .ADR0(\decoder/r_count [14]),
    .ADR1(\decoder/r_countPrev [14]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [14])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<13>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [12]),
    .IA(\decoder/r_count [13]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [13]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [13])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<13>  (
    .ADR0(\decoder/r_count [13]),
    .ADR1(\decoder/r_countPrev [13]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [13])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<12>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [11]),
    .IA(\decoder/r_count [12]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [12]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [12])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<12>  (
    .ADR0(\decoder/r_count [12]),
    .ADR1(\decoder/r_countPrev [12]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [12])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<11>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [10]),
    .IA(\decoder/r_count [11]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [11]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [11])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<11>  (
    .ADR0(\decoder/r_count [11]),
    .ADR1(\decoder/r_countPrev [11]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [11])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<10>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [9]),
    .IA(\decoder/r_count [10]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [10]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [10])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<10>  (
    .ADR0(\decoder/r_count [10]),
    .ADR1(\decoder/r_countPrev [10]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [10])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<9>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [8]),
    .IA(\decoder/r_count [9]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [9]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [9])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<9>  (
    .ADR0(\decoder/r_count [9]),
    .ADR1(\decoder/r_countPrev [9]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [9])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<8>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [7]),
    .IA(\decoder/r_count [8]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [8]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [8])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<8>  (
    .ADR0(\decoder/r_count [8]),
    .ADR1(\decoder/r_countPrev [8]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [8])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<7>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [6]),
    .IA(\decoder/r_count [7]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [7]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [7])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<7>  (
    .ADR0(\decoder/r_count [7]),
    .ADR1(\decoder/r_countPrev [7]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [7])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<6>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [5]),
    .IA(\decoder/r_count [6]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [6]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<6>  (
    .ADR0(\decoder/r_count [6]),
    .ADR1(\decoder/r_countPrev [6]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [6])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<5>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [4]),
    .IA(\decoder/r_count [5]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [5]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<5>  (
    .ADR0(\decoder/r_count [5]),
    .ADR1(\decoder/r_countPrev [5]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [5])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<4>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [3]),
    .IA(\decoder/r_count [4]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [4]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<4>  (
    .ADR0(\decoder/r_count [4]),
    .ADR1(\decoder/r_countPrev [4]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [4])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<3>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [2]),
    .IA(\decoder/r_count [3]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [3]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<3>  (
    .ADR0(\decoder/r_count [3]),
    .ADR1(\decoder/r_countPrev [3]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [3])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<2>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [1]),
    .IA(\decoder/r_count [2]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [2]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<2>  (
    .ADR0(\decoder/r_count [2]),
    .ADR1(\decoder/r_countPrev [2]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [2])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<1>  (
    .IB(\decoder/Mcompar_w_diff_cmp_ge0000_cy [0]),
    .IA(\decoder/r_count [1]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [1]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<1>  (
    .ADR0(\decoder/r_count [1]),
    .ADR1(\decoder/r_countPrev [1]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [1])
  );
  X_MUX2   \decoder/Mcompar_w_diff_cmp_ge0000_cy<0>  (
    .IB(N1),
    .IA(\decoder/r_count [0]),
    .SEL(\decoder/Mcompar_w_diff_cmp_ge0000_lut [0]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Mcompar_w_diff_cmp_ge0000_lut<0>  (
    .ADR0(\decoder/r_count [0]),
    .ADR1(\decoder/r_countPrev [0]),
    .O(\decoder/Mcompar_w_diff_cmp_ge0000_lut [0])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<15>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [14]),
    .I1(\decoder/Maddsub_count_mux0000_lut [15]),
    .O(\decoder/count_mux0000 [15])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<14>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [13]),
    .I1(\decoder/Maddsub_count_mux0000_lut [14]),
    .O(\decoder/count_mux0000 [14])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<14>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [13]),
    .IA(\decoder/count [14]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [14]),
    .O(\decoder/Maddsub_count_mux0000_cy [14])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<13>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [12]),
    .I1(\decoder/Maddsub_count_mux0000_lut [13]),
    .O(\decoder/count_mux0000 [13])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<13>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [12]),
    .IA(\decoder/count [13]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [13]),
    .O(\decoder/Maddsub_count_mux0000_cy [13])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<12>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [11]),
    .I1(\decoder/Maddsub_count_mux0000_lut [12]),
    .O(\decoder/count_mux0000 [12])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<12>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [11]),
    .IA(\decoder/count [12]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [12]),
    .O(\decoder/Maddsub_count_mux0000_cy [12])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<11>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [10]),
    .I1(\decoder/Maddsub_count_mux0000_lut [11]),
    .O(\decoder/count_mux0000 [11])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<11>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [10]),
    .IA(\decoder/count [11]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [11]),
    .O(\decoder/Maddsub_count_mux0000_cy [11])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<10>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [9]),
    .I1(\decoder/Maddsub_count_mux0000_lut [10]),
    .O(\decoder/count_mux0000 [10])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<10>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [9]),
    .IA(\decoder/count [10]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [10]),
    .O(\decoder/Maddsub_count_mux0000_cy [10])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<9>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [8]),
    .I1(\decoder/Maddsub_count_mux0000_lut [9]),
    .O(\decoder/count_mux0000 [9])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<9>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [8]),
    .IA(\decoder/count [9]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [9]),
    .O(\decoder/Maddsub_count_mux0000_cy [9])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<8>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [7]),
    .I1(\decoder/Maddsub_count_mux0000_lut [8]),
    .O(\decoder/count_mux0000 [8])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<8>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [7]),
    .IA(\decoder/count [8]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [8]),
    .O(\decoder/Maddsub_count_mux0000_cy [8])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<7>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [6]),
    .I1(\decoder/Maddsub_count_mux0000_lut [7]),
    .O(\decoder/count_mux0000 [7])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<7>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [6]),
    .IA(\decoder/count [7]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [7]),
    .O(\decoder/Maddsub_count_mux0000_cy [7])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<6>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [5]),
    .I1(\decoder/Maddsub_count_mux0000_lut [6]),
    .O(\decoder/count_mux0000 [6])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<6>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [5]),
    .IA(\decoder/count [6]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [6]),
    .O(\decoder/Maddsub_count_mux0000_cy [6])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<5>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [4]),
    .I1(\decoder/Maddsub_count_mux0000_lut [5]),
    .O(\decoder/count_mux0000 [5])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<5>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [4]),
    .IA(\decoder/count [5]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [5]),
    .O(\decoder/Maddsub_count_mux0000_cy [5])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<4>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [3]),
    .I1(\decoder/Maddsub_count_mux0000_lut [4]),
    .O(\decoder/count_mux0000 [4])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<4>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [3]),
    .IA(\decoder/count [4]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [4]),
    .O(\decoder/Maddsub_count_mux0000_cy [4])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<3>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [2]),
    .I1(\decoder/Maddsub_count_mux0000_lut [3]),
    .O(\decoder/count_mux0000 [3])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<3>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [2]),
    .IA(\decoder/count [3]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [3]),
    .O(\decoder/Maddsub_count_mux0000_cy [3])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<2>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [1]),
    .I1(\decoder/Maddsub_count_mux0000_lut [2]),
    .O(\decoder/count_mux0000 [2])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<2>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [1]),
    .IA(\decoder/count [2]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [2]),
    .O(\decoder/Maddsub_count_mux0000_cy [2])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<1>  (
    .I0(\decoder/Maddsub_count_mux0000_cy [0]),
    .I1(\decoder/Maddsub_count_mux0000_lut [1]),
    .O(\decoder/count_mux0000 [1])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<1>  (
    .IB(\decoder/Maddsub_count_mux0000_cy [0]),
    .IA(\decoder/count [1]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [1]),
    .O(\decoder/Maddsub_count_mux0000_cy [1])
  );
  X_XOR2   \decoder/Maddsub_count_mux0000_xor<0>  (
    .I0(\decoder/count_mux0002 ),
    .I1(\decoder/Maddsub_count_mux0000_lut [0]),
    .O(\decoder/count_mux0000 [0])
  );
  X_MUX2   \decoder/Maddsub_count_mux0000_cy<0>  (
    .IB(\decoder/count_mux0002 ),
    .IA(\decoder/count [0]),
    .SEL(\decoder/Maddsub_count_mux0000_lut [0]),
    .O(\decoder/Maddsub_count_mux0000_cy [0])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<15>  (
    .I0(\decoder/Msub_w_diff_cy [14]),
    .I1(\decoder/Msub_w_diff_lut [15]),
    .O(\decoder/w_diff [15])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<14>  (
    .I0(\decoder/Msub_w_diff_cy [13]),
    .I1(\decoder/Msub_w_diff_lut [14]),
    .O(\decoder/w_diff [14])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<14>  (
    .IB(\decoder/Msub_w_diff_cy [13]),
    .IA(\decoder/w_diff_mux0000 [14]),
    .SEL(\decoder/Msub_w_diff_lut [14]),
    .O(\decoder/Msub_w_diff_cy [14])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<13>  (
    .I0(\decoder/Msub_w_diff_cy [12]),
    .I1(\decoder/Msub_w_diff_lut [13]),
    .O(\decoder/w_diff [13])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<13>  (
    .IB(\decoder/Msub_w_diff_cy [12]),
    .IA(\decoder/w_diff_mux0000 [13]),
    .SEL(\decoder/Msub_w_diff_lut [13]),
    .O(\decoder/Msub_w_diff_cy [13])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<12>  (
    .I0(\decoder/Msub_w_diff_cy [11]),
    .I1(\decoder/Msub_w_diff_lut [12]),
    .O(\decoder/w_diff [12])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<12>  (
    .IB(\decoder/Msub_w_diff_cy [11]),
    .IA(\decoder/w_diff_mux0000 [12]),
    .SEL(\decoder/Msub_w_diff_lut [12]),
    .O(\decoder/Msub_w_diff_cy [12])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<11>  (
    .I0(\decoder/Msub_w_diff_cy [10]),
    .I1(\decoder/Msub_w_diff_lut [11]),
    .O(\decoder/w_diff [11])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<11>  (
    .IB(\decoder/Msub_w_diff_cy [10]),
    .IA(\decoder/w_diff_mux0000 [11]),
    .SEL(\decoder/Msub_w_diff_lut [11]),
    .O(\decoder/Msub_w_diff_cy [11])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<10>  (
    .I0(\decoder/Msub_w_diff_cy [9]),
    .I1(\decoder/Msub_w_diff_lut [10]),
    .O(\decoder/w_diff [10])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<10>  (
    .IB(\decoder/Msub_w_diff_cy [9]),
    .IA(\decoder/w_diff_mux0000 [10]),
    .SEL(\decoder/Msub_w_diff_lut [10]),
    .O(\decoder/Msub_w_diff_cy [10])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<9>  (
    .I0(\decoder/Msub_w_diff_cy [8]),
    .I1(\decoder/Msub_w_diff_lut [9]),
    .O(\decoder/w_diff [9])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<9>  (
    .IB(\decoder/Msub_w_diff_cy [8]),
    .IA(\decoder/w_diff_mux0000 [9]),
    .SEL(\decoder/Msub_w_diff_lut [9]),
    .O(\decoder/Msub_w_diff_cy [9])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<8>  (
    .I0(\decoder/Msub_w_diff_cy [7]),
    .I1(\decoder/Msub_w_diff_lut [8]),
    .O(\decoder/w_diff [8])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<8>  (
    .IB(\decoder/Msub_w_diff_cy [7]),
    .IA(\decoder/w_diff_mux0000 [8]),
    .SEL(\decoder/Msub_w_diff_lut [8]),
    .O(\decoder/Msub_w_diff_cy [8])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<7>  (
    .I0(\decoder/Msub_w_diff_cy [6]),
    .I1(\decoder/Msub_w_diff_lut [7]),
    .O(\decoder/w_diff [7])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<7>  (
    .IB(\decoder/Msub_w_diff_cy [6]),
    .IA(\decoder/w_diff_mux0000 [7]),
    .SEL(\decoder/Msub_w_diff_lut [7]),
    .O(\decoder/Msub_w_diff_cy [7])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<6>  (
    .I0(\decoder/Msub_w_diff_cy [5]),
    .I1(\decoder/Msub_w_diff_lut [6]),
    .O(\decoder/w_diff [6])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<6>  (
    .IB(\decoder/Msub_w_diff_cy [5]),
    .IA(\decoder/w_diff_mux0000 [6]),
    .SEL(\decoder/Msub_w_diff_lut [6]),
    .O(\decoder/Msub_w_diff_cy [6])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<5>  (
    .I0(\decoder/Msub_w_diff_cy [4]),
    .I1(\decoder/Msub_w_diff_lut [5]),
    .O(\decoder/w_diff [5])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<5>  (
    .IB(\decoder/Msub_w_diff_cy [4]),
    .IA(\decoder/w_diff_mux0000 [5]),
    .SEL(\decoder/Msub_w_diff_lut [5]),
    .O(\decoder/Msub_w_diff_cy [5])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<4>  (
    .I0(\decoder/Msub_w_diff_cy [3]),
    .I1(\decoder/Msub_w_diff_lut [4]),
    .O(\decoder/w_diff [4])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<4>  (
    .IB(\decoder/Msub_w_diff_cy [3]),
    .IA(\decoder/w_diff_mux0000 [4]),
    .SEL(\decoder/Msub_w_diff_lut [4]),
    .O(\decoder/Msub_w_diff_cy [4])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<3>  (
    .I0(\decoder/Msub_w_diff_cy [2]),
    .I1(\decoder/Msub_w_diff_lut [3]),
    .O(\decoder/w_diff [3])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<3>  (
    .IB(\decoder/Msub_w_diff_cy [2]),
    .IA(\decoder/w_diff_mux0000 [3]),
    .SEL(\decoder/Msub_w_diff_lut [3]),
    .O(\decoder/Msub_w_diff_cy [3])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<2>  (
    .I0(\decoder/Msub_w_diff_cy [1]),
    .I1(\decoder/Msub_w_diff_lut [2]),
    .O(\decoder/w_diff [2])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<2>  (
    .IB(\decoder/Msub_w_diff_cy [1]),
    .IA(\decoder/w_diff_mux0000 [2]),
    .SEL(\decoder/Msub_w_diff_lut [2]),
    .O(\decoder/Msub_w_diff_cy [2])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<1>  (
    .I0(\decoder/Msub_w_diff_cy [0]),
    .I1(\decoder/Msub_w_diff_lut [1]),
    .O(\decoder/w_diff [1])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<1>  (
    .IB(\decoder/Msub_w_diff_cy [0]),
    .IA(\decoder/w_diff_mux0000 [1]),
    .SEL(\decoder/Msub_w_diff_lut [1]),
    .O(\decoder/Msub_w_diff_cy [1])
  );
  X_XOR2   \decoder/Msub_w_diff_xor<0>  (
    .I0(N1),
    .I1(\decoder/Msub_w_diff_lut [0]),
    .O(\decoder/w_diff [0])
  );
  X_MUX2   \decoder/Msub_w_diff_cy<0>  (
    .IB(N1),
    .IA(\decoder/w_diff_mux0000 [0]),
    .SEL(\decoder/Msub_w_diff_lut [0]),
    .O(\decoder/Msub_w_diff_cy [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_16  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [16]),
    .O(\decoder/r_Counter_161 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_15  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [15]),
    .O(\decoder/r_Counter [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_14  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [14]),
    .O(\decoder/r_Counter [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_13  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [13]),
    .O(\decoder/r_Counter [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_12  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [12]),
    .O(\decoder/r_Counter [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_11  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [11]),
    .O(\decoder/r_Counter [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_10  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [10]),
    .O(\decoder/r_Counter [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_9  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [9]),
    .O(\decoder/r_Counter [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_8  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [8]),
    .O(\decoder/r_Counter [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_7  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [7]),
    .O(\decoder/r_Counter [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_6  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [6]),
    .O(\decoder/r_Counter [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_5  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [5]),
    .O(\decoder/r_Counter [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_4  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [4]),
    .O(\decoder/r_Counter [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_3  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [3]),
    .O(\decoder/r_Counter [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_2  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [2]),
    .O(\decoder/r_Counter [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_1  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [1]),
    .O(\decoder/r_Counter [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_Counter_0  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\decoder/Result [0]),
    .O(\decoder/r_Counter [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_15  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [15]),
    .O(\decoder/r_countPrev [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_14  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [14]),
    .O(\decoder/r_countPrev [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_13  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [13]),
    .O(\decoder/r_countPrev [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_12  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [12]),
    .O(\decoder/r_countPrev [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_11  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [11]),
    .O(\decoder/r_countPrev [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_10  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [10]),
    .O(\decoder/r_countPrev [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_9  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [9]),
    .O(\decoder/r_countPrev [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_8  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [8]),
    .O(\decoder/r_countPrev [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_7  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [7]),
    .O(\decoder/r_countPrev [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_6  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [6]),
    .O(\decoder/r_countPrev [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_5  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [5]),
    .O(\decoder/r_countPrev [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_4  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [4]),
    .O(\decoder/r_countPrev [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_3  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [3]),
    .O(\decoder/r_countPrev [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_2  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [2]),
    .O(\decoder/r_countPrev [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_1  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [1]),
    .O(\decoder/r_countPrev [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_countPrev_0  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/r_count [0]),
    .O(\decoder/r_countPrev [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_15  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [15]),
    .O(\decoder/r_count [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_14  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [14]),
    .O(\decoder/r_count [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_13  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [13]),
    .O(\decoder/r_count [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_12  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [12]),
    .O(\decoder/r_count [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_11  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [11]),
    .O(\decoder/r_count [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_10  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [10]),
    .O(\decoder/r_count [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_9  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [9]),
    .O(\decoder/r_count [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_8  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [8]),
    .O(\decoder/r_count [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_7  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [7]),
    .O(\decoder/r_count [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_6  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [6]),
    .O(\decoder/r_count [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_5  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [5]),
    .O(\decoder/r_count [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_4  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [4]),
    .O(\decoder/r_count [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_3  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [3]),
    .O(\decoder/r_count [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_2  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [2]),
    .O(\decoder/r_count [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_1  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [1]),
    .O(\decoder/r_count [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/r_count_0  (
    .CLK(\decoder/r_Counter [16]),
    .RST(decoder_not0000),
    .I(\decoder/count [0]),
    .O(\decoder/r_count [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_15  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [0]),
    .O(\decoder/count [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_14  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [1]),
    .O(\decoder/count [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_13  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [2]),
    .O(\decoder/count [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_12  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [3]),
    .O(\decoder/count [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_11  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [4]),
    .O(\decoder/count [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_10  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [5]),
    .O(\decoder/count [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_9  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [6]),
    .O(\decoder/count [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_8  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [7]),
    .O(\decoder/count [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_7  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [8]),
    .O(\decoder/count [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_6  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [9]),
    .O(\decoder/count [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_5  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [10]),
    .O(\decoder/count [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_4  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [11]),
    .O(\decoder/count [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_3  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [12]),
    .O(\decoder/count [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_2  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [13]),
    .O(\decoder/count [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_1  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [14]),
    .O(\decoder/count [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/count_0  (
    .CLK(Clk_BUFGP),
    .CE(\decoder/count_enable ),
    .RST(decoder_not0000),
    .I(\decoder/count_mux0001 [15]),
    .O(\decoder/count [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/quadB_delayed  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/DB_out_955 ),
    .O(\decoder/quadB_delayed_1270 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \decoder/quadA_delayed  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/DB_out_935 ),
    .O(\decoder/quadA_delayed_1269 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer5/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer5/q_reg [6]),
    .I(\debouncer5/DFF2_917 ),
    .O(\debouncer5/DB_out_915 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/DFF1_916 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/DFF2_917 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_5_IBUF_650),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/DFF1_916 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer5/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer5/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer5/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer4/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer4/q_reg [6]),
    .I(\debouncer4/DFF2_897 ),
    .O(\debouncer4/DB_out_895 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/DFF1_896 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/DFF2_897 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_4_IBUF_649),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/DFF1_896 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer4/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer4/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer4/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer3/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer3/q_reg [6]),
    .I(\debouncer3/DFF2_877 ),
    .O(\debouncer3/DB_out_875 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/DFF1_876 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/DFF2_877 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_3_IBUF_648),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/DFF1_876 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer3/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer3/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer3/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer2/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer2/q_reg [6]),
    .I(\debouncer2/DFF2_857 ),
    .O(\debouncer2/DB_out_855 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/DFF1_856 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/DFF2_857 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_2_IBUF_647),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/DFF1_856 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer2/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer2/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer2/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer1/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer1/q_reg [6]),
    .I(\debouncer1/DFF2_837 ),
    .O(\debouncer1/DB_out_835 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/DFF1_836 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/DFF2_837 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_1_IBUF_646),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/DFF1_836 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer1/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer1/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer1/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncer0/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncer0/q_reg [6]),
    .I(\debouncer0/DFF2_817 ),
    .O(\debouncer0/DB_out_815 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/DFF1_816 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/DFF2_817 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/DFF1  (
    .CLK(Clk_BUFGP),
    .I(Switch_0_IBUF_645),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/DFF1_816 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncer0/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncer0/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncer0/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncerB/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncerB/q_reg [6]),
    .I(\debouncerB/DFF2_957 ),
    .O(\debouncerB/DB_out_955 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/DFF1_956 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/DFF2_957 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/DFF1  (
    .CLK(Clk_BUFGP),
    .I(i_B_IBUF_1357),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/DFF1_956 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerB/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncerB/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerB/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \debouncerA/DB_out  (
    .CLK(Clk_BUFGP),
    .CE(\debouncerA/q_reg [6]),
    .I(\debouncerA/DFF2_937 ),
    .O(\debouncerA/DB_out_935 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/DFF2  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/DFF1_936 ),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/DFF2_937 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/DFF1  (
    .CLK(Clk_BUFGP),
    .I(i_A_IBUF_1355),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/DFF1_936 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_6  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [6]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_5  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [5]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_4  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [4]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_3  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [3]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_2  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [2]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_1  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [1]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \debouncerA/q_reg_0  (
    .CLK(Clk_BUFGP),
    .I(\debouncerA/q_next [0]),
    .SRST(LED_5_OBUF_27),
    .O(\debouncerA/q_reg [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \converter/r_SM_Main_FSM_FFd6  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_SM_Main_FSM_FFd3_790 ),
    .O(\converter/r_SM_Main_FSM_FFd6_794 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd4  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_SM_Main_FSM_FFd5_793 ),
    .O(\converter/r_SM_Main_FSM_FFd4_792 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd1  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_SM_Main_FSM_FFd2_786 ),
    .O(\converter/r_SM_Main_FSM_FFd1_785 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd2  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_SM_Main_FSM_FFd2-In ),
    .O(\converter/r_SM_Main_FSM_FFd2_786 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd3  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_SM_Main_FSM_FFd3_790 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<7>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [6]),
    .I1(\converter/Mcount_r_Loop_Count_xor<7>_rt_669 ),
    .O(\converter/Result [7])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<6>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [5]),
    .I1(\converter/Mcount_r_Loop_Count_cy<6>_rt_667 ),
    .O(\converter/Result [6])
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<6>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [5]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<6>_rt_667 ),
    .O(\converter/Mcount_r_Loop_Count_cy [6])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<5>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [4]),
    .I1(\converter/Mcount_r_Loop_Count_cy<5>_rt_665 ),
    .O(\converter/Result [5])
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<5>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [4]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<5>_rt_665 ),
    .O(\converter/Mcount_r_Loop_Count_cy [5])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<4>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [3]),
    .I1(\converter/Mcount_r_Loop_Count_cy<4>_rt_663 ),
    .O(\converter/Result [4])
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<4>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [3]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<4>_rt_663 ),
    .O(\converter/Mcount_r_Loop_Count_cy [4])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<3>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [2]),
    .I1(\converter/Mcount_r_Loop_Count_cy<3>_rt_661 ),
    .O(\converter/Result<3>1 )
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<3>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [2]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<3>_rt_661 ),
    .O(\converter/Mcount_r_Loop_Count_cy [3])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<2>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [1]),
    .I1(\converter/Mcount_r_Loop_Count_cy<2>_rt_659 ),
    .O(\converter/Result<2>1 )
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<2>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [1]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<2>_rt_659 ),
    .O(\converter/Mcount_r_Loop_Count_cy [2])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<1>  (
    .I0(\converter/Mcount_r_Loop_Count_cy [0]),
    .I1(\converter/Mcount_r_Loop_Count_cy<1>_rt_657 ),
    .O(\converter/Result<1>1 )
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<1>  (
    .IB(\converter/Mcount_r_Loop_Count_cy [0]),
    .IA(LED_5_OBUF_27),
    .SEL(\converter/Mcount_r_Loop_Count_cy<1>_rt_657 ),
    .O(\converter/Mcount_r_Loop_Count_cy [1])
  );
  X_XOR2   \converter/Mcount_r_Loop_Count_xor<0>  (
    .I0(LED_5_OBUF_27),
    .I1(\converter/Mcount_r_Loop_Count_lut [0]),
    .O(\converter/Result<0>1 )
  );
  X_MUX2   \converter/Mcount_r_Loop_Count_cy<0>  (
    .IB(LED_5_OBUF_27),
    .IA(N1),
    .SEL(\converter/Mcount_r_Loop_Count_lut [0]),
    .O(\converter/Mcount_r_Loop_Count_cy [0])
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_3  (
    .ADR0(\converter/r_BCD [12]),
    .ADR1(\converter/r_BCD [8]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_3_670 )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_4  (
    .ADR0(\converter/r_BCD [4]),
    .ADR1(\converter/r_BCD [0]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_4_674 )
  );
  X_MUX2   \converter/Mmux_w_BCD_Digit_2_f5  (
    .IA(\converter/Mmux_w_BCD_Digit_4_674 ),
    .IB(\converter/Mmux_w_BCD_Digit_3_670 ),
    .SEL(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_cy [0])
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_31  (
    .ADR0(\converter/r_BCD [13]),
    .ADR1(\converter/r_BCD [9]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_31_671 )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_41  (
    .ADR0(\converter/r_BCD [5]),
    .ADR1(\converter/r_BCD [1]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_41_675 )
  );
  X_MUX2   \converter/Mmux_w_BCD_Digit_2_f5_0  (
    .IA(\converter/Mmux_w_BCD_Digit_41_675 ),
    .IB(\converter/Mmux_w_BCD_Digit_31_671 ),
    .SEL(\converter/r_Digit_Index [1]),
    .O(\converter/w_BCD_Digit [1])
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_32  (
    .ADR0(\converter/r_BCD [14]),
    .ADR1(\converter/r_BCD [10]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_32_672 )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_42  (
    .ADR0(\converter/r_BCD [6]),
    .ADR1(\converter/r_BCD [2]),
    .ADR2(\converter/r_Digit_Index_0_1_772 ),
    .O(\converter/Mmux_w_BCD_Digit_42_676 )
  );
  X_MUX2   \converter/Mmux_w_BCD_Digit_2_f5_1  (
    .IA(\converter/Mmux_w_BCD_Digit_42_676 ),
    .IB(\converter/Mmux_w_BCD_Digit_32_672 ),
    .SEL(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_33  (
    .ADR0(\converter/r_BCD [15]),
    .ADR1(\converter/r_BCD [11]),
    .ADR2(\converter/r_Digit_Index [0]),
    .O(\converter/Mmux_w_BCD_Digit_33_673 )
  );
  X_LUT3 #(
    .INIT ( 8'hAC ))
  \converter/Mmux_w_BCD_Digit_43  (
    .ADR0(\converter/r_BCD [7]),
    .ADR1(\converter/r_BCD [3]),
    .ADR2(\converter/r_Digit_Index [0]),
    .O(\converter/Mmux_w_BCD_Digit_43_677 )
  );
  X_MUX2   \converter/Mmux_w_BCD_Digit_2_f5_2  (
    .IA(\converter/Mmux_w_BCD_Digit_43_677 ),
    .IB(\converter/Mmux_w_BCD_Digit_33_673 ),
    .SEL(\converter/r_Digit_Index [1]),
    .O(\converter/Madd_add0000_addsub0000_lut [3])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_7  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result [7]),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_6  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result [6]),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_5  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result [5]),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_4  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result [4]),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_3  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result<3>1 ),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_2  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result<2>1 ),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_1  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result<1>1 ),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Loop_Count_0  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd4_792 ),
    .I(\converter/Result<0>1 ),
    .SRST(\converter/r_SM_Main_FSM_FFd3-In ),
    .O(\converter/r_Loop_Count [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_3  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd1_785 ),
    .I(\converter/Result [3]),
    .SRST(\converter/r_Digit_Index_and0000 ),
    .O(\converter/r_Digit_Index [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_2  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd1_785 ),
    .I(\converter/Result [2]),
    .SRST(\converter/r_Digit_Index_and0000 ),
    .O(\converter/r_Digit_Index [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_1  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd1_785 ),
    .I(\converter/Result [1]),
    .SRST(\converter/r_Digit_Index_and0000 ),
    .O(\converter/r_Digit_Index [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_0  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd1_785 ),
    .I(\converter/Result [0]),
    .SRST(\converter/r_Digit_Index_and0000 ),
    .O(\converter/r_Digit_Index [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_12  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000 [12]),
    .O(\converter/r_Binary [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_11  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000 [11]),
    .O(\converter/r_Binary [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_10  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000 [10]),
    .O(\converter/r_Binary [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_9  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000 [9]),
    .O(\converter/r_Binary [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_8  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000 [8]),
    .O(\converter/r_Binary [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [10]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [15]),
    .O(\pidController/multiplier_16x16bit_pipelined/md [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [10]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [15]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/stage_0_ready  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/start_1945 ),
    .O(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w1 ),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w0 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/negation [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w4 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/negation [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/multiplier_16x16bit_pipelined/stage_0_ready_1855 ),
    .RST(decoder_not0000),
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd1  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd2_1949 ),
    .O(\pidController/state_1_FSM_FFd1_1947 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd2  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd3_1950 ),
    .O(\pidController/state_1_FSM_FFd2_1949 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd3  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd4_1951 ),
    .O(\pidController/state_1_FSM_FFd3_1950 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd4  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd5_1952 ),
    .O(\pidController/state_1_FSM_FFd4_1951 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd5  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd6_1953 ),
    .O(\pidController/state_1_FSM_FFd5_1952 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd6  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/state_1_FSM_FFd6_1953 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd7  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd8_1955 ),
    .O(\pidController/state_1_FSM_FFd7_1954 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd8  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd9_1956 ),
    .O(\pidController/state_1_FSM_FFd8_1955 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/state_1_FSM_FFd9  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/state_1_FSM_FFd10_1948 ),
    .O(\pidController/state_1_FSM_FFd9_1956 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \pidController/state_1_FSM_FFd10  (
    .CLK(Clk_BUFGP),
    .I(\pidController/state_1_FSM_FFd1_1947 ),
    .SET(decoder_not0000),
    .O(\pidController/state_1_FSM_FFd10_1948 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/md_index_2  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/md_index_mux0000 [0]),
    .O(\pidController/md_index [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/md_index_1  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/md_index_mux0000 [1]),
    .O(\pidController/md_index [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [15]),
    .O(\pidController/sigma [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [14]),
    .O(\pidController/sigma [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [13]),
    .O(\pidController/sigma [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [12]),
    .O(\pidController/sigma [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [11]),
    .O(\pidController/sigma [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [10]),
    .O(\pidController/sigma [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [9]),
    .O(\pidController/sigma [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [8]),
    .O(\pidController/sigma [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [7]),
    .O(\pidController/sigma [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [6]),
    .O(\pidController/sigma [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [5]),
    .O(\pidController/sigma [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [4]),
    .O(\pidController/sigma [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [3]),
    .O(\pidController/sigma [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [2]),
    .O(\pidController/sigma [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [1]),
    .O(\pidController/sigma [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/sigma_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd3_1950 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [0]),
    .O(\pidController/sigma [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [15]),
    .O(\pidController/un [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [14]),
    .O(\pidController/un [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [13]),
    .O(\pidController/un [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [12]),
    .O(\pidController/un [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [11]),
    .O(\pidController/un [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [10]),
    .O(\pidController/un [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [9]),
    .O(\pidController/un [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [8]),
    .O(\pidController/un [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [7]),
    .O(\pidController/un [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [6]),
    .O(\pidController/un [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [5]),
    .O(\pidController/un [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [4]),
    .O(\pidController/un [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [3]),
    .O(\pidController/un [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [2]),
    .O(\pidController/un [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [1]),
    .O(\pidController/un [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/un_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd1_1947 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [0]),
    .O(\pidController/un [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [15]),
    .O(\pidController/err_1_15_1480 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [14]),
    .O(\pidController/err_1_14_1479 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [13]),
    .O(\pidController/err_1_13_1478 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [12]),
    .O(\pidController/err_1_12_1477 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [11]),
    .O(\pidController/err_1_11_1476 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [10]),
    .O(\pidController/err_1_10_1475 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [9]),
    .O(\pidController/err_1_9_1488 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [8]),
    .O(\pidController/err_1_8_1487 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [7]),
    .O(\pidController/err_1_7_1486 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [6]),
    .O(\pidController/err_1_6_1485 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [5]),
    .O(\pidController/err_1_5_1484 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [4]),
    .O(\pidController/err_1_4_1483 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [3]),
    .O(\pidController/err_1_3_1482 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [2]),
    .O(\pidController/err_1_2_1481 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [1]),
    .O(\pidController/err_1_1_1474 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_1_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd5_1952 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [0]),
    .O(\pidController/err_1_0_1473 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [15]),
    .O(\pidController/err_0_15_1464 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [14]),
    .O(\pidController/err_0_14_1463 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [13]),
    .O(\pidController/err_0_13_1462 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [12]),
    .O(\pidController/err_0_12_1461 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [11]),
    .O(\pidController/err_0_11_1460 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [10]),
    .O(\pidController/err_0_10_1459 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [9]),
    .O(\pidController/err_0_9_1472 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [8]),
    .O(\pidController/err_0_8_1471 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [7]),
    .O(\pidController/err_0_7_1470 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [6]),
    .O(\pidController/err_0_6_1469 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [5]),
    .O(\pidController/err_0_5_1468 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [4]),
    .O(\pidController/err_0_4_1467 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [3]),
    .O(\pidController/err_0_3_1466 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [2]),
    .O(\pidController/err_0_2_1465 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [1]),
    .O(\pidController/err_0_1_1458 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/err_0_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd6_1953 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [0]),
    .O(\pidController/err_0_0_1457 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_15  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [15]),
    .O(\pidController/kpd [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_14  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [14]),
    .O(\pidController/kpd [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_13  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [13]),
    .O(\pidController/kpd [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_12  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [12]),
    .O(\pidController/kpd [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_11  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [11]),
    .O(\pidController/kpd [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_10  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [10]),
    .O(\pidController/kpd [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_9  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [9]),
    .O(\pidController/kpd [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_8  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [8]),
    .O(\pidController/kpd [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_7  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [7]),
    .O(\pidController/kpd [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_6  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [6]),
    .O(\pidController/kpd [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_5  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [5]),
    .O(\pidController/kpd [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_4  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [4]),
    .O(\pidController/kpd [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_3  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [3]),
    .O(\pidController/kpd [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [2]),
    .O(\pidController/kpd [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [1]),
    .O(\pidController/kpd [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/kpd_0  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/state_1_FSM_FFd8_1955 ),
    .RST(decoder_not0000),
    .I(\pidController/sum [0]),
    .O(\pidController/kpd [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/start  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/start_mux0000 ),
    .O(\pidController/start_1945 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/cout  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/cout_mux0000 ),
    .O(\pidController/cout_1455 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_15  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [15]),
    .O(\pidController/a [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_14  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [14]),
    .O(\pidController/a [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_13  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [13]),
    .O(\pidController/a [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_12  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [12]),
    .O(\pidController/a [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_11  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [11]),
    .O(\pidController/a [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_10  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [10]),
    .O(\pidController/a [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_9  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [9]),
    .O(\pidController/a [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_8  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [8]),
    .O(\pidController/a [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_7  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [7]),
    .O(\pidController/a [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_6  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [6]),
    .O(\pidController/a [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_5  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [5]),
    .O(\pidController/a [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_4  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [4]),
    .O(\pidController/a [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_3  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [3]),
    .O(\pidController/a [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_2  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [2]),
    .O(\pidController/a [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_1  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [1]),
    .O(\pidController/a [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/a_0  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/a_mux0000 [0]),
    .O(\pidController/a [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_15  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [15]),
    .O(\pidController/p [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_14  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [14]),
    .O(\pidController/p [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_13  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [13]),
    .O(\pidController/p [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_12  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [12]),
    .O(\pidController/p [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_11  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [11]),
    .O(\pidController/p [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_10  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [10]),
    .O(\pidController/p [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_9  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [9]),
    .O(\pidController/p [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_8  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [8]),
    .O(\pidController/p [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_7  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [7]),
    .O(\pidController/p [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_6  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [6]),
    .O(\pidController/p [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_5  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [5]),
    .O(\pidController/p [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_4  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [4]),
    .O(\pidController/p [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_3  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [3]),
    .O(\pidController/p [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_2  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [2]),
    .O(\pidController/p [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_1  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [1]),
    .O(\pidController/p [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/p_0  (
    .CLK(Clk_BUFGP),
    .RST(decoder_not0000),
    .I(\pidController/p_mux0000 [0]),
    .O(\pidController/p [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_9__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[9]),
    .O(r_kp_9__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_9__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[9]),
    .O(r_kp_9__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_8__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[8]),
    .O(r_kp_8__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_8__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[8]),
    .O(r_kp_8__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_7__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[7]),
    .O(r_kp_7__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_7__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[7]),
    .O(r_kp_7__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_6__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[6]),
    .O(r_kp_6__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_6__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[6]),
    .O(r_kp_6__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_5__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[5]),
    .O(r_kp_5__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_5__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[5]),
    .O(r_kp_5__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_4__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[4]),
    .O(r_kp_4__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_4__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[4]),
    .O(r_kp_4__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_3__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[3]),
    .O(r_kp_3__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_3__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[3]),
    .O(r_kp_3__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_2__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[2]),
    .O(r_kp_2__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_2__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[2]),
    .O(r_kp_2__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_1__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[1]),
    .O(r_kp_1__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_1__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[1]),
    .O(r_kp_1__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_15__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[15]),
    .O(r_kp_15__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_15__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[15]),
    .O(r_kp_15__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_14__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[14]),
    .O(r_kp_14__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_14__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[14]),
    .O(r_kp_14__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_13__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[13]),
    .O(r_kp_13__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_13__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[13]),
    .O(r_kp_13__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_12__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[12]),
    .O(r_kp_12__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_12__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[12]),
    .O(r_kp_12__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_11__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[11]),
    .O(r_kp_11__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_11__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[11]),
    .O(r_kp_11__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_10__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[10]),
    .O(r_kp_10__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_10__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[10]),
    .O(r_kp_10__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_kp_0__and00011 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[0]),
    .O(r_kp_0__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_kp_0__and00001 (
    .ADR0(\debouncer3/DB_out_875 ),
    .ADR1(r_kp_mux0000[0]),
    .O(r_kp_0__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_9__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[9]),
    .O(r_ki_9__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_9__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[9]),
    .O(r_ki_9__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_8__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[8]),
    .O(r_ki_8__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_8__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[8]),
    .O(r_ki_8__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_7__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[7]),
    .O(r_ki_7__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_7__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[7]),
    .O(r_ki_7__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_6__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[6]),
    .O(r_ki_6__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_6__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[6]),
    .O(r_ki_6__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_5__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[5]),
    .O(r_ki_5__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_5__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[5]),
    .O(r_ki_5__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_4__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[4]),
    .O(r_ki_4__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_4__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[4]),
    .O(r_ki_4__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_3__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[3]),
    .O(r_ki_3__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_3__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[3]),
    .O(r_ki_3__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_2__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[2]),
    .O(r_ki_2__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_2__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[2]),
    .O(r_ki_2__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_1__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[1]),
    .O(r_ki_1__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_1__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[1]),
    .O(r_ki_1__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_15__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[15]),
    .O(r_ki_15__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_15__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[15]),
    .O(r_ki_15__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_14__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[14]),
    .O(r_ki_14__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_14__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[14]),
    .O(r_ki_14__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_13__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[13]),
    .O(r_ki_13__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_13__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[13]),
    .O(r_ki_13__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_12__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[12]),
    .O(r_ki_12__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_12__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[12]),
    .O(r_ki_12__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_11__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[11]),
    .O(r_ki_11__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_11__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[11]),
    .O(r_ki_11__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_10__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[10]),
    .O(r_ki_10__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_10__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[10]),
    .O(r_ki_10__and0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_ki_0__and00011 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[0]),
    .O(r_ki_0__and0001)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_ki_0__and00001 (
    .ADR0(\debouncer5/DB_out_915 ),
    .ADR1(r_ki_mux0000[0]),
    .O(r_ki_0__and0000)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \decoder/Madd_o_velocity_addsub0001R1  (
    .ADR0(\decoder/w_diff [2]),
    .ADR1(\decoder/w_diff [1]),
    .ADR2(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001R )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<9>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [9]),
    .ADR2(\decoder/r_count [9]),
    .O(\decoder/w_diff_mux0000 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<8>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [8]),
    .ADR2(\decoder/r_count [8]),
    .O(\decoder/w_diff_mux0000 [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<7>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [7]),
    .ADR2(\decoder/r_count [7]),
    .O(\decoder/w_diff_mux0000 [7])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<6>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [6]),
    .ADR2(\decoder/r_count [6]),
    .O(\decoder/w_diff_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<5>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [5]),
    .ADR2(\decoder/r_count [5]),
    .O(\decoder/w_diff_mux0000 [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<4>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [4]),
    .ADR2(\decoder/r_count [4]),
    .O(\decoder/w_diff_mux0000 [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<3>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [3]),
    .ADR2(\decoder/r_count [3]),
    .O(\decoder/w_diff_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<2>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [2]),
    .ADR2(\decoder/r_count [2]),
    .O(\decoder/w_diff_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<1>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [1]),
    .ADR2(\decoder/r_count [1]),
    .O(\decoder/w_diff_mux0000 [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<14>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [14]),
    .ADR2(\decoder/r_count [14]),
    .O(\decoder/w_diff_mux0000 [14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<13>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [13]),
    .ADR2(\decoder/r_count [13]),
    .O(\decoder/w_diff_mux0000 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<12>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [12]),
    .ADR2(\decoder/r_count [12]),
    .O(\decoder/w_diff_mux0000 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<11>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [11]),
    .ADR2(\decoder/r_count [11]),
    .O(\decoder/w_diff_mux0000 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<10>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [10]),
    .ADR2(\decoder/r_count [10]),
    .O(\decoder/w_diff_mux0000 [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \decoder/w_diff_mux0000<0>1  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/r_countPrev [0]),
    .ADR2(\decoder/r_count [0]),
    .O(\decoder/w_diff_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C91  (
    .ADR0(\decoder/w_diff [10]),
    .ADR1(\decoder/w_diff [9]),
    .ADR2(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_addsub0001C9 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C81  (
    .ADR0(\decoder/w_diff [10]),
    .ADR1(\decoder/w_diff [9]),
    .ADR2(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_addsub0001C8 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C71  (
    .ADR0(\decoder/w_diff [7]),
    .ADR1(\decoder/w_diff [8]),
    .ADR2(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001C7 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C61  (
    .ADR0(\decoder/w_diff [7]),
    .ADR1(\decoder/w_diff [8]),
    .ADR2(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_addsub0001C6 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C51  (
    .ADR0(\decoder/w_diff [5]),
    .ADR1(\decoder/w_diff [6]),
    .ADR2(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_addsub0001C5 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C41  (
    .ADR0(\decoder/w_diff [5]),
    .ADR1(\decoder/w_diff [6]),
    .ADR2(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_addsub0001C4 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C31  (
    .ADR0(\decoder/w_diff [3]),
    .ADR1(\decoder/w_diff [4]),
    .ADR2(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_addsub0001C3 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C21  (
    .ADR0(\decoder/w_diff [3]),
    .ADR1(\decoder/w_diff [4]),
    .ADR2(\decoder/w_diff [2]),
    .O(\decoder/Madd_o_velocity_addsub0001C2 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C121  (
    .ADR0(\decoder/w_diff [13]),
    .ADR1(\decoder/w_diff [14]),
    .ADR2(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_addsub0001C12 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C111  (
    .ADR0(\decoder/w_diff [11]),
    .ADR1(\decoder/w_diff [12]),
    .ADR2(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001C11_978 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C101  (
    .ADR0(\decoder/w_diff [11]),
    .ADR1(\decoder/w_diff [12]),
    .ADR2(\decoder/w_diff [10]),
    .O(\decoder/Madd_o_velocity_addsub0001C10 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C11  (
    .ADR0(\decoder/w_diff [1]),
    .ADR1(\decoder/w_diff [2]),
    .ADR2(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_addsub0001C1_976 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \decoder/Madd_o_velocity_addsub0001C1  (
    .ADR0(\decoder/w_diff [1]),
    .ADR1(\decoder/w_diff [2]),
    .ADR2(\decoder/w_diff [0]),
    .O(\decoder/Madd_o_velocity_addsub0001C )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \converter/Mcount_r_Digit_Index_xor<1>11  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .O(\converter/Result [1])
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/start_mux00001  (
    .ADR0(\pidController/start_1945 ),
    .ADR1(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR2(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/start_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/cout_mux00001  (
    .ADR0(\pidController/cout_1455 ),
    .ADR1(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR2(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/cout_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<0>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w0 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \converter/Mcount_r_Digit_Index_xor<2>11  (
    .ADR0(\converter/r_Digit_Index [2]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/r_Digit_Index [0]),
    .O(\converter/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'hFF10 ))
  \pidController/md_index_mux0000<1>1  (
    .ADR0(\pidController/state_1_FSM_FFd5_1952 ),
    .ADR1(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/state_1_FSM_FFd6_1953 ),
    .O(\pidController/md_index_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFF10 ))
  \pidController/md_index_mux0000<0>1  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/state_1_FSM_FFd5_1952 ),
    .O(\pidController/md_index_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<1>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \converter/Mcount_r_Digit_Index_xor<3>11  (
    .ADR0(\converter/r_Digit_Index [3]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/r_Digit_Index [0]),
    .ADR3(\converter/r_Digit_Index [2]),
    .O(\converter/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \decoder/Mxor_count_enable_xo<0>1  (
    .ADR0(\debouncerB/DB_out_955 ),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .ADR3(\decoder/quadA_delayed_1269 ),
    .O(\decoder/count_enable )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncerB/q_next<5>11  (
    .ADR0(\debouncerB/DFF1_956 ),
    .ADR1(\debouncerB/DFF2_957 ),
    .O(\debouncerB/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncerA/q_next<5>11  (
    .ADR0(\debouncerA/DFF1_936 ),
    .ADR1(\debouncerA/DFF2_937 ),
    .O(\debouncerA/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer5/q_next<5>11  (
    .ADR0(\debouncer5/DFF1_916 ),
    .ADR1(\debouncer5/DFF2_917 ),
    .O(\debouncer5/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer4/q_next<5>11  (
    .ADR0(\debouncer4/DFF1_896 ),
    .ADR1(\debouncer4/DFF2_897 ),
    .O(\debouncer4/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer3/q_next<5>11  (
    .ADR0(\debouncer3/DFF1_876 ),
    .ADR1(\debouncer3/DFF2_877 ),
    .O(\debouncer3/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer2/q_next<5>11  (
    .ADR0(\debouncer2/DFF1_856 ),
    .ADR1(\debouncer2/DFF2_857 ),
    .O(\debouncer2/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer1/q_next<5>11  (
    .ADR0(\debouncer1/DFF1_836 ),
    .ADR1(\debouncer1/DFF2_837 ),
    .O(\debouncer1/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \debouncer0/q_next<5>11  (
    .ADR0(\debouncer0/DFF1_816 ),
    .ADR1(\debouncer0/DFF2_817 ),
    .O(\debouncer0/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<3>1  (
    .ADR0(\debouncerB/N01 ),
    .ADR1(\debouncerB/q_reg [3]),
    .ADR2(\debouncerB/q_reg [2]),
    .ADR3(\debouncerB/N02 ),
    .O(\debouncerB/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<1>1  (
    .ADR0(\debouncerB/N01 ),
    .ADR1(\debouncerB/q_reg [1]),
    .ADR2(\debouncerB/q_reg [0]),
    .ADR3(\debouncerB/q_reg [6]),
    .O(\debouncerB/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<3>1  (
    .ADR0(\debouncerA/N01 ),
    .ADR1(\debouncerA/q_reg [3]),
    .ADR2(\debouncerA/q_reg [2]),
    .ADR3(\debouncerA/N02 ),
    .O(\debouncerA/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<1>1  (
    .ADR0(\debouncerA/N01 ),
    .ADR1(\debouncerA/q_reg [1]),
    .ADR2(\debouncerA/q_reg [0]),
    .ADR3(\debouncerA/q_reg [6]),
    .O(\debouncerA/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<3>1  (
    .ADR0(\debouncer5/N01 ),
    .ADR1(\debouncer5/q_reg [3]),
    .ADR2(\debouncer5/q_reg [2]),
    .ADR3(\debouncer5/N02 ),
    .O(\debouncer5/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<1>1  (
    .ADR0(\debouncer5/N01 ),
    .ADR1(\debouncer5/q_reg [1]),
    .ADR2(\debouncer5/q_reg [0]),
    .ADR3(\debouncer5/q_reg [6]),
    .O(\debouncer5/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<3>1  (
    .ADR0(\debouncer4/N01 ),
    .ADR1(\debouncer4/q_reg [3]),
    .ADR2(\debouncer4/q_reg [2]),
    .ADR3(\debouncer4/N02 ),
    .O(\debouncer4/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<1>1  (
    .ADR0(\debouncer4/N01 ),
    .ADR1(\debouncer4/q_reg [1]),
    .ADR2(\debouncer4/q_reg [0]),
    .ADR3(\debouncer4/q_reg [6]),
    .O(\debouncer4/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<3>1  (
    .ADR0(\debouncer3/N01 ),
    .ADR1(\debouncer3/q_reg [3]),
    .ADR2(\debouncer3/q_reg [2]),
    .ADR3(\debouncer3/N02 ),
    .O(\debouncer3/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<1>1  (
    .ADR0(\debouncer3/N01 ),
    .ADR1(\debouncer3/q_reg [1]),
    .ADR2(\debouncer3/q_reg [0]),
    .ADR3(\debouncer3/q_reg [6]),
    .O(\debouncer3/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<3>1  (
    .ADR0(\debouncer2/N01 ),
    .ADR1(\debouncer2/q_reg [3]),
    .ADR2(\debouncer2/q_reg [2]),
    .ADR3(\debouncer2/N02 ),
    .O(\debouncer2/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<1>1  (
    .ADR0(\debouncer2/N01 ),
    .ADR1(\debouncer2/q_reg [1]),
    .ADR2(\debouncer2/q_reg [0]),
    .ADR3(\debouncer2/q_reg [6]),
    .O(\debouncer2/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<3>1  (
    .ADR0(\debouncer1/N01 ),
    .ADR1(\debouncer1/q_reg [3]),
    .ADR2(\debouncer1/q_reg [2]),
    .ADR3(\debouncer1/N02 ),
    .O(\debouncer1/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<1>1  (
    .ADR0(\debouncer1/N01 ),
    .ADR1(\debouncer1/q_reg [1]),
    .ADR2(\debouncer1/q_reg [0]),
    .ADR3(\debouncer1/q_reg [6]),
    .O(\debouncer1/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<3>1  (
    .ADR0(\debouncer0/N01 ),
    .ADR1(\debouncer0/q_reg [3]),
    .ADR2(\debouncer0/q_reg [2]),
    .ADR3(\debouncer0/N02 ),
    .O(\debouncer0/q_next [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<1>1  (
    .ADR0(\debouncer0/N01 ),
    .ADR1(\debouncer0/q_reg [1]),
    .ADR2(\debouncer0/q_reg [0]),
    .ADR3(\debouncer0/q_reg [6]),
    .O(\debouncer0/q_next [1])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<5>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>10  (
    .ADR0(r_displayValue[7]),
    .ADR1(r_displayValue[5]),
    .ADR2(r_displayValue[6]),
    .ADR3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<4>10_2114 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>28  (
    .ADR0(r_displayValue[11]),
    .ADR1(r_displayValue[9]),
    .ADR2(r_displayValue[10]),
    .ADR3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<4>28_2115 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<4>37  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(\r_SevenSegment_mux0000<4>10_2114 ),
    .ADR2(s_Main_FSM_FFd2_2334),
    .ADR3(\r_SevenSegment_mux0000<4>28_2115 ),
    .O(\r_SevenSegment_mux0000<4>37_2116 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>25  (
    .ADR0(r_displayValue[8]),
    .ADR1(r_displayValue[9]),
    .ADR2(r_displayValue[10]),
    .ADR3(r_displayValue[11]),
    .O(\r_SevenSegment_mux0000<5>25_2119 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>63  (
    .ADR0(r_displayValue[4]),
    .ADR1(r_displayValue[5]),
    .ADR2(r_displayValue[6]),
    .ADR3(r_displayValue[7]),
    .O(\r_SevenSegment_mux0000<5>63_2120 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<5>76  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(\r_SevenSegment_mux0000<5>25_2119 ),
    .ADR2(s_Main_FSM_FFd3_2335),
    .ADR3(\r_SevenSegment_mux0000<5>63_2120 ),
    .O(\r_SevenSegment_mux0000<5>76_2121 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<0>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[0]),
    .ADR3(\w_setpoint[0] ),
    .O(\converter/r_Binary_mux0000<0>12_749 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \converter/r_Binary_mux0000<0>20  (
    .ADR0(\converter/r_Binary [0]),
    .ADR1(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .O(\converter/r_Binary_mux0000<0>20_750 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<7>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [6]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [7]),
    .O(\converter/r_Binary_mux0000<7>12_766 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<7>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[7]),
    .ADR3(\w_setpoint[7] ),
    .O(\converter/r_Binary_mux0000<7>25_767 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<6>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [5]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [6]),
    .O(\converter/r_Binary_mux0000<6>12_764 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<6>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[6]),
    .ADR3(\w_setpoint[6] ),
    .O(\converter/r_Binary_mux0000<6>25_765 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<5>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [4]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [5]),
    .O(\converter/r_Binary_mux0000<5>12_762 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<5>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[5]),
    .ADR3(\w_setpoint[5] ),
    .O(\converter/r_Binary_mux0000<5>25_763 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<4>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [3]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [4]),
    .O(\converter/r_Binary_mux0000<4>12_760 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<4>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[4]),
    .ADR3(\w_setpoint[4] ),
    .O(\converter/r_Binary_mux0000<4>25_761 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<3>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [2]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [3]),
    .O(\converter/r_Binary_mux0000<3>12_758 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<3>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[3]),
    .ADR3(\w_setpoint[0] ),
    .O(\converter/r_Binary_mux0000<3>25_759 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<2>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [1]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [2]),
    .O(\converter/r_Binary_mux0000<2>12_756 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<2>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[2]),
    .ADR3(\w_setpoint[2] ),
    .O(\converter/r_Binary_mux0000<2>25_757 )
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \converter/r_Binary_mux0000<1>12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [0]),
    .ADR2(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR3(\converter/r_Binary [1]),
    .O(\converter/r_Binary_mux0000<1>12_754 )
  );
  X_LUT4 #(
    .INIT ( 16'hA280 ))
  \converter/r_Binary_mux0000<1>25  (
    .ADR0(\converter/r_SM_Main_FSM_FFd6_794 ),
    .ADR1(DPSwitch_0_IBUF_11),
    .ADR2(w_velocity[1]),
    .ADR3(\w_setpoint[1] ),
    .O(\converter/r_Binary_mux0000<1>25_755 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<0>_Result1  (
    .ADR0(\pidController/a [0]),
    .ADR1(\pidController/p [0]),
    .ADR2(\pidController/cout_1455 ),
    .O(\pidController/sum [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncerB/q_next<6>5  (
    .ADR0(\debouncerB/q_reg [3]),
    .ADR1(\debouncerB/q_reg [2]),
    .ADR2(\debouncerB/q_reg [1]),
    .ADR3(\debouncerB/q_reg [0]),
    .O(\debouncerB/q_next<6>5_967 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncerA/q_next<6>5  (
    .ADR0(\debouncerA/q_reg [3]),
    .ADR1(\debouncerA/q_reg [2]),
    .ADR2(\debouncerA/q_reg [1]),
    .ADR3(\debouncerA/q_reg [0]),
    .O(\debouncerA/q_next<6>5_947 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer5/q_next<6>5  (
    .ADR0(\debouncer5/q_reg [3]),
    .ADR1(\debouncer5/q_reg [2]),
    .ADR2(\debouncer5/q_reg [1]),
    .ADR3(\debouncer5/q_reg [0]),
    .O(\debouncer5/q_next<6>5_927 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer4/q_next<6>5  (
    .ADR0(\debouncer4/q_reg [3]),
    .ADR1(\debouncer4/q_reg [2]),
    .ADR2(\debouncer4/q_reg [1]),
    .ADR3(\debouncer4/q_reg [0]),
    .O(\debouncer4/q_next<6>5_907 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer3/q_next<6>5  (
    .ADR0(\debouncer3/q_reg [3]),
    .ADR1(\debouncer3/q_reg [2]),
    .ADR2(\debouncer3/q_reg [1]),
    .ADR3(\debouncer3/q_reg [0]),
    .O(\debouncer3/q_next<6>5_887 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer2/q_next<6>5  (
    .ADR0(\debouncer2/q_reg [3]),
    .ADR1(\debouncer2/q_reg [2]),
    .ADR2(\debouncer2/q_reg [1]),
    .ADR3(\debouncer2/q_reg [0]),
    .O(\debouncer2/q_next<6>5_867 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer1/q_next<6>5  (
    .ADR0(\debouncer1/q_reg [3]),
    .ADR1(\debouncer1/q_reg [2]),
    .ADR2(\debouncer1/q_reg [1]),
    .ADR3(\debouncer1/q_reg [0]),
    .O(\debouncer1/q_next<6>5_847 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \debouncer0/q_next<6>5  (
    .ADR0(\debouncer0/q_reg [3]),
    .ADR1(\debouncer0/q_reg [2]),
    .ADR2(\debouncer0/q_reg [1]),
    .ADR3(\debouncer0/q_reg [0]),
    .O(\debouncer0/q_next<6>5_827 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<0>5  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[0]),
    .O(\pidController/a_mux0000<0>5_1378 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/a_mux0000<0>8  (
    .ADR0(\pidController/sigma [0]),
    .ADR1(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR2(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR3(\pidController/a_mux0000<0>5_1378 ),
    .O(\pidController/a_mux0000<0>8_1379 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \pidController/a_mux0000<0>13  (
    .ADR0(\pidController/sum [0]),
    .ADR1(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .O(\pidController/a_mux0000<0>13_1377 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/a_mux0000<0>28  (
    .ADR0(\pidController/a_mux0000<0>8_1379 ),
    .ADR1(\pidController/a [0]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/a_mux0000<0>13_1377 ),
    .O(\pidController/a_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<0>51  (
    .ADR0(\pidController/p_mux0000<0>11_1873 ),
    .ADR1(\pidController/p [0]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/p_mux0000<0>31_1874 ),
    .O(\pidController/p_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>45  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[6]),
    .ADR2(r_displayValue[5]),
    .ADR3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>45_2113 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>411  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[2]),
    .ADR2(r_displayValue[1]),
    .ADR3(r_displayValue[0]),
    .O(\r_SevenSegment_mux0000<3>411_2111 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \r_SevenSegment_mux0000<3>424  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(r_displayValue[10]),
    .ADR2(r_displayValue[9]),
    .ADR3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<3>424_2112 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>426  (
    .ADR0(\r_SevenSegment_mux0000<3>45_2113 ),
    .ADR1(\r_SevenSegment_mux0000<3>411_2111 ),
    .ADR2(\r_SevenSegment_mux0000<3>424_2112 ),
    .O(N3)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<2>22  (
    .ADR0(r_SevenSegment[5]),
    .ADR1(s_Main_FSM_FFd2_2334),
    .ADR2(s_Main_FSM_FFd3_2335),
    .ADR3(s_Main_FSM_FFd1_2333),
    .O(\r_SevenSegment_mux0000<2>22_2098 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>45  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[5]),
    .ADR2(r_displayValue[4]),
    .ADR3(r_displayValue[6]),
    .O(\r_SevenSegment_mux0000<2>45_2099 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>58  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[1]),
    .ADR2(r_displayValue[0]),
    .ADR3(r_displayValue[2]),
    .O(\r_SevenSegment_mux0000<2>58_2100 )
  );
  X_LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>23  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[2]),
    .ADR2(r_displayValue[0]),
    .ADR3(r_displayValue[1]),
    .O(\r_SevenSegment_mux0000<1>23_2094 )
  );
  X_LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>47  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(r_displayValue[10]),
    .ADR2(r_displayValue[8]),
    .ADR3(r_displayValue[9]),
    .O(\r_SevenSegment_mux0000<1>47_2095 )
  );
  X_LUT4 #(
    .INIT ( 16'h0880 ))
  \r_SevenSegment_mux0000<1>86  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[6]),
    .ADR2(r_displayValue[4]),
    .ADR3(r_displayValue[5]),
    .O(\r_SevenSegment_mux0000<1>86_2096 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<1>98  (
    .ADR0(r_SevenSegment[6]),
    .ADR1(s_Main_FSM_FFd1_2333),
    .ADR2(s_Main_FSM_FFd3_2335),
    .ADR3(s_Main_FSM_FFd2_2334),
    .O(\r_SevenSegment_mux0000<1>98_2097 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<1>114  (
    .ADR0(\r_SevenSegment_mux0000<1>23_2094 ),
    .ADR1(\r_SevenSegment_mux0000<1>47_2095 ),
    .ADR2(\r_SevenSegment_mux0000<1>86_2096 ),
    .ADR3(\r_SevenSegment_mux0000<1>98_2097 ),
    .O(\r_SevenSegment_mux0000<1>114_2093 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_Digit_Index_and00001  (
    .ADR0(N638),
    .ADR1(\converter/r_SM_Main_FSM_FFd1_785 ),
    .O(\converter/r_Digit_Index_and0000 )
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \converter/r_BCD_9_mux0000111  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .O(\converter/N21 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \converter/r_BCD_0_cmp_eq00001  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .O(\converter/r_BCD_0_cmp_eq0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_6/Mxor_P_Result1  (
    .ADR0(\pidController/p [6]),
    .ADR1(\pidController/a [6]),
    .O(\pidController/adder_32bit_0/P0[6] )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \r_SevenSegment_mux0000<5>112  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(s_Main_FSM_FFd3_2335),
    .ADR2(s_Main_FSM_FFd2_2334),
    .O(N4)
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>31  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(r_displayValue[10]),
    .ADR2(r_displayValue[9]),
    .O(N25)
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>21  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[1]),
    .ADR2(r_displayValue[2]),
    .O(N23)
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<0>11  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[5]),
    .ADR2(r_displayValue[6]),
    .O(N22)
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncerB/q_next<2>21  (
    .ADR0(\debouncerB/q_reg [1]),
    .ADR1(\debouncerB/q_reg [0]),
    .ADR2(\debouncerB/q_reg [6]),
    .O(\debouncerB/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncerA/q_next<2>21  (
    .ADR0(\debouncerA/q_reg [1]),
    .ADR1(\debouncerA/q_reg [0]),
    .ADR2(\debouncerA/q_reg [6]),
    .O(\debouncerA/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer5/q_next<2>21  (
    .ADR0(\debouncer5/q_reg [1]),
    .ADR1(\debouncer5/q_reg [0]),
    .ADR2(\debouncer5/q_reg [6]),
    .O(\debouncer5/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer4/q_next<2>21  (
    .ADR0(\debouncer4/q_reg [1]),
    .ADR1(\debouncer4/q_reg [0]),
    .ADR2(\debouncer4/q_reg [6]),
    .O(\debouncer4/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer3/q_next<2>21  (
    .ADR0(\debouncer3/q_reg [1]),
    .ADR1(\debouncer3/q_reg [0]),
    .ADR2(\debouncer3/q_reg [6]),
    .O(\debouncer3/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer2/q_next<2>21  (
    .ADR0(\debouncer2/q_reg [1]),
    .ADR1(\debouncer2/q_reg [0]),
    .ADR2(\debouncer2/q_reg [6]),
    .O(\debouncer2/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer1/q_next<2>21  (
    .ADR0(\debouncer1/q_reg [1]),
    .ADR1(\debouncer1/q_reg [0]),
    .ADR2(\debouncer1/q_reg [6]),
    .O(\debouncer1/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \debouncer0/q_next<2>21  (
    .ADR0(\debouncer0/q_reg [1]),
    .ADR1(\debouncer0/q_reg [0]),
    .ADR2(\debouncer0/q_reg [6]),
    .O(\debouncer0/N02 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<1>_Result1  (
    .ADR0(\pidController/adder_32bit_0/G1[0] ),
    .ADR1(\pidController/a [1]),
    .ADR2(\pidController/p [1]),
    .O(\pidController/sum [1])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<7>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<15>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [15]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerB/q_next<4>  (
    .ADR0(\debouncerB/N01 ),
    .ADR1(\debouncerB/q_reg [4]),
    .ADR2(\debouncerB/q_reg [3]),
    .ADR3(N29),
    .O(\debouncerB/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncerA/q_next<4>  (
    .ADR0(\debouncerA/N01 ),
    .ADR1(\debouncerA/q_reg [4]),
    .ADR2(\debouncerA/q_reg [3]),
    .ADR3(N311),
    .O(\debouncerA/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer5/q_next<4>  (
    .ADR0(\debouncer5/N01 ),
    .ADR1(\debouncer5/q_reg [4]),
    .ADR2(\debouncer5/q_reg [3]),
    .ADR3(N33),
    .O(\debouncer5/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer4/q_next<4>  (
    .ADR0(\debouncer4/N01 ),
    .ADR1(\debouncer4/q_reg [4]),
    .ADR2(\debouncer4/q_reg [3]),
    .ADR3(N35),
    .O(\debouncer4/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer3/q_next<4>  (
    .ADR0(\debouncer3/N01 ),
    .ADR1(\debouncer3/q_reg [4]),
    .ADR2(\debouncer3/q_reg [3]),
    .ADR3(N37),
    .O(\debouncer3/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer2/q_next<4>  (
    .ADR0(\debouncer2/N01 ),
    .ADR1(\debouncer2/q_reg [4]),
    .ADR2(\debouncer2/q_reg [3]),
    .ADR3(N39),
    .O(\debouncer2/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer1/q_next<4>  (
    .ADR0(\debouncer1/N01 ),
    .ADR1(\debouncer1/q_reg [4]),
    .ADR2(\debouncer1/q_reg [3]),
    .ADR3(N411),
    .O(\debouncer1/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8828 ))
  \debouncer0/q_next<4>  (
    .ADR0(\debouncer0/N01 ),
    .ADR1(\debouncer0/q_reg [4]),
    .ADR2(\debouncer0/q_reg [3]),
    .ADR3(N43),
    .O(\debouncer0/q_next [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \pidController/p_or0000  (
    .ADR0(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR1(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(N45),
    .O(\pidController/p_or0000_1928 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<1>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[1]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [1]),
    .O(\pidController/a_mux0000<1>7_1401 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \r_SevenSegment_mux0000<6>8  (
    .ADR0(N25),
    .ADR1(r_displayValue[11]),
    .ADR2(r_SevenSegment[1]),
    .ADR3(N4),
    .O(\r_SevenSegment_mux0000<6>8_2124 )
  );
  X_LUT4 #(
    .INIT ( 16'h22F2 ))
  \r_SevenSegment_mux0000<6>19  (
    .ADR0(N23),
    .ADR1(r_displayValue[3]),
    .ADR2(N22),
    .ADR3(r_displayValue[7]),
    .O(\r_SevenSegment_mux0000<6>19_2122 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<3>4  (
    .ADR0(N23),
    .ADR1(r_displayValue[0]),
    .ADR2(N22),
    .ADR3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>4_2110 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \r_SevenSegment_mux0000<3>13  (
    .ADR0(r_displayValue[8]),
    .ADR1(N25),
    .ADR2(N4),
    .ADR3(r_SevenSegment[4]),
    .O(\r_SevenSegment_mux0000<3>13_2102 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<1>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_1_1458 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[1]),
    .O(\pidController/p_mux0000<1>7_1893 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<1>8  (
    .ADR0(\w_setpoint[1] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<1>8_1894 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>2111  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(r_displayValue[11]),
    .ADR2(r_displayValue[10]),
    .ADR3(r_displayValue[9]),
    .O(\r_SevenSegment_mux0000<3>211 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>224  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[7]),
    .ADR2(r_displayValue[5]),
    .ADR3(r_displayValue[6]),
    .O(\r_SevenSegment_mux0000<3>224_2105 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>226  (
    .ADR0(\r_SevenSegment_mux0000<3>25_2106 ),
    .ADR1(\r_SevenSegment_mux0000<3>211 ),
    .ADR2(\r_SevenSegment_mux0000<3>224_2105 ),
    .O(N11)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>310  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[2]),
    .ADR2(r_displayValue[1]),
    .ADR3(r_displayValue[0]),
    .O(\r_SevenSegment_mux0000<3>310_2107 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>321  (
    .ADR0(s_Main_FSM_FFd2_2334),
    .ADR1(r_displayValue[10]),
    .ADR2(r_displayValue[9]),
    .ADR3(r_displayValue[8]),
    .O(\r_SevenSegment_mux0000<3>321_2108 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<3>341  (
    .ADR0(s_Main_FSM_FFd3_2335),
    .ADR1(r_displayValue[6]),
    .ADR2(r_displayValue[5]),
    .ADR3(r_displayValue[4]),
    .O(\r_SevenSegment_mux0000<3>341_2109 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<3>358  (
    .ADR0(N11),
    .ADR1(\r_SevenSegment_mux0000<3>310_2107 ),
    .ADR2(\r_SevenSegment_mux0000<3>321_2108 ),
    .ADR3(\r_SevenSegment_mux0000<3>341_2109 ),
    .O(N2)
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>5  (
    .ADR0(r_displayValue[8]),
    .ADR1(r_displayValue[11]),
    .ADR2(N25),
    .O(\r_SevenSegment_mux0000<0>5_2092 )
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>111  (
    .ADR0(r_displayValue[0]),
    .ADR1(r_displayValue[3]),
    .ADR2(N23),
    .O(\r_SevenSegment_mux0000<0>11_2088 )
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \r_SevenSegment_mux0000<0>24  (
    .ADR0(r_displayValue[4]),
    .ADR1(r_displayValue[7]),
    .ADR2(N22),
    .O(\r_SevenSegment_mux0000<0>24_2089 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<0>36  (
    .ADR0(r_SevenSegment[7]),
    .ADR1(s_Main_FSM_FFd2_2334),
    .ADR2(s_Main_FSM_FFd1_2333),
    .ADR3(s_Main_FSM_FFd3_2335),
    .O(\r_SevenSegment_mux0000<0>36_2090 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<0>48  (
    .ADR0(\r_SevenSegment_mux0000<0>5_2092 ),
    .ADR1(\r_SevenSegment_mux0000<0>11_2088 ),
    .ADR2(\r_SevenSegment_mux0000<0>24_2089 ),
    .ADR3(\r_SevenSegment_mux0000<0>36_2090 ),
    .O(\r_SevenSegment_mux0000<0>48_2091 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \converter/r_SM_Main_cmp_eq00008  (
    .ADR0(\converter/r_Loop_Count [3]),
    .ADR1(\converter/r_Loop_Count [2]),
    .ADR2(\converter/r_Loop_Count [1]),
    .ADR3(\converter/r_Loop_Count [0]),
    .O(\converter/r_SM_Main_cmp_eq00008_796 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \converter/r_SM_Main_cmp_eq000021  (
    .ADR0(\converter/r_Loop_Count [7]),
    .ADR1(\converter/r_Loop_Count [6]),
    .ADR2(\converter/r_Loop_Count [5]),
    .ADR3(\converter/r_Loop_Count [4]),
    .O(\converter/r_SM_Main_cmp_eq000021_795 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_and0000  (
    .ADR0(\decoder/count [0]),
    .ADR1(\decoder/count [3]),
    .ADR2(\decoder/count [4]),
    .ADR3(N65),
    .O(\decoder/count_and0000_1210 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_mux0001<11>24  (
    .ADR0(\decoder/count [12]),
    .ADR1(\decoder/count [11]),
    .ADR2(\decoder/count [9]),
    .ADR3(\decoder/count [5]),
    .O(\decoder/count_mux0001<11>24_1238 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_mux0001<11>215  (
    .ADR0(\decoder/count [14]),
    .ADR1(\decoder/count [13]),
    .ADR2(\decoder/count [15]),
    .ADR3(\decoder/count_mux0001<11>210_1236 ),
    .O(\decoder/count_mux0001<11>215_1237 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<15>1  (
    .ADR0(\decoder/count_mux0000 [0]),
    .ADR1(N718),
    .O(\decoder/count_mux0001 [15])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_1/cout1  (
    .ADR0(N640),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_0/cout1  (
    .ADR0(N641),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_1/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w5 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w4 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<11>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<2>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[2]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [2]),
    .O(\pidController/a_mux0000<2>7_1404 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \decoder/count_mux0001<11>112  (
    .ADR0(\decoder/count [5]),
    .ADR1(\decoder/count [2]),
    .ADR2(\decoder/count [1]),
    .ADR3(\decoder/count [14]),
    .O(\decoder/count_mux0001<11>112_1231 )
  );
  X_LUT3 #(
    .INIT ( 8'h7F ))
  \decoder/count_mux0001<11>121  (
    .ADR0(\decoder/count [12]),
    .ADR1(\decoder/count [11]),
    .ADR2(\decoder/count [9]),
    .O(\decoder/count_mux0001<11>121_1232 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \decoder/count_mux0001<11>150  (
    .ADR0(\decoder/count [5]),
    .ADR1(\decoder/count [2]),
    .ADR2(\decoder/count [1]),
    .ADR3(\decoder/count [13]),
    .O(\decoder/count_mux0001<11>150_1233 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDA8 ))
  \decoder/count_mux0001<11>170  (
    .ADR0(\decoder/count [15]),
    .ADR1(\decoder/count_mux0001<11>121_1232 ),
    .ADR2(\decoder/count_mux0001<11>112_1231 ),
    .ADR3(\decoder/count_mux0001<11>151_1234 ),
    .O(\decoder/count_mux0001<11>170_1235 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<2>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_2_1465 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[2]),
    .O(\pidController/p_mux0000<2>7_1898 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<2>8  (
    .ADR0(\w_setpoint[2] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<2>8_1899 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<2>51  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/p_mux0000<2>42_1897 ),
    .ADR2(\pidController/p_mux0000<2>21_1896 ),
    .O(\pidController/p_mux0000 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_14/Mxor_P_Result1  (
    .ADR0(\pidController/p [14]),
    .ADR1(\pidController/a [14]),
    .O(\pidController/adder_32bit_0/P0[14] )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<14>1  (
    .ADR0(\decoder/count_mux0000 [1]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [14])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<13>1  (
    .ADR0(\decoder/count_mux0000 [2]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<12>1  (
    .ADR0(\decoder/count_mux0000 [3]),
    .ADR1(N639),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_2/cout1  (
    .ADR0(N646),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_2/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [1]),
    .ADR2(N645),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<3>_Result1  (
    .ADR0(\pidController/adder_32bit_0/G2 [1]),
    .ADR1(\pidController/a [3]),
    .ADR2(\pidController/p [3]),
    .O(\pidController/sum [3])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .ADR3(N652),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/cout1  (
    .ADR0(N642),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<13>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<4>_Result1  (
    .ADR0(\pidController/adder_32bit_0/G2 [1]),
    .ADR1(\pidController/p [3]),
    .ADR2(\pidController/adder_32bit_0/P0[4] ),
    .ADR3(\pidController/a [3]),
    .O(\pidController/sum [4])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<4>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_4_1483 ),
    .O(N83)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<3>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_3_1482 ),
    .O(N86)
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<4>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[4]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [4]),
    .O(\pidController/a_mux0000<4>7_1410 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<3>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[3]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [3]),
    .O(\pidController/a_mux0000<3>7_1407 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<3>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_3_1466 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[3]),
    .O(\pidController/p_mux0000<3>7_1902 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<3>8  (
    .ADR0(\w_setpoint[0] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<3>8_1903 )
  );
  X_LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/p_mux0000<3>81  (
    .ADR0(N637),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .O(\pidController/p_mux0000<3>81_1904 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \pidController/p_mux0000<3>82  (
    .ADR0(\pidController/p_mux0000<3>81_1904 ),
    .ADR1(\pidController/p_mux0000<3>21_1901 ),
    .O(\pidController/p_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<11>1  (
    .ADR0(\decoder/count_mux0000 [4]),
    .ADR1(\decoder/N111 ),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [11])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<10>1  (
    .ADR0(\decoder/count_mux0000 [5]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [10])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<9>1  (
    .ADR0(\decoder/count_mux0000 [6]),
    .ADR1(\decoder/N111 ),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<8>1  (
    .ADR0(\decoder/count_mux0000 [7]),
    .ADR1(\decoder/N111 ),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [8])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<7>1  (
    .ADR0(\decoder/count_mux0000 [8]),
    .ADR1(\decoder/N111 ),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [7])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<6>1  (
    .ADR0(\decoder/count_mux0000 [9]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_12/Mxor_P_Result1  (
    .ADR0(\pidController/p [12]),
    .ADR1(\pidController/a [12]),
    .O(\pidController/adder_32bit_0/P0[12] )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<3>1  (
    .ADR0(N656),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N10 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hE888 ))
  \pidController/adder_32bit_0/operator_B_stage_2_6/Go11  (
    .ADR0(\pidController/p [10]),
    .ADR1(\pidController/a [10]),
    .ADR2(\pidController/a [9]),
    .ADR3(\pidController/p [9]),
    .O(\pidController/adder_32bit_0/N26 )
  );
  X_LUT4 #(
    .INIT ( 16'h53A0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<14>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [14]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \decoder/count_mux0001<5>1  (
    .ADR0(\decoder/count_mux0000 [10]),
    .ADR1(\decoder/N111 ),
    .ADR2(\decoder/N0 ),
    .O(\decoder/count_mux0001 [5])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<4>1  (
    .ADR0(\decoder/count_mux0000 [11]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [4])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<3>1  (
    .ADR0(\decoder/count_mux0000 [12]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<2>1  (
    .ADR0(\decoder/count_mux0000 [13]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<1>1  (
    .ADR0(\decoder/count_mux0000 [14]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hA8A0 ))
  \converter/r_BCD_10_mux000011  (
    .ADR0(\converter/r_SM_Main_FSM_FFd2_786 ),
    .ADR1(\converter/Madd_add0000_addsub0000_lut [2]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(N650),
    .O(\converter/N12 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_3_mux0000_SW0  (
    .ADR0(\converter/r_BCD [3]),
    .ADR1(\converter/r_BCD [2]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N01 ),
    .O(N91)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_11_mux0000_SW0  (
    .ADR0(\converter/r_BCD [11]),
    .ADR1(\converter/r_BCD [10]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N5 ),
    .O(N93)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_9_mux0000_SW0  (
    .ADR0(\converter/r_BCD [9]),
    .ADR1(\converter/r_BCD [8]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N5 ),
    .O(N98)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_8_mux0000_SW0  (
    .ADR0(\converter/r_BCD [8]),
    .ADR1(\converter/r_BCD [7]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N5 ),
    .O(N100)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_7_mux0000_SW0  (
    .ADR0(\converter/r_BCD [7]),
    .ADR1(\converter/r_BCD [6]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N6 ),
    .O(N102)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_6_mux0000_SW0  (
    .ADR0(\converter/r_BCD [5]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR2(\converter/r_BCD [6]),
    .ADR3(\converter/N6 ),
    .O(N104)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_5_mux0000_SW0  (
    .ADR0(\converter/r_BCD [5]),
    .ADR1(\converter/r_BCD [4]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N6 ),
    .O(N106)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_2_mux0000_SW0  (
    .ADR0(\converter/r_BCD [1]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR2(\converter/r_BCD [2]),
    .ADR3(\converter/N01 ),
    .O(N108)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_1_mux0000_SW0  (
    .ADR0(\converter/r_BCD [1]),
    .ADR1(\converter/r_BCD [0]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N01 ),
    .O(N110)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_15_mux0000_SW0  (
    .ADR0(\converter/r_BCD [15]),
    .ADR1(\converter/r_BCD [14]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N4 ),
    .O(N112)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_14_mux0000_SW0  (
    .ADR0(\converter/r_BCD [13]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR2(\converter/r_BCD [14]),
    .ADR3(\converter/N4 ),
    .O(N114)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \converter/r_BCD_13_mux0000_SW0  (
    .ADR0(\converter/r_BCD [13]),
    .ADR1(\converter/r_BCD [12]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N4 ),
    .O(N116)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_BCD_10_mux0000_SW0  (
    .ADR0(\converter/r_BCD [9]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR2(\converter/r_BCD [10]),
    .ADR3(\converter/N5 ),
    .O(N118)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \converter/r_BCD_0_mux0000_SW0  (
    .ADR0(\converter/r_Binary [12]),
    .ADR1(\converter/r_BCD [0]),
    .ADR2(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR3(\converter/N01 ),
    .O(N120)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_4_mux00000  (
    .ADR0(\converter/r_BCD [3]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .O(\converter/r_BCD_4_mux00000_722 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \converter/r_BCD_4_mux00003  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .O(\converter/r_BCD_4_mux00003_725 )
  );
  X_LUT4 #(
    .INIT ( 16'hAEAA ))
  \converter/r_BCD_4_mux000017  (
    .ADR0(\converter/r_BCD_4_mux00000_722 ),
    .ADR1(\converter/r_BCD_4_mux00003_725 ),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_4_mux000017_723 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_12_mux00000  (
    .ADR0(\converter/r_BCD [11]),
    .ADR1(\converter/r_SM_Main_FSM_FFd5_793 ),
    .O(\converter/r_BCD_12_mux00000_708 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<0>1  (
    .ADR0(\decoder/count_mux0000 [15]),
    .ADR1(\decoder/N0 ),
    .O(\decoder/count_mux0001 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/count_mux00022  (
    .ADR0(\decoder/quadB_delayed_1270 ),
    .ADR1(\debouncerA/DB_out_935 ),
    .O(\decoder/count_mux0002 )
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_1/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_3/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [6]),
    .ADR2(N651),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_1/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR2(N698),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<4>1  (
    .ADR0(N714),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<6>_Result1  (
    .ADR0(\pidController/a [5]),
    .ADR1(\pidController/p [5]),
    .ADR2(\pidController/adder_32bit_0/P0[6] ),
    .ADR3(N681),
    .O(\pidController/sum [6])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/Mxor_S_Result1  (
    .ADR0(N648),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .ADR3(N665),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w8 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<6>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_6_1485 ),
    .O(N127)
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<5>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_5_1468 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[5]),
    .O(\pidController/p_mux0000<5>7_1912 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<5>8  (
    .ADR0(\w_setpoint[5] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<5>8_1913 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/p_mux0000<5>46  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .ADR3(\pidController/p_mux0000<5>21_1911 ),
    .O(\pidController/p_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<4>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_4_1467 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[4]),
    .O(\pidController/p_mux0000<4>7_1907 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<4>8  (
    .ADR0(\w_setpoint[4] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<4>8_1908 )
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/p_mux0000<4>83  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .ADR2(N686),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1]),
    .O(\pidController/p_mux0000<4>83_1909 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<4>100  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/p_mux0000<4>83_1909 ),
    .ADR2(\pidController/p_mux0000<4>21_1906 ),
    .O(\pidController/p_mux0000 [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<0>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[0]),
    .ADR2(r_error_unsigned_addsub0000[0]),
    .O(r_error_unsigned_mux0000[0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_10/Mxor_P_Result1  (
    .ADR0(\pidController/p [10]),
    .ADR1(\pidController/a [10]),
    .O(\pidController/adder_32bit_0/P0[10] )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<7>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR2(N700),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<11>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR3(N692),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_8/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<6>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[6]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [6]),
    .O(\pidController/a_mux0000<6>7_1415 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<6>23  (
    .ADR0(\pidController/a_mux0000<6>7_1415 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<6>10_1414 ),
    .ADR3(\pidController/sum [6]),
    .O(\pidController/a_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<5>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[5]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [5]),
    .O(\pidController/a_mux0000<5>7_1412 )
  );
  X_LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .ADR3(N147),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w15 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<6>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_6_1469 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[6]),
    .O(\pidController/p_mux0000<6>7_1916 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<6>8  (
    .ADR0(\w_setpoint[6] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<6>8_1917 )
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/p_mux0000<6>83  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[6] ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .O(\pidController/p_mux0000<6>83_1918 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<6>100  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/p_mux0000<6>83_1918 ),
    .ADR2(\pidController/p_mux0000<6>21_1915 ),
    .O(\pidController/p_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<1>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[1]),
    .ADR2(r_error_unsigned_addsub0000[1]),
    .O(r_error_unsigned_mux0000[1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<2>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[2]),
    .ADR2(r_error_unsigned_addsub0000[2]),
    .O(r_error_unsigned_mux0000[2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<3>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[3]),
    .ADR2(r_error_unsigned_addsub0000[3]),
    .O(r_error_unsigned_mux0000[3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<4>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[4]),
    .ADR2(r_error_unsigned_addsub0000[4]),
    .O(r_error_unsigned_mux0000[4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<5>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[5]),
    .ADR2(r_error_unsigned_addsub0000[5]),
    .O(r_error_unsigned_mux0000[5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<6>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[6]),
    .ADR2(r_error_unsigned_addsub0000[6]),
    .O(r_error_unsigned_mux0000[6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_8/Mxor_P_Result1  (
    .ADR0(\pidController/p [8]),
    .ADR1(\pidController/a [8]),
    .O(\pidController/adder_32bit_0/P0[8] )
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_7/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [7])
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_6/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [6])
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_5/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_3/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [2]),
    .ADR2(N668),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_0/cout1  (
    .ADR0(N647),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w8 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_3/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [1]),
    .ADR1(N653),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [2])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w7 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/Mxor_S_Result1  (
    .ADR0(N716),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3]),
    .ADR2(N655),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N2 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N13 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3]),
    .ADR2(N674),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N6 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<2>1  (
    .ADR0(N675),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N14 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR2(N699),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<12>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [12]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR3(N666),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/cout1  (
    .ADR0(N715),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/cout1  (
    .ADR0(N659),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h135F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N151)
  );
  X_LUT4 #(
    .INIT ( 16'h8CAF ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR2(N670),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N152)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<6>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR1(N152),
    .ADR2(N151),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8CAF ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N155)
  );
  X_LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4]),
    .ADR3(N725),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1657 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .ADR1(N705),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .O(N161)
  );
  X_LUT4 #(
    .INIT ( 16'hD5AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry_SW1  (
    .ADR0(N649),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .O(N162)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<7>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[7]),
    .ADR2(r_error_unsigned_addsub0000[7]),
    .O(r_error_unsigned_mux0000[7])
  );
  X_LUT4 #(
    .INIT ( 16'hFFE9 ))
  \w_setpoint<7>1  (
    .ADR0(DPSwitch_3_IBUF_14),
    .ADR1(DPSwitch_4_IBUF_15),
    .ADR2(DPSwitch_1_IBUF_12),
    .ADR3(DPSwitch_2_IBUF_13),
    .O(\w_setpoint[7] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<8>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[8]),
    .ADR2(r_error_unsigned_addsub0000[8]),
    .O(r_error_unsigned_mux0000[8])
  );
  X_LUT4 #(
    .INIT ( 16'h0110 ))
  \w_setpoint<6>1  (
    .ADR0(DPSwitch_2_IBUF_13),
    .ADR1(DPSwitch_3_IBUF_14),
    .ADR2(DPSwitch_1_IBUF_12),
    .ADR3(DPSwitch_4_IBUF_15),
    .O(\w_setpoint[6] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<9>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[9]),
    .ADR2(r_error_unsigned_addsub0000[9]),
    .O(r_error_unsigned_mux0000[9])
  );
  X_LUT4 #(
    .INIT ( 16'h0114 ))
  \w_setpoint<5>1  (
    .ADR0(DPSwitch_1_IBUF_12),
    .ADR1(DPSwitch_2_IBUF_13),
    .ADR2(DPSwitch_3_IBUF_14),
    .ADR3(DPSwitch_4_IBUF_15),
    .O(\w_setpoint[5] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<10>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[10]),
    .ADR2(r_error_unsigned_addsub0000[10]),
    .O(r_error_unsigned_mux0000[10])
  );
  X_LUT4 #(
    .INIT ( 16'hFFE9 ))
  \w_setpoint<4>1  (
    .ADR0(DPSwitch_2_IBUF_13),
    .ADR1(DPSwitch_4_IBUF_15),
    .ADR2(DPSwitch_1_IBUF_12),
    .ADR3(DPSwitch_3_IBUF_14),
    .O(\w_setpoint[4] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<11>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[11]),
    .ADR2(r_error_unsigned_addsub0000[11]),
    .O(r_error_unsigned_mux0000[11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<12>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[12]),
    .ADR2(r_error_unsigned_addsub0000[12]),
    .O(r_error_unsigned_mux0000[12])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF9 ))
  \w_setpoint<2>1  (
    .ADR0(DPSwitch_1_IBUF_12),
    .ADR1(DPSwitch_3_IBUF_14),
    .ADR2(DPSwitch_4_IBUF_15),
    .ADR3(DPSwitch_2_IBUF_13),
    .O(\w_setpoint[2] )
  );
  X_LUT3 #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<10>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1781 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/N4 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<7>_Result1  (
    .ADR0(\pidController/p [7]),
    .ADR1(\pidController/a [7]),
    .ADR2(N689),
    .O(\pidController/sum [7])
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<8>_Result1  (
    .ADR0(\pidController/a [7]),
    .ADR1(\pidController/p [7]),
    .ADR2(\pidController/adder_32bit_0/P0[8] ),
    .ADR3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [8])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<8>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_8_1487 ),
    .O(N168)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<7>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_7_1486 ),
    .O(N171)
  );
  X_LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .ADR2(N707),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1660 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry37  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1661 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry14_1660 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF440 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .ADR2(N708),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1653 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry37  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1654 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry14_1653 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<7>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_7_1470 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[7]),
    .O(\pidController/p_mux0000<7>7_1921 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/p_mux0000<7>8  (
    .ADR0(\w_setpoint[7] ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .O(\pidController/p_mux0000<7>8_1922 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<13>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[13]),
    .ADR2(r_error_unsigned_addsub0000[13]),
    .O(r_error_unsigned_mux0000[13])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \w_setpoint<1>1  (
    .ADR0(DPSwitch_4_IBUF_15),
    .ADR1(DPSwitch_1_IBUF_12),
    .ADR2(DPSwitch_3_IBUF_14),
    .ADR3(DPSwitch_2_IBUF_13),
    .O(\w_setpoint[1] )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \r_error_unsigned_mux0000<14>1  (
    .ADR0(w_error[15]),
    .ADR1(w_error[14]),
    .ADR2(r_error_unsigned_addsub0000[14]),
    .O(r_error_unsigned_mux0000[14])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \r_error_unsigned_mux0000<15>1  (
    .ADR0(w_error[15]),
    .ADR1(r_error_unsigned_addsub0000[15]),
    .O(r_error_unsigned_mux0000[15])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \r_error_unsigned_mux0000<16>1  (
    .ADR0(w_error[15]),
    .ADR1(r_error_unsigned_addsub0000[16]),
    .O(r_error_unsigned_mux0000[16])
  );
  X_LUT4 #(
    .INIT ( 16'h0110 ))
  \w_setpoint<0>1  (
    .ADR0(DPSwitch_3_IBUF_14),
    .ADR1(DPSwitch_4_IBUF_15),
    .ADR2(DPSwitch_1_IBUF_12),
    .ADR3(DPSwitch_2_IBUF_13),
    .O(\w_setpoint[0] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_3/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_2/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \pidController/adder_32bit_0/Mxor_o_s<6>_Result111  (
    .ADR0(\pidController/a [5]),
    .ADR1(\pidController/p [5]),
    .O(\pidController/adder_32bit_0/N33 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_4/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_3/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_1/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<10>1  (
    .ADR0(N663),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [10]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_7/Go11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .ADR3(N677),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .ADR3(N717),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .ADR3(N173),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE800 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .ADR3(N177),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<8>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[8]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [8]),
    .O(\pidController/a_mux0000<8>7_1421 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<8>23  (
    .ADR0(\pidController/a_mux0000<8>7_1421 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<8>10_1420 ),
    .ADR3(\pidController/sum [8]),
    .O(\pidController/a_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<7>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[7]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [7]),
    .O(\pidController/a_mux0000<7>7_1418 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<7>23  (
    .ADR0(\pidController/a_mux0000<7>7_1418 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<7>10_1417 ),
    .ADR3(\pidController/sum [7]),
    .O(\pidController/a_mux0000 [7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<0>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/N13 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \pidController/adder_32bit_0/Mxor_o_s<5>_Result11  (
    .ADR0(\pidController/a [5]),
    .ADR1(\pidController/p [5]),
    .O(\pidController/adder_32bit_0/N4 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_4/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [4])
  );
  X_LUT3 #(
    .INIT ( 8'h42 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<10>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/N5 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<10>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_10_1475 ),
    .O(N188)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR1(N701),
    .ADR2(N190),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<8>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_8_1471 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[8]),
    .O(\pidController/p_mux0000<8>7_1925 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_B_stage_1_2/Go1  (
    .ADR0(\pidController/a [4]),
    .ADR1(\pidController/a [3]),
    .ADR2(\pidController/p [3]),
    .ADR3(\pidController/p [4]),
    .O(\pidController/adder_32bit_0/G1[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<9>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[9]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [9]),
    .O(\pidController/a_mux0000<9>7_1424 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<9>23  (
    .ADR0(\pidController/a_mux0000<9>7_1424 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<9>10_1423 ),
    .ADR3(\pidController/sum [9]),
    .O(\pidController/a_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<10>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[10]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [10]),
    .O(\pidController/a_mux0000<10>7_1383 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<10>23  (
    .ADR0(\pidController/a_mux0000<10>7_1383 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<10>10_1381 ),
    .ADR3(\pidController/sum [10]),
    .O(\pidController/a_mux0000 [10])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_1/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_2/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w5 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_3/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [3])
  );
  X_LUT3 #(
    .INIT ( 8'h2A ))
  \pidController/multiplier_16x16bit_pipelined/booth_array_0/booth_radix4_2/negation1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/negation [2])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N13 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/md<12>_SW1  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_12_1477 ),
    .O(N196)
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<9>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_9_1472 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[9]),
    .O(\pidController/p_mux0000<9>7_1927 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<12>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[12]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [12]),
    .O(\pidController/a_mux0000<12>7_1389 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<12>23  (
    .ADR0(\pidController/a_mux0000<12>7_1389 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<12>10_1388 ),
    .ADR3(\pidController/sum [12]),
    .O(\pidController/a_mux0000 [12])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<11>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[11]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [11]),
    .O(\pidController/a_mux0000<11>7_1386 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<11>23  (
    .ADR0(\pidController/a_mux0000<11>7_1386 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<11>10_1385 ),
    .ADR3(\pidController/sum [11]),
    .O(\pidController/a_mux0000 [11])
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<10>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_10_1459 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[10]),
    .O(\pidController/p_mux0000<10>7_1878 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/operator_A_4/Mxor_P_Result1  (
    .ADR0(\pidController/p [4]),
    .ADR1(\pidController/a [4]),
    .O(\pidController/adder_32bit_0/P0[4] )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go0  (
    .ADR0(\pidController/a [2]),
    .ADR1(\pidController/p [2]),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1448 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go110  (
    .ADR0(\pidController/a [8]),
    .ADR1(\pidController/a [7]),
    .ADR2(\pidController/p [7]),
    .ADR3(\pidController/p [8]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169  (
    .ADR0(N682),
    .ADR1(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 ),
    .O(\pidController/adder_32bit_0/N20 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<13>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_13_1462 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[13]),
    .O(\pidController/p_mux0000<13>7_1886 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<11>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_11_1460 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[11]),
    .O(\pidController/p_mux0000<11>7_1880 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<14>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[14]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [14]),
    .O(\pidController/a_mux0000<14>7_1395 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<13>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[13]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [13]),
    .O(\pidController/a_mux0000<13>7_1392 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFA ))
  \pidController/a_mux0000<13>23  (
    .ADR0(\pidController/a_mux0000<13>7_1392 ),
    .ADR1(\pidController/a_mux0000<10>18 ),
    .ADR2(\pidController/a_mux0000<13>10_1391 ),
    .ADR3(\pidController/sum [13]),
    .O(\pidController/a_mux0000 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<12>13  (
    .ADR0(\pidController/p [12]),
    .ADR1(\pidController/p_mux0000<12>7_1884 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<12>13_1883 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_1_0/Go1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_1/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w4 [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/adder_32bit_0/operator_C_stage_1_0/Go1  (
    .ADR0(\pidController/p [0]),
    .ADR1(\pidController/cout_1455 ),
    .ADR2(\pidController/a [0]),
    .O(\pidController/adder_32bit_0/G1[0] )
  );
  X_LUT4 #(
    .INIT ( 16'hF8F0 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_2/Go  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 ),
    .ADR2(N690),
    .ADR3(N213),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hB2FA ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w6 [1]),
    .ADR3(N218),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/G4<7>10  (
    .ADR0(\pidController/a [14]),
    .ADR1(\pidController/a [13]),
    .ADR2(\pidController/p [13]),
    .ADR3(\pidController/p [14]),
    .O(\pidController/adder_32bit_0/G4<7>10_1433 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<14>13  (
    .ADR0(\pidController/p [14]),
    .ADR1(\pidController/p_mux0000<14>7_1889 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<14>13_1888 )
  );
  X_BUF   i_A_IBUF (
    .I(NlwRenamedSig_IO_i_A),
    .O(i_A_IBUF_1355)
  );
  X_BUF   i_B_IBUF (
    .I(NlwRenamedSig_IO_i_B),
    .O(i_B_IBUF_1357)
  );
  X_BUF   DPSwitch_4_IBUF (
    .I(NlwRenamedSig_IO_DPSwitch[4]),
    .O(DPSwitch_4_IBUF_15)
  );
  X_BUF   DPSwitch_3_IBUF (
    .I(NlwRenamedSig_IO_DPSwitch[3]),
    .O(DPSwitch_3_IBUF_14)
  );
  X_BUF   DPSwitch_2_IBUF (
    .I(NlwRenamedSig_IO_DPSwitch[2]),
    .O(DPSwitch_2_IBUF_13)
  );
  X_BUF   DPSwitch_1_IBUF (
    .I(NlwRenamedSig_IO_DPSwitch[1]),
    .O(DPSwitch_1_IBUF_12)
  );
  X_BUF   DPSwitch_0_IBUF (
    .I(NlwRenamedSig_IO_DPSwitch[0]),
    .O(DPSwitch_0_IBUF_11)
  );
  X_BUF   Switch_5_IBUF (
    .I(NlwRenamedSig_IO_Switch[5]),
    .O(Switch_5_IBUF_650)
  );
  X_BUF   Switch_4_IBUF (
    .I(NlwRenamedSig_IO_Switch[4]),
    .O(Switch_4_IBUF_649)
  );
  X_BUF   Switch_3_IBUF (
    .I(NlwRenamedSig_IO_Switch[3]),
    .O(Switch_3_IBUF_648)
  );
  X_BUF   Switch_2_IBUF (
    .I(NlwRenamedSig_IO_Switch[2]),
    .O(Switch_2_IBUF_647)
  );
  X_BUF   Switch_1_IBUF (
    .I(NlwRenamedSig_IO_Switch[1]),
    .O(Switch_1_IBUF_646)
  );
  X_BUF   Switch_0_IBUF (
    .I(NlwRenamedSig_IO_Switch[0]),
    .O(Switch_0_IBUF_645)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_Enable_0 (
    .CLK(Clk_5_4),
    .I(\r_Enable_mux0000<2>1 ),
    .SSET(s_Main_FSM_FFd3_2335),
    .O(r_Enable[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<2>11  (
    .ADR0(r_Enable[0]),
    .ADR1(s_Main_FSM_FFd1_2333),
    .ADR2(s_Main_FSM_FFd2_2334),
    .O(\r_Enable_mux0000<2>1 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_Enable_1 (
    .CLK(Clk_5_4),
    .I(\r_Enable_mux0000<1>1 ),
    .SSET(s_Main_FSM_FFd1_2333),
    .O(r_Enable[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<1>11  (
    .ADR0(r_Enable[1]),
    .ADR1(s_Main_FSM_FFd3_2335),
    .ADR2(s_Main_FSM_FFd2_2334),
    .O(\r_Enable_mux0000<1>1 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_Enable_2 (
    .CLK(Clk_5_4),
    .I(\r_Enable_mux0000<0>1 ),
    .SSET(s_Main_FSM_FFd1_2333),
    .O(r_Enable[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \r_Enable_mux0000<0>11  (
    .ADR0(r_Enable[2]),
    .ADR1(s_Main_FSM_FFd2_2334),
    .ADR2(s_Main_FSM_FFd3_2335),
    .O(\r_Enable_mux0000<0>1 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_0 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<7>1 ),
    .SSET(N11),
    .O(r_SevenSegment[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_1 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<6>32 ),
    .SSET(N3),
    .O(r_SevenSegment[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<6>321  (
    .ADR0(N11),
    .ADR1(\r_SevenSegment_mux0000<6>8_2124 ),
    .ADR2(\r_SevenSegment_mux0000<6>19_2122 ),
    .O(\r_SevenSegment_mux0000<6>32 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_2 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<5>141_2118 ),
    .SSET(\r_SevenSegment_mux0000<5>76_2121 ),
    .O(r_SevenSegment[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_3 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<4>81_2117 ),
    .SSET(\r_SevenSegment_mux0000<4>37_2116 ),
    .O(r_SevenSegment[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_4 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<3>20 ),
    .SSET(N3),
    .O(r_SevenSegment[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \r_SevenSegment_mux0000<3>201  (
    .ADR0(\r_SevenSegment_mux0000<3>4_2110 ),
    .ADR1(N2),
    .ADR2(\r_SevenSegment_mux0000<3>13_2102 ),
    .O(\r_SevenSegment_mux0000<3>20 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_5 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<2>86 ),
    .SSET(N11),
    .O(r_SevenSegment[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_6 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<1>114_2093 ),
    .SSET(N11),
    .O(r_SevenSegment[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_SevenSegment_7 (
    .CLK(Clk_5_4),
    .I(\r_SevenSegment_mux0000<0>48_2091 ),
    .SSET(N2),
    .O(r_SevenSegment[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_LED_1 (
    .CLK(Clk_BUFGP),
    .I(\r_LED_mux0000<6>11 ),
    .SRST(w_error[15]),
    .O(r_LED[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  r_LED_2 (
    .CLK(Clk_BUFGP),
    .I(w_error[15]),
    .SRST(N01),
    .O(r_LED[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  s_Main_FSM_FFd2 (
    .CLK(Clk_5_4),
    .I(s_Main_FSM_FFd4_2336),
    .SSET(s_Main_FSM_FFd1_2333),
    .O(s_Main_FSM_FFd2_2334),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pwmGenerator/pwm_out  (
    .CLK(Clk_BUFGP),
    .I(N1),
    .SRST(\pwmGenerator/Mcompar_pwm_out_cmp_gt0000_cy [15]),
    .O(\pwmGenerator/pwm_out_2052 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_SM_Main_FSM_FFd5  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Digit_Index_and0000 ),
    .SSET(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_SM_Main_FSM_FFd5_793 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_0  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_0_mux00001_701 ),
    .SSET(N120),
    .O(\converter/r_BCD [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_2  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_2_mux00001_718 ),
    .SSET(N108),
    .O(\converter/r_BCD [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_3  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_3_mux00001_720 ),
    .SSET(N91),
    .O(\converter/r_BCD [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_1  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_1_mux00001_716 ),
    .SSET(N110),
    .O(\converter/r_BCD [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_5  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_5_mux00001_727 ),
    .SSET(N106),
    .O(\converter/r_BCD [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_6  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_6_mux00001_729 ),
    .SSET(N104),
    .O(\converter/r_BCD [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_4  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_4_mux000023 ),
    .SSET(\converter/r_BCD_4_mux000017_723 ),
    .O(\converter/r_BCD [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \converter/r_BCD_4_mux0000231  (
    .ADR0(\converter/r_BCD [4]),
    .ADR1(\converter/N6 ),
    .O(\converter/r_BCD_4_mux000023 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_8  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_8_mux00001_733 ),
    .SSET(N100),
    .O(\converter/r_BCD [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_9  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_9_mux00001_735 ),
    .SSET(N98),
    .O(\converter/r_BCD [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_7  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_7_mux00001_731 ),
    .SSET(N102),
    .O(\converter/r_BCD [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \converter/r_BCD_7_mux00001  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(N719),
    .O(\converter/r_BCD_7_mux00001_731 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_11  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_11_mux00001_706 ),
    .SSET(N93),
    .O(\converter/r_BCD [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_12  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_12_mux000019 ),
    .SSET(\converter/r_BCD_12_mux00000_708 ),
    .O(\converter/r_BCD [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_10  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_10_mux00001_704 ),
    .SSET(N118),
    .O(\converter/r_BCD [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_14  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_14_mux00001_713 ),
    .SSET(N114),
    .O(\converter/r_BCD [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_15  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_15_mux00001_715 ),
    .SSET(N112),
    .O(\converter/r_BCD [15]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \converter/r_BCD_15_mux00001  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/N10 ),
    .O(\converter/r_BCD_15_mux00001_715 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_BCD_13  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_BCD_13_mux00001_711 ),
    .SSET(N116),
    .O(\converter/r_BCD [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_7  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<7>25_767 ),
    .SSET(\converter/r_Binary_mux0000<7>12_766 ),
    .O(\converter/r_Binary [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_6  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<6>25_765 ),
    .SSET(\converter/r_Binary_mux0000<6>12_764 ),
    .O(\converter/r_Binary [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_5  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<5>25_763 ),
    .SSET(\converter/r_Binary_mux0000<5>12_762 ),
    .O(\converter/r_Binary [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_4  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<4>25_761 ),
    .SSET(\converter/r_Binary_mux0000<4>12_760 ),
    .O(\converter/r_Binary [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_3  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<3>25_759 ),
    .SSET(\converter/r_Binary_mux0000<3>12_758 ),
    .O(\converter/r_Binary [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_2  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<2>25_757 ),
    .SSET(\converter/r_Binary_mux0000<2>12_756 ),
    .O(\converter/r_Binary [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_1  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<1>25_755 ),
    .SSET(\converter/r_Binary_mux0000<1>12_754 ),
    .O(\converter/r_Binary [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Binary_0  (
    .CLK(Clk_BUFGP),
    .I(\converter/r_Binary_mux0000<0>20_750 ),
    .SSET(\converter/r_Binary_mux0000<0>12_749 ),
    .O(\converter/r_Binary [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_DV  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd6_794 ),
    .I(LED_5_OBUF_27),
    .SSET(\converter/r_SM_Main_FSM_FFd3_790 ),
    .O(\converter/r_DV_770 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<1>_rt  (
    .ADR0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_141 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<2>_rt  (
    .ADR0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_143 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<3>_rt  (
    .ADR0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_145 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<4>_rt  (
    .ADR0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_147 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<5>_rt  (
    .ADR0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_149 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<6>_rt  (
    .ADR0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_151 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<7>_rt  (
    .ADR0(counter[7]),
    .O(\Mcount_counter_cy<7>_rt_153 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<8>_rt  (
    .ADR0(counter[8]),
    .O(\Mcount_counter_cy<8>_rt_155 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<9>_rt  (
    .ADR0(counter[9]),
    .O(\Mcount_counter_cy<9>_rt_157 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<10>_rt  (
    .ADR0(counter[10]),
    .O(\Mcount_counter_cy<10>_rt_131 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<11>_rt  (
    .ADR0(counter[11]),
    .O(\Mcount_counter_cy<11>_rt_133 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<12>_rt  (
    .ADR0(counter[12]),
    .O(\Mcount_counter_cy<12>_rt_135 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<13>_rt  (
    .ADR0(counter[13]),
    .O(\Mcount_counter_cy<13>_rt_137 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_cy<14>_rt  (
    .ADR0(counter[14]),
    .O(\Mcount_counter_cy<14>_rt_139 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<1>_rt  (
    .ADR0(\pwmGenerator/rampa [1]),
    .O(\pwmGenerator/Mcount_rampa_cy<1>_rt_2033 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<2>_rt  (
    .ADR0(\pwmGenerator/rampa [2]),
    .O(\pwmGenerator/Mcount_rampa_cy<2>_rt_2035 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<3>_rt  (
    .ADR0(\pwmGenerator/rampa [3]),
    .O(\pwmGenerator/Mcount_rampa_cy<3>_rt_2037 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<4>_rt  (
    .ADR0(\pwmGenerator/rampa [4]),
    .O(\pwmGenerator/Mcount_rampa_cy<4>_rt_2039 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<5>_rt  (
    .ADR0(\pwmGenerator/rampa [5]),
    .O(\pwmGenerator/Mcount_rampa_cy<5>_rt_2041 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<6>_rt  (
    .ADR0(\pwmGenerator/rampa [6]),
    .O(\pwmGenerator/Mcount_rampa_cy<6>_rt_2043 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<7>_rt  (
    .ADR0(\pwmGenerator/rampa [7]),
    .O(\pwmGenerator/Mcount_rampa_cy<7>_rt_2045 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<8>_rt  (
    .ADR0(\pwmGenerator/rampa [8]),
    .O(\pwmGenerator/Mcount_rampa_cy<8>_rt_2047 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<9>_rt  (
    .ADR0(\pwmGenerator/rampa [9]),
    .O(\pwmGenerator/Mcount_rampa_cy<9>_rt_2049 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<10>_rt  (
    .ADR0(\pwmGenerator/rampa [10]),
    .O(\pwmGenerator/Mcount_rampa_cy<10>_rt_2023 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<11>_rt  (
    .ADR0(\pwmGenerator/rampa [11]),
    .O(\pwmGenerator/Mcount_rampa_cy<11>_rt_2025 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<12>_rt  (
    .ADR0(\pwmGenerator/rampa [12]),
    .O(\pwmGenerator/Mcount_rampa_cy<12>_rt_2027 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<13>_rt  (
    .ADR0(\pwmGenerator/rampa [13]),
    .O(\pwmGenerator/Mcount_rampa_cy<13>_rt_2029 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_cy<14>_rt  (
    .ADR0(\pwmGenerator/rampa [14]),
    .O(\pwmGenerator/Mcount_rampa_cy<14>_rt_2031 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt  (
    .ADR0(w_velocity[1]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_cy<0>_rt_108 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt  (
    .ADR0(w_velocity[3]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_cy<2>_rt_111 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Madd_o_velocity_cy<14>_rt  (
    .ADR0(\decoder/o_velocity_addsub0001 [14]),
    .O(\decoder/Madd_o_velocity_cy<14>_rt_1026 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Madd_o_velocity_cy<13>_rt  (
    .ADR0(\decoder/o_velocity_addsub0001 [13]),
    .O(\decoder/Madd_o_velocity_cy<13>_rt_1024 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<15>_rt  (
    .ADR0(\decoder/r_Counter [15]),
    .O(\decoder/Mcount_r_Counter_cy<15>_rt_1123 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<14>_rt  (
    .ADR0(\decoder/r_Counter [14]),
    .O(\decoder/Mcount_r_Counter_cy<14>_rt_1121 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<13>_rt  (
    .ADR0(\decoder/r_Counter [13]),
    .O(\decoder/Mcount_r_Counter_cy<13>_rt_1119 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<12>_rt  (
    .ADR0(\decoder/r_Counter [12]),
    .O(\decoder/Mcount_r_Counter_cy<12>_rt_1117 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<11>_rt  (
    .ADR0(\decoder/r_Counter [11]),
    .O(\decoder/Mcount_r_Counter_cy<11>_rt_1115 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<10>_rt  (
    .ADR0(\decoder/r_Counter [10]),
    .O(\decoder/Mcount_r_Counter_cy<10>_rt_1113 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<9>_rt  (
    .ADR0(\decoder/r_Counter [9]),
    .O(\decoder/Mcount_r_Counter_cy<9>_rt_1141 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<8>_rt  (
    .ADR0(\decoder/r_Counter [8]),
    .O(\decoder/Mcount_r_Counter_cy<8>_rt_1139 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<7>_rt  (
    .ADR0(\decoder/r_Counter [7]),
    .O(\decoder/Mcount_r_Counter_cy<7>_rt_1137 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<6>_rt  (
    .ADR0(\decoder/r_Counter [6]),
    .O(\decoder/Mcount_r_Counter_cy<6>_rt_1135 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<5>_rt  (
    .ADR0(\decoder/r_Counter [5]),
    .O(\decoder/Mcount_r_Counter_cy<5>_rt_1133 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<4>_rt  (
    .ADR0(\decoder/r_Counter [4]),
    .O(\decoder/Mcount_r_Counter_cy<4>_rt_1131 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<3>_rt  (
    .ADR0(\decoder/r_Counter [3]),
    .O(\decoder/Mcount_r_Counter_cy<3>_rt_1129 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<2>_rt  (
    .ADR0(\decoder/r_Counter [2]),
    .O(\decoder/Mcount_r_Counter_cy<2>_rt_1127 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_cy<1>_rt  (
    .ADR0(\decoder/r_Counter [1]),
    .O(\decoder/Mcount_r_Counter_cy<1>_rt_1125 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<6>_rt  (
    .ADR0(\converter/r_Loop_Count [6]),
    .O(\converter/Mcount_r_Loop_Count_cy<6>_rt_667 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<5>_rt  (
    .ADR0(\converter/r_Loop_Count [5]),
    .O(\converter/Mcount_r_Loop_Count_cy<5>_rt_665 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<4>_rt  (
    .ADR0(\converter/r_Loop_Count [4]),
    .O(\converter/Mcount_r_Loop_Count_cy<4>_rt_663 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<3>_rt  (
    .ADR0(\converter/r_Loop_Count [3]),
    .O(\converter/Mcount_r_Loop_Count_cy<3>_rt_661 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<2>_rt  (
    .ADR0(\converter/r_Loop_Count [2]),
    .O(\converter/Mcount_r_Loop_Count_cy<2>_rt_659 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_cy<1>_rt  (
    .ADR0(\converter/r_Loop_Count [1]),
    .O(\converter/Mcount_r_Loop_Count_cy<1>_rt_657 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_counter_xor<15>_rt  (
    .ADR0(counter[15]),
    .O(\Mcount_counter_xor<15>_rt_159 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pwmGenerator/Mcount_rampa_xor<15>_rt  (
    .ADR0(\pwmGenerator/rampa [15]),
    .O(\pwmGenerator/Mcount_rampa_xor<15>_rt_2051 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \decoder/Mcount_r_Counter_xor<16>_rt  (
    .ADR0(\decoder/r_Counter_161 ),
    .O(\decoder/Mcount_r_Counter_xor<16>_rt_1143 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \converter/Mcount_r_Loop_Count_xor<7>_rt  (
    .ADR0(\converter/r_Loop_Count [7]),
    .O(\converter/Mcount_r_Loop_Count_xor<7>_rt_669 ),
    .ADR1(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h2800 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_2/Go_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .ADR2(N679),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ),
    .O(N213)
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/operator_B_stage_1_2/Po1  (
    .ADR0(\pidController/p [4]),
    .ADR1(\pidController/a [4]),
    .ADR2(\pidController/a [3]),
    .ADR3(\pidController/p [3]),
    .O(\pidController/adder_32bit_0/P1 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE080 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go12  (
    .ADR0(\pidController/a [1]),
    .ADR1(\pidController/p [1]),
    .ADR2(N236),
    .ADR3(\pidController/adder_32bit_0/G1[0] ),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1449 )
  );
  X_LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1  (
    .ADR0(\pidController/adder_32bit_0/N25 ),
    .ADR1(\pidController/a [13]),
    .ADR2(\pidController/p [13]),
    .ADR3(\pidController/adder_32bit_0/G4<6>51_1432 ),
    .O(\pidController/sum [13])
  );
  X_LUT4 #(
    .INIT ( 16'h7887 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<5>_Result11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 )
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w12<1>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .O(N193)
  );
  X_LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/adder_32bit_0/G4<6>64_SW0  (
    .ADR0(N644),
    .ADR1(\pidController/p [13]),
    .ADR2(\pidController/a [13]),
    .O(N238)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \pidController/adder_32bit_0/G4<6>64_SW1  (
    .ADR0(\pidController/p [13]),
    .ADR1(\pidController/a [13]),
    .O(N239)
  );
  X_LUT4 #(
    .INIT ( 16'h99A5 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1  (
    .ADR0(\pidController/adder_32bit_0/P0[14] ),
    .ADR1(N239),
    .ADR2(N238),
    .ADR3(\pidController/adder_32bit_0/G4<6>51_1432 ),
    .O(\pidController/sum [14])
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW1  (
    .ADR0(N710),
    .ADR1(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR2(\pidController/adder_32bit_0/N26 ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .O(N248)
  );
  X_LUT4 #(
    .INIT ( 16'h88A0 ))
  \pidController/adder_32bit_0/G4<6>51  (
    .ADR0(\pidController/adder_32bit_0/G4<6>48_1431 ),
    .ADR1(N248),
    .ADR2(N247),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 ),
    .O(\pidController/adder_32bit_0/G4<6>51_1432 )
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go125  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1448 ),
    .ADR1(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1449 ),
    .ADR2(N251),
    .ADR3(N250),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 )
  );
  X_LUT3 #(
    .INIT ( 8'hE0 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW1  (
    .ADR0(N727),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1558 ),
    .O(N256)
  );
  X_LUT4 #(
    .INIT ( 16'hFCEE ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64  (
    .ADR0(N255),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .ADR2(N256),
    .ADR3(N696),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hD7FF ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 ),
    .ADR1(N678),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ),
    .O(N258)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<11>76  (
    .ADR0(\pidController/p_mux0000<11>7_1880 ),
    .ADR1(\pidController/p [11]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/p_mux0000<11>74_1881 ),
    .O(\pidController/p_mux0000 [11])
  );
  X_LUT4 #(
    .INIT ( 16'h9666 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_8/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] )
  );
  X_LUT4 #(
    .INIT ( 16'hF77F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<6>_Result111  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 )
  );
  X_LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [4])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] )
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<9>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9])
  );
  X_LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<5>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW2  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .ADR3(N667),
    .O(N260)
  );
  X_LUT4 #(
    .INIT ( 16'hFE98 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB ),
    .ADR2(N260),
    .ADR3(N261),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w14 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8882 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW1  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(N222),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1560 ),
    .ADR3(N721),
    .O(N267)
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \converter/r_BCD_13_mux000011_SW1  (
    .ADR0(\converter/Madd_add0000_addsub0000_lut [2]),
    .ADR1(\converter/w_BCD_Digit [1]),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(N96)
  );
  X_LUT4 #(
    .INIT ( 16'h7080 ))
  \pidController/p_mux0000<14>77_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N671),
    .O(N272)
  );
  X_LUT4 #(
    .INIT ( 16'hD8E4 ))
  \pidController/p_mux0000<13>77  (
    .ADR0(N672),
    .ADR1(N275),
    .ADR2(N276),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4 [6]),
    .O(\pidController/p_mux0000 [13])
  );
  X_LUT4 #(
    .INIT ( 16'hCE00 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW0  (
    .ADR0(N709),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1575 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .O(N278)
  );
  X_LUT4 #(
    .INIT ( 16'h09F6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>75_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_bdd0 ),
    .ADR2(N149),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w15 [1]),
    .O(N222)
  );
  X_LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [4])
  );
  X_LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [3])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<1>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[1] )
  );
  X_LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3])
  );
  X_LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<12>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1770 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [12])
  );
  X_LUT4 #(
    .INIT ( 16'h9C3C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<11>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1770 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [11])
  );
  X_LUT4 #(
    .INIT ( 16'hA74F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(N190)
  );
  X_LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW1  (
    .ADR0(\pidController/p [5]),
    .ADR1(\pidController/p [6]),
    .ADR2(\pidController/a [6]),
    .ADR3(\pidController/a [5]),
    .O(N231)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<11>_Result1_SW0  (
    .ADR0(\pidController/p [11]),
    .ADR1(\pidController/a [11]),
    .O(N287)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<9>_Result1_SW0  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/a [9]),
    .O(N289)
  );
  X_LUT4 #(
    .INIT ( 16'h7080 ))
  \pidController/p_mux0000<12>77_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N676),
    .O(N295)
  );
  X_LUT4 #(
    .INIT ( 16'h10E0 ))
  \pidController/p_mux0000<12>77_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .ADR1(N654),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] ),
    .O(N296)
  );
  X_LUT4 #(
    .INIT ( 16'hFAEE ))
  \pidController/p_mux0000<12>94  (
    .ADR0(\pidController/p_mux0000<12>13_1883 ),
    .ADR1(N295),
    .ADR2(N296),
    .ADR3(N693),
    .O(\pidController/p_mux0000 [12])
  );
  X_LUT4 #(
    .INIT ( 16'h9060 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N726),
    .O(N298)
  );
  X_LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/G4<7>62_SW1  (
    .ADR0(\pidController/adder_32bit_0/G4<7>59_1434 ),
    .ADR1(\pidController/p [15]),
    .ADR2(\pidController/a [15]),
    .ADR3(\pidController/adder_32bit_0/G4<7>10_1433 ),
    .O(N302)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1  (
    .ADR0(\pidController/adder_32bit_0/G4<6>48_1431 ),
    .ADR1(N302),
    .ADR2(N301),
    .ADR3(N688),
    .O(\pidController/sum [15])
  );
  X_LUT4 #(
    .INIT ( 16'hEEE8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1_SW1  (
    .ADR0(\pidController/a [4]),
    .ADR1(\pidController/p [4]),
    .ADR2(\pidController/a [3]),
    .ADR3(\pidController/p [3]),
    .O(N304)
  );
  X_LUT4 #(
    .INIT ( 16'h1F7F ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW0  (
    .ADR0(\pidController/a [5]),
    .ADR1(\pidController/p [5]),
    .ADR2(N683),
    .ADR3(\pidController/adder_32bit_0/G1[2] ),
    .O(N250)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR3(N702),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N313)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N703),
    .ADR2(N313),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N316)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N704),
    .ADR2(N316),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N325)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N326),
    .ADR2(N325),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h533F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N328)
  );
  X_LUT4 #(
    .INIT ( 16'hFCCA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N329)
  );
  X_LUT4 #(
    .INIT ( 16'h179F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(N331)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(N332),
    .ADR2(N331),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(N334)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(N335),
    .ADR2(N334),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7]),
    .ADR1(N723),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .O(N337)
  );
  X_LUT4 #(
    .INIT ( 16'hC993 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW1  (
    .ADR0(N713),
    .ADR1(\pidController/adder_32bit_0/P0[12] ),
    .ADR2(\pidController/p [11]),
    .ADR3(\pidController/a [11]),
    .O(N340)
  );
  X_LUT4 #(
    .INIT ( 16'h270F ))
  \pidController/adder_32bit_0/Mxor_o_s<12>_Result1  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR1(N340),
    .ADR2(N339),
    .ADR3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [12])
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<15>75_SW1  (
    .ADR0(N684),
    .ADR1(\pidController/p [15]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(N267),
    .O(N343)
  );
  X_LUT4 #(
    .INIT ( 16'hDF80 ))
  \pidController/p_mux0000<15>77  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1558 ),
    .ADR1(N343),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 ),
    .ADR3(N342),
    .O(\pidController/p_mux0000 [15])
  );
  X_LUT4 #(
    .INIT ( 16'h0096 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR3(N179),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1117 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW3  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/a [9]),
    .ADR2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .O(N346)
  );
  X_LUT4 #(
    .INIT ( 16'h99A5 ))
  \pidController/adder_32bit_0/Mxor_o_s<10>_Result1  (
    .ADR0(\pidController/adder_32bit_0/P0[10] ),
    .ADR1(N346),
    .ADR2(N345),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 ),
    .O(\pidController/sum [10])
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_3/Mxor_AxorB_Result1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[5] ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[6] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[7] ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [2]),
    .O(N283)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  r_LED_and00001 (
    .ADR0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .ADR1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .O(N01)
  );
  X_LUT3 #(
    .INIT ( 8'h60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_6/Go11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR2(N711),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 )
  );
  X_LUT3 #(
    .INIT ( 8'h60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go110  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR2(N350),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go110 )
  );
  X_LUT4 #(
    .INIT ( 16'h0880 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1575 )
  );
  X_LUT4 #(
    .INIT ( 16'hB34C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2])
  );
  X_LUT4 #(
    .INIT ( 16'hB34C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd<1>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [1])
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<5>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd<1>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go151  (
    .ADR0(\pidController/p [8]),
    .ADR1(\pidController/a [8]),
    .ADR2(\pidController/a [7]),
    .ADR3(\pidController/p [7]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 )
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \decoder/Maddsub_count_mux0000_lut<0>  (
    .ADR0(\decoder/count [0]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [0])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<1>  (
    .ADR0(\decoder/count [1]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [1])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<2>  (
    .ADR0(\decoder/count [2]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [2])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<3>  (
    .ADR0(\decoder/count [3]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [3])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<4>  (
    .ADR0(\decoder/count [4]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [4])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<5>  (
    .ADR0(\decoder/count [5]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [5])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<6>  (
    .ADR0(\decoder/count [6]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [6])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<7>  (
    .ADR0(\decoder/count [7]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [7])
  );
  X_LUT4 #(
    .INIT ( 16'hFF84 ))
  \pidController/p_mux0000<7>82  (
    .ADR0(N352),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .ADR3(\pidController/p_mux0000<7>21_1920 ),
    .O(\pidController/p_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'h868F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .ADR3(N354),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1658 )
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_S_Result1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[0] ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[4] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[1] ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [1]),
    .O(N361)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_3/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD ),
    .ADR1(N283),
    .ADR2(N361),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  r_controllerPin_or00001 (
    .ADR0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .ADR1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .ADR2(w_error[15]),
    .O(r_controllerPin_or0000)
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .ADR2(N706),
    .O(N363)
  );
  X_LUT4 #(
    .INIT ( 16'hCB0E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .ADR2(N657),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [2]),
    .O(N364)
  );
  X_LUT4 #(
    .INIT ( 16'hFBEA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry38  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1699 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [0]),
    .ADR2(N364),
    .ADR3(N363),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w15 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hC8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .ADR2(N720),
    .O(N366)
  );
  X_LUT4 #(
    .INIT ( 16'hCB0E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .ADR2(N658),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [2]),
    .O(N367)
  );
  X_LUT4 #(
    .INIT ( 16'hFBEA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry38  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1696 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [0]),
    .ADR2(N367),
    .ADR3(N366),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w11 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .ADR1(N697),
    .O(N369)
  );
  X_LUT4 #(
    .INIT ( 16'hEEE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_2/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2]),
    .ADR2(N369),
    .ADR3(N669),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w10 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9969 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_2/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w9 [2]),
    .ADR2(N371),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1650 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w9 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFF60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR2(N348),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1557 ),
    .O(N264)
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<2>21  (
    .ADR0(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR1(\pidController/sum [2]),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR3(\pidController/a_mux0000<2>13_1403 ),
    .O(\pidController/a_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<4>21  (
    .ADR0(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR1(\pidController/sum [4]),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR3(\pidController/a_mux0000<4>13_1409 ),
    .O(\pidController/a_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/a_mux0000<3>21  (
    .ADR0(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR1(\pidController/sum [3]),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR3(\pidController/a_mux0000<3>13_1406 ),
    .O(\pidController/a_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [6])
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4])
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_5_mux00001  (
    .ADR0(N643),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/r_Digit_Index [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_5_mux00001_727 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \converter/r_BCD_13_mux00001  (
    .ADR0(\converter/add0000_addsub0000 [1]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/r_Digit_Index [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_13_mux00001_711 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \converter/r_BCD_14_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/add0000_addsub0000 [2]),
    .ADR2(\converter/r_Digit_Index [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_14_mux00001_713 )
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<8>  (
    .ADR0(\decoder/count [8]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [8])
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<6>48  (
    .ADR0(\pidController/p [12]),
    .ADR1(\pidController/a [12]),
    .ADR2(\pidController/a [11]),
    .ADR3(\pidController/p [11]),
    .O(\pidController/adder_32bit_0/G4<6>48_1431 )
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<7>59  (
    .ADR0(\pidController/p [14]),
    .ADR1(\pidController/a [14]),
    .ADR2(\pidController/a [13]),
    .ADR3(\pidController/p [13]),
    .O(\pidController/adder_32bit_0/G4<7>59_1434 )
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<9>  (
    .ADR0(\decoder/count [9]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [9])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<10>  (
    .ADR0(\decoder/count [10]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [10])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<11>  (
    .ADR0(\decoder/count [11]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<12>  (
    .ADR0(\decoder/count [12]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [12])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<13>  (
    .ADR0(\decoder/count [13]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [13])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_6_mux00001  (
    .ADR0(N724),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/r_Digit_Index [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_6_mux00001_729 )
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1  (
    .ADR0(N373),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/adder_32bit_0/Mxor_o_s<2>_Result_SW0_SW2  (
    .ADR0(\pidController/p [2]),
    .ADR1(\pidController/a [2]),
    .O(N375)
  );
  X_LUT4 #(
    .INIT ( 16'h1E78 ))
  \pidController/adder_32bit_0/Mxor_o_s<2>_Result1  (
    .ADR0(\pidController/adder_32bit_0/G1[0] ),
    .ADR1(\pidController/p [1]),
    .ADR2(N375),
    .ADR3(\pidController/a [1]),
    .O(\pidController/sum [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0048 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .ADR1(N348),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1]),
    .ADR3(N377),
    .O(N255)
  );
  X_LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .ADR3(N379),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/carry0_1696 )
  );
  X_LUT4 #(
    .INIT ( 16'h2882 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [3]),
    .ADR2(N381),
    .ADR3(N3111),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/carry0_1699 )
  );
  X_LUT4 #(
    .INIT ( 16'h2888 ))
  \pidController/p_mux0000<10>77_SW0  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(N691),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .O(N383)
  );
  X_LUT4 #(
    .INIT ( 16'h3060 ))
  \pidController/p_mux0000<10>77_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N662),
    .O(N384)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFC ))
  \pidController/p_mux0000<10>94  (
    .ADR0(N384),
    .ADR1(N383),
    .ADR2(\pidController/p_mux0000<10>13_1876 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .O(\pidController/p_mux0000 [10])
  );
  X_LUT4 #(
    .INIT ( 16'h2888 ))
  \pidController/p_mux0000<8>77_SW0  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0]),
    .O(N386)
  );
  X_LUT4 #(
    .INIT ( 16'h3060 ))
  \pidController/p_mux0000<8>77_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[8] ),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w7 [0]),
    .O(N387)
  );
  X_LUT4 #(
    .INIT ( 16'hFFB8 ))
  \pidController/p_mux0000<8>94  (
    .ADR0(N387),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .ADR2(N386),
    .ADR3(\pidController/p_mux0000<8>13_1924 ),
    .O(\pidController/p_mux0000 [8])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW3  (
    .ADR0(N225),
    .ADR1(\pidController/p [11]),
    .ADR2(\pidController/a [11]),
    .O(N390)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/Mxor_o_s<11>_Result1  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR1(N390),
    .ADR2(N389),
    .ADR3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/sum [11])
  );
  X_LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW5  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .ADR1(\pidController/p [9]),
    .ADR2(\pidController/a [9]),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .O(N393)
  );
  X_LUT4 #(
    .INIT ( 16'hF0E4 ))
  \pidController/adder_32bit_0/Mxor_o_s<9>_Result1  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 ),
    .ADR1(N392),
    .ADR2(N393),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go125_1453 ),
    .O(\pidController/sum [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW1  (
    .ADR0(N302),
    .ADR1(N233),
    .ADR2(N234),
    .O(N396)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/md<15>  (
    .ADR0(\pidController/adder_32bit_0/G4<6>48_1431 ),
    .ADR1(N396),
    .ADR2(N395),
    .ADR3(\pidController/adder_32bit_0/N19 ),
    .O(\pidController/md [15])
  );
  X_LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1_SW0  (
    .ADR0(\pidController/p [13]),
    .ADR1(\pidController/a [13]),
    .ADR2(N245),
    .ADR3(N244),
    .O(N398)
  );
  X_LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/adder_32bit_0/Mxor_o_s<13>_Result1_SW1  (
    .ADR0(\pidController/p [13]),
    .ADR1(\pidController/a [13]),
    .ADR2(N244),
    .ADR3(N245),
    .O(N399)
  );
  X_LUT4 #(
    .INIT ( 16'hF0E4 ))
  \pidController/md<13>  (
    .ADR0(\pidController/adder_32bit_0/N25 ),
    .ADR1(N398),
    .ADR2(N399),
    .ADR3(\pidController/adder_32bit_0/G4<6>51_1432 ),
    .O(\pidController/md [13])
  );
  X_LUT4 #(
    .INIT ( 16'hB3A0 ))
  \converter/r_BCD_12_mux0000191  (
    .ADR0(\converter/r_BCD [12]),
    .ADR1(N401),
    .ADR2(\converter/N4 ),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_12_mux000019 )
  );
  X_LUT4 #(
    .INIT ( 16'h8117 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .O(N403)
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48  (
    .ADR0(N403),
    .ADR1(N193),
    .ADR2(N660),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>48_1558 )
  );
  X_LUT4 #(
    .INIT ( 16'h07F8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1658 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1657 ),
    .ADR3(N405),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w12 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h87 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .O(N408)
  );
  X_LUT4 #(
    .INIT ( 16'hB010 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1557 ),
    .ADR1(N407),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N408),
    .O(N299)
  );
  X_LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1_SW0  (
    .ADR0(\pidController/a_mux0000<10>18 ),
    .ADR1(N238),
    .ADR2(\pidController/adder_32bit_0/P0[14] ),
    .ADR3(\pidController/a_mux0000<14>7_1395 ),
    .O(N410)
  );
  X_LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/adder_32bit_0/Mxor_o_s<14>_Result1_SW1  (
    .ADR0(N661),
    .ADR1(\pidController/adder_32bit_0/P0[14] ),
    .ADR2(N239),
    .ADR3(\pidController/a_mux0000<14>7_1395 ),
    .O(N4111)
  );
  X_LUT4 #(
    .INIT ( 16'hFAFC ))
  \pidController/a_mux0000<14>23  (
    .ADR0(N4111),
    .ADR1(N410),
    .ADR2(\pidController/a_mux0000<14>10_1394 ),
    .ADR3(\pidController/adder_32bit_0/G4<6>51_1432 ),
    .O(\pidController/a_mux0000 [14])
  );
  X_LUT4 #(
    .INIT ( 16'hD8E4 ))
  \pidController/p_mux0000<9>76  (
    .ADR0(N664),
    .ADR1(N413),
    .ADR2(N414),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .O(\pidController/p_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'hFCFA ))
  \pidController/a_mux0000<15>23  (
    .ADR0(N416),
    .ADR1(N417),
    .ADR2(\pidController/a_mux0000<15>10_1397 ),
    .ADR3(\pidController/adder_32bit_0/N19 ),
    .O(\pidController/a_mux0000 [15])
  );
  X_LUT4 #(
    .INIT ( 16'hFE10 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .ADR1(N256),
    .ADR2(N272),
    .ADR3(N695),
    .O(N420)
  );
  X_LUT4 #(
    .INIT ( 16'hFEBA ))
  \pidController/p_mux0000<14>94  (
    .ADR0(\pidController/p_mux0000<14>13_1888 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .ADR2(N419),
    .ADR3(N420),
    .O(\pidController/p_mux0000 [14])
  );
  X_LUT4 #(
    .INIT ( 16'h569A ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_CxorD_Result1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR2(N154),
    .ADR3(N155),
    .O(N422)
  );
  X_LUT4 #(
    .INIT ( 16'h1781 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .ADR3(N673),
    .O(N426)
  );
  X_LUT4 #(
    .INIT ( 16'h1428 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59  (
    .ADR0(N175),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .ADR3(N426),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1560 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FE9 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .ADR3(N694),
    .O(N428)
  );
  X_LUT4 #(
    .INIT ( 16'h533F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N430)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N722),
    .ADR2(N430),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1775 ),
    .O(N433)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(N434),
    .ADR2(N433),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h355F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(N436)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(N437),
    .ADR2(N436),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE999 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(N440)
  );
  X_LUT4 #(
    .INIT ( 16'h096F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR2(N439),
    .ADR3(N440),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 )
  );
  X_LUT4 #(
    .INIT ( 16'h437F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md_1_1_1752 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N442)
  );
  X_LUT4 #(
    .INIT ( 16'hFEC2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md_1_1_1752 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N443)
  );
  X_MUX2   \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0  (
    .IA(N445),
    .IB(N446),
    .SEL(\pidController/adder_32bit_0/N4 ),
    .O(N230)
  );
  X_LUT4 #(
    .INIT ( 16'hE8EE ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0_F  (
    .ADR0(\pidController/a [6]),
    .ADR1(\pidController/p [6]),
    .ADR2(\pidController/adder_32bit_0/G1[2] ),
    .ADR3(\pidController/adder_32bit_0/N33 ),
    .O(N445)
  );
  X_MUX2   \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0  (
    .IA(N459),
    .IB(N460),
    .SEL(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .O(N247)
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0_F  (
    .ADR0(\pidController/adder_32bit_0/G4<6>16_1430 ),
    .ADR1(\pidController/adder_32bit_0/N26 ),
    .ADR2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .O(N459)
  );
  X_LUT4 #(
    .INIT ( 16'hFCF8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW0_G  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 ),
    .ADR1(\pidController/adder_32bit_0/G4<6>16_1430 ),
    .ADR2(\pidController/adder_32bit_0/N26 ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .O(N460)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW1  (
    .IA(N467),
    .IB(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .SEL(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go111_1575 ),
    .O(N279)
  );
  X_LUT4 #(
    .INIT ( 16'h2A00 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go124_SW1_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1576 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N33 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .O(N467)
  );
  X_MUX2   \pidController/adder_32bit_0/G4<7>62_SW0  (
    .IA(N469),
    .IB(N470),
    .SEL(\pidController/adder_32bit_0/G4<7>59_1434 ),
    .O(N301)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/G4<7>62_SW0_F  (
    .ADR0(\pidController/adder_32bit_0/G4<7>10_1433 ),
    .ADR1(\pidController/p [15]),
    .ADR2(\pidController/a [15]),
    .O(N469)
  );
  X_LUT4 #(
    .INIT ( 16'hC396 ))
  \pidController/adder_32bit_0/G4<7>62_SW0_G  (
    .ADR0(\pidController/adder_32bit_0/N25 ),
    .ADR1(\pidController/p [15]),
    .ADR2(\pidController/a [15]),
    .ADR3(\pidController/adder_32bit_0/G4<7>10_1433 ),
    .O(N470)
  );
  X_MUX2   \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2  (
    .IA(N471),
    .IB(N472),
    .SEL(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .O(N345)
  );
  X_LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2_F  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .ADR1(\pidController/p [9]),
    .ADR2(\pidController/a [9]),
    .O(N471)
  );
  X_LUT4 #(
    .INIT ( 16'h1117 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW2_G  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/a [9]),
    .ADR2(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 ),
    .O(N472)
  );
  X_MUX2   \pidController/md<6>  (
    .IA(N473),
    .IB(N474),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [6])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<6>_F  (
    .ADR0(\pidController/err_0_6_1469 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(N127),
    .ADR3(\pidController/sum [6]),
    .O(N473)
  );
  X_MUX2   \pidController/md<10>  (
    .IA(N475),
    .IB(N476),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [10])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<10>_F  (
    .ADR0(\pidController/err_0_10_1459 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(N188),
    .ADR3(\pidController/sum [10]),
    .O(N475)
  );
  X_MUX2   \pidController/md<9>  (
    .IA(N477),
    .IB(N478),
    .SEL(\pidController/md_index [1]),
    .O(\pidController/md [9])
  );
  X_LUT4 #(
    .INIT ( 16'h8BB8 ))
  \pidController/md<9>_F  (
    .ADR0(\pidController/err_1_9_1488 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(N289),
    .ADR3(\pidController/adder_32bit_0/N20 ),
    .O(N477)
  );
  X_MUX2   \pidController/md<8>  (
    .IA(N479),
    .IB(N480),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [8])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<8>_F  (
    .ADR0(\pidController/err_0_8_1471 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(N168),
    .ADR3(\pidController/sum [8]),
    .O(N479)
  );
  X_MUX2   \pidController/md<7>  (
    .IA(N481),
    .IB(N482),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [7])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<7>_F  (
    .ADR0(\pidController/err_0_7_1470 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(N171),
    .ADR3(\pidController/sum [7]),
    .O(N481)
  );
  X_MUX2   \pidController/md<12>  (
    .IA(N483),
    .IB(N484),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [12])
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \pidController/md<12>_F  (
    .ADR0(\pidController/err_0_12_1461 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(N196),
    .ADR3(\pidController/sum [12]),
    .O(N483)
  );
  X_MUX2   \pidController/md<11>  (
    .IA(N485),
    .IB(N486),
    .SEL(\pidController/md_index [1]),
    .O(\pidController/md [11])
  );
  X_LUT4 #(
    .INIT ( 16'h8BB8 ))
  \pidController/md<11>_F  (
    .ADR0(\pidController/err_1_11_1476 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(N287),
    .ADR3(\pidController/adder_32bit_0/N19 ),
    .O(N485)
  );
  X_MUX2   \pidController/md<14>  (
    .IA(N487),
    .IB(N488),
    .SEL(\pidController/adder_32bit_0/G4<6>51_1432 ),
    .O(\pidController/md [14])
  );
  X_LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/md<14>_F  (
    .ADR0(\pidController/adder_32bit_0/P0[14] ),
    .ADR1(N238),
    .ADR2(N241),
    .ADR3(N242),
    .O(N487)
  );
  X_LUT4 #(
    .INIT ( 16'hF960 ))
  \pidController/md<14>_G  (
    .ADR0(\pidController/adder_32bit_0/P0[14] ),
    .ADR1(N239),
    .ADR2(N241),
    .ADR3(N242),
    .O(N488)
  );
  X_MUX2   \pidController/md<4>  (
    .IA(N489),
    .IB(N490),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pidController/md<4>_F  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_0_4_1467 ),
    .ADR2(\pidController/sum [4]),
    .ADR3(N83),
    .O(N489)
  );
  X_MUX2   \pidController/md<3>  (
    .IA(N491),
    .IB(N492),
    .SEL(\pidController/md_index [2]),
    .O(\pidController/md [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pidController/md<3>_F  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_0_3_1466 ),
    .ADR2(\pidController/sum [3]),
    .ADR3(N86),
    .O(N491)
  );
  X_MUX2   \pidController/md<5>  (
    .IA(N493),
    .IB(N494),
    .SEL(\pidController/md_index [1]),
    .O(\pidController/md [5])
  );
  X_LUT4 #(
    .INIT ( 16'hEB41 ))
  \pidController/md<5>_F  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/adder_32bit_0/G3 [2]),
    .ADR2(\pidController/adder_32bit_0/N4 ),
    .ADR3(\pidController/err_1_5_1484 ),
    .O(N493)
  );
  X_MUX2   \pidController/p_mux0000<9>74_SW0  (
    .IA(N495),
    .IB(N496),
    .SEL(\pidController/p_or0000_1928 ),
    .O(N413)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/p_mux0000<9>74_SW0_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/p_mux0000<9>7_1927 ),
    .ADR3(\pidController/p [9]),
    .O(N495)
  );
  X_MUX2   \pidController/p_mux0000<9>74_SW1  (
    .IA(N497),
    .IB(N498),
    .SEL(\pidController/p_or0000_1928 ),
    .O(N414)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<9>74_SW1_F  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .ADR3(\pidController/p_mux0000<9>7_1927 ),
    .O(N497)
  );
  X_MUX2   \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3  (
    .IA(N499),
    .IB(N500),
    .SEL(N301),
    .O(N417)
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3_F  (
    .ADR0(N302),
    .ADR1(\pidController/adder_32bit_0/G4<6>48_1431 ),
    .ADR2(\pidController/a_mux0000<10>18 ),
    .ADR3(\pidController/a_mux0000<15>7_1398 ),
    .O(N499)
  );
  X_LUT4 #(
    .INIT ( 16'hFF8A ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW3_G  (
    .ADR0(\pidController/a_mux0000<10>18 ),
    .ADR1(N302),
    .ADR2(\pidController/adder_32bit_0/G4<6>48_1431 ),
    .ADR3(\pidController/a_mux0000<15>7_1398 ),
    .O(N500)
  );
  X_MUX2   \converter/N61  (
    .IA(N501),
    .IB(N502),
    .SEL(\converter/r_SM_Main_FSM_FFd2_786 ),
    .O(\converter/N6 )
  );
  X_LUT4 #(
    .INIT ( 16'hBBBF ))
  \converter/N61_G  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(N96),
    .O(N502)
  );
  X_MUX2   \converter/N41  (
    .IA(N503),
    .IB(N504),
    .SEL(\converter/r_SM_Main_FSM_FFd2_786 ),
    .O(\converter/N4 )
  );
  X_LUT4 #(
    .INIT ( 16'h777F ))
  \converter/N41_G  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(N96),
    .O(N504)
  );
  X_MUX2   \converter/N51  (
    .IA(N505),
    .IB(N506),
    .SEL(\converter/r_SM_Main_FSM_FFd2_786 ),
    .O(\converter/N5 )
  );
  X_LUT4 #(
    .INIT ( 16'hDDDF ))
  \converter/N51_G  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(N96),
    .O(N506)
  );
  X_MUX2   \converter/r_BCD_0_mux000011  (
    .IA(N507),
    .IB(N508),
    .SEL(\converter/r_SM_Main_FSM_FFd2_786 ),
    .O(\converter/N01 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEF ))
  \converter/r_BCD_0_mux000011_G  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(N96),
    .O(N508)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<15>  (
    .ADR0(\decoder/r_countPrev [15]),
    .ADR1(\decoder/r_count [15]),
    .O(\decoder/Msub_w_diff_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h8E ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<15>  (
    .ADR0(\decoder/w_diff [14]),
    .ADR1(\decoder/w_diff [15]),
    .ADR2(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[15] )
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<9>_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .O(N356)
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w2 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \r_SevenSegment_mux0000<2>861_SW0  (
    .ADR0(r_displayValue[9]),
    .ADR1(s_Main_FSM_FFd2_2334),
    .ADR2(r_displayValue[10]),
    .ADR3(r_displayValue[8]),
    .O(N509)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \r_SevenSegment_mux0000<2>861  (
    .ADR0(\r_SevenSegment_mux0000<2>22_2098 ),
    .ADR1(\r_SevenSegment_mux0000<2>45_2099 ),
    .ADR2(\r_SevenSegment_mux0000<2>58_2100 ),
    .ADR3(N509),
    .O(\r_SevenSegment_mux0000<2>86 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<9>_G  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_9_1488 ),
    .ADR2(\pidController/err_0_9_1472 ),
    .O(N478)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<11>_G  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_11_1476 ),
    .ADR2(\pidController/err_0_11_1460 ),
    .O(N486)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/md<5>_G  (
    .ADR0(\pidController/md_index [2]),
    .ADR1(\pidController/err_1_5_1484 ),
    .ADR2(\pidController/err_0_5_1468 ),
    .O(N494)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<15>_SW0_SW0  (
    .ADR0(\pidController/err_1_15_1480 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_15_1464 ),
    .O(N233)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<15>_SW0_SW1  (
    .ADR0(\pidController/err_1_15_1480 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_15_1464 ),
    .O(N234)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<13>_SW0_SW0  (
    .ADR0(\pidController/err_1_13_1478 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_13_1462 ),
    .O(N244)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<13>_SW0_SW1  (
    .ADR0(\pidController/err_1_13_1478 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_13_1462 ),
    .O(N245)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<14>_SW0_SW0  (
    .ADR0(\pidController/err_1_14_1479 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_14_1463 ),
    .O(N241)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<14>_SW0_SW1  (
    .ADR0(\pidController/err_1_14_1479 ),
    .ADR1(\pidController/md_index [2]),
    .ADR2(\pidController/md_index [1]),
    .ADR3(\pidController/err_0_14_1463 ),
    .O(N242)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/a_mux0000<1>21  (
    .ADR0(\pidController/a_mux0000<1>7_1401 ),
    .ADR1(\pidController/a [1]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/a_mux0000<1>20_1400 ),
    .O(\pidController/a_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFF60 ))
  \pidController/p_mux0000<1>44  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[0] ),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(N513),
    .O(\pidController/p_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/p_mux0000<0>111_SW0  (
    .ADR0(r_kp[0]),
    .ADR1(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR2(\w_setpoint[0] ),
    .ADR3(\pidController/state_1_FSM_FFd7_1954 ),
    .O(N515)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/p_mux0000<0>111  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_0_1457 ),
    .ADR2(N515),
    .O(\pidController/p_mux0000<0>11_1873 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<14>  (
    .ADR0(\decoder/r_countPrev [14]),
    .ADR1(\decoder/r_count [14]),
    .O(\decoder/Msub_w_diff_lut [14])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<13>  (
    .ADR0(\decoder/r_countPrev [13]),
    .ADR1(\decoder/r_count [13]),
    .O(\decoder/Msub_w_diff_lut [13])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<12>  (
    .ADR0(\decoder/r_countPrev [12]),
    .ADR1(\decoder/r_count [12]),
    .O(\decoder/Msub_w_diff_lut [12])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<11>  (
    .ADR0(\decoder/r_countPrev [11]),
    .ADR1(\decoder/r_count [11]),
    .O(\decoder/Msub_w_diff_lut [11])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<10>  (
    .ADR0(\decoder/r_countPrev [10]),
    .ADR1(\decoder/r_count [10]),
    .O(\decoder/Msub_w_diff_lut [10])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<9>  (
    .ADR0(\decoder/r_countPrev [9]),
    .ADR1(\decoder/r_count [9]),
    .O(\decoder/Msub_w_diff_lut [9])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<8>  (
    .ADR0(\decoder/r_countPrev [8]),
    .ADR1(\decoder/r_count [8]),
    .O(\decoder/Msub_w_diff_lut [8])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<7>  (
    .ADR0(\decoder/r_countPrev [7]),
    .ADR1(\decoder/r_count [7]),
    .O(\decoder/Msub_w_diff_lut [7])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<6>  (
    .ADR0(\decoder/r_countPrev [6]),
    .ADR1(\decoder/r_count [6]),
    .O(\decoder/Msub_w_diff_lut [6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<5>  (
    .ADR0(\decoder/r_countPrev [5]),
    .ADR1(\decoder/r_count [5]),
    .O(\decoder/Msub_w_diff_lut [5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<4>  (
    .ADR0(\decoder/r_countPrev [4]),
    .ADR1(\decoder/r_count [4]),
    .O(\decoder/Msub_w_diff_lut [4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<3>  (
    .ADR0(\decoder/r_countPrev [3]),
    .ADR1(\decoder/r_count [3]),
    .O(\decoder/Msub_w_diff_lut [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<2>  (
    .ADR0(\decoder/r_countPrev [2]),
    .ADR1(\decoder/r_count [2]),
    .O(\decoder/Msub_w_diff_lut [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \decoder/Msub_w_diff_lut<1>  (
    .ADR0(\decoder/r_countPrev [1]),
    .ADR1(\decoder/r_count [1]),
    .O(\decoder/Msub_w_diff_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<14>  (
    .ADR0(\decoder/w_diff [13]),
    .ADR1(\decoder/w_diff [15]),
    .ADR2(\decoder/w_diff [12]),
    .ADR3(\decoder/w_diff [14]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[14] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<13>  (
    .ADR0(\decoder/w_diff [12]),
    .ADR1(\decoder/w_diff [14]),
    .ADR2(\decoder/w_diff [11]),
    .ADR3(\decoder/w_diff [13]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[13] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<12>  (
    .ADR0(\decoder/w_diff [11]),
    .ADR1(\decoder/w_diff [13]),
    .ADR2(\decoder/w_diff [10]),
    .ADR3(\decoder/w_diff [12]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[12] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<11>  (
    .ADR0(\decoder/w_diff [10]),
    .ADR1(\decoder/w_diff [12]),
    .ADR2(\decoder/w_diff [9]),
    .ADR3(\decoder/w_diff [11]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[11] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<10>  (
    .ADR0(\decoder/w_diff [10]),
    .ADR1(\decoder/w_diff [11]),
    .ADR2(\decoder/w_diff [8]),
    .ADR3(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[10] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<9>  (
    .ADR0(\decoder/w_diff [8]),
    .ADR1(\decoder/w_diff [10]),
    .ADR2(\decoder/w_diff [7]),
    .ADR3(\decoder/w_diff [9]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[9] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<8>  (
    .ADR0(\decoder/w_diff [7]),
    .ADR1(\decoder/w_diff [9]),
    .ADR2(\decoder/w_diff [6]),
    .ADR3(\decoder/w_diff [8]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[8] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<7>  (
    .ADR0(\decoder/w_diff [6]),
    .ADR1(\decoder/w_diff [8]),
    .ADR2(\decoder/w_diff [5]),
    .ADR3(\decoder/w_diff [7]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[7] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<6>  (
    .ADR0(\decoder/w_diff [5]),
    .ADR1(\decoder/w_diff [7]),
    .ADR2(\decoder/w_diff [4]),
    .ADR3(\decoder/w_diff [6]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[6] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<5>  (
    .ADR0(\decoder/w_diff [4]),
    .ADR1(\decoder/w_diff [6]),
    .ADR2(\decoder/w_diff [3]),
    .ADR3(\decoder/w_diff [5]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<4>  (
    .ADR0(\decoder/w_diff [3]),
    .ADR1(\decoder/w_diff [5]),
    .ADR2(\decoder/w_diff [2]),
    .ADR3(\decoder/w_diff [4]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[4] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<3>  (
    .ADR0(\decoder/w_diff [2]),
    .ADR1(\decoder/w_diff [4]),
    .ADR2(\decoder/w_diff [1]),
    .ADR3(\decoder/w_diff [3]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[3] )
  );
  X_LUT4 #(
    .INIT ( 16'h63C6 ))
  \decoder/Madd_o_velocity_addsub0001_Madd_lut<2>  (
    .ADR0(\decoder/w_diff [1]),
    .ADR1(\decoder/w_diff [3]),
    .ADR2(\decoder/w_diff [0]),
    .ADR3(\decoder/w_diff [2]),
    .O(\decoder/Madd_o_velocity_addsub0001_Madd_lut[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hC963 ))
  \decoder/Msub_w_diff_lut<0>  (
    .ADR0(\decoder/w_diff_cmp_ge0000 ),
    .ADR1(\decoder/w_diff_mux0000 [0]),
    .ADR2(\decoder/r_count [0]),
    .ADR3(\decoder/r_countPrev [0]),
    .O(\decoder/Msub_w_diff_lut [0])
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \r_LED_mux0000<6>111  (
    .ADR0(Mcompar_r_controllerPin_cmp_lt0000_cy[5]),
    .ADR1(Mcompar_r_controllerPin_cmp_lt0001_cy[4]),
    .O(\r_LED_mux0000<6>11 )
  );
  X_LUT4 #(
    .INIT ( 16'h9666 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_6/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[6] )
  );
  X_LUT4 #(
    .INIT ( 16'h6999 ))
  \pidController/p_mux0000<7>81_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .O(N352)
  );
  X_LUT4 #(
    .INIT ( 16'hFF82 ))
  \pidController/a_mux0000<5>23  (
    .ADR0(\pidController/a_mux0000<10>18 ),
    .ADR1(\pidController/adder_32bit_0/G3 [2]),
    .ADR2(\pidController/adder_32bit_0/N4 ),
    .ADR3(N523),
    .O(\pidController/a_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go_SW0_SW0_G  (
    .ADR0(\pidController/a [6]),
    .ADR1(\pidController/a [5]),
    .ADR2(\pidController/p [5]),
    .ADR3(\pidController/p [6]),
    .O(N446)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<14>  (
    .ADR0(\decoder/count [14]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [14])
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N61_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(N501)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N41_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(N503)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \converter/N51_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(N505)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \converter/r_BCD_0_mux000011_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(N507)
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2])
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<1>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [1])
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \decoder/Maddsub_count_mux0000_lut<15>  (
    .ADR0(\decoder/count [15]),
    .ADR1(\decoder/quadB_delayed_1270 ),
    .ADR2(\debouncerA/DB_out_935 ),
    .O(\decoder/Maddsub_count_mux0000_lut [15])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \converter/r_SM_Main_FSM_FFd3-In1  (
    .ADR0(\converter/r_SM_Main_cmp_eq00008_796 ),
    .ADR1(\converter/r_SM_Main_cmp_eq000021_795 ),
    .ADR2(\converter/r_SM_Main_FSM_FFd4_792 ),
    .O(\converter/r_SM_Main_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncerB/q_next<4>_SW0  (
    .ADR0(\debouncerB/q_reg [1]),
    .ADR1(\debouncerB/q_reg [6]),
    .ADR2(\debouncerB/q_reg [0]),
    .ADR3(\debouncerB/q_reg [2]),
    .O(N29)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncerA/q_next<4>_SW0  (
    .ADR0(\debouncerA/q_reg [1]),
    .ADR1(\debouncerA/q_reg [6]),
    .ADR2(\debouncerA/q_reg [0]),
    .ADR3(\debouncerA/q_reg [2]),
    .O(N311)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer5/q_next<4>_SW0  (
    .ADR0(\debouncer5/q_reg [1]),
    .ADR1(\debouncer5/q_reg [6]),
    .ADR2(\debouncer5/q_reg [0]),
    .ADR3(\debouncer5/q_reg [2]),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer4/q_next<4>_SW0  (
    .ADR0(\debouncer4/q_reg [1]),
    .ADR1(\debouncer4/q_reg [6]),
    .ADR2(\debouncer4/q_reg [0]),
    .ADR3(\debouncer4/q_reg [2]),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer3/q_next<4>_SW0  (
    .ADR0(\debouncer3/q_reg [1]),
    .ADR1(\debouncer3/q_reg [6]),
    .ADR2(\debouncer3/q_reg [0]),
    .ADR3(\debouncer3/q_reg [2]),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer2/q_next<4>_SW0  (
    .ADR0(\debouncer2/q_reg [1]),
    .ADR1(\debouncer2/q_reg [6]),
    .ADR2(\debouncer2/q_reg [0]),
    .ADR3(\debouncer2/q_reg [2]),
    .O(N39)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer1/q_next<4>_SW0  (
    .ADR0(\debouncer1/q_reg [1]),
    .ADR1(\debouncer1/q_reg [6]),
    .ADR2(\debouncer1/q_reg [0]),
    .ADR3(\debouncer1/q_reg [2]),
    .O(N411)
  );
  X_LUT4 #(
    .INIT ( 16'hDFFF ))
  \debouncer0/q_next<4>_SW0  (
    .ADR0(\debouncer0/q_reg [1]),
    .ADR1(\debouncer0/q_reg [6]),
    .ADR2(\debouncer0/q_reg [0]),
    .ADR3(\debouncer0/q_reg [2]),
    .O(N43)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<6>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_6_1485 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_6_1469 ),
    .O(N474)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<10>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_10_1475 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_10_1459 ),
    .O(N476)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<8>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_8_1487 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_8_1471 ),
    .O(N480)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<7>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_7_1486 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_7_1470 ),
    .O(N482)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<12>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_12_1477 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_12_1461 ),
    .O(N484)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<4>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_4_1483 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_4_1467 ),
    .O(N490)
  );
  X_LUT4 #(
    .INIT ( 16'hEEC4 ))
  \pidController/md<3>_G  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_1_3_1482 ),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_0_3_1466 ),
    .O(N492)
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<9>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [9]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[9]),
    .O(\pidController/mr [9])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<8>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [8]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[8]),
    .O(\pidController/mr [8])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<7>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [7]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[7]),
    .O(\pidController/mr [7])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<6>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [6]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[6]),
    .O(\pidController/mr [6])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<5>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [5]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[5]),
    .O(\pidController/mr [5])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<4>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [4]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[4]),
    .O(\pidController/mr [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<3>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [3]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[3]),
    .O(\pidController/mr [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<2>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [2]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[2]),
    .O(\pidController/mr [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<1>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[1]),
    .O(\pidController/mr [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<15>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [15]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[15]),
    .O(\pidController/mr [15])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<14>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [14]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[14]),
    .O(\pidController/mr [14])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<13>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [13]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[13]),
    .O(\pidController/mr [13])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<12>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [12]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[12]),
    .O(\pidController/mr [12])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<11>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [11]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[11]),
    .O(\pidController/mr [11])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<10>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [10]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[10]),
    .O(\pidController/mr [10])
  );
  X_LUT4 #(
    .INIT ( 16'h8D88 ))
  \pidController/mr<0>1  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/kpd [0]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(r_ki[0]),
    .O(\pidController/mr [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerB/q_next<0>1  (
    .ADR0(\debouncerB/DFF1_956 ),
    .ADR1(\debouncerB/DFF2_957 ),
    .ADR2(\debouncerB/q_reg [0]),
    .ADR3(\debouncerB/q_reg [6]),
    .O(\debouncerB/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerA/q_next<0>1  (
    .ADR0(\debouncerA/DFF1_936 ),
    .ADR1(\debouncerA/DFF2_937 ),
    .ADR2(\debouncerA/q_reg [0]),
    .ADR3(\debouncerA/q_reg [6]),
    .O(\debouncerA/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer5/q_next<0>1  (
    .ADR0(\debouncer5/DFF1_916 ),
    .ADR1(\debouncer5/DFF2_917 ),
    .ADR2(\debouncer5/q_reg [0]),
    .ADR3(\debouncer5/q_reg [6]),
    .O(\debouncer5/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer4/q_next<0>1  (
    .ADR0(\debouncer4/DFF1_896 ),
    .ADR1(\debouncer4/DFF2_897 ),
    .ADR2(\debouncer4/q_reg [0]),
    .ADR3(\debouncer4/q_reg [6]),
    .O(\debouncer4/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer3/q_next<0>1  (
    .ADR0(\debouncer3/DFF1_876 ),
    .ADR1(\debouncer3/DFF2_877 ),
    .ADR2(\debouncer3/q_reg [0]),
    .ADR3(\debouncer3/q_reg [6]),
    .O(\debouncer3/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer2/q_next<0>1  (
    .ADR0(\debouncer2/DFF1_856 ),
    .ADR1(\debouncer2/DFF2_857 ),
    .ADR2(\debouncer2/q_reg [0]),
    .ADR3(\debouncer2/q_reg [6]),
    .O(\debouncer2/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer1/q_next<0>1  (
    .ADR0(\debouncer1/DFF1_836 ),
    .ADR1(\debouncer1/DFF2_837 ),
    .ADR2(\debouncer1/q_reg [0]),
    .ADR3(\debouncer1/q_reg [6]),
    .O(\debouncer1/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer0/q_next<0>1  (
    .ADR0(\debouncer0/DFF1_816 ),
    .ADR1(\debouncer0/DFF2_817 ),
    .ADR2(\debouncer0/q_reg [0]),
    .ADR3(\debouncer0/q_reg [6]),
    .O(\debouncer0/q_next [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \r_SevenSegment_mux0000<7>11  (
    .ADR0(r_SevenSegment[0]),
    .ADR1(s_Main_FSM_FFd1_2333),
    .ADR2(s_Main_FSM_FFd3_2335),
    .ADR3(s_Main_FSM_FFd2_2334),
    .O(\r_SevenSegment_mux0000<7>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h9000 ))
  \converter/r_BCD_1_mux00001  (
    .ADR0(\converter/w_BCD_Digit [1]),
    .ADR1(\converter/Madd_add0000_addsub0000_cy [0]),
    .ADR2(\converter/r_BCD_0_cmp_eq0000 ),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_1_mux00001_716 )
  );
  X_LUT4 #(
    .INIT ( 16'h0900 ))
  \converter/r_BCD_9_mux00001  (
    .ADR0(\converter/w_BCD_Digit [1]),
    .ADR1(\converter/Madd_add0000_addsub0000_cy [0]),
    .ADR2(\converter/N21 ),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_9_mux00001_735 )
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerB/q_next<2>1  (
    .ADR0(\debouncerB/DFF1_956 ),
    .ADR1(\debouncerB/DFF2_957 ),
    .ADR2(\debouncerB/q_reg [2]),
    .ADR3(\debouncerB/N02 ),
    .O(\debouncerB/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncerA/q_next<2>1  (
    .ADR0(\debouncerA/DFF1_936 ),
    .ADR1(\debouncerA/DFF2_937 ),
    .ADR2(\debouncerA/q_reg [2]),
    .ADR3(\debouncerA/N02 ),
    .O(\debouncerA/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer5/q_next<2>1  (
    .ADR0(\debouncer5/DFF1_916 ),
    .ADR1(\debouncer5/DFF2_917 ),
    .ADR2(\debouncer5/q_reg [2]),
    .ADR3(\debouncer5/N02 ),
    .O(\debouncer5/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer4/q_next<2>1  (
    .ADR0(\debouncer4/DFF1_896 ),
    .ADR1(\debouncer4/DFF2_897 ),
    .ADR2(\debouncer4/q_reg [2]),
    .ADR3(\debouncer4/N02 ),
    .O(\debouncer4/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer3/q_next<2>1  (
    .ADR0(\debouncer3/DFF1_876 ),
    .ADR1(\debouncer3/DFF2_877 ),
    .ADR2(\debouncer3/q_reg [2]),
    .ADR3(\debouncer3/N02 ),
    .O(\debouncer3/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer2/q_next<2>1  (
    .ADR0(\debouncer2/DFF1_856 ),
    .ADR1(\debouncer2/DFF2_857 ),
    .ADR2(\debouncer2/q_reg [2]),
    .ADR3(\debouncer2/N02 ),
    .O(\debouncer2/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer1/q_next<2>1  (
    .ADR0(\debouncer1/DFF1_836 ),
    .ADR1(\debouncer1/DFF2_837 ),
    .ADR2(\debouncer1/q_reg [2]),
    .ADR3(\debouncer1/N02 ),
    .O(\debouncer1/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9009 ))
  \debouncer0/q_next<2>1  (
    .ADR0(\debouncer0/DFF1_816 ),
    .ADR1(\debouncer0/DFF2_817 ),
    .ADR2(\debouncer0/q_reg [2]),
    .ADR3(\debouncer0/N02 ),
    .O(\debouncer0/q_next [2])
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ))
  \pidController/p_mux0000<9>74_SW0_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(\pidController/p_mux0000<9>7_1927 ),
    .O(N496)
  );
  X_LUT4 #(
    .INIT ( 16'hFFC8 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW2  (
    .ADR0(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR1(N301),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR3(N685),
    .O(N416)
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \pidController/p_mux0000<2>42  (
    .ADR0(N680),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ),
    .O(\pidController/p_mux0000<2>42_1897 )
  );
  X_LUT4 #(
    .INIT ( 16'h6000 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW0_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .ADR2(N712),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .O(N525)
  );
  X_LUT4 #(
    .INIT ( 16'h96AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_3/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncerB/q_next<5>_SW1  (
    .ADR0(\debouncerB/q_reg [2]),
    .ADR1(\debouncerB/N02 ),
    .ADR2(\debouncerB/q_reg [3]),
    .ADR3(\debouncerB/q_reg [4]),
    .O(N529)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncerB/q_next<5>  (
    .ADR0(\debouncerB/DFF1_956 ),
    .ADR1(\debouncerB/DFF2_957 ),
    .ADR2(\debouncerB/q_reg [5]),
    .ADR3(N529),
    .O(\debouncerB/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncerA/q_next<5>_SW1  (
    .ADR0(\debouncerA/q_reg [2]),
    .ADR1(\debouncerA/N02 ),
    .ADR2(\debouncerA/q_reg [3]),
    .ADR3(\debouncerA/q_reg [4]),
    .O(N531)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncerA/q_next<5>  (
    .ADR0(\debouncerA/DFF1_936 ),
    .ADR1(\debouncerA/DFF2_937 ),
    .ADR2(\debouncerA/q_reg [5]),
    .ADR3(N531),
    .O(\debouncerA/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer5/q_next<5>_SW1  (
    .ADR0(\debouncer5/q_reg [2]),
    .ADR1(\debouncer5/N02 ),
    .ADR2(\debouncer5/q_reg [3]),
    .ADR3(\debouncer5/q_reg [4]),
    .O(N533)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer5/q_next<5>  (
    .ADR0(\debouncer5/DFF1_916 ),
    .ADR1(\debouncer5/DFF2_917 ),
    .ADR2(\debouncer5/q_reg [5]),
    .ADR3(N533),
    .O(\debouncer5/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer4/q_next<5>_SW1  (
    .ADR0(\debouncer4/q_reg [2]),
    .ADR1(\debouncer4/N02 ),
    .ADR2(\debouncer4/q_reg [3]),
    .ADR3(\debouncer4/q_reg [4]),
    .O(N535)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer4/q_next<5>  (
    .ADR0(\debouncer4/DFF1_896 ),
    .ADR1(\debouncer4/DFF2_897 ),
    .ADR2(\debouncer4/q_reg [5]),
    .ADR3(N535),
    .O(\debouncer4/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer3/q_next<5>_SW1  (
    .ADR0(\debouncer3/q_reg [2]),
    .ADR1(\debouncer3/N02 ),
    .ADR2(\debouncer3/q_reg [3]),
    .ADR3(\debouncer3/q_reg [4]),
    .O(N537)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer3/q_next<5>  (
    .ADR0(\debouncer3/DFF1_876 ),
    .ADR1(\debouncer3/DFF2_877 ),
    .ADR2(\debouncer3/q_reg [5]),
    .ADR3(N537),
    .O(\debouncer3/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer2/q_next<5>_SW1  (
    .ADR0(\debouncer2/q_reg [2]),
    .ADR1(\debouncer2/N02 ),
    .ADR2(\debouncer2/q_reg [3]),
    .ADR3(\debouncer2/q_reg [4]),
    .O(N539)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer2/q_next<5>  (
    .ADR0(\debouncer2/DFF1_856 ),
    .ADR1(\debouncer2/DFF2_857 ),
    .ADR2(\debouncer2/q_reg [5]),
    .ADR3(N539),
    .O(\debouncer2/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer1/q_next<5>_SW1  (
    .ADR0(\debouncer1/q_reg [2]),
    .ADR1(\debouncer1/N02 ),
    .ADR2(\debouncer1/q_reg [3]),
    .ADR3(\debouncer1/q_reg [4]),
    .O(N541)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer1/q_next<5>  (
    .ADR0(\debouncer1/DFF1_836 ),
    .ADR1(\debouncer1/DFF2_837 ),
    .ADR2(\debouncer1/q_reg [5]),
    .ADR3(N541),
    .O(\debouncer1/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \debouncer0/q_next<5>_SW1  (
    .ADR0(\debouncer0/q_reg [2]),
    .ADR1(\debouncer0/N02 ),
    .ADR2(\debouncer0/q_reg [3]),
    .ADR3(\debouncer0/q_reg [4]),
    .O(N543)
  );
  X_LUT4 #(
    .INIT ( 16'h0990 ))
  \debouncer0/q_next<5>  (
    .ADR0(\debouncer0/DFF1_816 ),
    .ADR1(\debouncer0/DFF2_817 ),
    .ADR2(\debouncer0/q_reg [5]),
    .ADR3(N543),
    .O(\debouncer0/q_next [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \converter/r_BCD_0_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_0_mux00001_701 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \converter/r_BCD_2_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/add0000_addsub0000 [2]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_2_mux00001_718 )
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \converter/r_BCD_3_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/N10 ),
    .O(\converter/r_BCD_3_mux00001_720 )
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ))
  \converter/r_BCD_8_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_8_mux00001_733 )
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \converter/r_BCD_11_mux00001  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/N10 ),
    .O(\converter/r_BCD_11_mux00001_706 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ))
  \converter/r_BCD_10_mux00001  (
    .ADR0(\converter/add0000_addsub0000 [2]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/r_Digit_Index [1]),
    .ADR3(\converter/N12 ),
    .O(\converter/r_BCD_10_mux00001_704 )
  );
  X_LUT4 #(
    .INIT ( 16'h8228 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_2_1/Go1  (
    .ADR0(N687),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G2 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFF2A ))
  \pidController/p_mux0000<9>74_SW1_G  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR3(\pidController/p_mux0000<9>7_1927 ),
    .O(N498)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncerB/q_next<6>19_SW0  (
    .ADR0(\debouncerB/q_next<6>5_967 ),
    .ADR1(\debouncerB/q_reg [4]),
    .ADR2(\debouncerB/q_reg [5]),
    .O(N545)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncerB/q_next<6>19  (
    .ADR0(\debouncerB/q_reg [6]),
    .ADR1(\debouncerB/DFF1_956 ),
    .ADR2(\debouncerB/DFF2_957 ),
    .ADR3(N545),
    .O(\debouncerB/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncerA/q_next<6>19_SW0  (
    .ADR0(\debouncerA/q_next<6>5_947 ),
    .ADR1(\debouncerA/q_reg [4]),
    .ADR2(\debouncerA/q_reg [5]),
    .O(N547)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncerA/q_next<6>19  (
    .ADR0(\debouncerA/q_reg [6]),
    .ADR1(\debouncerA/DFF1_936 ),
    .ADR2(\debouncerA/DFF2_937 ),
    .ADR3(N547),
    .O(\debouncerA/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer5/q_next<6>19_SW0  (
    .ADR0(\debouncer5/q_next<6>5_927 ),
    .ADR1(\debouncer5/q_reg [4]),
    .ADR2(\debouncer5/q_reg [5]),
    .O(N549)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer5/q_next<6>19  (
    .ADR0(\debouncer5/q_reg [6]),
    .ADR1(\debouncer5/DFF1_916 ),
    .ADR2(\debouncer5/DFF2_917 ),
    .ADR3(N549),
    .O(\debouncer5/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer4/q_next<6>19_SW0  (
    .ADR0(\debouncer4/q_next<6>5_907 ),
    .ADR1(\debouncer4/q_reg [4]),
    .ADR2(\debouncer4/q_reg [5]),
    .O(N551)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer4/q_next<6>19  (
    .ADR0(\debouncer4/q_reg [6]),
    .ADR1(\debouncer4/DFF1_896 ),
    .ADR2(\debouncer4/DFF2_897 ),
    .ADR3(N551),
    .O(\debouncer4/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer3/q_next<6>19_SW0  (
    .ADR0(\debouncer3/q_next<6>5_887 ),
    .ADR1(\debouncer3/q_reg [4]),
    .ADR2(\debouncer3/q_reg [5]),
    .O(N553)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer3/q_next<6>19  (
    .ADR0(\debouncer3/q_reg [6]),
    .ADR1(\debouncer3/DFF1_876 ),
    .ADR2(\debouncer3/DFF2_877 ),
    .ADR3(N553),
    .O(\debouncer3/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer2/q_next<6>19_SW0  (
    .ADR0(\debouncer2/q_next<6>5_867 ),
    .ADR1(\debouncer2/q_reg [4]),
    .ADR2(\debouncer2/q_reg [5]),
    .O(N555)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer2/q_next<6>19  (
    .ADR0(\debouncer2/q_reg [6]),
    .ADR1(\debouncer2/DFF1_856 ),
    .ADR2(\debouncer2/DFF2_857 ),
    .ADR3(N555),
    .O(\debouncer2/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer1/q_next<6>19_SW0  (
    .ADR0(\debouncer1/q_next<6>5_847 ),
    .ADR1(\debouncer1/q_reg [4]),
    .ADR2(\debouncer1/q_reg [5]),
    .O(N557)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer1/q_next<6>19  (
    .ADR0(\debouncer1/q_reg [6]),
    .ADR1(\debouncer1/DFF1_836 ),
    .ADR2(\debouncer1/DFF2_837 ),
    .ADR3(N557),
    .O(\debouncer1/q_next [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer0/q_next<6>19_SW0  (
    .ADR0(\debouncer0/q_next<6>5_827 ),
    .ADR1(\debouncer0/q_reg [4]),
    .ADR2(\debouncer0/q_reg [5]),
    .O(N559)
  );
  X_LUT4 #(
    .INIT ( 16'hC382 ))
  \debouncer0/q_next<6>19  (
    .ADR0(\debouncer0/q_reg [6]),
    .ADR1(\debouncer0/DFF1_816 ),
    .ADR2(\debouncer0/DFF2_817 ),
    .ADR3(N559),
    .O(\debouncer0/q_next [6])
  );
  X_LUT4 #(
    .INIT ( 16'h690F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/Mxor_S_Result1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N561)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .ADR2(N561),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w6 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/Mxor_o_s<5>_Result2  (
    .ADR0(\pidController/adder_32bit_0/G3 [2]),
    .ADR1(\pidController/a [5]),
    .ADR2(\pidController/p [5]),
    .O(\pidController/sum [5])
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Madd_r_error_unsigned_addsub0000_cy<0>_rt  (
    .ADR0(w_error[0]),
    .O(\Madd_r_error_unsigned_addsub0000_cy<0>_rt_29 ),
    .ADR1(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_1_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1769 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_7_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1781 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_2_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1772 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_1_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_1_2_1770 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_3_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_4_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/md_1_1  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/md [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/md_1_1_1752 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_7_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ),
    .SET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \converter/r_Digit_Index_0_1  (
    .CLK(Clk_BUFGP),
    .CE(\converter/r_SM_Main_FSM_FFd1_785 ),
    .I(\converter/Result [0]),
    .SRST(\converter/r_Digit_Index_and0000 ),
    .O(\converter/r_Digit_Index_0_1_772 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pidController/multiplier_16x16bit_pipelined/mr_3_2  (
    .CLK(Clk_BUFGP),
    .CE(\pidController/start_1945 ),
    .RST(decoder_not0000),
    .I(\pidController/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1775 ),
    .SET(GND)
  );
  X_CKBUF   \decoder/r_Counter_16_BUFG  (
    .I(\decoder/r_Counter_161 ),
    .O(\decoder/r_Counter [16])
  );
  X_INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
  X_INV   \pwmGenerator/Mcount_rampa_lut<0>_INV_0  (
    .I(\pwmGenerator/rampa [0]),
    .O(\pwmGenerator/Mcount_rampa_lut [0])
  );
  X_INV   \Msub_w_error_lut<8>_INV_0  (
    .I(w_velocity[8]),
    .O(Msub_w_error_lut[8])
  );
  X_INV   \Msub_w_error_lut<9>_INV_0  (
    .I(w_velocity[9]),
    .O(Msub_w_error_lut[9])
  );
  X_INV   \Msub_w_error_lut<10>_INV_0  (
    .I(w_velocity[10]),
    .O(Msub_w_error_lut[10])
  );
  X_INV   \Msub_w_error_lut<11>_INV_0  (
    .I(w_velocity[11]),
    .O(Msub_w_error_lut[11])
  );
  X_INV   \Msub_w_error_lut<12>_INV_0  (
    .I(w_velocity[12]),
    .O(Msub_w_error_lut[12])
  );
  X_INV   \Msub_w_error_lut<13>_INV_0  (
    .I(w_velocity[13]),
    .O(Msub_w_error_lut[13])
  );
  X_INV   \Msub_w_error_lut<14>_INV_0  (
    .I(w_velocity[14]),
    .O(Msub_w_error_lut[14])
  );
  X_INV   \Msub_w_error_lut<15>_INV_0  (
    .I(w_velocity[15]),
    .O(Msub_w_error_lut[15])
  );
  X_INV   \Mcompar_r_controllerPin_cmp_lt0000_lut<1>_INV_0  (
    .I(w_velocity[2]),
    .O(\Mcompar_r_controllerPin_cmp_lt0000_lut[1] )
  );
  X_INV   \decoder/Mcount_r_Counter_lut<0>_INV_0  (
    .I(\decoder/r_Counter [0]),
    .O(\decoder/Mcount_r_Counter_lut [0])
  );
  X_INV   \converter/Mcount_r_Loop_Count_lut<0>_INV_0  (
    .I(\converter/r_Loop_Count [0]),
    .O(\converter/Mcount_r_Loop_Count_lut [0])
  );
  X_INV   \pidController/multiplier_16x16bit_pipelined/i_rst_inv361_INV_0  (
    .I(\debouncer0/DB_out_815 ),
    .O(decoder_not0000)
  );
  X_INV   \converter/Mcount_r_Digit_Index_xor<0>11_INV_0  (
    .I(\converter/r_Digit_Index [0]),
    .O(\converter/Result [0])
  );
  X_INV   \r_error_unsigned_not0000<9>1_INV_0  (
    .I(w_error[9]),
    .O(r_error_unsigned_not0000[9])
  );
  X_INV   \r_error_unsigned_not0000<8>1_INV_0  (
    .I(w_error[8]),
    .O(r_error_unsigned_not0000[8])
  );
  X_INV   \r_error_unsigned_not0000<7>1_INV_0  (
    .I(w_error[7]),
    .O(r_error_unsigned_not0000[7])
  );
  X_INV   \r_error_unsigned_not0000<6>1_INV_0  (
    .I(w_error[6]),
    .O(r_error_unsigned_not0000[6])
  );
  X_INV   \r_error_unsigned_not0000<5>1_INV_0  (
    .I(w_error[5]),
    .O(r_error_unsigned_not0000[5])
  );
  X_INV   \r_error_unsigned_not0000<4>1_INV_0  (
    .I(w_error[4]),
    .O(r_error_unsigned_not0000[4])
  );
  X_INV   \r_error_unsigned_not0000<3>1_INV_0  (
    .I(w_error[3]),
    .O(r_error_unsigned_not0000[3])
  );
  X_INV   \r_error_unsigned_not0000<2>1_INV_0  (
    .I(w_error[2]),
    .O(r_error_unsigned_not0000[2])
  );
  X_INV   \r_error_unsigned_not0000<1>1_INV_0  (
    .I(w_error[1]),
    .O(r_error_unsigned_not0000[1])
  );
  X_INV   \r_error_unsigned_not0000<14>1_INV_0  (
    .I(w_error[14]),
    .O(r_error_unsigned_not0000[14])
  );
  X_INV   \r_error_unsigned_not0000<13>1_INV_0  (
    .I(w_error[13]),
    .O(r_error_unsigned_not0000[13])
  );
  X_INV   \r_error_unsigned_not0000<12>1_INV_0  (
    .I(w_error[12]),
    .O(r_error_unsigned_not0000[12])
  );
  X_INV   \r_error_unsigned_not0000<11>1_INV_0  (
    .I(w_error[11]),
    .O(r_error_unsigned_not0000[11])
  );
  X_INV   \r_error_unsigned_not0000<10>1_INV_0  (
    .I(w_error[10]),
    .O(r_error_unsigned_not0000[10])
  );
  X_INV   \r_LED_mux0000<6>1_INV_0  (
    .I(w_error[15]),
    .O(r_LED_mux0000[6])
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62  (
    .IA(N563),
    .IB(N564),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[7] )
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N563)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<1>62_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N564)
  );
  X_MUX2   \pidController/md<1>  (
    .IA(N565),
    .IB(N566),
    .SEL(\pidController/sum [1]),
    .O(\pidController/md [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<1>_F  (
    .ADR0(\pidController/md_index [1]),
    .ADR1(\pidController/err_0_1_1458 ),
    .ADR2(\pidController/err_1_1_1474 ),
    .ADR3(\pidController/md_index [2]),
    .O(N565)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<1>_G  (
    .ADR0(\pidController/err_0_1_1458 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_1_1_1474 ),
    .O(N566)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>  (
    .IA(N567),
    .IB(N568),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N567)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<3>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N568)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>  (
    .IA(N569),
    .IB(N570),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(N569)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<11>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .O(N570)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry  (
    .IA(N571),
    .IB(N572),
    .SEL(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hDE48 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .O(N571)
  );
  X_LUT4 #(
    .INIT ( 16'hFD94 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/carry_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/negation [3]),
    .O(N572)
  );
  X_MUX2   \converter/r_Binary_mux0000<9>  (
    .IA(N573),
    .IB(N574),
    .SEL(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_Binary_mux0000 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<9>_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [9]),
    .ADR2(\converter/r_Binary [8]),
    .O(N573)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<9>_G  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [8]),
    .ADR2(DPSwitch_0_IBUF_11),
    .ADR3(w_velocity[9]),
    .O(N574)
  );
  X_MUX2   \converter/r_Binary_mux0000<8>  (
    .IA(N575),
    .IB(N576),
    .SEL(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_Binary_mux0000 [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<8>_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [8]),
    .ADR2(\converter/r_Binary [7]),
    .O(N575)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<8>_G  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [7]),
    .ADR2(DPSwitch_0_IBUF_11),
    .ADR3(w_velocity[8]),
    .O(N576)
  );
  X_MUX2   \converter/r_Binary_mux0000<12>  (
    .IA(N577),
    .IB(N578),
    .SEL(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_Binary_mux0000 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<12>_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [12]),
    .ADR2(\converter/r_Binary [11]),
    .O(N577)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<12>_G  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [11]),
    .ADR2(DPSwitch_0_IBUF_11),
    .ADR3(w_velocity[12]),
    .O(N578)
  );
  X_MUX2   \converter/r_Binary_mux0000<11>  (
    .IA(N579),
    .IB(N580),
    .SEL(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_Binary_mux0000 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<11>_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [11]),
    .ADR2(\converter/r_Binary [10]),
    .O(N579)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<11>_G  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [10]),
    .ADR2(DPSwitch_0_IBUF_11),
    .ADR3(w_velocity[11]),
    .O(N580)
  );
  X_MUX2   \converter/r_Binary_mux0000<10>  (
    .IA(N581),
    .IB(N582),
    .SEL(\converter/r_SM_Main_FSM_FFd6_794 ),
    .O(\converter/r_Binary_mux0000 [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \converter/r_Binary_mux0000<10>_F  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [10]),
    .ADR2(\converter/r_Binary [9]),
    .O(N581)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \converter/r_Binary_mux0000<10>_G  (
    .ADR0(\converter/r_SM_Main_FSM_FFd5_793 ),
    .ADR1(\converter/r_Binary [9]),
    .ADR2(DPSwitch_0_IBUF_11),
    .ADR3(w_velocity[10]),
    .O(N582)
  );
  X_MUX2   \pidController/adder_32bit_0/operator_C_stage_2_1/Go1  (
    .IA(N583),
    .IB(N584),
    .SEL(\pidController/adder_32bit_0/G1[0] ),
    .O(\pidController/adder_32bit_0/G2 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_2_1/Go1_F  (
    .ADR0(\pidController/p [2]),
    .ADR1(\pidController/p [1]),
    .ADR2(\pidController/a [1]),
    .ADR3(\pidController/a [2]),
    .O(N583)
  );
  X_LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_2_1/Go1_G  (
    .ADR0(\pidController/p [1]),
    .ADR1(\pidController/p [2]),
    .ADR2(\pidController/a [2]),
    .ADR3(\pidController/a [1]),
    .O(N584)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry  (
    .IA(N585),
    .IB(N586),
    .SEL(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9428 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .O(N585)
  );
  X_LUT4 #(
    .INIT ( 16'hEFF6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/carry_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .O(N586)
  );
  X_MUX2   \pidController/md<2>  (
    .IA(N587),
    .IB(N588),
    .SEL(\pidController/sum [2]),
    .O(\pidController/md [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<2>_F  (
    .ADR0(\pidController/err_0_2_1465 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_1_2_1481 ),
    .O(N587)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<2>_G  (
    .ADR0(\pidController/err_0_2_1465 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_1_2_1481 ),
    .O(N588)
  );
  X_MUX2   \pidController/md<0>  (
    .IA(N589),
    .IB(N590),
    .SEL(\pidController/sum [0]),
    .O(\pidController/md [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/md<0>_F  (
    .ADR0(\pidController/err_0_0_1457 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_1_0_1473 ),
    .O(N589)
  );
  X_LUT4 #(
    .INIT ( 16'hFB8B ))
  \pidController/md<0>_G  (
    .ADR0(\pidController/err_0_0_1457 ),
    .ADR1(\pidController/md_index [1]),
    .ADR2(\pidController/md_index [2]),
    .ADR3(\pidController/err_1_0_1473 ),
    .O(N590)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>  (
    .IA(N591),
    .IB(N592),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[5] )
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N591)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<5>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N592)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>  (
    .IA(N593),
    .IB(N594),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[1] )
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(N593)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<13>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [13]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .O(N594)
  );
  X_MUX2   \r_SevenSegment_mux0000<4>81  (
    .IA(N595),
    .IB(N596),
    .SEL(s_Main_FSM_FFd1_2333),
    .O(\r_SevenSegment_mux0000<4>81_2117 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<4>81_F  (
    .ADR0(r_SevenSegment[3]),
    .ADR1(s_Main_FSM_FFd3_2335),
    .ADR2(s_Main_FSM_FFd2_2334),
    .O(N595)
  );
  X_LUT4 #(
    .INIT ( 16'hFFB8 ))
  \r_SevenSegment_mux0000<4>81_G  (
    .ADR0(r_displayValue[3]),
    .ADR1(r_displayValue[1]),
    .ADR2(r_displayValue[2]),
    .ADR3(r_displayValue[0]),
    .O(N596)
  );
  X_MUX2   \r_SevenSegment_mux0000<5>141  (
    .IA(N597),
    .IB(N598),
    .SEL(s_Main_FSM_FFd1_2333),
    .O(\r_SevenSegment_mux0000<5>141_2118 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \r_SevenSegment_mux0000<5>141_F  (
    .ADR0(r_SevenSegment[2]),
    .ADR1(s_Main_FSM_FFd3_2335),
    .ADR2(s_Main_FSM_FFd2_2334),
    .O(N597)
  );
  X_LUT4 #(
    .INIT ( 16'hFC8E ))
  \r_SevenSegment_mux0000<5>141_G  (
    .ADR0(r_displayValue[0]),
    .ADR1(r_displayValue[1]),
    .ADR2(r_displayValue[2]),
    .ADR3(r_displayValue[3]),
    .O(N598)
  );
  X_MUX2   \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0  (
    .IA(N599),
    .IB(N600),
    .SEL(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .O(N224)
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0_F  (
    .ADR0(\pidController/a [10]),
    .ADR1(\pidController/a [9]),
    .ADR2(\pidController/p [9]),
    .ADR3(\pidController/p [10]),
    .O(N599)
  );
  X_LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW0_G  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/a [10]),
    .ADR2(\pidController/p [10]),
    .ADR3(\pidController/a [9]),
    .O(N600)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>  (
    .IA(N601),
    .IB(N602),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N601)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [12]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N602)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>  (
    .IA(N603),
    .IB(N604),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[4] )
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(N603)
  );
  X_LUT4 #(
    .INIT ( 16'h3606 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<7>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .O(N604)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>  (
    .IA(N605),
    .IB(N606),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N605)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N606)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>  (
    .IA(N607),
    .IB(N608),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w3 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N607)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N608)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>  (
    .IA(N609),
    .IB(N610),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N609)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N610)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>  (
    .IA(N611),
    .IB(N612),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N611)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(N612)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>  (
    .IA(N613),
    .IB(N614),
    .SEL(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4])
  );
  X_LUT3 #(
    .INIT ( 8'h28 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(N613)
  );
  X_LUT4 #(
    .INIT ( 16'h7E66 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<5>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .O(N614)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>  (
    .IA(N615),
    .IB(N616),
    .SEL(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4])
  );
  X_LUT3 #(
    .INIT ( 8'h28 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .O(N615)
  );
  X_LUT4 #(
    .INIT ( 16'h7E66 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<1>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .O(N616)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0  (
    .IA(N617),
    .IB(N618),
    .SEL(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .O(N266)
  );
  X_LUT3 #(
    .INIT ( 8'h82 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0_F  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(N222),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1559 ),
    .O(N617)
  );
  X_LUT4 #(
    .INIT ( 16'h8882 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>62_SW0_G  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(N222),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>59_1560 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1559 ),
    .O(N618)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry  (
    .IA(N619),
    .IB(N620),
    .SEL(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hDE48 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N619)
  );
  X_LUT4 #(
    .INIT ( 16'hFD94 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/carry_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N620)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1  (
    .IA(N621),
    .IB(N622),
    .SEL(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/AxorB )
  );
  X_LUT4 #(
    .INIT ( 16'h7EE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .O(N621)
  );
  X_LUT4 #(
    .INIT ( 16'h177E ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/Mxor_AxorB_Result1_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [4]),
    .O(N622)
  );
  X_MUX2   \pidController/p_mux0000<13>75_SW1  (
    .IA(N623),
    .IB(N624),
    .SEL(\pidController/p_or0000_1928 ),
    .O(N276)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<13>75_SW1_F  (
    .ADR0(\pidController/p [13]),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR3(\pidController/p_mux0000<13>7_1886 ),
    .O(N623)
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \pidController/p_mux0000<13>75_SW1_G  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR2(\pidController/p_mux0000<13>7_1886 ),
    .O(N624)
  );
  X_MUX2   \pidController/p_mux0000<13>75_SW0  (
    .IA(N625),
    .IB(N626),
    .SEL(\pidController/p_or0000_1928 ),
    .O(N275)
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/p_mux0000<13>75_SW0_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/p_mux0000<13>7_1886 ),
    .ADR3(\pidController/p [13]),
    .O(N625)
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \pidController/p_mux0000<13>75_SW0_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR1(\pidController/p_mux0000<10>20 ),
    .ADR2(\pidController/p_mux0000<13>7_1886 ),
    .O(N626)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1  (
    .IA(N627),
    .IB(N628),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N627)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<5>1_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .O(N628)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1  (
    .IA(N629),
    .IB(N630),
    .SEL(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hE860 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .O(N629)
  );
  X_LUT4 #(
    .INIT ( 16'h0617 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<9>1_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .O(N630)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>  (
    .IA(N631),
    .IB(N632),
    .SEL(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N631)
  );
  X_LUT4 #(
    .INIT ( 16'h22F2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N632)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0  (
    .IA(N633),
    .IB(N634),
    .SEL(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(N354)
  );
  X_LUT4 #(
    .INIT ( 16'h153F ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N633)
  );
  X_LUT4 #(
    .INIT ( 16'hCF45 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_SW0_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .O(N634)
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>  (
    .IA(N635),
    .IB(N636),
    .SEL(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>_F  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(N635)
  );
  X_LUT4 #(
    .INIT ( 16'h22F2 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<3>_G  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .O(N636)
  );
  X_LUT4 #(
    .INIT ( 16'h5DFF ))
  \converter/r_SM_Main_FSM_FFd2-In11  (
    .ADR0(\converter/r_SM_Main_cmp_eq00008_796 ),
    .ADR1(\converter/r_SM_Main_FSM_FFd1_785 ),
    .ADR2(\converter/r_SM_Main_cmp_eq0001 ),
    .ADR3(\converter/r_SM_Main_cmp_eq000021_795 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In1 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \converter/r_SM_Main_FSM_FFd2-In12  (
    .ADR0(\converter/r_SM_Main_FSM_FFd1_785 ),
    .ADR1(\converter/r_SM_Main_cmp_eq0001 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In11_789 )
  );
  X_MUX2   \converter/r_SM_Main_FSM_FFd2-In1_f5  (
    .IA(\converter/r_SM_Main_FSM_FFd2-In11_789 ),
    .IB(\converter/r_SM_Main_FSM_FFd2-In1 ),
    .SEL(\converter/r_SM_Main_FSM_FFd4_792 ),
    .O(\converter/r_SM_Main_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1658 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1657 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout12  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry27_1658 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry14_1657 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1701 )
  );
  X_MUX2   \pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1_f5  (
    .IA(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout11_1701 ),
    .IB(\pidController/multiplier_16x16bit_pipelined/layer_2_full_adder_4/cout1 ),
    .SEL(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_w13 [0])
  );
  X_BUF   \pidController/p_mux0000<0>11/LUT3_D_BUF  (
    .I(\pidController/p_mux0000<10>20 ),
    .O(N637)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \pidController/p_mux0000<0>11  (
    .ADR0(\pidController/state_1_FSM_FFd2_1949 ),
    .ADR1(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR2(\pidController/state_1_FSM_FFd3_1950 ),
    .O(\pidController/p_mux0000<10>20 )
  );
  X_BUF   \pidController/p_mux0000<0>31/LUT3_L_BUF  (
    .I(\pidController/p_mux0000<0>31/O ),
    .O(\pidController/p_mux0000<0>31_1874 )
  );
  X_LUT3 #(
    .INIT ( 8'h28 ))
  \pidController/p_mux0000<0>31  (
    .ADR0(\pidController/p_mux0000<10>20 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .O(\pidController/p_mux0000<0>31/O )
  );
  X_BUF   \converter/r_SM_Main_cmp_eq00011/LUT4_D_BUF  (
    .I(\converter/r_SM_Main_cmp_eq0001 ),
    .O(N638)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ))
  \converter/r_SM_Main_cmp_eq00011  (
    .ADR0(\converter/r_Digit_Index [1]),
    .ADR1(\converter/r_Digit_Index [0]),
    .ADR2(\converter/r_Digit_Index [3]),
    .ADR3(\converter/r_Digit_Index [2]),
    .O(\converter/r_SM_Main_cmp_eq0001 )
  );
  X_BUF   \pidController/p_or0000_SW0/LUT3_L_BUF  (
    .I(\pidController/p_or0000_SW0/O ),
    .O(N45)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \pidController/p_or0000_SW0  (
    .ADR0(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR1(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR2(\pidController/state_1_FSM_FFd6_1953 ),
    .O(\pidController/p_or0000_SW0/O )
  );
  X_BUF   \pidController/a_mux0000<1>20/LUT3_L_BUF  (
    .I(\pidController/a_mux0000<1>20/O ),
    .O(\pidController/a_mux0000<1>20_1400 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \pidController/a_mux0000<1>20  (
    .ADR0(\pidController/sum [1]),
    .ADR1(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR2(\pidController/state_1_FSM_FFd2_1949 ),
    .O(\pidController/a_mux0000<1>20/O )
  );
  X_BUF   \r_SevenSegment_mux0000<3>25/LUT4_L_BUF  (
    .I(\r_SevenSegment_mux0000<3>25/O ),
    .O(\r_SevenSegment_mux0000<3>25_2106 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \r_SevenSegment_mux0000<3>25  (
    .ADR0(s_Main_FSM_FFd1_2333),
    .ADR1(r_displayValue[3]),
    .ADR2(r_displayValue[1]),
    .ADR3(r_displayValue[2]),
    .O(\r_SevenSegment_mux0000<3>25/O )
  );
  X_BUF   \decoder/count_and0000_SW0/LUT4_L_BUF  (
    .I(\decoder/count_and0000_SW0/O ),
    .O(N65)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \decoder/count_and0000_SW0  (
    .ADR0(\decoder/count [6]),
    .ADR1(\decoder/count [7]),
    .ADR2(\decoder/count [8]),
    .ADR3(\decoder/count [10]),
    .O(\decoder/count_and0000_SW0/O )
  );
  X_BUF   \decoder/count_mux0001<11>210/LUT2_L_BUF  (
    .I(\decoder/count_mux0001<11>210/O ),
    .O(\decoder/count_mux0001<11>210_1236 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \decoder/count_mux0001<11>210  (
    .ADR0(\decoder/count [2]),
    .ADR1(\decoder/count [1]),
    .O(\decoder/count_mux0001<11>210/O )
  );
  X_BUF   \decoder/count_mux0001<11>218/LUT3_D_BUF  (
    .I(\decoder/N111 ),
    .O(N639)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \decoder/count_mux0001<11>218  (
    .ADR0(\decoder/count_and0000_1210 ),
    .ADR1(\decoder/count_mux0001<11>24_1238 ),
    .ADR2(\decoder/count_mux0001<11>215_1237 ),
    .O(\decoder/N111 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<3>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [1]),
    .O(N640)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w5 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<2>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [1]),
    .O(N641)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w4 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<8>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .O(N642)
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0])
  );
  X_BUF   \pidController/a_mux0000<2>13/LUT3_L_BUF  (
    .I(\pidController/a_mux0000<2>13/O ),
    .O(\pidController/a_mux0000<2>13_1403 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<2>13  (
    .ADR0(\pidController/a [2]),
    .ADR1(\pidController/a_mux0000<2>7_1404 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<2>13/O )
  );
  X_BUF   \pidController/p_mux0000<2>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<2>21/O ),
    .O(\pidController/p_mux0000<2>21_1896 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<2>21  (
    .ADR0(\pidController/p [2]),
    .ADR1(\pidController/p_mux0000<2>8_1899 ),
    .ADR2(\pidController/p_mux0000<2>7_1898 ),
    .ADR3(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<2>21/O )
  );
  X_BUF   \converter/Madd_add0000_addsub0000_xor<1>11/LUT2_D_BUF  (
    .I(\converter/add0000_addsub0000 [1]),
    .O(N643)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \converter/Madd_add0000_addsub0000_xor<1>11  (
    .ADR0(\converter/w_BCD_Digit [1]),
    .ADR1(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(\converter/add0000_addsub0000 [1])
  );
  X_BUF   \pidController/adder_32bit_0/operator_B_stage_2_7/Go11/LUT4_D_BUF  (
    .I(\pidController/adder_32bit_0/N25 ),
    .O(N644)
  );
  X_LUT4 #(
    .INIT ( 16'hEA80 ))
  \pidController/adder_32bit_0/operator_B_stage_2_7/Go11  (
    .ADR0(\pidController/a [12]),
    .ADR1(\pidController/p [11]),
    .ADR2(\pidController/a [11]),
    .ADR3(\pidController/p [12]),
    .O(\pidController/adder_32bit_0/N25 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_full_adder_4/cout1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<3>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [2]),
    .O(N645)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<3>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N6 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/nmd [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N14 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [2])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<5>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [1]),
    .O(N646)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<5>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [4]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [5]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w7 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/cout1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [1]),
    .O(N647)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_0/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w6 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w7 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<9>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .O(N648)
  );
  X_LUT4 #(
    .INIT ( 16'h486A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<9>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0])
  );
  X_BUF   \pidController/a_mux0000<4>13/LUT3_L_BUF  (
    .I(\pidController/a_mux0000<4>13/O ),
    .O(\pidController/a_mux0000<4>13_1409 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<4>13  (
    .ADR0(\pidController/a [4]),
    .ADR1(\pidController/a_mux0000<4>7_1410 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<4>13/O )
  );
  X_BUF   \pidController/a_mux0000<3>13/LUT3_L_BUF  (
    .I(\pidController/a_mux0000<3>13/O ),
    .O(\pidController/a_mux0000<3>13_1406 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<3>13  (
    .ADR0(\pidController/a [3]),
    .ADR1(\pidController/a_mux0000<3>7_1407 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<3>13/O )
  );
  X_BUF   \pidController/p_mux0000<3>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<3>21/O ),
    .O(\pidController/p_mux0000<3>21_1901 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<3>21  (
    .ADR0(\pidController/p [3]),
    .ADR1(\pidController/p_mux0000<3>8_1903 ),
    .ADR2(\pidController/p_mux0000<3>7_1902 ),
    .ADR3(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<3>21/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<10>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .O(N649)
  );
  X_LUT4 #(
    .INIT ( 16'h53A0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<10>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0])
  );
  X_BUF   \converter/Madd_add0000_addsub0000_cy<1>11/LUT2_D_BUF  (
    .I(\converter/Madd_add0000_addsub0000_cy [1]),
    .O(N650)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \converter/Madd_add0000_addsub0000_cy<1>11  (
    .ADR0(\converter/w_BCD_Digit [1]),
    .ADR1(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(\converter/Madd_add0000_addsub0000_cy [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<2>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [5]),
    .O(N651)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N2 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/nmd [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N10 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [5])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<9>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .O(N652)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<9>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [9]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w15 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/cout1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_S_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [2]),
    .O(N653)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [2])
  );
  X_BUF   \pidController/p_mux0000<5>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<5>21/O ),
    .O(\pidController/p_mux0000<5>21_1911 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<5>21  (
    .ADR0(\pidController/p_mux0000<5>7_1912 ),
    .ADR1(\pidController/p [5]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/p_mux0000<5>8_1913 ),
    .O(\pidController/p_mux0000<5>21/O )
  );
  X_BUF   \pidController/p_mux0000<4>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<4>21/O ),
    .O(\pidController/p_mux0000<4>21_1906 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<4>21  (
    .ADR0(\pidController/p [4]),
    .ADR1(\pidController/p_mux0000<4>8_1908 ),
    .ADR2(\pidController/p_mux0000<4>7_1907 ),
    .ADR3(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<4>21/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_7/carry1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0]),
    .O(N654)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_7/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [0])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>11/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N10 ),
    .O(N655)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/N10 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<10>11/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N2 ),
    .O(N656)
  );
  X_LUT3 #(
    .INIT ( 8'h24 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<10>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(\pidController/multiplier_16x16bit_pipelined/N2 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/cout1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1]),
    .O(N657)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w14 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/cout1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1]),
    .O(N658)
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w10 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<12>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .O(N659)
  );
  X_LUT4 #(
    .INIT ( 16'h35C0 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_0/pp<12>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [11]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [12]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_8/Mxor_S_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .O(N660)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_8/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1])
  );
  X_BUF   \pidController/a_mux0000<6>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<6>10/O ),
    .O(\pidController/a_mux0000<6>10_1414 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<6>10  (
    .ADR0(\pidController/a [6]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<6>10/O )
  );
  X_BUF   \pidController/a_mux0000<6>18/LUT2_D_BUF  (
    .I(\pidController/a_mux0000<10>18 ),
    .O(N661)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \pidController/a_mux0000<6>18  (
    .ADR0(\pidController/state_1_FSM_FFd3_1950 ),
    .ADR1(\pidController/state_1_FSM_FFd2_1949 ),
    .O(\pidController/a_mux0000<10>18 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0/O ),
    .O(N149)
  );
  X_LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w15<0>_SW0/O )
  );
  X_BUF   \pidController/p_mux0000<6>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<6>21/O ),
    .O(\pidController/p_mux0000<6>21_1915 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<6>21  (
    .ADR0(\pidController/p [6]),
    .ADR1(\pidController/p_mux0000<6>8_1917 ),
    .ADR2(\pidController/p_mux0000<6>7_1916 ),
    .ADR3(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<6>21/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_5/carry1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0]),
    .O(N662)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_5/carry1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [0])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<0>11/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N15 ),
    .O(N663)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<0>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1772 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1769 ),
    .O(\pidController/multiplier_16x16bit_pipelined/N15 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_6/Mxor_S_Result1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .O(N664)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_6/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/Mxor_CxorD_Result1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD ),
    .O(N665)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<10>11/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N7 ),
    .O(N666)
  );
  X_LUT3 #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/pp<10>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1772 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1769 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .O(\pidController/multiplier_16x16bit_pipelined/N7 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_S_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(N667)
  );
  X_LUT4 #(
    .INIT ( 16'h6996 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0/O ),
    .O(N154)
  );
  X_LUT4 #(
    .INIT ( 16'h135F ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N4 ),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<2>_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [0]),
    .O(N668)
  );
  X_LUT4 #(
    .INIT ( 16'hFE98 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/carry  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [4]),
    .ADR2(N161),
    .ADR3(N162),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_w11 [0])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1650 ),
    .O(N669)
  );
  X_LUT4 #(
    .INIT ( 16'hAE08 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/CxorD ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry14_1650 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<0>11/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N12 ),
    .O(N670)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<0>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1781 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .O(\pidController/multiplier_16x16bit_pipelined/N12 )
  );
  X_BUF   \pidController/p_mux0000<7>21/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<7>21/O ),
    .O(\pidController/p_mux0000<7>21_1920 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<7>21  (
    .ADR0(\pidController/p_mux0000<7>7_1921 ),
    .ADR1(\pidController/p [7]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(\pidController/p_mux0000<7>8_1922 ),
    .O(\pidController/p_mux0000<7>21/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_14/Mxor_P_Result1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] ),
    .O(N671)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_14/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1]),
    .O(N672)
  );
  X_LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w12 [2]),
    .ADR3(N175),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w13<0>_SW0/LUT3_D_BUF  (
    .I(N179),
    .O(N673)
  );
  X_LUT3 #(
    .INIT ( 8'h17 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<0>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .O(N179)
  );
  X_BUF   \pidController/a_mux0000<8>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<8>10/O ),
    .O(\pidController/a_mux0000<8>10_1420 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<8>10  (
    .ADR0(\pidController/a [8]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<8>10/O )
  );
  X_BUF   \pidController/a_mux0000<7>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<7>10/O ),
    .O(\pidController/a_mux0000<7>10_1417 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<7>10  (
    .ADR0(\pidController/a [7]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<7>10/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<0>11/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N14 ),
    .O(N674)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<0>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/N14 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>11/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/N6 ),
    .O(N675)
  );
  X_LUT3 #(
    .INIT ( 8'h18 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/N6 )
  );
  X_BUF   \pidController/p_mux0000<8>13/LUT3_L_BUF  (
    .I(\pidController/p_mux0000<8>13/O ),
    .O(\pidController/p_mux0000<8>13_1924 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<8>13  (
    .ADR0(\pidController/p [8]),
    .ADR1(\pidController/p_mux0000<8>7_1925 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<8>13/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_12/Mxor_P_Result1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] ),
    .O(N676)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_12/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[12] )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w12<1>/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1]),
    .O(N677)
  );
  X_LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w12<1>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w11 [0]),
    .ADR3(N193),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w12 [1])
  );
  X_BUF   \pidController/a_mux0000<9>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<9>10/O ),
    .O(\pidController/a_mux0000<9>10_1423 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<9>10  (
    .ADR0(\pidController/a [9]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<9>10/O )
  );
  X_BUF   \pidController/a_mux0000<10>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<10>10/O ),
    .O(\pidController/a_mux0000<10>10_1381 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<10>10  (
    .ADR0(\pidController/a [10]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<10>10/O )
  );
  X_BUF   \pidController/a_mux0000<12>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<12>10/O ),
    .O(\pidController/a_mux0000<12>10_1388 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<12>10  (
    .ADR0(\pidController/a [12]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<12>10/O )
  );
  X_BUF   \pidController/a_mux0000<11>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<11>10/O ),
    .O(\pidController/a_mux0000<11>10_1385 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<11>10  (
    .ADR0(\pidController/a [11]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<11>10/O )
  );
  X_BUF   \pidController/p_mux0000<10>13/LUT3_L_BUF  (
    .I(\pidController/p_mux0000<10>13/O ),
    .O(\pidController/p_mux0000<10>13_1876 )
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/p_mux0000<10>13  (
    .ADR0(\pidController/p [10]),
    .ADR1(\pidController/p_mux0000<10>7_1878 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<10>13/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_0/Mxor_S_Result1/LUT2_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1]),
    .O(N678)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_half_adder_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [1])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/cout1/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .O(N679)
  );
  X_LUT3 #(
    .INIT ( 8'hE8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/cout1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/Mxor_S_Result1/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 ),
    .O(N680)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_full_adder_0/Mxor_S_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w2 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_3_2/Go35/LUT4_D_BUF  (
    .I(\pidController/adder_32bit_0/G3 [2]),
    .O(N681)
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35  (
    .ADR0(\pidController/adder_32bit_0/P1 [2]),
    .ADR1(\pidController/adder_32bit_0/operator_C_stage_3_2/Go0_1448 ),
    .ADR2(\pidController/adder_32bit_0/G1[2] ),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_1449 ),
    .O(\pidController/adder_32bit_0/G3 [2])
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_6/Go111/LUT2_D_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 ),
    .O(N682)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go111  (
    .ADR0(\pidController/a [6]),
    .ADR1(\pidController/p [6]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go111_1451 )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_6/Go112/LUT2_D_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1452 ),
    .O(N683)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go112  (
    .ADR0(\pidController/a [6]),
    .ADR1(\pidController/p [6]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1452 )
  );
  X_BUF   \pidController/a_mux0000<14>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<14>10/O ),
    .O(\pidController/a_mux0000<14>10_1394 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<14>10  (
    .ADR0(\pidController/a [14]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<14>10/O )
  );
  X_BUF   \pidController/a_mux0000<13>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<13>10/O ),
    .O(\pidController/a_mux0000<13>10_1391 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<13>10  (
    .ADR0(\pidController/a [13]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<13>10/O )
  );
  X_BUF   \pidController/p_mux0000<12>7/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<12>7/O ),
    .O(\pidController/p_mux0000<12>7_1884 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<12>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_12_1461 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[12]),
    .O(\pidController/p_mux0000<12>7/O )
  );
  X_BUF   \pidController/p_mux0000<15>7/LUT4_D_BUF  (
    .I(\pidController/p_mux0000<15>7_1891 ),
    .O(N684)
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<15>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_15_1464 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[15]),
    .O(\pidController/p_mux0000<15>7_1891 )
  );
  X_BUF   \pidController/p_mux0000<14>7/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<14>7/O ),
    .O(\pidController/p_mux0000<14>7_1889 )
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/p_mux0000<14>7  (
    .ADR0(\pidController/state_1_FSM_FFd6_1953 ),
    .ADR1(\pidController/err_0_14_1463 ),
    .ADR2(\pidController/state_1_FSM_FFd9_1956 ),
    .ADR3(r_kp[14]),
    .O(\pidController/p_mux0000<14>7/O )
  );
  X_BUF   \pidController/a_mux0000<15>7/LUT4_D_BUF  (
    .I(\pidController/a_mux0000<15>7_1398 ),
    .O(N685)
  );
  X_LUT4 #(
    .INIT ( 16'hF222 ))
  \pidController/a_mux0000<15>7  (
    .ADR0(\pidController/state_1_FSM_FFd7_1954 ),
    .ADR1(w_velocity[15]),
    .ADR2(\pidController/state_1_FSM_FFd4_1951 ),
    .ADR3(\pidController/sigma [15]),
    .O(\pidController/a_mux0000<15>7_1398 )
  );
  X_BUF   \pidController/a_mux0000<15>10/LUT2_L_BUF  (
    .I(\pidController/a_mux0000<15>10/O ),
    .O(\pidController/a_mux0000<15>10_1397 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \pidController/a_mux0000<15>10  (
    .ADR0(\pidController/a [15]),
    .ADR1(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<15>10/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_4/Mxor_P_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] ),
    .O(N686)
  );
  X_LUT4 #(
    .INIT ( 16'h8778 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_4/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w4 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[4] )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<2>_Result11/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 ),
    .O(N687)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/Mxor_o_s<2>_Result11  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w0 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w1_1819 ),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N12 )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_7/Go176/LUT4_D_BUF  (
    .I(\pidController/adder_32bit_0/N19 ),
    .O(N688)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go151_1454 ),
    .ADR1(N225),
    .ADR2(N224),
    .ADR3(\pidController/adder_32bit_0/G3 [3]),
    .O(\pidController/adder_32bit_0/N19 )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_3_3/Go/LUT4_D_BUF  (
    .I(\pidController/adder_32bit_0/G3 [3]),
    .O(N689)
  );
  X_LUT4 #(
    .INIT ( 16'hDF80 ))
  \pidController/adder_32bit_0/operator_C_stage_3_3/Go  (
    .ADR0(\pidController/adder_32bit_0/P1 [2]),
    .ADR1(N231),
    .ADR2(\pidController/adder_32bit_0/G2 [1]),
    .ADR3(N230),
    .O(\pidController/adder_32bit_0/G3 [3])
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0/LUT2_L_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0/O ),
    .O(N236)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0  (
    .ADR0(\pidController/p [2]),
    .ADR1(\pidController/a [2]),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go12_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_1_2/Go1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] ),
    .O(N690)
  );
  X_LUT4 #(
    .INIT ( 16'hE080 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_1_2/Go1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w3 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w4 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w3 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0/O ),
    .O(N218)
  );
  X_LUT4 #(
    .INIT ( 16'hCFCD ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w2 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N4 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G1[2] ),
    .ADR3(N258),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_3_3/Go_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27_1661 )
  );
  X_LUT4 #(
    .INIT ( 16'h8F86 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/carry27/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27_1654 )
  );
  X_LUT4 #(
    .INIT ( 16'h8F86 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [3]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [4]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/carry27/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_10/Mxor_P_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .O(N691)
  );
  X_LUT4 #(
    .INIT ( 16'h8778 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_A_10/Mxor_P_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<2>1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<10>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [10]),
    .O(N692)
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<10>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_2_1_1772 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_1_1_1769 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [10])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[6] )
  );
  X_LUT4 #(
    .INIT ( 16'h9A5A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_7_2_1782 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd<6>1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0/O ),
    .O(N173)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w14 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<1>_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0/O ),
    .O(N177)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w14<0>_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3/O ),
    .O(N261)
  );
  X_LUT4 #(
    .INIT ( 16'hD5AA ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_1_w13 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_1/carry_SW3/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 ),
    .O(N693)
  );
  X_LUT4 #(
    .INIT ( 16'hE4CC ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .ADR1(N263),
    .ADR2(N264),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N19 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>_SW0/LUT3_D_BUF  (
    .I(N175),
    .O(N694)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w13<1>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w13 [2]),
    .O(N175)
  );
  X_BUF   \pidController/p_mux0000<14>77_SW1/LUT4_D_BUF  (
    .I(N273),
    .O(N695)
  );
  X_LUT4 #(
    .INIT ( 16'h10E0 ))
  \pidController/p_mux0000<14>77_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w13 [0]),
    .ADR2(\pidController/p_mux0000<10>20 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[14] ),
    .O(N273)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go169/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 ),
    .O(N696)
  );
  X_LUT4 #(
    .INIT ( 16'hFEBA ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go169  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go110 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [2]),
    .ADR2(N278),
    .ADR3(N279),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N20 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0/O ),
    .O(N147)
  );
  X_LUT3 #(
    .INIT ( 8'h69 ))
  \pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w15 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_4_w15<1>_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1651 ),
    .O(N697)
  );
  X_LUT4 #(
    .INIT ( 16'hE332 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1651 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<6>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [6]),
    .O(N698)
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<6>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [6])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<8>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [8]),
    .O(N699)
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<8>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [8])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<7>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [7]),
    .O(N700)
  );
  X_LUT4 #(
    .INIT ( 16'h95AA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<7>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [7])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>_SW1/LUT4_D_BUF  (
    .I(N191),
    .O(N701)
  );
  X_LUT4 #(
    .INIT ( 16'hFE19 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_4/pp<4>_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_7_1_1781 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [8]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .O(N191)
  );
  X_BUF   \pidController/p_mux0000<11>74/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<11>74/O ),
    .O(\pidController/p_mux0000<11>74_1881 )
  );
  X_LUT4 #(
    .INIT ( 16'hDF80 ))
  \pidController/p_mux0000<11>74  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go151 ),
    .ADR1(N299),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G3 [3]),
    .ADR3(N298),
    .O(\pidController/p_mux0000<11>74/O )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1/LUT4_L_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1/O ),
    .O(N251)
  );
  X_LUT4 #(
    .INIT ( 16'h17FF ))
  \pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1  (
    .ADR0(\pidController/p [5]),
    .ADR1(\pidController/a [5]),
    .ADR2(N304),
    .ADR3(\pidController/adder_32bit_0/operator_C_stage_4_6/Go112_1452 ),
    .O(\pidController/adder_32bit_0/operator_C_stage_3_2/Go35_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW0/LUT4_D_BUF  (
    .I(N3111),
    .O(N702)
  );
  X_LUT4 #(
    .INIT ( 16'h569A ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/negation [4]),
    .ADR2(N151),
    .ADR3(N152),
    .O(N3111)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1_SW1/LUT4_D_BUF  (
    .I(N314),
    .O(N703)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<7>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N314)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1_SW1/LUT4_D_BUF  (
    .I(N317),
    .O(N704)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<3>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N317)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1/O ),
    .O(N326)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<8>1_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3]),
    .O(N705)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N329),
    .ADR2(N328),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [3])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1/O ),
    .O(N332)
  );
  X_LUT4 #(
    .INIT ( 16'hF9E8 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr_3_1_1774 ),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<6>1_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1/O ),
    .O(N335)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [10]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [9]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<10>2_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD ),
    .O(N706)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .ADR2(N337),
    .ADR3(N3111),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_2/CxorD )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0/LUT4_L_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0/O ),
    .O(N339)
  );
  X_LUT4 #(
    .INIT ( 16'hE187 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0  (
    .ADR0(\pidController/a [11]),
    .ADR1(\pidController/p [11]),
    .ADR2(\pidController/adder_32bit_0/P0[12] ),
    .ADR3(N224),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW0/O )
  );
  X_BUF   \pidController/p_mux0000<15>75_SW0/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<15>75_SW0/O ),
    .O(N342)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \pidController/p_mux0000<15>75_SW0  (
    .ADR0(\pidController/p_mux0000<15>7_1891 ),
    .ADR1(\pidController/p [15]),
    .ADR2(\pidController/p_or0000_1928 ),
    .ADR3(N266),
    .O(\pidController/p_mux0000<15>75_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD ),
    .O(N707)
  );
  X_LUT4 #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N314),
    .ADR2(N313),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w13 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_6/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD ),
    .O(N708)
  );
  X_LUT4 #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N317),
    .ADR2(N316),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w9 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_2/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1576 ),
    .O(N709)
  );
  X_LUT4 #(
    .INIT ( 16'h8FF8 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w5 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_6/Go112_1576 )
  );
  X_BUF   \pidController/adder_32bit_0/G4<6>16/LUT4_D_BUF  (
    .I(\pidController/adder_32bit_0/G4<6>16_1430 ),
    .O(N710)
  );
  X_LUT4 #(
    .INIT ( 16'h0660 ))
  \pidController/adder_32bit_0/G4<6>16  (
    .ADR0(\pidController/p [10]),
    .ADR1(\pidController/a [10]),
    .ADR2(\pidController/a [9]),
    .ADR3(\pidController/p [9]),
    .O(\pidController/adder_32bit_0/G4<6>16_1430 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_6/Go11_SW0/LUT4_D_BUF  (
    .I(N348),
    .O(N711)
  );
  X_LUT4 #(
    .INIT ( 16'hE888 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_B_stage_2_6/Go11_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w9 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .O(N348)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go110_SW0/LUT4_D_BUF  (
    .I(N350),
    .O(N712)
  );
  X_LUT4 #(
    .INIT ( 16'hE888 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go110_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .O(N350)
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW1/LUT4_D_BUF  (
    .I(N225),
    .O(N713)
  );
  X_LUT4 #(
    .INIT ( 16'hFCE8 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go167_SW1  (
    .ADR0(\pidController/p [9]),
    .ADR1(\pidController/p [10]),
    .ADR2(\pidController/a [10]),
    .ADR3(\pidController/a [9]),
    .O(N225)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<4>1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [4]),
    .O(N714)
  );
  X_LUT4 #(
    .INIT ( 16'hD25A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd<4>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_1/nmd [4])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .O(N715)
  );
  X_LUT4 #(
    .INIT ( 16'h146C ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_5/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [9]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [11]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [10]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<0>/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7]),
    .O(N716)
  );
  X_LUT4 #(
    .INIT ( 16'h162A ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_7/pp<0>  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [15]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/mr [14]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/md [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [7])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .O(N717)
  );
  X_LUT4 #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N329),
    .ADR2(N328),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1/O ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/CxorD )
  );
  X_LUT4 #(
    .INIT ( 16'h3666 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1  (
    .ADR0(N356),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w15[2] ),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/nmd[8] ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/N5 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_8/Mxor_CxorD_Result1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0/LUT2_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0/O ),
    .O(N371)
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w8 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry27_1651 ),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_1/carry37_SW0_SW0/O )
  );
  X_BUF   \decoder/count_mux0001<11>151/LUT4_L_BUF  (
    .I(\decoder/count_mux0001<11>151/O ),
    .O(\decoder/count_mux0001<11>151_1234 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \decoder/count_mux0001<11>151  (
    .ADR0(\decoder/count [9]),
    .ADR1(\decoder/count [12]),
    .ADR2(\decoder/count [11]),
    .ADR3(\decoder/count_mux0001<11>150_1233 ),
    .O(\decoder/count_mux0001<11>151/O )
  );
  X_BUF   \decoder/count_mux0001<11>189/LUT4_D_BUF  (
    .I(\decoder/N0 ),
    .O(N718)
  );
  X_LUT4 #(
    .INIT ( 16'hFF5D ))
  \decoder/count_mux0001<11>189  (
    .ADR0(\decoder/count_and0000_1210 ),
    .ADR1(\decoder/count [14]),
    .ADR2(\decoder/count [13]),
    .ADR3(\decoder/count_mux0001<11>170_1235 ),
    .O(\decoder/N0 )
  );
  X_BUF   \converter/r_BCD_11_mux000021/LUT4_D_BUF  (
    .I(\converter/N10 ),
    .O(N719)
  );
  X_LUT4 #(
    .INIT ( 16'h28A0 ))
  \converter/r_BCD_11_mux000021  (
    .ADR0(\converter/r_SM_Main_FSM_FFd2_786 ),
    .ADR1(\converter/Madd_add0000_addsub0000_lut [2]),
    .ADR2(\converter/Madd_add0000_addsub0000_lut [3]),
    .ADR3(\converter/Madd_add0000_addsub0000_cy [1]),
    .O(\converter/N10 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0/O ),
    .O(N373)
  );
  X_LUT4 #(
    .INIT ( 16'h27D8 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR1(N191),
    .ADR2(N190),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w12 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_5/Mxor_S_Result1_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1/O ),
    .O(N379)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/Mxor_S_Result1_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2/O ),
    .O(N381)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [2]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_7/Mxor_S_Result1_SW2/O )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2/LUT3_L_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2/O ),
    .O(N389)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2  (
    .ADR0(\pidController/a [11]),
    .ADR1(\pidController/p [11]),
    .ADR2(N224),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_7/Go176_SW2/O )
  );
  X_BUF   \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4/LUT3_L_BUF  (
    .I(\pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4/O ),
    .O(N392)
  );
  X_LUT3 #(
    .INIT ( 8'h96 ))
  \pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4  (
    .ADR0(\pidController/adder_32bit_0/operator_C_stage_4_6/Go110_1450 ),
    .ADR1(\pidController/p [9]),
    .ADR2(\pidController/a [9]),
    .O(\pidController/adder_32bit_0/operator_C_stage_4_6/Go169_SW4/O )
  );
  X_BUF   \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0/LUT3_L_BUF  (
    .I(\pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0/O ),
    .O(N395)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0  (
    .ADR0(N301),
    .ADR1(N233),
    .ADR2(N234),
    .O(\pidController/adder_32bit_0/Mxor_o_s<15>_Result1_SW0/O )
  );
  X_BUF   \converter/r_BCD_12_mux00009_SW0/LUT3_L_BUF  (
    .I(\converter/r_BCD_12_mux00009_SW0/O ),
    .O(N401)
  );
  X_LUT3 #(
    .INIT ( 8'hF7 ))
  \converter/r_BCD_12_mux00009_SW0  (
    .ADR0(\converter/r_Digit_Index [0]),
    .ADR1(\converter/r_Digit_Index [1]),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(\converter/r_BCD_12_mux00009_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0/LUT2_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0/O ),
    .O(N405)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_1_w12 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/carry37_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0/O ),
    .O(N407)
  );
  X_LUT4 #(
    .INIT ( 16'hE817 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR2(N348),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go176_SW1_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0/LUT3_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0/O ),
    .O(N377)
  );
  X_LUT3 #(
    .INIT ( 8'h9F ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w10 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w11 [1]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>51_SW0_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0/O ),
    .O(N419)
  );
  X_LUT4 #(
    .INIT ( 16'hFE10 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0  (
    .ADR0(N255),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N25 ),
    .ADR2(N272),
    .ADR3(N273),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>64_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD ),
    .O(N720)
  );
  X_LUT4 #(
    .INIT ( 16'h9669 ))
  \pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [5]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_0_w10 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_3/CxorD ),
    .ADR3(N422),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_2_compressor42_0/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1559 ),
    .O(N721)
  );
  X_LUT4 #(
    .INIT ( 16'hC0D4 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10  (
    .ADR0(N179),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [1]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w14 [0]),
    .ADR3(N428),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<7>10_1559 )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1_SW1/LUT4_D_BUF  (
    .I(N431),
    .O(N722)
  );
  X_LUT4 #(
    .INIT ( 16'hFCCA ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_3/pp<5>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [4]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [5]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [6]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [5]),
    .O(N431)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1/O ),
    .O(N434)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [6]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr_4_1_1777 ),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr_3_2_1775 ),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<7>1_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1/O ),
    .O(N437)
  );
  X_LUT4 #(
    .INIT ( 16'hFAAC ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/md [8]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/md [7]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/mr [4]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/mr [3]),
    .O(\pidController/multiplier_16x16bit_pipelined/partial_product_gen_2/pp<8>1_SW1/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0/LUT4_L_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0/O ),
    .O(N439)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w7 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w6 [0]),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go127_SW0/O )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1/LUT3_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6]),
    .O(N723)
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \pidController/multiplier_16x16bit_pipelined/partial_product_gen_6/pp<2>1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [13]),
    .ADR1(N443),
    .ADR2(N442),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_0_w14 [6])
  );
  X_BUF   \pidController/p_mux0000<1>44_SW0/LUT4_L_BUF  (
    .I(\pidController/p_mux0000<1>44_SW0/O ),
    .O(N513)
  );
  X_LUT4 #(
    .INIT ( 16'hFCFE ))
  \pidController/p_mux0000<1>44_SW0  (
    .ADR0(\pidController/p [1]),
    .ADR1(\pidController/p_mux0000<1>8_1894 ),
    .ADR2(\pidController/p_mux0000<1>7_1893 ),
    .ADR3(\pidController/p_or0000_1928 ),
    .O(\pidController/p_mux0000<1>44_SW0/O )
  );
  X_BUF   \pidController/a_mux0000<5>23_SW0/LUT3_L_BUF  (
    .I(\pidController/a_mux0000<5>23_SW0/O ),
    .O(N523)
  );
  X_LUT3 #(
    .INIT ( 8'hCE ))
  \pidController/a_mux0000<5>23_SW0  (
    .ADR0(\pidController/a [5]),
    .ADR1(\pidController/a_mux0000<5>7_1412 ),
    .ADR2(\pidController/p_or0000_1928 ),
    .O(\pidController/a_mux0000<5>23_SW0/O )
  );
  X_BUF   \converter/Madd_add0000_addsub0000_xor<2>11/LUT3_D_BUF  (
    .I(\converter/add0000_addsub0000 [2]),
    .O(N724)
  );
  X_LUT3 #(
    .INIT ( 8'h36 ))
  \converter/Madd_add0000_addsub0000_xor<2>11  (
    .ADR0(\converter/w_BCD_Digit [1]),
    .ADR1(\converter/Madd_add0000_addsub0000_lut [2]),
    .ADR2(\converter/Madd_add0000_addsub0000_cy [0]),
    .O(\converter/add0000_addsub0000 [2])
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_CxorD_Result1/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD ),
    .O(N725)
  );
  X_LUT4 #(
    .INIT ( 16'hD827 ))
  \pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/Mxor_CxorD_Result1  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/mr [7]),
    .ADR1(N431),
    .ADR2(N430),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/layer_0_w11 [2]),
    .O(\pidController/multiplier_16x16bit_pipelined/layer_1_compressor42_4/CxorD )
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW0/LUT4_D_BUF  (
    .I(N263),
    .O(N726)
  );
  X_LUT4 #(
    .INIT ( 16'hFF60 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/operator_C_stage_4_7/Go167_SW0  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR2(N525),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/N26 ),
    .O(N263)
  );
  X_BUF   \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16/LUT4_D_BUF  (
    .I(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1557 ),
    .O(N727)
  );
  X_LUT4 #(
    .INIT ( 16'h7800 ))
  \pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16  (
    .ADR0(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [1]),
    .ADR1(\pidController/multiplier_16x16bit_pipelined/reg_layer_2_w8 [0]),
    .ADR2(\pidController/multiplier_16x16bit_pipelined/layer_4_w9 [1]),
    .ADR3(\pidController/multiplier_16x16bit_pipelined/adder_32bit/P0[10] ),
    .O(\pidController/multiplier_16x16bit_pipelined/adder_32bit/G4<6>16_1557 )
  );
  X_IPAD #(
    .LOC ( "P129" ))
  Clk_2431 (
    .PAD(Clk)
  );
  X_IPAD #(
    .LOC ( "P70" ))
  \DPSwitch<0>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[0])
  );
  X_IPAD #(
    .LOC ( "P69" ))
  \DPSwitch<1>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[1])
  );
  X_IPAD #(
    .LOC ( "P68" ))
  \DPSwitch<2>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[2])
  );
  X_IPAD #(
    .LOC ( "P64" ))
  \DPSwitch<3>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[3])
  );
  X_IPAD #(
    .LOC ( "P63" ))
  \DPSwitch<4>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[4])
  );
  X_OPAD #(
    .LOC ( "P120" ))
  \Enable<0>  (
    .PAD(Enable[0])
  );
  X_OPAD #(
    .LOC ( "P121" ))
  \Enable<1>  (
    .PAD(Enable[1])
  );
  X_OPAD #(
    .LOC ( "P124" ))
  \Enable<2>  (
    .PAD(Enable[2])
  );
  X_OPAD #(
    .LOC ( "P46" ))
  \LED<0>  (
    .PAD(LED[0])
  );
  X_OPAD #(
    .LOC ( "P47" ))
  \LED<1>  (
    .PAD(LED[1])
  );
  X_OPAD #(
    .LOC ( "P48" ))
  \LED<2>  (
    .PAD(LED[2])
  );
  X_OPAD #(
    .LOC ( "P49" ))
  \LED<3>  (
    .PAD(LED[3])
  );
  X_OPAD #(
    .LOC ( "P50" ))
  \LED<4>  (
    .PAD(LED[4])
  );
  X_OPAD #(
    .LOC ( "P51" ))
  \LED<5>  (
    .PAD(LED[5])
  );
  X_OPAD #(
    .LOC ( "P54" ))
  \LED<6>  (
    .PAD(LED[6])
  );
  X_OPAD #(
    .LOC ( "P55" ))
  \LED<7>  (
    .PAD(LED[7])
  );
  X_OPAD #(
    .LOC ( "P114" ))
  \SevenSegment<0>  (
    .PAD(SevenSegment[0])
  );
  X_OPAD #(
    .LOC ( "P110" ))
  \SevenSegment<1>  (
    .PAD(SevenSegment[1])
  );
  X_OPAD #(
    .LOC ( "P111" ))
  \SevenSegment<2>  (
    .PAD(SevenSegment[2])
  );
  X_OPAD #(
    .LOC ( "P112" ))
  \SevenSegment<3>  (
    .PAD(SevenSegment[3])
  );
  X_OPAD #(
    .LOC ( "P113" ))
  \SevenSegment<4>  (
    .PAD(SevenSegment[4])
  );
  X_OPAD #(
    .LOC ( "P115" ))
  \SevenSegment<5>  (
    .PAD(SevenSegment[5])
  );
  X_OPAD #(
    .LOC ( "P116" ))
  \SevenSegment<6>  (
    .PAD(SevenSegment[6])
  );
  X_OPAD #(
    .LOC ( "P117" ))
  \SevenSegment<7>  (
    .PAD(SevenSegment[7])
  );
  X_IPAD #(
    .LOC ( "P80" ))
  \Switch<0>  (
    .PAD(NlwRenamedSig_IO_Switch[0])
  );
  X_IPAD #(
    .LOC ( "P79" ))
  \Switch<1>  (
    .PAD(NlwRenamedSig_IO_Switch[1])
  );
  X_IPAD #(
    .LOC ( "P78" ))
  \Switch<2>  (
    .PAD(NlwRenamedSig_IO_Switch[2])
  );
  X_IPAD #(
    .LOC ( "P77" ))
  \Switch<3>  (
    .PAD(NlwRenamedSig_IO_Switch[3])
  );
  X_IPAD #(
    .LOC ( "P76" ))
  \Switch<4>  (
    .PAD(NlwRenamedSig_IO_Switch[4])
  );
  X_IPAD #(
    .LOC ( "P75" ))
  \Switch<5>  (
    .PAD(NlwRenamedSig_IO_Switch[5])
  );
  X_IPAD #(
    .LOC ( "P125" ))
  i_A_2462 (
    .PAD(NlwRenamedSig_IO_i_A)
  );
  X_IPAD #(
    .LOC ( "P123" ))
  i_B_2463 (
    .PAD(NlwRenamedSig_IO_i_B)
  );
  X_OPAD #(
    .LOC ( "P141" ))
  \o_controlPin<0>  (
    .PAD(o_controlPin[0])
  );
  X_OPAD #(
    .LOC ( "P143" ))
  \o_controlPin<1>  (
    .PAD(o_controlPin[1])
  );
  X_IPAD #(
    .LOC ( "P58" ))
  \DPSwitch<7>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[7])
  );
  X_BUF   \DPSwitch<7>_IBUF  (
    .I(NlwRenamedSig_IO_DPSwitch[7]),
    .O(\DPSwitch<7>_IBUF_2448 )
  );
  X_IPAD #(
    .LOC ( "P59" ))
  \DPSwitch<6>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[6])
  );
  X_BUF   \DPSwitch<6>_IBUF  (
    .I(NlwRenamedSig_IO_DPSwitch[6]),
    .O(\DPSwitch<6>_IBUF_2449 )
  );
  X_IPAD #(
    .LOC ( "P60" ))
  \DPSwitch<5>  (
    .PAD(NlwRenamedSig_IO_DPSwitch[5])
  );
  X_BUF   \DPSwitch<5>_IBUF  (
    .I(NlwRenamedSig_IO_DPSwitch[5]),
    .O(\DPSwitch<5>_IBUF_2450 )
  );
  X_PU   \DPSwitch<0>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[0])
  );
  X_PU   \DPSwitch<1>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[1])
  );
  X_PU   \DPSwitch<2>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[2])
  );
  X_PU   \DPSwitch<3>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[3])
  );
  X_PU   \DPSwitch<4>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[4])
  );
  X_PU   \Switch<0>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[0])
  );
  X_PU   \Switch<1>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[1])
  );
  X_PU   \Switch<2>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[2])
  );
  X_PU   \Switch<3>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[3])
  );
  X_PU   \Switch<4>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[4])
  );
  X_PU   \Switch<5>_PULLUP  (
    .O(NlwRenamedSig_IO_Switch[5])
  );
  X_PU   i_A_PULLUP (
    .O(NlwRenamedSig_IO_i_A)
  );
  X_PU   i_B_PULLUP (
    .O(NlwRenamedSig_IO_i_B)
  );
  X_PU   \DPSwitch<7>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[7])
  );
  X_PU   \DPSwitch<6>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[6])
  );
  X_PU   \DPSwitch<5>_PULLUP  (
    .O(NlwRenamedSig_IO_DPSwitch[5])
  );
  X_CKBUF   \Clk_BUFGP/BUFG  (
    .I(\Clk_BUFGP/IBUFG_2 ),
    .O(Clk_BUFGP)
  );
  X_CKBUF   \Clk_BUFGP/IBUFG  (
    .I(Clk),
    .O(\Clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   Enable_0_OBUF (
    .I(r_Enable[0]),
    .O(Enable[0])
  );
  X_OBUF   Enable_1_OBUF (
    .I(r_Enable[1]),
    .O(Enable[1])
  );
  X_OBUF   Enable_2_OBUF (
    .I(r_Enable[2]),
    .O(Enable[2])
  );
  X_OBUF   LED_0_OBUF (
    .I(r_LED[0]),
    .O(LED[0])
  );
  X_OBUF   LED_1_OBUF (
    .I(r_LED[1]),
    .O(LED[1])
  );
  X_OBUF   LED_2_OBUF (
    .I(r_LED[2]),
    .O(LED[2])
  );
  X_OBUF   LED_3_OBUF (
    .I(LED_5_OBUF_27),
    .O(LED[3])
  );
  X_OBUF   LED_4_OBUF (
    .I(LED_5_OBUF_27),
    .O(LED[4])
  );
  X_OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_27),
    .O(LED[5])
  );
  X_OBUF   LED_6_OBUF (
    .I(LED_5_OBUF_27),
    .O(LED[6])
  );
  X_OBUF   LED_7_OBUF (
    .I(r_controllerPin[1]),
    .O(LED[7])
  );
  X_OBUF   SevenSegment_0_OBUF (
    .I(r_SevenSegment[0]),
    .O(SevenSegment[0])
  );
  X_OBUF   SevenSegment_1_OBUF (
    .I(r_SevenSegment[1]),
    .O(SevenSegment[1])
  );
  X_OBUF   SevenSegment_2_OBUF (
    .I(r_SevenSegment[2]),
    .O(SevenSegment[2])
  );
  X_OBUF   SevenSegment_3_OBUF (
    .I(r_SevenSegment[3]),
    .O(SevenSegment[3])
  );
  X_OBUF   SevenSegment_4_OBUF (
    .I(r_SevenSegment[4]),
    .O(SevenSegment[4])
  );
  X_OBUF   SevenSegment_5_OBUF (
    .I(r_SevenSegment[5]),
    .O(SevenSegment[5])
  );
  X_OBUF   SevenSegment_6_OBUF (
    .I(r_SevenSegment[6]),
    .O(SevenSegment[6])
  );
  X_OBUF   SevenSegment_7_OBUF (
    .I(r_SevenSegment[7]),
    .O(SevenSegment[7])
  );
  X_OBUF   o_controlPin_0_OBUF (
    .I(LED_5_OBUF_27),
    .O(o_controlPin[0])
  );
  X_OBUF   o_controlPin_1_OBUF (
    .I(r_controllerPin[1]),
    .O(o_controlPin[1])
  );
  X_ONE   NlwBlock_led_velocity_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_led_velocity_GND (
    .O(GND)
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

