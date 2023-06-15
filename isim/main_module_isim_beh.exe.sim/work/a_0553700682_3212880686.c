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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/phase_2/New folder/MIPS_final/MIPS/alu.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0553700682_3212880686_p_0(char *t0)
{
    char t6[16];
    char t12[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (2 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 7364);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (1 - 0);
    t10 = (t15 * 1);
    t10 = (t10 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t10;
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t12);
    if (t16 != 0)
        goto LAB3;

LAB4:
LAB7:    t28 = (t0 + 1192U);
    t29 = *((char **)t28);
    t28 = (t0 + 4768);
    t30 = (t28 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t29, 32U);
    xsi_driver_first_trans_fast(t28);

LAB2:    t34 = (t0 + 4624);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 1192U);
    t18 = *((char **)t14);
    t14 = (t0 + 7096U);
    t19 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t17, t18, t14);
    t20 = (t17 + 12U);
    t10 = *((unsigned int *)t20);
    t21 = (1U * t10);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 4768);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t19, 32U);
    xsi_driver_first_trans_fast(t23);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_0553700682_3212880686_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7080U);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t5 = (t0 + 7160U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t4, t3, t6, t5);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (2 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t1, t7, t2, t14);
    t16 = (t1 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (32U != t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 4832);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 32U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t25 = (t0 + 4640);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t18, 0);
    goto LAB6;

}

static void work_a_0553700682_3212880686_p_2(char *t0)
{
    char t6[16];
    char t15[16];
    char t29[16];
    char t34[16];
    char t51[16];
    char t57[16];
    char t74[16];
    char t80[16];
    char t97[16];
    char t111[16];
    char t113[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t52;
    char *t53;
    int t54;
    unsigned int t55;
    unsigned char t56;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned char t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t75;
    char *t76;
    int t77;
    unsigned int t78;
    unsigned char t79;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned char t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t98;
    char *t99;
    int t100;
    unsigned int t101;
    unsigned char t102;
    char *t104;
    char *t105;
    int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned char t109;
    char *t110;
    char *t112;
    char *t114;
    char *t115;
    int t116;
    unsigned int t117;
    unsigned char t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 7112U);
    t4 = (t0 + 7366);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 1352U);
    t12 = *((char **)t8);
    t8 = (t0 + 7112U);
    t13 = (t0 + 7370);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 3;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (3 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t12, t8, t13, t15);
    t1 = t19;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t25 = (t0 + 1352U);
    t26 = *((char **)t25);
    t25 = (t0 + 7112U);
    t27 = (t0 + 7374);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 0;
    t31 = (t30 + 4U);
    *((int *)t31) = 3;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (3 - 0);
    t10 = (t32 * 1);
    t10 = (t10 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t10;
    t33 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t26, t25, t27, t29);
    if (t33 != 0)
        goto LAB8;

LAB9:    t47 = (t0 + 1352U);
    t48 = *((char **)t47);
    t47 = (t0 + 7112U);
    t49 = (t0 + 7378);
    t52 = (t51 + 0U);
    t53 = (t52 + 0U);
    *((int *)t53) = 0;
    t53 = (t52 + 4U);
    *((int *)t53) = 3;
    t53 = (t52 + 8U);
    *((int *)t53) = 1;
    t54 = (3 - 0);
    t55 = (t54 * 1);
    t55 = (t55 + 1);
    t53 = (t52 + 12U);
    *((unsigned int *)t53) = t55;
    t56 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t48, t47, t49, t51);
    if (t56 != 0)
        goto LAB12;

LAB13:    t70 = (t0 + 1352U);
    t71 = *((char **)t70);
    t70 = (t0 + 7112U);
    t72 = (t0 + 7382);
    t75 = (t74 + 0U);
    t76 = (t75 + 0U);
    *((int *)t76) = 0;
    t76 = (t75 + 4U);
    *((int *)t76) = 3;
    t76 = (t75 + 8U);
    *((int *)t76) = 1;
    t77 = (3 - 0);
    t78 = (t77 * 1);
    t78 = (t78 + 1);
    t76 = (t75 + 12U);
    *((unsigned int *)t76) = t78;
    t79 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t71, t70, t72, t74);
    if (t79 != 0)
        goto LAB16;

LAB17:    t93 = (t0 + 1352U);
    t94 = *((char **)t93);
    t93 = (t0 + 7112U);
    t95 = (t0 + 7386);
    t98 = (t97 + 0U);
    t99 = (t98 + 0U);
    *((int *)t99) = 0;
    t99 = (t98 + 4U);
    *((int *)t99) = 3;
    t99 = (t98 + 8U);
    *((int *)t99) = 1;
    t100 = (3 - 0);
    t101 = (t100 * 1);
    t101 = (t101 + 1);
    t99 = (t98 + 12U);
    *((unsigned int *)t99) = t101;
    t102 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t94, t93, t95, t97);
    if (t102 != 0)
        goto LAB20;

LAB21:
LAB24:    t123 = (t0 + 7421);
    t125 = (t0 + 4896);
    t126 = (t125 + 56U);
    t127 = *((char **)t126);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    memcpy(t129, t123, 32U);
    xsi_driver_first_trans_fast(t125);

LAB2:    t130 = (t0 + 4656);
    *((int *)t130) = 1;

LAB1:    return;
LAB3:    t17 = (t0 + 1832U);
    t20 = *((char **)t17);
    t17 = (t0 + 4896);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t20, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t31 = (t0 + 1032U);
    t35 = *((char **)t31);
    t31 = (t0 + 7080U);
    t36 = (t0 + 1192U);
    t37 = *((char **)t36);
    t36 = (t0 + 7096U);
    t38 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t34, t35, t31, t37, t36);
    t39 = (t34 + 12U);
    t10 = *((unsigned int *)t39);
    t40 = (1U * t10);
    t41 = (32U != t40);
    if (t41 == 1)
        goto LAB10;

LAB11:    t42 = (t0 + 4896);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t38, 32U);
    xsi_driver_first_trans_fast(t42);
    goto LAB2;

LAB10:    xsi_size_not_matching(32U, t40, 0);
    goto LAB11;

LAB12:    t53 = (t0 + 1032U);
    t58 = *((char **)t53);
    t53 = (t0 + 7080U);
    t59 = (t0 + 1192U);
    t60 = *((char **)t59);
    t59 = (t0 + 7096U);
    t61 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t57, t58, t53, t60, t59);
    t62 = (t57 + 12U);
    t55 = *((unsigned int *)t62);
    t63 = (1U * t55);
    t64 = (32U != t63);
    if (t64 == 1)
        goto LAB14;

LAB15:    t65 = (t0 + 4896);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    memcpy(t69, t61, 32U);
    xsi_driver_first_trans_fast(t65);
    goto LAB2;

LAB14:    xsi_size_not_matching(32U, t63, 0);
    goto LAB15;

LAB16:    t76 = (t0 + 1032U);
    t81 = *((char **)t76);
    t76 = (t0 + 7080U);
    t82 = (t0 + 1192U);
    t83 = *((char **)t82);
    t82 = (t0 + 7096U);
    t84 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t80, t81, t76, t83, t82);
    t85 = (t80 + 12U);
    t78 = *((unsigned int *)t85);
    t86 = (1U * t78);
    t87 = (32U != t86);
    if (t87 == 1)
        goto LAB18;

LAB19:    t88 = (t0 + 4896);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    memcpy(t92, t84, 32U);
    xsi_driver_first_trans_fast(t88);
    goto LAB2;

LAB18:    xsi_size_not_matching(32U, t86, 0);
    goto LAB19;

LAB20:    t99 = (t0 + 7390);
    t104 = (t0 + 1832U);
    t105 = *((char **)t104);
    t106 = (31 - 31);
    t101 = (t106 * -1);
    t107 = (1U * t101);
    t108 = (0 + t107);
    t104 = (t105 + t108);
    t109 = *((unsigned char *)t104);
    t112 = ((IEEE_P_2592010699) + 4024);
    t114 = (t113 + 0U);
    t115 = (t114 + 0U);
    *((int *)t115) = 0;
    t115 = (t114 + 4U);
    *((int *)t115) = 30;
    t115 = (t114 + 8U);
    *((int *)t115) = 1;
    t116 = (30 - 0);
    t117 = (t116 * 1);
    t117 = (t117 + 1);
    t115 = (t114 + 12U);
    *((unsigned int *)t115) = t117;
    t110 = xsi_base_array_concat(t110, t111, t112, (char)97, t99, t113, (char)99, t109, (char)101);
    t117 = (31U + 1U);
    t118 = (32U != t117);
    if (t118 == 1)
        goto LAB22;

LAB23:    t115 = (t0 + 4896);
    t119 = (t115 + 56U);
    t120 = *((char **)t119);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    memcpy(t122, t110, 32U);
    xsi_driver_first_trans_fast(t115);
    goto LAB2;

LAB22:    xsi_size_not_matching(32U, t117, 0);
    goto LAB23;

LAB25:    goto LAB2;

}

static void work_a_0553700682_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4960);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4672);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0553700682_3212880686_p_4(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7176U);
    t3 = (t0 + 7453);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 5024);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 4688);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 5024);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0553700682_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0553700682_3212880686_p_0,(void *)work_a_0553700682_3212880686_p_1,(void *)work_a_0553700682_3212880686_p_2,(void *)work_a_0553700682_3212880686_p_3,(void *)work_a_0553700682_3212880686_p_4};
	xsi_register_didat("work_a_0553700682_3212880686", "isim/main_module_isim_beh.exe.sim/work/a_0553700682_3212880686.didat");
	xsi_register_executes(pe);
}
