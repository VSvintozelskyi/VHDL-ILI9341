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
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *STD_STANDARD;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void simprim_a_2007742134_2082680706_p_0(char *t0)
{
    char t18[16];
    char t23[8];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    int64 t8;
    int64 t9;
    int64 t10;
    int64 t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t24;

LAB0:    t1 = (t0 + 1812U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:
LAB20:    t2 = (t0 + 1992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB21;

LAB1:    return;
LAB4:    t4 = (t0 + 992U);
    t5 = *((char **)t4);
    t6 = *((int64 *)t5);
    t4 = (t0 + 924U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    *((int64 *)t4) = t6;
    t6 = xsi_get_sim_current_time();
    t2 = (t0 + 992U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int64 *)t2) = t6;
    t2 = (t0 + 924U);
    t4 = *((char **)t2);
    t6 = *((int64 *)t4);
    t8 = (0 * 1LL);
    t3 = (t6 > t8);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    t2 = (t0 + 1060U);
    t4 = *((char **)t2);
    t6 = *((int64 *)t4);
    t2 = (t0 + 856U);
    t5 = *((char **)t2);
    t8 = *((int64 *)t5);
    t13 = (t6 > t8);
    if (t13 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB5;

LAB7:    t2 = (t0 + 992U);
    t5 = *((char **)t2);
    t9 = *((int64 *)t5);
    t2 = (t0 + 924U);
    t7 = *((char **)t2);
    t10 = *((int64 *)t7);
    t11 = (t9 - t10);
    t2 = (t0 + 1060U);
    t12 = *((char **)t2);
    t2 = (t12 + 0);
    *((int64 *)t2) = t11;
    goto LAB8;

LAB10:    t2 = (t0 + 1712);
    t12 = (t0 + 1284U);
    t16 = (t0 + 4024);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 1;
    t20 = (t19 + 4U);
    *((int *)t20) = 33;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (33 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    std_textio_write7(STD_TEXTIO, t2, t12, t16, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 1060U);
    t7 = *((char **)t5);
    t6 = *((int64 *)t7);
    std_textio_write8(STD_TEXTIO, t2, t4, t6, (unsigned char)0, 0, 1000LL);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 4057);
    t12 = (t18 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 1;
    t16 = (t12 + 4U);
    *((int *)t16) = 8;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t21 = (8 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t22;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 1492U);
    t7 = (t5 + 36U);
    t12 = *((char **)t7);
    memcpy(t23, t12, 5U);
    t7 = (t0 + 3912U);
    std_textio_write7(STD_TEXTIO, t2, t4, t23, t7, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 4065);
    t12 = (t18 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 1;
    t16 = (t12 + 4U);
    *((int *)t16) = 6;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t21 = (6 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t22;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 4071);
    t12 = (t18 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 1;
    t16 = (t12 + 4U);
    *((int *)t16) = 22;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t21 = (22 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t22;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 4093);
    t12 = (t18 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 1;
    t16 = (t12 + 4U);
    *((int *)t16) = 26;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t21 = (26 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t22;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 856U);
    t7 = *((char **)t5);
    t6 = *((int64 *)t7);
    std_textio_write8(STD_TEXTIO, t2, t4, t6, (unsigned char)0, 0, 1000LL);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 4119);
    t12 = (t18 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 1;
    t16 = (t12 + 4U);
    *((int *)t16) = 20;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t21 = (20 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t22;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t18, (unsigned char)0, 0);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t5 = (t0 + 992U);
    t7 = *((char **)t5);
    t6 = *((int64 *)t7);
    std_textio_write8(STD_TEXTIO, t2, t4, t6, (unsigned char)0, 0, 1000LL);
    t2 = (t0 + 1712);
    t4 = (t0 + 1284U);
    t7 = ((STD_STANDARD) + 656);
    t5 = xsi_base_array_concat(t5, t18, t7, (char)99, (unsigned char)46, (char)99, (unsigned char)10, (char)101);
    t22 = (1U + 1U);
    t12 = (char *)alloca(t22);
    memcpy(t12, t5, t22);
    std_textio_write7(STD_TEXTIO, t2, t4, t12, t18, (unsigned char)0, 0);
    if ((unsigned char)0 == 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1284U);
    xsi_access_variable_deallocate(t2);
    goto LAB11;

LAB13:    t2 = (t0 + 684U);
    t7 = *((char **)t2);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)2);
    t3 = t15;
    goto LAB15;

LAB16:    t2 = (t0 + 1284U);
    t4 = xsi_access_variable_all(t2);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t5 = (t0 + 1284U);
    t16 = xsi_access_variable_all(t5);
    t17 = (t16 + 40U);
    t17 = *((char **)t17);
    t19 = (t17 + 12U);
    t22 = *((unsigned int *)t19);
    t24 = (1U * t22);
    xsi_report(t7, t24, (unsigned char)1);
    goto LAB17;

LAB18:    t4 = (t0 + 1992);
    *((int *)t4) = 0;
    goto LAB2;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

}


extern void simprim_a_2007742134_2082680706_init()
{
	static char *pe[] = {(void *)simprim_a_2007742134_2082680706_p_0};
	xsi_register_didat("simprim_a_2007742134_2082680706", "isim/top_tb_isim_par.exe.sim/simprim/a_2007742134_2082680706.didat");
	xsi_register_executes(pe);
}
