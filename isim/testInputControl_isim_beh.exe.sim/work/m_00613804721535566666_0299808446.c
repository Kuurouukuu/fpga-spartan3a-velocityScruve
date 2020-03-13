/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/kuro/Documents/FPGA/ElbertV2/ledTest/led.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {158U, 0U};
static unsigned int ng7[] = {36U, 0U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {152U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {72U, 0U};
static unsigned int ng13[] = {6U, 0U};
static unsigned int ng14[] = {64U, 0U};
static unsigned int ng15[] = {7U, 0U};
static unsigned int ng16[] = {30U, 0U};
static unsigned int ng17[] = {8U, 0U};
static unsigned int ng18[] = {9U, 0U};
static unsigned int ng19[] = {24U, 0U};
static unsigned int ng20[] = {255U, 0U};



static void Always_105_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 8088);
    *((int *)t2) = 1;
    t3 = (t0 + 6064);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(106, ng0);

LAB5:    xsi_set_current_line(107, ng0);
    t4 = (t0 + 2960U);
    t5 = *((char **)t4);
    t4 = (t0 + 4000);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 16, 0LL);
    goto LAB2;

}

static void Always_118_1(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 6280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 8104);
    *((int *)t2) = 1;
    t3 = (t0 + 6312);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(119, ng0);

LAB5:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 4960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 24, t7, 32);
    t9 = (t0 + 4960);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 24, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 15);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 15);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 4800);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 23);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 23);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 5120);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_125_2(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;

LAB0:    t1 = (t0 + 6528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 8120);
    *((int *)t2) = 1;
    t3 = (t0 + 6560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(126, ng0);

LAB5:    xsi_set_current_line(127, ng0);
    t4 = (t0 + 3840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 13, t7, 32);
    t9 = (t0 + 3840);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 13);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB2;

}

static void Cont_136_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 6776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 8136);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_138_4(char *t0)
{
    char t11[8];
    char t19[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 7024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 8152);
    *((int *)t2) = 1;
    t3 = (t0 + 7056);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(139, ng0);

LAB5:    xsi_set_current_line(140, ng0);
    t4 = (t0 + 4640);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(195, ng0);

LAB91:    xsi_set_current_line(196, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4160);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(141, ng0);

LAB16:    xsi_set_current_line(142, ng0);
    t9 = ((char*)((ng3)));
    t10 = (t0 + 4160);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 3, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t5 = (t11 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 8);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 8);
    *((unsigned int *)t5) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 15U);
    t17 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t17 & 15U);

LAB17:    t9 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t9, 4);
    if (t8 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 4, t2, 4);
    if (t8 == 1)
        goto LAB36;

LAB37:
LAB39:
LAB38:    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB40:    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(159, ng0);

LAB41:    xsi_set_current_line(160, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4160);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t19, 0, 8);
    t5 = (t19 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 4);
    *((unsigned int *)t19) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 4);
    *((unsigned int *)t5) = t15;
    t16 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t16 & 15U);
    t17 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t17 & 15U);

LAB42:    t9 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t9, 4);
    if (t8 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t19, 4, t2, 4);
    if (t8 == 1)
        goto LAB61;

LAB62:
LAB64:
LAB63:    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB65:    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(177, ng0);

LAB66:    xsi_set_current_line(178, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 4160);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(179, ng0);
    t2 = (t0 + 4000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 0);
    *((unsigned int *)t5) = t15;
    t16 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t16 & 15U);
    t17 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t17 & 15U);

LAB67:    t9 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t9, 4);
    if (t8 == 1)
        goto LAB68;

LAB69:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB70;

LAB71:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB72;

LAB73:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB74;

LAB75:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB78;

LAB79:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB80;

LAB81:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB82;

LAB83:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB84;

LAB85:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t20, 4, t2, 4);
    if (t8 == 1)
        goto LAB86;

LAB87:
LAB89:
LAB88:    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB90:    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB15;

LAB18:    xsi_set_current_line(144, ng0);
    t10 = ((char*)((ng5)));
    t18 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t18, t10, 0, 0, 8, 0LL);
    goto LAB40;

LAB20:    xsi_set_current_line(145, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB22:    xsi_set_current_line(146, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB24:    xsi_set_current_line(147, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB26:    xsi_set_current_line(148, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB28:    xsi_set_current_line(149, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB30:    xsi_set_current_line(150, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB32:    xsi_set_current_line(151, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB34:    xsi_set_current_line(152, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB36:    xsi_set_current_line(153, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB40;

LAB43:    xsi_set_current_line(162, ng0);
    t10 = ((char*)((ng5)));
    t18 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t18, t10, 0, 0, 8, 0LL);
    goto LAB65;

LAB45:    xsi_set_current_line(163, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB47:    xsi_set_current_line(164, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB49:    xsi_set_current_line(165, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB51:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB53:    xsi_set_current_line(167, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB55:    xsi_set_current_line(168, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB57:    xsi_set_current_line(169, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB59:    xsi_set_current_line(170, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB61:    xsi_set_current_line(171, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB65;

LAB68:    xsi_set_current_line(180, ng0);
    t10 = ((char*)((ng5)));
    t18 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t18, t10, 0, 0, 8, 0LL);
    goto LAB90;

LAB70:    xsi_set_current_line(181, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB72:    xsi_set_current_line(182, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB74:    xsi_set_current_line(183, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB76:    xsi_set_current_line(184, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB78:    xsi_set_current_line(185, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB80:    xsi_set_current_line(186, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB82:    xsi_set_current_line(187, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB84:    xsi_set_current_line(188, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

LAB86:    xsi_set_current_line(189, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 4320);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB90;

}

static void Cont_218_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 7272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(218, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8328);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 7U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 2);
    t18 = (t0 + 8168);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_219_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 7520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(219, ng0);
    t2 = (t0 + 4320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 8392);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 8184);
    *((int *)t18) = 1;

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 7768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng2)));
    t3 = (t0 + 8456);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}


extern void work_m_00613804721535566666_0299808446_init()
{
	static char *pe[] = {(void *)Always_105_0,(void *)Always_118_1,(void *)Always_125_2,(void *)Cont_136_3,(void *)Always_138_4,(void *)Cont_218_5,(void *)Cont_219_6,(void *)implSig1_execute};
	xsi_register_didat("work_m_00613804721535566666_0299808446", "isim/testInputControl_isim_beh.exe.sim/work/m_00613804721535566666_0299808446.didat");
	xsi_register_executes(pe);
}
