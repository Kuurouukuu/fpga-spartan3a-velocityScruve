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
static const char *ng0 = "/home/kuro/Documents/FPGA/quadDec/Binary_to_BCD.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {12U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {13U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {3U, 0U};
static int ng10[] = {4, 0};
static int ng11[] = {3, 0};
static int ng12[] = {2, 0};
static unsigned int ng13[] = {4U, 0U};



static void Always_65_0(char *t0)
{
    char t11[8];
    char t30[8];
    char t36[8];
    char t37[8];
    char t43[8];
    char t45[8];
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
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t44;
    char *t46;
    int t47;

LAB0:    t1 = (t0 + 5528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 6592);
    *((int *)t2) = 1;
    t3 = (t0 + 5560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 3496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(72, ng0);

LAB22:    xsi_set_current_line(73, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 4616);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2456U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB26;

LAB23:    if (t21 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t11) = 1;

LAB26:    t9 = (t11 + 4);
    t24 = *((unsigned int *)t9);
    t25 = (~(t24));
    t26 = *((unsigned int *)t11);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB29:    goto LAB21;

LAB9:    xsi_set_current_line(89, ng0);

LAB31:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 3656);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_lshift(t11, 16, t5, 16, t7, 32);
    t9 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t9, t11, 0, 0, 16, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3816);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3816);
    t7 = (t5 + 72U);
    t9 = *((char **)t7);
    t10 = ((char*)((ng5)));
    xsi_vlog_generic_get_index_select_value(t11, 1, t4, t9, 2, t10, 32, 2);
    t29 = (t0 + 3656);
    t31 = (t0 + 3656);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t30, t33, 2, t34, 32, 1);
    t35 = (t30 + 4);
    t12 = *((unsigned int *)t35);
    t8 = (!(t12));
    if (t8 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3816);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_lshift(t11, 13, t4, 13, t5, 32);
    t7 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 13, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB21;

LAB11:    xsi_set_current_line(99, ng0);

LAB34:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 4456);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng7)));
    t9 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_minus(t11, 32, t7, 32, t9, 32);
    memset(t30, 0, 8);
    t10 = (t5 + 4);
    t29 = (t11 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t11);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t29);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t29);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB38;

LAB35:    if (t21 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t30) = 1;

LAB38:    t32 = (t30 + 4);
    t24 = *((unsigned int *)t32);
    t25 = (~(t24));
    t26 = *((unsigned int *)t30);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(106, ng0);

LAB43:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 8, t5, 32);
    t7 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB41:    goto LAB21;

LAB13:    xsi_set_current_line(117, ng0);

LAB44:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 2936U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng10)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB46;

LAB45:    t7 = (t3 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB46;

LAB49:    if (*((unsigned int *)t4) > *((unsigned int *)t3))
        goto LAB47;

LAB48:    t10 = (t11 + 4);
    t12 = *((unsigned int *)t10);
    t13 = (~(t12));
    t14 = *((unsigned int *)t11);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB50;

LAB51:
LAB52:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB21;

LAB15:    xsi_set_current_line(133, ng0);

LAB62:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 3976);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng13)));
    t9 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_minus(t11, 32, t7, 32, t9, 32);
    memset(t30, 0, 8);
    t10 = (t5 + 4);
    t29 = (t11 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t11);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t29);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t29);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB66;

LAB63:    if (t21 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t30) = 1;

LAB66:    t32 = (t30 + 4);
    t24 = *((unsigned int *)t32);
    t25 = (~(t24));
    t26 = *((unsigned int *)t30);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB67;

LAB68:    xsi_set_current_line(140, ng0);

LAB71:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 4, t5, 32);
    t7 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_multiply(t11, 32, t4, 4, t5, 32);
    t7 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t7, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB69:    goto LAB21;

LAB17:    xsi_set_current_line(150, ng0);

LAB72:    xsi_set_current_line(151, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 4616);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB21;

LAB25:    t7 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(76, ng0);

LAB30:    xsi_set_current_line(77, ng0);
    t10 = (t0 + 2296U);
    t29 = *((char **)t10);
    t10 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t10, t29, 0, 0, 13, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB29;

LAB32:    xsi_vlogvar_wait_assign_value(t29, t11, 0, *((unsigned int *)t30), 1, 0LL);
    goto LAB33;

LAB37:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(101, ng0);

LAB42:    xsi_set_current_line(102, ng0);
    t33 = ((char*)((ng3)));
    t34 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 8, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB41;

LAB46:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB48;

LAB47:    *((unsigned int *)t11) = 1;
    goto LAB48;

LAB50:    xsi_set_current_line(119, ng0);

LAB53:    xsi_set_current_line(121, ng0);
    t29 = (t0 + 2936U);
    t31 = *((char **)t29);
    t29 = ((char*)((ng11)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t31, 4, t29, 32);
    t32 = ((char*)((ng11)));
    memset(t36, 0, 8);
    xsi_vlog_unsigned_rshift(t36, 32, t30, 32, t32, 32);
    t33 = (t0 + 3656);
    t34 = (t0 + 3656);
    t35 = (t34 + 72U);
    t38 = *((char **)t35);
    t39 = (t0 + 3976);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = ((char*)((ng10)));
    memset(t43, 0, 8);
    xsi_vlog_unsigned_multiply(t43, 32, t41, 4, t42, 32);
    t44 = ((char*)((ng11)));
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 32, t43, 32, t44, 32);
    xsi_vlog_generic_convert_bit_index(t37, t38, 2, t45, 32, 2);
    t46 = (t37 + 4);
    t17 = *((unsigned int *)t46);
    t47 = (!(t17));
    if (t47 == 1)
        goto LAB54;

LAB55:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2936U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t3, 4, t2, 32);
    t4 = ((char*)((ng12)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_rshift(t30, 32, t11, 32, t4, 32);
    t5 = (t0 + 3656);
    t7 = (t0 + 3656);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t29 = (t0 + 3976);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng10)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_multiply(t37, 32, t32, 4, t33, 32);
    t34 = ((char*)((ng12)));
    memset(t43, 0, 8);
    xsi_vlog_unsigned_add(t43, 32, t37, 32, t34, 32);
    xsi_vlog_generic_convert_bit_index(t36, t10, 2, t43, 32, 2);
    t35 = (t36 + 4);
    t12 = *((unsigned int *)t35);
    t8 = (!(t12));
    if (t8 == 1)
        goto LAB56;

LAB57:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2936U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t3, 4, t2, 32);
    t4 = ((char*)((ng4)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_rshift(t30, 32, t11, 32, t4, 32);
    t5 = (t0 + 3656);
    t7 = (t0 + 3656);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t29 = (t0 + 3976);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng10)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_multiply(t37, 32, t32, 4, t33, 32);
    t34 = ((char*)((ng4)));
    memset(t43, 0, 8);
    xsi_vlog_unsigned_add(t43, 32, t37, 32, t34, 32);
    xsi_vlog_generic_convert_bit_index(t36, t10, 2, t43, 32, 2);
    t35 = (t36 + 4);
    t12 = *((unsigned int *)t35);
    t8 = (!(t12));
    if (t8 == 1)
        goto LAB58;

LAB59:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2936U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t3, 4, t2, 32);
    t4 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_rshift(t30, 32, t11, 32, t4, 32);
    t5 = (t0 + 3656);
    t7 = (t0 + 3656);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t29 = (t0 + 3976);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng10)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_multiply(t37, 32, t32, 4, t33, 32);
    t34 = ((char*)((ng3)));
    memset(t43, 0, 8);
    xsi_vlog_unsigned_add(t43, 32, t37, 32, t34, 32);
    xsi_vlog_generic_convert_bit_index(t36, t10, 2, t43, 32, 2);
    t35 = (t36 + 4);
    t12 = *((unsigned int *)t35);
    t8 = (!(t12));
    if (t8 == 1)
        goto LAB60;

LAB61:    goto LAB52;

LAB54:    xsi_vlogvar_wait_assign_value(t33, t36, 0, *((unsigned int *)t37), 1, 0LL);
    goto LAB55;

LAB56:    xsi_vlogvar_wait_assign_value(t5, t30, 0, *((unsigned int *)t36), 1, 0LL);
    goto LAB57;

LAB58:    xsi_vlogvar_wait_assign_value(t5, t30, 0, *((unsigned int *)t36), 1, 0LL);
    goto LAB59;

LAB60:    xsi_vlogvar_wait_assign_value(t5, t30, 0, *((unsigned int *)t36), 1, 0LL);
    goto LAB61;

LAB65:    t31 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB66;

LAB67:    xsi_set_current_line(135, ng0);

LAB70:    xsi_set_current_line(136, ng0);
    t33 = ((char*)((ng3)));
    t34 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 4, 0LL);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB69;

}

static void Cont_163_1(char *t0)
{
    char t3[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    t1 = (t0 + 5776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 3656);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 3656);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 3976);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng10)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_multiply(t13, 32, t11, 4, t12, 32);
    t14 = ((char*)((ng10)));
    xsi_vlog_get_indexed_partselect(t3, 4, t5, ((int*)(t8)), 2, t13, 32, 2, t14, 32, 1, 1);
    t15 = (t0 + 6720);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memset(t19, 0, 8);
    t20 = 15U;
    t21 = t20;
    t22 = (t3 + 4);
    t23 = *((unsigned int *)t3);
    t20 = (t20 & t23);
    t24 = *((unsigned int *)t22);
    t21 = (t21 & t24);
    t25 = (t19 + 4);
    t26 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t26 | t20);
    t27 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t27 | t21);
    xsi_driver_vfirst_trans(t15, 0, 3);
    t28 = (t0 + 6608);
    *((int *)t28) = 1;

LAB1:    return;
}

static void Cont_165_2(char *t0)
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

LAB0:    t1 = (t0 + 6024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 3656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6784);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 65535U;
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
    xsi_driver_vfirst_trans(t5, 0, 15);
    t18 = (t0 + 6624);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_166_3(char *t0)
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

LAB0:    t1 = (t0 + 6272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6848);
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
    t18 = (t0 + 6640);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_04333572502970011667_3901553496_init()
{
	static char *pe[] = {(void *)Always_65_0,(void *)Cont_163_1,(void *)Cont_165_2,(void *)Cont_166_3};
	xsi_register_didat("work_m_04333572502970011667_3901553496", "isim/ledTb2_isim_beh.exe.sim/work/m_04333572502970011667_3901553496.didat");
	xsi_register_executes(pe);
}
