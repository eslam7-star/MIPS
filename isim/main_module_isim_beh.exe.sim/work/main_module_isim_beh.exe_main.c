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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_1776293814;
char *IEEE_P_1242562249;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    work_p_1776293814_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_4084620457_3212880686_init();
    work_a_3002075066_3212880686_init();
    work_a_1208337864_3212880686_init();
    ieee_p_3620187407_init();
    work_a_3378807622_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_2110357975_3212880686_init();
    work_a_2046343074_1692260737_init();
    work_a_2421557259_1692260737_init();
    work_a_1218917173_3212880686_init();
    work_a_0502550854_3212880686_init();
    work_a_1376568031_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_1111616105_3212880686_init();
    work_a_0553700682_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_3720894149_0831356973_init();
    work_a_1130845995_0831356973_init();
    work_a_0431830435_3708392848_init();
    work_a_3684608150_1985558087_init();


    xsi_register_tops("work_a_3684608150_1985558087");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_1776293814 = xsi_get_engine_memory("work_p_1776293814");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
