--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_timesim.vhd
-- /___/   /\     Timestamp: Sun Jul 25 18:56:01 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf top.pcf -rpw 100 -tpw 0 -ar Structure -tm top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim top.ncd top_timesim.vhd 
-- Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: top.ncd
-- Output file	: /mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/netgen/par/top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: /mnt/sda2/Program_Files/ISE/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top is
  port (
    dc : out STD_LOGIC; 
    cs : out STD_LOGIC; 
    rsti : in STD_LOGIC := 'X'; 
    rsto : out STD_LOGIC; 
    hclk : in STD_LOGIC := 'X'; 
    sck : out STD_LOGIC; 
    sdo : out STD_LOGIC; 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal fastclk : STD_LOGIC; 
  signal slowclk_and0000 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_1_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_3_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_5_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_7_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_9_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_11_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_13_Q : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_15_Q : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000137_0 : STD_LOGIC; 
  signal N60_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_3_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_4_f5 : STD_LOGIC; 
  signal leds_5_OBUF_1518 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000133_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000134_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000131_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000132_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000142_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_3_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_4_f5 : STD_LOGIC; 
  signal leds_7_OBUF_1526 : STD_LOGIC; 
  signal N54_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000145_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000146_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_3_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_4_f5 : STD_LOGIC; 
  signal leds_6_OBUF_1533 : STD_LOGIC; 
  signal N56_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000138_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000139_0 : STD_LOGIC; 
  signal spi_module_sdo_or0000_0 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_3_f5 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_4_f5 : STD_LOGIC; 
  signal spi_module_sdo_1547 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000130_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_3_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_4_f5 : STD_LOGIC; 
  signal leds_4_OBUF_1555 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000126_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000127_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000124_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000125_0 : STD_LOGIC; 
  signal dc_OBUF_1560 : STD_LOGIC; 
  signal cs_OBUF_1564 : STD_LOGIC; 
  signal leds_2_OBUF_1566 : STD_LOGIC; 
  signal sdo_OBUF_1567 : STD_LOGIC; 
  signal rsti_IBUF_1568 : STD_LOGIC; 
  signal Inst_pll2_CLK0_BUF : STD_LOGIC; 
  signal Inst_pll2_CLKFB_IN : STD_LOGIC; 
  signal Inst_pll2_CLKDV_BUF : STD_LOGIC; 
  signal N46_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0000_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00001_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000051_5_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00018_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00019_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00016_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00017_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001112_5_f5 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00012_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00013_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00011_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000151_5_f5 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001231_5_f5 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000120_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000121_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000118_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000119_0 : STD_LOGIC; 
  signal cmdcnt_6_23_0 : STD_LOGIC; 
  signal cmdcnt_not0002_0 : STD_LOGIC; 
  signal cmdcnt_and0000_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000114_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000115_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000112_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000113_0 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001171_5_f5 : STD_LOGIC; 
  signal leds_1_85_0 : STD_LOGIC; 
  signal leds_1_30_SW4_O : STD_LOGIC; 
  signal N43_0 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal N50_0 : STD_LOGIC; 
  signal spi_module_cdata_not0001_0 : STD_LOGIC; 
  signal spi_module_cdata_mux0001_0_47_SW0_O : STD_LOGIC; 
  signal N36_0 : STD_LOGIC; 
  signal slowclk_1614 : STD_LOGIC; 
  signal fsm_module_state_mux0001_1_SW0_O : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0001_0 : STD_LOGIC; 
  signal fsm_module_state_mux0001_2_SW0_O : STD_LOGIC; 
  signal leds_1_98_0 : STD_LOGIC; 
  signal leds_1_136_SW0_O : STD_LOGIC; 
  signal N41_0 : STD_LOGIC; 
  signal N40_0 : STD_LOGIC; 
  signal Mcount_cmdcnt5_SW0_O : STD_LOGIC; 
  signal cmdcnt_6_42_SW0_O : STD_LOGIC; 
  signal Mcount_cmdcnt6_SW0_O : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0001_SW0_O : STD_LOGIC; 
  signal cmdcnt_4_1_1631 : STD_LOGIC; 
  signal cmdcnt_5_1_1632 : STD_LOGIC; 
  signal cmdcnt_1_2_1633 : STD_LOGIC; 
  signal spi_module_sdo_cmp_eq0000 : STD_LOGIC; 
  signal spi_module_cnt_or0000_0 : STD_LOGIC; 
  signal spi_module_Mcount_cnt_val_0 : STD_LOGIC; 
  signal spi_module_cs_1642 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal cmdcnt_0_1_1644 : STD_LOGIC; 
  signal cmdcnt_3_1_1645 : STD_LOGIC; 
  signal cmdcnt_2_1_1646 : STD_LOGIC; 
  signal cmdcnt_1_1_1647 : STD_LOGIC; 
  signal cmdcnt_0_2_1648 : STD_LOGIC; 
  signal Mcount_cmdcnt_xor_1_1_SW0_O : STD_LOGIC; 
  signal Mcount_cmdcnt1_0 : STD_LOGIC; 
  signal spi_module_dco_1651 : STD_LOGIC; 
  signal slowcnt_0_DXMUX_1697 : STD_LOGIC; 
  signal slowcnt_0_XORF_1695 : STD_LOGIC; 
  signal slowcnt_0_LOGIC_ONE_1694 : STD_LOGIC; 
  signal slowcnt_0_CYINIT_1693 : STD_LOGIC; 
  signal slowcnt_0_CYSELF_1684 : STD_LOGIC; 
  signal slowcnt_0_BXINV_1682 : STD_LOGIC; 
  signal slowcnt_0_DYMUX_1677 : STD_LOGIC; 
  signal slowcnt_0_XORG_1675 : STD_LOGIC; 
  signal slowcnt_0_CYMUXG_1674 : STD_LOGIC; 
  signal slowcnt_0_LOGIC_ZERO_1672 : STD_LOGIC; 
  signal slowcnt_0_CYSELG_1663 : STD_LOGIC; 
  signal slowcnt_0_G : STD_LOGIC; 
  signal slowcnt_0_SRINV_1661 : STD_LOGIC; 
  signal slowcnt_0_CLKINV_1660 : STD_LOGIC; 
  signal slowcnt_2_DXMUX_1749 : STD_LOGIC; 
  signal slowcnt_2_XORF_1747 : STD_LOGIC; 
  signal slowcnt_2_CYINIT_1746 : STD_LOGIC; 
  signal slowcnt_2_F : STD_LOGIC; 
  signal slowcnt_2_DYMUX_1732 : STD_LOGIC; 
  signal slowcnt_2_XORG_1730 : STD_LOGIC; 
  signal slowcnt_2_CYSELF_1728 : STD_LOGIC; 
  signal slowcnt_2_CYMUXFAST_1727 : STD_LOGIC; 
  signal slowcnt_2_CYAND_1726 : STD_LOGIC; 
  signal slowcnt_2_FASTCARRY_1725 : STD_LOGIC; 
  signal slowcnt_2_CYMUXG2_1724 : STD_LOGIC; 
  signal slowcnt_2_CYMUXF2_1723 : STD_LOGIC; 
  signal slowcnt_2_LOGIC_ZERO_1722 : STD_LOGIC; 
  signal slowcnt_2_CYSELG_1713 : STD_LOGIC; 
  signal slowcnt_2_G : STD_LOGIC; 
  signal slowcnt_2_SRINV_1711 : STD_LOGIC; 
  signal slowcnt_2_CLKINV_1710 : STD_LOGIC; 
  signal slowcnt_4_DXMUX_1801 : STD_LOGIC; 
  signal slowcnt_4_XORF_1799 : STD_LOGIC; 
  signal slowcnt_4_CYINIT_1798 : STD_LOGIC; 
  signal slowcnt_4_F : STD_LOGIC; 
  signal slowcnt_4_DYMUX_1784 : STD_LOGIC; 
  signal slowcnt_4_XORG_1782 : STD_LOGIC; 
  signal slowcnt_4_CYSELF_1780 : STD_LOGIC; 
  signal slowcnt_4_CYMUXFAST_1779 : STD_LOGIC; 
  signal slowcnt_4_CYAND_1778 : STD_LOGIC; 
  signal slowcnt_4_FASTCARRY_1777 : STD_LOGIC; 
  signal slowcnt_4_CYMUXG2_1776 : STD_LOGIC; 
  signal slowcnt_4_CYMUXF2_1775 : STD_LOGIC; 
  signal slowcnt_4_LOGIC_ZERO_1774 : STD_LOGIC; 
  signal slowcnt_4_CYSELG_1765 : STD_LOGIC; 
  signal slowcnt_4_G : STD_LOGIC; 
  signal slowcnt_4_SRINV_1763 : STD_LOGIC; 
  signal slowcnt_4_CLKINV_1762 : STD_LOGIC; 
  signal slowcnt_6_DXMUX_1853 : STD_LOGIC; 
  signal slowcnt_6_XORF_1851 : STD_LOGIC; 
  signal slowcnt_6_CYINIT_1850 : STD_LOGIC; 
  signal slowcnt_6_F : STD_LOGIC; 
  signal slowcnt_6_DYMUX_1836 : STD_LOGIC; 
  signal slowcnt_6_XORG_1834 : STD_LOGIC; 
  signal slowcnt_6_CYSELF_1832 : STD_LOGIC; 
  signal slowcnt_6_CYMUXFAST_1831 : STD_LOGIC; 
  signal slowcnt_6_CYAND_1830 : STD_LOGIC; 
  signal slowcnt_6_FASTCARRY_1829 : STD_LOGIC; 
  signal slowcnt_6_CYMUXG2_1828 : STD_LOGIC; 
  signal slowcnt_6_CYMUXF2_1827 : STD_LOGIC; 
  signal slowcnt_6_LOGIC_ZERO_1826 : STD_LOGIC; 
  signal slowcnt_6_CYSELG_1817 : STD_LOGIC; 
  signal slowcnt_6_G : STD_LOGIC; 
  signal slowcnt_6_SRINV_1815 : STD_LOGIC; 
  signal slowcnt_6_CLKINV_1814 : STD_LOGIC; 
  signal slowcnt_8_DXMUX_1905 : STD_LOGIC; 
  signal slowcnt_8_XORF_1903 : STD_LOGIC; 
  signal slowcnt_8_CYINIT_1902 : STD_LOGIC; 
  signal slowcnt_8_F : STD_LOGIC; 
  signal slowcnt_8_DYMUX_1888 : STD_LOGIC; 
  signal slowcnt_8_XORG_1886 : STD_LOGIC; 
  signal slowcnt_8_CYSELF_1884 : STD_LOGIC; 
  signal slowcnt_8_CYMUXFAST_1883 : STD_LOGIC; 
  signal slowcnt_8_CYAND_1882 : STD_LOGIC; 
  signal slowcnt_8_FASTCARRY_1881 : STD_LOGIC; 
  signal slowcnt_8_CYMUXG2_1880 : STD_LOGIC; 
  signal slowcnt_8_CYMUXF2_1879 : STD_LOGIC; 
  signal slowcnt_8_LOGIC_ZERO_1878 : STD_LOGIC; 
  signal slowcnt_8_CYSELG_1869 : STD_LOGIC; 
  signal slowcnt_8_G : STD_LOGIC; 
  signal slowcnt_8_SRINV_1867 : STD_LOGIC; 
  signal slowcnt_8_CLKINV_1866 : STD_LOGIC; 
  signal slowcnt_10_DXMUX_1957 : STD_LOGIC; 
  signal slowcnt_10_XORF_1955 : STD_LOGIC; 
  signal slowcnt_10_CYINIT_1954 : STD_LOGIC; 
  signal slowcnt_10_F : STD_LOGIC; 
  signal slowcnt_10_DYMUX_1940 : STD_LOGIC; 
  signal slowcnt_10_XORG_1938 : STD_LOGIC; 
  signal slowcnt_10_CYSELF_1936 : STD_LOGIC; 
  signal slowcnt_10_CYMUXFAST_1935 : STD_LOGIC; 
  signal slowcnt_10_CYAND_1934 : STD_LOGIC; 
  signal slowcnt_10_FASTCARRY_1933 : STD_LOGIC; 
  signal slowcnt_10_CYMUXG2_1932 : STD_LOGIC; 
  signal slowcnt_10_CYMUXF2_1931 : STD_LOGIC; 
  signal slowcnt_10_LOGIC_ZERO_1930 : STD_LOGIC; 
  signal slowcnt_10_CYSELG_1921 : STD_LOGIC; 
  signal slowcnt_10_G : STD_LOGIC; 
  signal slowcnt_10_SRINV_1919 : STD_LOGIC; 
  signal slowcnt_10_CLKINV_1918 : STD_LOGIC; 
  signal slowcnt_12_DXMUX_2009 : STD_LOGIC; 
  signal slowcnt_12_XORF_2007 : STD_LOGIC; 
  signal slowcnt_12_CYINIT_2006 : STD_LOGIC; 
  signal slowcnt_12_F : STD_LOGIC; 
  signal slowcnt_12_DYMUX_1992 : STD_LOGIC; 
  signal slowcnt_12_XORG_1990 : STD_LOGIC; 
  signal slowcnt_12_CYSELF_1988 : STD_LOGIC; 
  signal slowcnt_12_CYMUXFAST_1987 : STD_LOGIC; 
  signal slowcnt_12_CYAND_1986 : STD_LOGIC; 
  signal slowcnt_12_FASTCARRY_1985 : STD_LOGIC; 
  signal slowcnt_12_CYMUXG2_1984 : STD_LOGIC; 
  signal slowcnt_12_CYMUXF2_1983 : STD_LOGIC; 
  signal slowcnt_12_LOGIC_ZERO_1982 : STD_LOGIC; 
  signal slowcnt_12_CYSELG_1973 : STD_LOGIC; 
  signal slowcnt_12_G : STD_LOGIC; 
  signal slowcnt_12_SRINV_1971 : STD_LOGIC; 
  signal slowcnt_12_CLKINV_1970 : STD_LOGIC; 
  signal slowcnt_14_DXMUX_2061 : STD_LOGIC; 
  signal slowcnt_14_XORF_2059 : STD_LOGIC; 
  signal slowcnt_14_CYINIT_2058 : STD_LOGIC; 
  signal slowcnt_14_F : STD_LOGIC; 
  signal slowcnt_14_DYMUX_2044 : STD_LOGIC; 
  signal slowcnt_14_XORG_2042 : STD_LOGIC; 
  signal slowcnt_14_CYSELF_2040 : STD_LOGIC; 
  signal slowcnt_14_CYMUXFAST_2039 : STD_LOGIC; 
  signal slowcnt_14_CYAND_2038 : STD_LOGIC; 
  signal slowcnt_14_FASTCARRY_2037 : STD_LOGIC; 
  signal slowcnt_14_CYMUXG2_2036 : STD_LOGIC; 
  signal slowcnt_14_CYMUXF2_2035 : STD_LOGIC; 
  signal slowcnt_14_LOGIC_ZERO_2034 : STD_LOGIC; 
  signal slowcnt_14_CYSELG_2025 : STD_LOGIC; 
  signal slowcnt_14_G : STD_LOGIC; 
  signal slowcnt_14_SRINV_2023 : STD_LOGIC; 
  signal slowcnt_14_CLKINV_2022 : STD_LOGIC; 
  signal slowcnt_16_DXMUX_2113 : STD_LOGIC; 
  signal slowcnt_16_XORF_2111 : STD_LOGIC; 
  signal slowcnt_16_CYINIT_2110 : STD_LOGIC; 
  signal slowcnt_16_F : STD_LOGIC; 
  signal slowcnt_16_DYMUX_2096 : STD_LOGIC; 
  signal slowcnt_16_XORG_2094 : STD_LOGIC; 
  signal slowcnt_16_CYSELF_2092 : STD_LOGIC; 
  signal slowcnt_16_CYMUXFAST_2091 : STD_LOGIC; 
  signal slowcnt_16_CYAND_2090 : STD_LOGIC; 
  signal slowcnt_16_FASTCARRY_2089 : STD_LOGIC; 
  signal slowcnt_16_CYMUXG2_2088 : STD_LOGIC; 
  signal slowcnt_16_CYMUXF2_2087 : STD_LOGIC; 
  signal slowcnt_16_LOGIC_ZERO_2086 : STD_LOGIC; 
  signal slowcnt_16_CYSELG_2077 : STD_LOGIC; 
  signal slowcnt_16_G : STD_LOGIC; 
  signal slowcnt_16_SRINV_2075 : STD_LOGIC; 
  signal slowcnt_16_CLKINV_2074 : STD_LOGIC; 
  signal slowcnt_18_DXMUX_2165 : STD_LOGIC; 
  signal slowcnt_18_XORF_2163 : STD_LOGIC; 
  signal slowcnt_18_CYINIT_2162 : STD_LOGIC; 
  signal slowcnt_18_F : STD_LOGIC; 
  signal slowcnt_18_DYMUX_2148 : STD_LOGIC; 
  signal slowcnt_18_XORG_2146 : STD_LOGIC; 
  signal slowcnt_18_CYSELF_2144 : STD_LOGIC; 
  signal slowcnt_18_CYMUXFAST_2143 : STD_LOGIC; 
  signal slowcnt_18_CYAND_2142 : STD_LOGIC; 
  signal slowcnt_18_FASTCARRY_2141 : STD_LOGIC; 
  signal slowcnt_18_CYMUXG2_2140 : STD_LOGIC; 
  signal slowcnt_18_CYMUXF2_2139 : STD_LOGIC; 
  signal slowcnt_18_LOGIC_ZERO_2138 : STD_LOGIC; 
  signal slowcnt_18_CYSELG_2129 : STD_LOGIC; 
  signal slowcnt_18_G : STD_LOGIC; 
  signal slowcnt_18_SRINV_2127 : STD_LOGIC; 
  signal slowcnt_18_CLKINV_2126 : STD_LOGIC; 
  signal slowcnt_20_DXMUX_2217 : STD_LOGIC; 
  signal slowcnt_20_XORF_2215 : STD_LOGIC; 
  signal slowcnt_20_CYINIT_2214 : STD_LOGIC; 
  signal slowcnt_20_F : STD_LOGIC; 
  signal slowcnt_20_DYMUX_2200 : STD_LOGIC; 
  signal slowcnt_20_XORG_2198 : STD_LOGIC; 
  signal slowcnt_20_CYSELF_2196 : STD_LOGIC; 
  signal slowcnt_20_CYMUXFAST_2195 : STD_LOGIC; 
  signal slowcnt_20_CYAND_2194 : STD_LOGIC; 
  signal slowcnt_20_FASTCARRY_2193 : STD_LOGIC; 
  signal slowcnt_20_CYMUXG2_2192 : STD_LOGIC; 
  signal slowcnt_20_CYMUXF2_2191 : STD_LOGIC; 
  signal slowcnt_20_LOGIC_ZERO_2190 : STD_LOGIC; 
  signal slowcnt_20_CYSELG_2181 : STD_LOGIC; 
  signal slowcnt_20_G : STD_LOGIC; 
  signal slowcnt_20_SRINV_2179 : STD_LOGIC; 
  signal slowcnt_20_CLKINV_2178 : STD_LOGIC; 
  signal slowcnt_22_DXMUX_2269 : STD_LOGIC; 
  signal slowcnt_22_XORF_2267 : STD_LOGIC; 
  signal slowcnt_22_CYINIT_2266 : STD_LOGIC; 
  signal slowcnt_22_F : STD_LOGIC; 
  signal slowcnt_22_DYMUX_2252 : STD_LOGIC; 
  signal slowcnt_22_XORG_2250 : STD_LOGIC; 
  signal slowcnt_22_CYSELF_2248 : STD_LOGIC; 
  signal slowcnt_22_CYMUXFAST_2247 : STD_LOGIC; 
  signal slowcnt_22_CYAND_2246 : STD_LOGIC; 
  signal slowcnt_22_FASTCARRY_2245 : STD_LOGIC; 
  signal slowcnt_22_CYMUXG2_2244 : STD_LOGIC; 
  signal slowcnt_22_CYMUXF2_2243 : STD_LOGIC; 
  signal slowcnt_22_LOGIC_ZERO_2242 : STD_LOGIC; 
  signal slowcnt_22_CYSELG_2233 : STD_LOGIC; 
  signal slowcnt_22_G : STD_LOGIC; 
  signal slowcnt_22_SRINV_2231 : STD_LOGIC; 
  signal slowcnt_22_CLKINV_2230 : STD_LOGIC; 
  signal slowcnt_24_DXMUX_2321 : STD_LOGIC; 
  signal slowcnt_24_XORF_2319 : STD_LOGIC; 
  signal slowcnt_24_CYINIT_2318 : STD_LOGIC; 
  signal slowcnt_24_F : STD_LOGIC; 
  signal slowcnt_24_DYMUX_2304 : STD_LOGIC; 
  signal slowcnt_24_XORG_2302 : STD_LOGIC; 
  signal slowcnt_24_CYSELF_2300 : STD_LOGIC; 
  signal slowcnt_24_CYMUXFAST_2299 : STD_LOGIC; 
  signal slowcnt_24_CYAND_2298 : STD_LOGIC; 
  signal slowcnt_24_FASTCARRY_2297 : STD_LOGIC; 
  signal slowcnt_24_CYMUXG2_2296 : STD_LOGIC; 
  signal slowcnt_24_CYMUXF2_2295 : STD_LOGIC; 
  signal slowcnt_24_LOGIC_ZERO_2294 : STD_LOGIC; 
  signal slowcnt_24_CYSELG_2285 : STD_LOGIC; 
  signal slowcnt_24_G : STD_LOGIC; 
  signal slowcnt_24_SRINV_2283 : STD_LOGIC; 
  signal slowcnt_24_CLKINV_2282 : STD_LOGIC; 
  signal slowcnt_26_DXMUX_2373 : STD_LOGIC; 
  signal slowcnt_26_XORF_2371 : STD_LOGIC; 
  signal slowcnt_26_CYINIT_2370 : STD_LOGIC; 
  signal slowcnt_26_F : STD_LOGIC; 
  signal slowcnt_26_DYMUX_2356 : STD_LOGIC; 
  signal slowcnt_26_XORG_2354 : STD_LOGIC; 
  signal slowcnt_26_CYSELF_2352 : STD_LOGIC; 
  signal slowcnt_26_CYMUXFAST_2351 : STD_LOGIC; 
  signal slowcnt_26_CYAND_2350 : STD_LOGIC; 
  signal slowcnt_26_FASTCARRY_2349 : STD_LOGIC; 
  signal slowcnt_26_CYMUXG2_2348 : STD_LOGIC; 
  signal slowcnt_26_CYMUXF2_2347 : STD_LOGIC; 
  signal slowcnt_26_LOGIC_ZERO_2346 : STD_LOGIC; 
  signal slowcnt_26_CYSELG_2337 : STD_LOGIC; 
  signal slowcnt_26_G : STD_LOGIC; 
  signal slowcnt_26_SRINV_2335 : STD_LOGIC; 
  signal slowcnt_26_CLKINV_2334 : STD_LOGIC; 
  signal slowcnt_28_DXMUX_2425 : STD_LOGIC; 
  signal slowcnt_28_XORF_2423 : STD_LOGIC; 
  signal slowcnt_28_CYINIT_2422 : STD_LOGIC; 
  signal slowcnt_28_F : STD_LOGIC; 
  signal slowcnt_28_DYMUX_2408 : STD_LOGIC; 
  signal slowcnt_28_XORG_2406 : STD_LOGIC; 
  signal slowcnt_28_CYSELF_2404 : STD_LOGIC; 
  signal slowcnt_28_CYMUXFAST_2403 : STD_LOGIC; 
  signal slowcnt_28_CYAND_2402 : STD_LOGIC; 
  signal slowcnt_28_FASTCARRY_2401 : STD_LOGIC; 
  signal slowcnt_28_CYMUXG2_2400 : STD_LOGIC; 
  signal slowcnt_28_CYMUXF2_2399 : STD_LOGIC; 
  signal slowcnt_28_LOGIC_ZERO_2398 : STD_LOGIC; 
  signal slowcnt_28_CYSELG_2389 : STD_LOGIC; 
  signal slowcnt_28_G : STD_LOGIC; 
  signal slowcnt_28_SRINV_2387 : STD_LOGIC; 
  signal slowcnt_28_CLKINV_2386 : STD_LOGIC; 
  signal slowcnt_30_DXMUX_2449 : STD_LOGIC; 
  signal slowcnt_30_XORF_2447 : STD_LOGIC; 
  signal slowcnt_30_CYINIT_2446 : STD_LOGIC; 
  signal slowcnt_30_rt_2444 : STD_LOGIC; 
  signal slowcnt_30_SRINV_2436 : STD_LOGIC; 
  signal slowcnt_30_CLKINV_2435 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_CYINIT_2482 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_CYSELF_2475 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_BXINV_2473 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_CYMUXG_2472 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_LOGIC_ZERO_2470 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_1_CYSELG_2464 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYSELF_2506 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYMUXFAST_2505 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYAND_2504 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_FASTCARRY_2503 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYMUXG2_2502 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYMUXF2_2501 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_LOGIC_ZERO_2500 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_3_CYSELG_2494 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYSELF_2536 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYMUXFAST_2535 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYAND_2534 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_FASTCARRY_2533 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYMUXG2_2532 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYMUXF2_2531 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_LOGIC_ZERO_2530 : STD_LOGIC; 
  signal slowclk_and0000_wg_cy_5_CYSELG_2524 : STD_LOGIC; 
  signal slowclk_and0000_CYSELF_2566 : STD_LOGIC; 
  signal slowclk_and0000_CYMUXFAST_2565 : STD_LOGIC; 
  signal slowclk_and0000_CYAND_2564 : STD_LOGIC; 
  signal slowclk_and0000_FASTCARRY_2563 : STD_LOGIC; 
  signal slowclk_and0000_CYMUXG2_2562 : STD_LOGIC; 
  signal slowclk_and0000_CYMUXF2_2561 : STD_LOGIC; 
  signal slowclk_and0000_LOGIC_ZERO_2560 : STD_LOGIC; 
  signal slowclk_and0000_CYSELG_2554 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_XORF_2607 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_LOGIC_ZERO_2606 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_CYINIT_2605 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_CYSELF_2596 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_F : STD_LOGIC; 
  signal waitcnt_addsub0000_0_BXINV_2594 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_XORG_2592 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_CYMUXG_2591 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_0_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_0_LOGIC_ONE_2589 : STD_LOGIC; 
  signal waitcnt_addsub0000_0_CYSELG_2580 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_XORF_2645 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYINIT_2644 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_XORG_2633 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_2_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYSELF_2631 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYMUXFAST_2630 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYAND_2629 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_FASTCARRY_2628 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYMUXG2_2627 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYMUXF2_2626 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_LOGIC_ONE_2625 : STD_LOGIC; 
  signal waitcnt_addsub0000_2_CYSELG_2616 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_XORF_2683 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYINIT_2682 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_XORG_2671 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_4_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYSELF_2669 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYMUXFAST_2668 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYAND_2667 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_FASTCARRY_2666 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYMUXG2_2665 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYMUXF2_2664 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_LOGIC_ONE_2663 : STD_LOGIC; 
  signal waitcnt_addsub0000_4_CYSELG_2654 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_XORF_2721 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYINIT_2720 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_XORG_2709 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_6_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYSELF_2707 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYMUXFAST_2706 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYAND_2705 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_FASTCARRY_2704 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYMUXG2_2703 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYMUXF2_2702 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_LOGIC_ONE_2701 : STD_LOGIC; 
  signal waitcnt_addsub0000_6_CYSELG_2692 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_XORF_2759 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYINIT_2758 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_XORG_2747 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_8_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYSELF_2745 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYMUXFAST_2744 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYAND_2743 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_FASTCARRY_2742 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYMUXG2_2741 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYMUXF2_2740 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_LOGIC_ONE_2739 : STD_LOGIC; 
  signal waitcnt_addsub0000_8_CYSELG_2730 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_XORF_2797 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYINIT_2796 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_XORG_2785 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_10_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYSELF_2783 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYMUXFAST_2782 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYAND_2781 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_FASTCARRY_2780 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYMUXG2_2779 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYMUXF2_2778 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_LOGIC_ONE_2777 : STD_LOGIC; 
  signal waitcnt_addsub0000_10_CYSELG_2768 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_XORF_2835 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYINIT_2834 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_XORG_2823 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_12_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYSELF_2821 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYMUXFAST_2820 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYAND_2819 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_FASTCARRY_2818 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYMUXG2_2817 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYMUXF2_2816 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_LOGIC_ONE_2815 : STD_LOGIC; 
  signal waitcnt_addsub0000_12_CYSELG_2806 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_XORF_2873 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYINIT_2872 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_XORG_2861 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_14_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYSELF_2859 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYMUXFAST_2858 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYAND_2857 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_FASTCARRY_2856 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYMUXG2_2855 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYMUXF2_2854 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_LOGIC_ONE_2853 : STD_LOGIC; 
  signal waitcnt_addsub0000_14_CYSELG_2844 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_XORF_2911 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYINIT_2910 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_XORG_2899 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_16_Q : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYSELF_2897 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYMUXFAST_2896 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYAND_2895 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_FASTCARRY_2894 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYMUXG2_2893 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYMUXF2_2892 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_LOGIC_ONE_2891 : STD_LOGIC; 
  signal waitcnt_addsub0000_16_CYSELG_2882 : STD_LOGIC; 
  signal waitcnt_addsub0000_18_XORF_2942 : STD_LOGIC; 
  signal waitcnt_addsub0000_18_LOGIC_ONE_2941 : STD_LOGIC; 
  signal waitcnt_addsub0000_18_CYINIT_2940 : STD_LOGIC; 
  signal waitcnt_addsub0000_18_CYSELF_2931 : STD_LOGIC; 
  signal waitcnt_addsub0000_18_XORG_2928 : STD_LOGIC; 
  signal Msub_waitcnt_addsub0000_cy_18_Q : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYINIT_2972 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELF_2966 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_BXINV_2964 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYMUXG_2963 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_LOGIC_ZERO_2961 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELG_2955 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELF_2996 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXFAST_2995 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYAND_2994 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_FASTCARRY_2993 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXG2_2992 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXF2_2991 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO_2990 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELG_2984 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_LOGIC_ZERO_3017 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_CYINIT_3016 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0002_CYSELF_3010 : STD_LOGIC; 
  signal leds_5_OBUF_F5MUX_3048 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_3_f51_3046 : STD_LOGIC; 
  signal leds_5_OBUF_BXINV_3040 : STD_LOGIC; 
  signal leds_5_OBUF_F6MUX_3038 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_5_3036 : STD_LOGIC; 
  signal leds_5_OBUF_BYINV_3031 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_4_f5_F5MUX_3072 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_51_3070 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_4_f5_BXINV_3064 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_6_3062 : STD_LOGIC; 
  signal leds_7_OBUF_F5MUX_3103 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001371_4_3101 : STD_LOGIC; 
  signal leds_7_OBUF_BXINV_3095 : STD_LOGIC; 
  signal leds_7_OBUF_F6MUX_3093 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_5_3091 : STD_LOGIC; 
  signal leds_7_OBUF_BYINV_3085 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_4_f5_F5MUX_3127 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_51_3125 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_4_f5_BXINV_3120 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001512_6_3118 : STD_LOGIC; 
  signal leds_6_OBUF_F5MUX_3158 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_3_f52_3156 : STD_LOGIC; 
  signal leds_6_OBUF_BXINV_3150 : STD_LOGIC; 
  signal leds_6_OBUF_F6MUX_3148 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_3_f51_3146 : STD_LOGIC; 
  signal leds_6_OBUF_BYINV_3140 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_4_f5_F5MUX_3182 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_51_3180 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_4_f5_BXINV_3175 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001441_6_3173 : STD_LOGIC; 
  signal spi_module_sdo_F5MUX_3222 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_4_3220 : STD_LOGIC; 
  signal spi_module_sdo_BXINV_3214 : STD_LOGIC; 
  signal spi_module_sdo_DYMUX_3209 : STD_LOGIC; 
  signal spi_module_sdo_F6MUX_3207 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_5_3205 : STD_LOGIC; 
  signal spi_module_sdo_BYINV_3199 : STD_LOGIC; 
  signal spi_module_sdo_SRINV_3198 : STD_LOGIC; 
  signal spi_module_sdo_CLKINV_3197 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_4_f5_F5MUX_3246 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_51_3244 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_4_f5_BXINV_3238 : STD_LOGIC; 
  signal spi_module_Mmux_sdo_mux0002_6_3236 : STD_LOGIC; 
  signal leds_4_OBUF_F5MUX_3277 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_4_3275 : STD_LOGIC; 
  signal leds_4_OBUF_BXINV_3269 : STD_LOGIC; 
  signal leds_4_OBUF_F6MUX_3267 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_5_3265 : STD_LOGIC; 
  signal leds_4_OBUF_BYINV_3260 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_4_f5_F5MUX_3301 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_51_3299 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_4_f5_BXINV_3293 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001301_6_3291 : STD_LOGIC; 
  signal dc_O : STD_LOGIC; 
  signal leds_0_O : STD_LOGIC; 
  signal leds_1_O : STD_LOGIC; 
  signal hclk_INBUF : STD_LOGIC; 
  signal cs_O : STD_LOGIC; 
  signal leds_3_O : STD_LOGIC; 
  signal leds_4_O : STD_LOGIC; 
  signal leds_5_O : STD_LOGIC; 
  signal leds_6_O : STD_LOGIC; 
  signal leds_7_O : STD_LOGIC; 
  signal sck_O : STD_LOGIC; 
  signal leds_2_O : STD_LOGIC; 
  signal sdo_O : STD_LOGIC; 
  signal rsti_INBUF : STD_LOGIC; 
  signal rsto_O : STD_LOGIC; 
  signal Inst_pll2_CLK0_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_pll2_CLK0_BUFG_INST_I0_INV : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLK90 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLK180 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLK270 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLK2X : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLK2X180 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLKFX : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLKFX180 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_LOCKED : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS7 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS6 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS5 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS4 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS3 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS2 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS1 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_STATUS0 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_PSDONE : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_PSCLKINV_3433 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLKFB_BUF_3432 : STD_LOGIC; 
  signal Inst_pll2_DCM_SP_INST_CLKIN_BUF_3431 : STD_LOGIC; 
  signal Inst_pll2_CLKDV_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal Inst_pll2_CLKDV_BUFG_INST_I0_INV : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000051_5_f5_F5MUX_3479 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000051_6_3477 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000051_5_f5_BXINV_3470 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000051_7_3468 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001112_5_f5_F5MUX_3504 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001112_5_f5_BXINV_3496 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal leds_1_OBUF_F5MUX_3529 : STD_LOGIC; 
  signal leds_1_136 : STD_LOGIC; 
  signal leds_1_OBUF_BXINV_3522 : STD_LOGIC; 
  signal leds_1_1361_3520 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000151_5_f5_F5MUX_3554 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000151_5_f5_BXINV_3546 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal leds_3_OBUF_F5MUX_3579 : STD_LOGIC; 
  signal leds_3_168 : STD_LOGIC; 
  signal leds_3_OBUF_BXINV_3572 : STD_LOGIC; 
  signal leds_3_1681_3570 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001231_5_f5_F5MUX_3604 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001231_5_f5_BXINV_3596 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal leds_0_OBUF_F5MUX_3629 : STD_LOGIC; 
  signal cmdcnt_6_42 : STD_LOGIC; 
  signal leds_0_OBUF_BXINV_3622 : STD_LOGIC; 
  signal cmdcnt_6_421_3620 : STD_LOGIC; 
  signal cmdcnt_4_DXMUX_3663 : STD_LOGIC; 
  signal cmdcnt_4_FXMUX_3662 : STD_LOGIC; 
  signal cmdcnt_4_F5MUX_3661 : STD_LOGIC; 
  signal Mcount_cmdcnt41_3659 : STD_LOGIC; 
  signal cmdcnt_4_BXINV_3654 : STD_LOGIC; 
  signal Mcount_cmdcnt42_3652 : STD_LOGIC; 
  signal cmdcnt_4_SRINV_3647 : STD_LOGIC; 
  signal cmdcnt_4_CLKINV_3646 : STD_LOGIC; 
  signal cmdcnt_4_CEINV_3645 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001171_5_f5_F5MUX_3692 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001171_5_f5_BXINV_3684 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal leds_1_85_3715 : STD_LOGIC; 
  signal N34_pack_1 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal leds_1_30_SW4_O_pack_1 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N25_pack_1 : STD_LOGIC; 
  signal spi_module_cdata_8_DXMUX_3794 : STD_LOGIC; 
  signal spi_module_cdata_mux0001_0_47_SW0_O_pack_1 : STD_LOGIC; 
  signal spi_module_cdata_8_CLKINV_3779 : STD_LOGIC; 
  signal spi_module_cdata_8_CEINV_3778 : STD_LOGIC; 
  signal fsm_module_state_2_DXMUX_3827 : STD_LOGIC; 
  signal fsm_module_state_mux0001_1_SW0_O_pack_2 : STD_LOGIC; 
  signal fsm_module_state_2_CLKINV_3810 : STD_LOGIC; 
  signal fsm_module_state_2_CEINV_3809 : STD_LOGIC; 
  signal fsm_module_state_1_DXMUX_3860 : STD_LOGIC; 
  signal fsm_module_state_mux0001_2_SW0_O_pack_2 : STD_LOGIC; 
  signal fsm_module_state_1_CLKINV_3844 : STD_LOGIC; 
  signal fsm_module_state_1_CEINV_3843 : STD_LOGIC; 
  signal spi_module_cdata_1_DXMUX_3893 : STD_LOGIC; 
  signal leds_1_136_SW0_O_pack_1 : STD_LOGIC; 
  signal spi_module_cdata_1_CLKINV_3878 : STD_LOGIC; 
  signal spi_module_cdata_1_CEINV_3877 : STD_LOGIC; 
  signal cmdcnt_5_DXMUX_3929 : STD_LOGIC; 
  signal cmdcnt_5_FXMUX_3928 : STD_LOGIC; 
  signal Mcount_cmdcnt5_3926 : STD_LOGIC; 
  signal Mcount_cmdcnt5_SW0_O_pack_2 : STD_LOGIC; 
  signal cmdcnt_5_SRINV_3913 : STD_LOGIC; 
  signal cmdcnt_5_CLKINV_3912 : STD_LOGIC; 
  signal cmdcnt_5_CEINV_3911 : STD_LOGIC; 
  signal spi_module_cdata_0_DXMUX_3963 : STD_LOGIC; 
  signal cmdcnt_6_42_SW0_O_pack_1 : STD_LOGIC; 
  signal spi_module_cdata_0_CLKINV_3948 : STD_LOGIC; 
  signal spi_module_cdata_0_CEINV_3947 : STD_LOGIC; 
  signal cmdcnt_6_DXMUX_3998 : STD_LOGIC; 
  signal Mcount_cmdcnt6_3995 : STD_LOGIC; 
  signal Mcount_cmdcnt6_SW0_O_pack_2 : STD_LOGIC; 
  signal cmdcnt_6_SRINV_3983 : STD_LOGIC; 
  signal cmdcnt_6_CLKINV_3982 : STD_LOGIC; 
  signal cmdcnt_6_CEINV_3981 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0001_4025 : STD_LOGIC; 
  signal fsm_module_nextstate_cmp_eq0001_SW0_O_pack_1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N29_pack_1 : STD_LOGIC; 
  signal spi_module_sdo_or0000 : STD_LOGIC; 
  signal spi_module_sdo_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal spi_module_cdata_3_DYMUX_4097 : STD_LOGIC; 
  signal spi_module_cdata_3_CLKINV_4089 : STD_LOGIC; 
  signal spi_module_cdata_3_CEINV_4088 : STD_LOGIC; 
  signal spi_module_cdata_5_DXMUX_4142 : STD_LOGIC; 
  signal spi_module_cdata_5_DYMUX_4128 : STD_LOGIC; 
  signal spi_module_cdata_5_CLKINV_4118 : STD_LOGIC; 
  signal spi_module_cdata_5_CEINV_4117 : STD_LOGIC; 
  signal spi_module_cdata_7_DXMUX_4180 : STD_LOGIC; 
  signal spi_module_cdata_7_DYMUX_4166 : STD_LOGIC; 
  signal spi_module_cdata_7_CLKINV_4156 : STD_LOGIC; 
  signal spi_module_cdata_7_CEINV_4155 : STD_LOGIC; 
  signal cmdcnt_and0000 : STD_LOGIC; 
  signal fsm_module_state_0_DYMUX_4204 : STD_LOGIC; 
  signal fsm_module_state_0_CLKINV_4196 : STD_LOGIC; 
  signal fsm_module_state_0_CEINV_4195 : STD_LOGIC; 
  signal cmdcnt_not0002 : STD_LOGIC; 
  signal fsm_module_state_3_DYMUX_4238 : STD_LOGIC; 
  signal fsm_module_state_3_CLKINV_4230 : STD_LOGIC; 
  signal fsm_module_state_3_CEINV_4229 : STD_LOGIC; 
  signal waitcnt_1_DXMUX_4284 : STD_LOGIC; 
  signal waitcnt_1_DYMUX_4271 : STD_LOGIC; 
  signal waitcnt_1_CLKINV_4262 : STD_LOGIC; 
  signal waitcnt_1_CEINV_4261 : STD_LOGIC; 
  signal waitcnt_3_DXMUX_4322 : STD_LOGIC; 
  signal waitcnt_3_DYMUX_4309 : STD_LOGIC; 
  signal waitcnt_3_CLKINV_4300 : STD_LOGIC; 
  signal waitcnt_3_CEINV_4299 : STD_LOGIC; 
  signal waitcnt_5_DXMUX_4360 : STD_LOGIC; 
  signal waitcnt_5_DYMUX_4347 : STD_LOGIC; 
  signal waitcnt_5_CLKINV_4338 : STD_LOGIC; 
  signal waitcnt_5_CEINV_4337 : STD_LOGIC; 
  signal waitcnt_7_DXMUX_4398 : STD_LOGIC; 
  signal waitcnt_7_DYMUX_4385 : STD_LOGIC; 
  signal waitcnt_7_CLKINV_4376 : STD_LOGIC; 
  signal waitcnt_7_CEINV_4375 : STD_LOGIC; 
  signal waitcnt_9_DXMUX_4436 : STD_LOGIC; 
  signal waitcnt_9_DYMUX_4423 : STD_LOGIC; 
  signal waitcnt_9_CLKINV_4414 : STD_LOGIC; 
  signal waitcnt_9_CEINV_4413 : STD_LOGIC; 
  signal rstcnt_1_DXMUX_4478 : STD_LOGIC; 
  signal Mcount_rstcnt1 : STD_LOGIC; 
  signal rstcnt_1_DYMUX_4463 : STD_LOGIC; 
  signal Mcount_rstcnt : STD_LOGIC; 
  signal rstcnt_1_SRINV_4453 : STD_LOGIC; 
  signal rstcnt_1_CLKINV_4452 : STD_LOGIC; 
  signal rstcnt_1_CEINV_4451 : STD_LOGIC; 
  signal cmdcnt_3_DXMUX_4523 : STD_LOGIC; 
  signal cmdcnt_3_FXMUX_4522 : STD_LOGIC; 
  signal Mcount_cmdcnt3 : STD_LOGIC; 
  signal cmdcnt_3_DYMUX_4510 : STD_LOGIC; 
  signal cmdcnt_3_GYMUX_4509 : STD_LOGIC; 
  signal Mcount_cmdcnt2 : STD_LOGIC; 
  signal cmdcnt_3_SRINV_4501 : STD_LOGIC; 
  signal cmdcnt_3_CLKINV_4500 : STD_LOGIC; 
  signal cmdcnt_3_CEINV_4499 : STD_LOGIC; 
  signal spi_module_cnt_2_DYMUX_4547 : STD_LOGIC; 
  signal spi_module_cnt_2_SRINV_4538 : STD_LOGIC; 
  signal spi_module_cnt_2_CLKINV_4537 : STD_LOGIC; 
  signal spi_module_cnt_2_CEINV_4536 : STD_LOGIC; 
  signal spi_module_cnt_3_REVUSED_4574 : STD_LOGIC; 
  signal spi_module_cnt_3_DYMUX_4573 : STD_LOGIC; 
  signal spi_module_cnt_3_SRINV_4564 : STD_LOGIC; 
  signal spi_module_cnt_3_CLKINV_4563 : STD_LOGIC; 
  signal spi_module_cnt_3_CEINV_4562 : STD_LOGIC; 
  signal waitcnt_11_DXMUX_4614 : STD_LOGIC; 
  signal waitcnt_11_DYMUX_4601 : STD_LOGIC; 
  signal waitcnt_11_CLKINV_4592 : STD_LOGIC; 
  signal waitcnt_11_CEINV_4591 : STD_LOGIC; 
  signal waitcnt_13_DXMUX_4652 : STD_LOGIC; 
  signal waitcnt_13_DYMUX_4639 : STD_LOGIC; 
  signal waitcnt_13_CLKINV_4630 : STD_LOGIC; 
  signal waitcnt_13_CEINV_4629 : STD_LOGIC; 
  signal waitcnt_15_DXMUX_4690 : STD_LOGIC; 
  signal waitcnt_15_DYMUX_4677 : STD_LOGIC; 
  signal waitcnt_15_CLKINV_4668 : STD_LOGIC; 
  signal waitcnt_15_CEINV_4667 : STD_LOGIC; 
  signal waitcnt_17_DXMUX_4728 : STD_LOGIC; 
  signal waitcnt_17_DYMUX_4715 : STD_LOGIC; 
  signal waitcnt_17_CLKINV_4706 : STD_LOGIC; 
  signal waitcnt_17_CEINV_4705 : STD_LOGIC; 
  signal waitcnt_19_DXMUX_4766 : STD_LOGIC; 
  signal waitcnt_19_DYMUX_4753 : STD_LOGIC; 
  signal waitcnt_19_CLKINV_4744 : STD_LOGIC; 
  signal waitcnt_19_CEINV_4743 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000118 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000120 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal leds_1_98_4809 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000121 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00012 : STD_LOGIC; 
  signal spi_module_cdata_not0001 : STD_LOGIC; 
  signal spi_module_Mcount_cnt_val : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0001 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom0000 : STD_LOGIC; 
  signal cs_OBUF_DYMUX_4896 : STD_LOGIC; 
  signal cs_OBUF_CLKINV_4894 : STD_LOGIC; 
  signal spi_module_cnt_cst : STD_LOGIC; 
  signal spi_module_cnt_or0000 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00013 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000112 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000115 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00011_5017 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000131_5010 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000133 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00001_5034 : STD_LOGIC; 
  signal slowclk_DYMUX_5051 : STD_LOGIC; 
  signal slowclk_BYINV_5050 : STD_LOGIC; 
  signal slowclk_SRINVNOT : STD_LOGIC; 
  signal slowclk_CLKINV_5048 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000138 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000125 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000145 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000124 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000142 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00016 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000113 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00018 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000114 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000126 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000127 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000132 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000130 : STD_LOGIC; 
  signal spi_module_cdata_2_DXMUX_5252 : STD_LOGIC; 
  signal leds_2_OBUF_pack_1 : STD_LOGIC; 
  signal spi_module_cdata_2_CLKINV_5235 : STD_LOGIC; 
  signal spi_module_cdata_2_CEINV_5234 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal cmdcnt_6_23_5270 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000146 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000134 : STD_LOGIC; 
  signal spi_module_cs_DYMUX_5312 : STD_LOGIC; 
  signal spi_module_cs_BYINV_5311 : STD_LOGIC; 
  signal spi_module_cs_SRINV_5310 : STD_LOGIC; 
  signal spi_module_cs_CLKINV_5309 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000139 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000119 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom000137 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00019 : STD_LOGIC; 
  signal memory_module_Mrom_data_rom00017 : STD_LOGIC; 
  signal cmdcnt_1_DXMUX_5429 : STD_LOGIC; 
  signal cmdcnt_1_FXMUX_5428 : STD_LOGIC; 
  signal Mcount_cmdcnt1 : STD_LOGIC; 
  signal cmdcnt_1_DYMUX_5416 : STD_LOGIC; 
  signal Mcount_cmdcnt_xor_1_1_SW0_O_pack_4 : STD_LOGIC; 
  signal cmdcnt_1_SRINV_5407 : STD_LOGIC; 
  signal cmdcnt_1_CLKINV_5406 : STD_LOGIC; 
  signal cmdcnt_1_CEINV_5405 : STD_LOGIC; 
  signal cmdcnt_0_1_DYMUX_5444 : STD_LOGIC; 
  signal cmdcnt_0_1_SRINV_5442 : STD_LOGIC; 
  signal cmdcnt_0_1_CLKINV_5441 : STD_LOGIC; 
  signal cmdcnt_0_1_CEINV_5440 : STD_LOGIC; 
  signal cmdcnt_0_2_DYMUX_5459 : STD_LOGIC; 
  signal cmdcnt_0_2_SRINV_5457 : STD_LOGIC; 
  signal cmdcnt_0_2_CLKINV_5456 : STD_LOGIC; 
  signal cmdcnt_0_2_CEINV_5455 : STD_LOGIC; 
  signal spi_module_dco_DYMUX_5472 : STD_LOGIC; 
  signal spi_module_dco_SRINV_5470 : STD_LOGIC; 
  signal spi_module_dco_CLKINV_5469 : STD_LOGIC; 
  signal sdo_OBUF_DYMUX_5482 : STD_LOGIC; 
  signal sdo_OBUF_CLKINV_5480 : STD_LOGIC; 
  signal cmdcnt_1_1_DYMUX_5495 : STD_LOGIC; 
  signal cmdcnt_1_1_SRINV_5493 : STD_LOGIC; 
  signal cmdcnt_1_1_CLKINV_5492 : STD_LOGIC; 
  signal cmdcnt_1_1_CEINV_5491 : STD_LOGIC; 
  signal cmdcnt_1_2_DYMUX_5510 : STD_LOGIC; 
  signal cmdcnt_1_2_SRINV_5508 : STD_LOGIC; 
  signal cmdcnt_1_2_CLKINV_5507 : STD_LOGIC; 
  signal cmdcnt_1_2_CEINV_5506 : STD_LOGIC; 
  signal cmdcnt_2_1_DYMUX_5525 : STD_LOGIC; 
  signal cmdcnt_2_1_SRINV_5523 : STD_LOGIC; 
  signal cmdcnt_2_1_CLKINV_5522 : STD_LOGIC; 
  signal cmdcnt_2_1_CEINV_5521 : STD_LOGIC; 
  signal cmdcnt_3_1_DYMUX_5540 : STD_LOGIC; 
  signal cmdcnt_3_1_SRINV_5538 : STD_LOGIC; 
  signal cmdcnt_3_1_CLKINV_5537 : STD_LOGIC; 
  signal cmdcnt_3_1_CEINV_5536 : STD_LOGIC; 
  signal cmdcnt_4_1_DYMUX_5555 : STD_LOGIC; 
  signal cmdcnt_4_1_SRINV_5553 : STD_LOGIC; 
  signal cmdcnt_4_1_CLKINV_5552 : STD_LOGIC; 
  signal cmdcnt_4_1_CEINV_5551 : STD_LOGIC; 
  signal spi_module_cnt_0_DXMUX_5588 : STD_LOGIC; 
  signal spi_module_cnt_0_DYMUX_5581 : STD_LOGIC; 
  signal spi_module_cnt_0_SRINV_5571 : STD_LOGIC; 
  signal spi_module_cnt_0_CLKINV_5570 : STD_LOGIC; 
  signal spi_module_cnt_0_CEINV_5569 : STD_LOGIC; 
  signal cmdcnt_5_1_DYMUX_5603 : STD_LOGIC; 
  signal cmdcnt_5_1_SRINV_5601 : STD_LOGIC; 
  signal cmdcnt_5_1_CLKINV_5600 : STD_LOGIC; 
  signal cmdcnt_5_1_CEINV_5599 : STD_LOGIC; 
  signal dc_OBUF_DYMUX_5614 : STD_LOGIC; 
  signal dc_OBUF_CLKINV_5612 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Inst_pll2_DCM_SP_INST_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal slowcnt : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_slowcnt_cy : STD_LOGIC_VECTOR ( 28 downto 0 ); 
  signal waitcnt : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal waitcnt_addsub0000 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal cmdcnt : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal spi_module_cnt : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal spi_module_cdata : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal fsm_module_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal rstcnt : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Mcount_slowcnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal slowclk_and0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal slowclk_and0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Msub_waitcnt_addsub0000_lut : STD_LOGIC_VECTOR ( 19 downto 1 ); 
  signal fsm_module_nextstate_cmp_eq0002_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal fsm_module_nextstate_cmp_eq0002_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal spi_module_cdata_mux0001 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal fsm_module_state_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal waitcnt_mux0002 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal spi_module_Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  slowcnt_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      O => slowcnt_0_LOGIC_ZERO_1672
    );
  slowcnt_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      O => slowcnt_0_LOGIC_ONE_1694
    );
  slowcnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_0_XORF_1695,
      O => slowcnt_0_DXMUX_1697
    );
  slowcnt_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      I0 => slowcnt_0_CYINIT_1693,
      I1 => Mcount_slowcnt_lut(0),
      O => slowcnt_0_XORF_1695
    );
  slowcnt_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      IA => slowcnt_0_LOGIC_ONE_1694,
      IB => slowcnt_0_CYINIT_1693,
      SEL => slowcnt_0_CYSELF_1684,
      O => Mcount_slowcnt_cy(0)
    );
  slowcnt_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_0_BXINV_1682,
      O => slowcnt_0_CYINIT_1693
    );
  slowcnt_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_lut(0),
      O => slowcnt_0_CYSELF_1684
    );
  slowcnt_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => slowcnt_0_BXINV_1682
    );
  slowcnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_0_XORG_1675,
      O => slowcnt_0_DYMUX_1677
    );
  slowcnt_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      I0 => Mcount_slowcnt_cy(0),
      I1 => slowcnt_0_G,
      O => slowcnt_0_XORG_1675
    );
  slowcnt_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_0_CYMUXG_1674,
      O => Mcount_slowcnt_cy(1)
    );
  slowcnt_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X3Y27"
    )
    port map (
      IA => slowcnt_0_LOGIC_ZERO_1672,
      IB => Mcount_slowcnt_cy(0),
      SEL => slowcnt_0_CYSELG_1663,
      O => slowcnt_0_CYMUXG_1674
    );
  slowcnt_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_0_G,
      O => slowcnt_0_CYSELG_1663
    );
  slowcnt_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_0_SRINV_1661
    );
  slowcnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_0_CLKINV_1660
    );
  slowcnt_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      O => slowcnt_2_LOGIC_ZERO_1722
    );
  slowcnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_2_XORF_1747,
      O => slowcnt_2_DXMUX_1749
    );
  slowcnt_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      I0 => slowcnt_2_CYINIT_1746,
      I1 => slowcnt_2_F,
      O => slowcnt_2_XORF_1747
    );
  slowcnt_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => slowcnt_2_LOGIC_ZERO_1722,
      IB => slowcnt_2_CYINIT_1746,
      SEL => slowcnt_2_CYSELF_1728,
      O => Mcount_slowcnt_cy(2)
    );
  slowcnt_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => slowcnt_2_LOGIC_ZERO_1722,
      IB => slowcnt_2_LOGIC_ZERO_1722,
      SEL => slowcnt_2_CYSELF_1728,
      O => slowcnt_2_CYMUXF2_1723
    );
  slowcnt_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(1),
      O => slowcnt_2_CYINIT_1746
    );
  slowcnt_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_2_F,
      O => slowcnt_2_CYSELF_1728
    );
  slowcnt_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_2_XORG_1730,
      O => slowcnt_2_DYMUX_1732
    );
  slowcnt_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      I0 => Mcount_slowcnt_cy(2),
      I1 => slowcnt_2_G,
      O => slowcnt_2_XORG_1730
    );
  slowcnt_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_2_CYMUXFAST_1727,
      O => Mcount_slowcnt_cy(3)
    );
  slowcnt_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(1),
      O => slowcnt_2_FASTCARRY_1725
    );
  slowcnt_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      I0 => slowcnt_2_CYSELG_1713,
      I1 => slowcnt_2_CYSELF_1728,
      O => slowcnt_2_CYAND_1726
    );
  slowcnt_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => slowcnt_2_CYMUXG2_1724,
      IB => slowcnt_2_FASTCARRY_1725,
      SEL => slowcnt_2_CYAND_1726,
      O => slowcnt_2_CYMUXFAST_1727
    );
  slowcnt_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y28"
    )
    port map (
      IA => slowcnt_2_LOGIC_ZERO_1722,
      IB => slowcnt_2_CYMUXF2_1723,
      SEL => slowcnt_2_CYSELG_1713,
      O => slowcnt_2_CYMUXG2_1724
    );
  slowcnt_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_2_G,
      O => slowcnt_2_CYSELG_1713
    );
  slowcnt_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_2_SRINV_1711
    );
  slowcnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_2_CLKINV_1710
    );
  slowcnt_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      O => slowcnt_4_LOGIC_ZERO_1774
    );
  slowcnt_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_4_XORF_1799,
      O => slowcnt_4_DXMUX_1801
    );
  slowcnt_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      I0 => slowcnt_4_CYINIT_1798,
      I1 => slowcnt_4_F,
      O => slowcnt_4_XORF_1799
    );
  slowcnt_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      IA => slowcnt_4_LOGIC_ZERO_1774,
      IB => slowcnt_4_CYINIT_1798,
      SEL => slowcnt_4_CYSELF_1780,
      O => Mcount_slowcnt_cy(4)
    );
  slowcnt_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      IA => slowcnt_4_LOGIC_ZERO_1774,
      IB => slowcnt_4_LOGIC_ZERO_1774,
      SEL => slowcnt_4_CYSELF_1780,
      O => slowcnt_4_CYMUXF2_1775
    );
  slowcnt_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(3),
      O => slowcnt_4_CYINIT_1798
    );
  slowcnt_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_4_F,
      O => slowcnt_4_CYSELF_1780
    );
  slowcnt_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_4_XORG_1782,
      O => slowcnt_4_DYMUX_1784
    );
  slowcnt_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      I0 => Mcount_slowcnt_cy(4),
      I1 => slowcnt_4_G,
      O => slowcnt_4_XORG_1782
    );
  slowcnt_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_4_CYMUXFAST_1779,
      O => Mcount_slowcnt_cy(5)
    );
  slowcnt_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(3),
      O => slowcnt_4_FASTCARRY_1777
    );
  slowcnt_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      I0 => slowcnt_4_CYSELG_1765,
      I1 => slowcnt_4_CYSELF_1780,
      O => slowcnt_4_CYAND_1778
    );
  slowcnt_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      IA => slowcnt_4_CYMUXG2_1776,
      IB => slowcnt_4_FASTCARRY_1777,
      SEL => slowcnt_4_CYAND_1778,
      O => slowcnt_4_CYMUXFAST_1779
    );
  slowcnt_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y29"
    )
    port map (
      IA => slowcnt_4_LOGIC_ZERO_1774,
      IB => slowcnt_4_CYMUXF2_1775,
      SEL => slowcnt_4_CYSELG_1765,
      O => slowcnt_4_CYMUXG2_1776
    );
  slowcnt_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_4_G,
      O => slowcnt_4_CYSELG_1765
    );
  slowcnt_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_4_SRINV_1763
    );
  slowcnt_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_4_CLKINV_1762
    );
  slowcnt_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      O => slowcnt_6_LOGIC_ZERO_1826
    );
  slowcnt_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_6_XORF_1851,
      O => slowcnt_6_DXMUX_1853
    );
  slowcnt_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      I0 => slowcnt_6_CYINIT_1850,
      I1 => slowcnt_6_F,
      O => slowcnt_6_XORF_1851
    );
  slowcnt_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      IA => slowcnt_6_LOGIC_ZERO_1826,
      IB => slowcnt_6_CYINIT_1850,
      SEL => slowcnt_6_CYSELF_1832,
      O => Mcount_slowcnt_cy(6)
    );
  slowcnt_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      IA => slowcnt_6_LOGIC_ZERO_1826,
      IB => slowcnt_6_LOGIC_ZERO_1826,
      SEL => slowcnt_6_CYSELF_1832,
      O => slowcnt_6_CYMUXF2_1827
    );
  slowcnt_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(5),
      O => slowcnt_6_CYINIT_1850
    );
  slowcnt_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_6_F,
      O => slowcnt_6_CYSELF_1832
    );
  slowcnt_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_6_XORG_1834,
      O => slowcnt_6_DYMUX_1836
    );
  slowcnt_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      I0 => Mcount_slowcnt_cy(6),
      I1 => slowcnt_6_G,
      O => slowcnt_6_XORG_1834
    );
  slowcnt_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_6_CYMUXFAST_1831,
      O => Mcount_slowcnt_cy(7)
    );
  slowcnt_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(5),
      O => slowcnt_6_FASTCARRY_1829
    );
  slowcnt_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      I0 => slowcnt_6_CYSELG_1817,
      I1 => slowcnt_6_CYSELF_1832,
      O => slowcnt_6_CYAND_1830
    );
  slowcnt_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      IA => slowcnt_6_CYMUXG2_1828,
      IB => slowcnt_6_FASTCARRY_1829,
      SEL => slowcnt_6_CYAND_1830,
      O => slowcnt_6_CYMUXFAST_1831
    );
  slowcnt_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y30"
    )
    port map (
      IA => slowcnt_6_LOGIC_ZERO_1826,
      IB => slowcnt_6_CYMUXF2_1827,
      SEL => slowcnt_6_CYSELG_1817,
      O => slowcnt_6_CYMUXG2_1828
    );
  slowcnt_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_6_G,
      O => slowcnt_6_CYSELG_1817
    );
  slowcnt_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_6_SRINV_1815
    );
  slowcnt_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_6_CLKINV_1814
    );
  slowcnt_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      O => slowcnt_8_LOGIC_ZERO_1878
    );
  slowcnt_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_8_XORF_1903,
      O => slowcnt_8_DXMUX_1905
    );
  slowcnt_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      I0 => slowcnt_8_CYINIT_1902,
      I1 => slowcnt_8_F,
      O => slowcnt_8_XORF_1903
    );
  slowcnt_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      IA => slowcnt_8_LOGIC_ZERO_1878,
      IB => slowcnt_8_CYINIT_1902,
      SEL => slowcnt_8_CYSELF_1884,
      O => Mcount_slowcnt_cy(8)
    );
  slowcnt_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      IA => slowcnt_8_LOGIC_ZERO_1878,
      IB => slowcnt_8_LOGIC_ZERO_1878,
      SEL => slowcnt_8_CYSELF_1884,
      O => slowcnt_8_CYMUXF2_1879
    );
  slowcnt_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(7),
      O => slowcnt_8_CYINIT_1902
    );
  slowcnt_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_8_F,
      O => slowcnt_8_CYSELF_1884
    );
  slowcnt_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_8_XORG_1886,
      O => slowcnt_8_DYMUX_1888
    );
  slowcnt_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      I0 => Mcount_slowcnt_cy(8),
      I1 => slowcnt_8_G,
      O => slowcnt_8_XORG_1886
    );
  slowcnt_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_8_CYMUXFAST_1883,
      O => Mcount_slowcnt_cy(9)
    );
  slowcnt_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(7),
      O => slowcnt_8_FASTCARRY_1881
    );
  slowcnt_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      I0 => slowcnt_8_CYSELG_1869,
      I1 => slowcnt_8_CYSELF_1884,
      O => slowcnt_8_CYAND_1882
    );
  slowcnt_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      IA => slowcnt_8_CYMUXG2_1880,
      IB => slowcnt_8_FASTCARRY_1881,
      SEL => slowcnt_8_CYAND_1882,
      O => slowcnt_8_CYMUXFAST_1883
    );
  slowcnt_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y31"
    )
    port map (
      IA => slowcnt_8_LOGIC_ZERO_1878,
      IB => slowcnt_8_CYMUXF2_1879,
      SEL => slowcnt_8_CYSELG_1869,
      O => slowcnt_8_CYMUXG2_1880
    );
  slowcnt_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_8_G,
      O => slowcnt_8_CYSELG_1869
    );
  slowcnt_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_8_SRINV_1867
    );
  slowcnt_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_8_CLKINV_1866
    );
  slowcnt_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      O => slowcnt_10_LOGIC_ZERO_1930
    );
  slowcnt_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_10_XORF_1955,
      O => slowcnt_10_DXMUX_1957
    );
  slowcnt_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      I0 => slowcnt_10_CYINIT_1954,
      I1 => slowcnt_10_F,
      O => slowcnt_10_XORF_1955
    );
  slowcnt_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      IA => slowcnt_10_LOGIC_ZERO_1930,
      IB => slowcnt_10_CYINIT_1954,
      SEL => slowcnt_10_CYSELF_1936,
      O => Mcount_slowcnt_cy(10)
    );
  slowcnt_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      IA => slowcnt_10_LOGIC_ZERO_1930,
      IB => slowcnt_10_LOGIC_ZERO_1930,
      SEL => slowcnt_10_CYSELF_1936,
      O => slowcnt_10_CYMUXF2_1931
    );
  slowcnt_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(9),
      O => slowcnt_10_CYINIT_1954
    );
  slowcnt_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_10_F,
      O => slowcnt_10_CYSELF_1936
    );
  slowcnt_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_10_XORG_1938,
      O => slowcnt_10_DYMUX_1940
    );
  slowcnt_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      I0 => Mcount_slowcnt_cy(10),
      I1 => slowcnt_10_G,
      O => slowcnt_10_XORG_1938
    );
  slowcnt_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_10_CYMUXFAST_1935,
      O => Mcount_slowcnt_cy(11)
    );
  slowcnt_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(9),
      O => slowcnt_10_FASTCARRY_1933
    );
  slowcnt_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      I0 => slowcnt_10_CYSELG_1921,
      I1 => slowcnt_10_CYSELF_1936,
      O => slowcnt_10_CYAND_1934
    );
  slowcnt_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      IA => slowcnt_10_CYMUXG2_1932,
      IB => slowcnt_10_FASTCARRY_1933,
      SEL => slowcnt_10_CYAND_1934,
      O => slowcnt_10_CYMUXFAST_1935
    );
  slowcnt_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y32"
    )
    port map (
      IA => slowcnt_10_LOGIC_ZERO_1930,
      IB => slowcnt_10_CYMUXF2_1931,
      SEL => slowcnt_10_CYSELG_1921,
      O => slowcnt_10_CYMUXG2_1932
    );
  slowcnt_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_10_G,
      O => slowcnt_10_CYSELG_1921
    );
  slowcnt_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_10_SRINV_1919
    );
  slowcnt_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_10_CLKINV_1918
    );
  slowcnt_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      O => slowcnt_12_LOGIC_ZERO_1982
    );
  slowcnt_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_12_XORF_2007,
      O => slowcnt_12_DXMUX_2009
    );
  slowcnt_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      I0 => slowcnt_12_CYINIT_2006,
      I1 => slowcnt_12_F,
      O => slowcnt_12_XORF_2007
    );
  slowcnt_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      IA => slowcnt_12_LOGIC_ZERO_1982,
      IB => slowcnt_12_CYINIT_2006,
      SEL => slowcnt_12_CYSELF_1988,
      O => Mcount_slowcnt_cy(12)
    );
  slowcnt_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      IA => slowcnt_12_LOGIC_ZERO_1982,
      IB => slowcnt_12_LOGIC_ZERO_1982,
      SEL => slowcnt_12_CYSELF_1988,
      O => slowcnt_12_CYMUXF2_1983
    );
  slowcnt_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(11),
      O => slowcnt_12_CYINIT_2006
    );
  slowcnt_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_12_F,
      O => slowcnt_12_CYSELF_1988
    );
  slowcnt_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_12_XORG_1990,
      O => slowcnt_12_DYMUX_1992
    );
  slowcnt_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      I0 => Mcount_slowcnt_cy(12),
      I1 => slowcnt_12_G,
      O => slowcnt_12_XORG_1990
    );
  slowcnt_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_12_CYMUXFAST_1987,
      O => Mcount_slowcnt_cy(13)
    );
  slowcnt_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(11),
      O => slowcnt_12_FASTCARRY_1985
    );
  slowcnt_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      I0 => slowcnt_12_CYSELG_1973,
      I1 => slowcnt_12_CYSELF_1988,
      O => slowcnt_12_CYAND_1986
    );
  slowcnt_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      IA => slowcnt_12_CYMUXG2_1984,
      IB => slowcnt_12_FASTCARRY_1985,
      SEL => slowcnt_12_CYAND_1986,
      O => slowcnt_12_CYMUXFAST_1987
    );
  slowcnt_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y33"
    )
    port map (
      IA => slowcnt_12_LOGIC_ZERO_1982,
      IB => slowcnt_12_CYMUXF2_1983,
      SEL => slowcnt_12_CYSELG_1973,
      O => slowcnt_12_CYMUXG2_1984
    );
  slowcnt_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_12_G,
      O => slowcnt_12_CYSELG_1973
    );
  slowcnt_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_12_SRINV_1971
    );
  slowcnt_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_12_CLKINV_1970
    );
  slowcnt_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      O => slowcnt_14_LOGIC_ZERO_2034
    );
  slowcnt_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_14_XORF_2059,
      O => slowcnt_14_DXMUX_2061
    );
  slowcnt_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      I0 => slowcnt_14_CYINIT_2058,
      I1 => slowcnt_14_F,
      O => slowcnt_14_XORF_2059
    );
  slowcnt_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => slowcnt_14_LOGIC_ZERO_2034,
      IB => slowcnt_14_CYINIT_2058,
      SEL => slowcnt_14_CYSELF_2040,
      O => Mcount_slowcnt_cy(14)
    );
  slowcnt_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => slowcnt_14_LOGIC_ZERO_2034,
      IB => slowcnt_14_LOGIC_ZERO_2034,
      SEL => slowcnt_14_CYSELF_2040,
      O => slowcnt_14_CYMUXF2_2035
    );
  slowcnt_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(13),
      O => slowcnt_14_CYINIT_2058
    );
  slowcnt_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_14_F,
      O => slowcnt_14_CYSELF_2040
    );
  slowcnt_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_14_XORG_2042,
      O => slowcnt_14_DYMUX_2044
    );
  slowcnt_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      I0 => Mcount_slowcnt_cy(14),
      I1 => slowcnt_14_G,
      O => slowcnt_14_XORG_2042
    );
  slowcnt_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_14_CYMUXFAST_2039,
      O => Mcount_slowcnt_cy(15)
    );
  slowcnt_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(13),
      O => slowcnt_14_FASTCARRY_2037
    );
  slowcnt_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      I0 => slowcnt_14_CYSELG_2025,
      I1 => slowcnt_14_CYSELF_2040,
      O => slowcnt_14_CYAND_2038
    );
  slowcnt_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => slowcnt_14_CYMUXG2_2036,
      IB => slowcnt_14_FASTCARRY_2037,
      SEL => slowcnt_14_CYAND_2038,
      O => slowcnt_14_CYMUXFAST_2039
    );
  slowcnt_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y34"
    )
    port map (
      IA => slowcnt_14_LOGIC_ZERO_2034,
      IB => slowcnt_14_CYMUXF2_2035,
      SEL => slowcnt_14_CYSELG_2025,
      O => slowcnt_14_CYMUXG2_2036
    );
  slowcnt_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_14_G,
      O => slowcnt_14_CYSELG_2025
    );
  slowcnt_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_14_SRINV_2023
    );
  slowcnt_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_14_CLKINV_2022
    );
  slowcnt_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      O => slowcnt_16_LOGIC_ZERO_2086
    );
  slowcnt_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_16_XORF_2111,
      O => slowcnt_16_DXMUX_2113
    );
  slowcnt_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      I0 => slowcnt_16_CYINIT_2110,
      I1 => slowcnt_16_F,
      O => slowcnt_16_XORF_2111
    );
  slowcnt_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => slowcnt_16_LOGIC_ZERO_2086,
      IB => slowcnt_16_CYINIT_2110,
      SEL => slowcnt_16_CYSELF_2092,
      O => Mcount_slowcnt_cy(16)
    );
  slowcnt_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => slowcnt_16_LOGIC_ZERO_2086,
      IB => slowcnt_16_LOGIC_ZERO_2086,
      SEL => slowcnt_16_CYSELF_2092,
      O => slowcnt_16_CYMUXF2_2087
    );
  slowcnt_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(15),
      O => slowcnt_16_CYINIT_2110
    );
  slowcnt_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_16_F,
      O => slowcnt_16_CYSELF_2092
    );
  slowcnt_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_16_XORG_2094,
      O => slowcnt_16_DYMUX_2096
    );
  slowcnt_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      I0 => Mcount_slowcnt_cy(16),
      I1 => slowcnt_16_G,
      O => slowcnt_16_XORG_2094
    );
  slowcnt_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_16_CYMUXFAST_2091,
      O => Mcount_slowcnt_cy(17)
    );
  slowcnt_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(15),
      O => slowcnt_16_FASTCARRY_2089
    );
  slowcnt_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      I0 => slowcnt_16_CYSELG_2077,
      I1 => slowcnt_16_CYSELF_2092,
      O => slowcnt_16_CYAND_2090
    );
  slowcnt_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => slowcnt_16_CYMUXG2_2088,
      IB => slowcnt_16_FASTCARRY_2089,
      SEL => slowcnt_16_CYAND_2090,
      O => slowcnt_16_CYMUXFAST_2091
    );
  slowcnt_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y35"
    )
    port map (
      IA => slowcnt_16_LOGIC_ZERO_2086,
      IB => slowcnt_16_CYMUXF2_2087,
      SEL => slowcnt_16_CYSELG_2077,
      O => slowcnt_16_CYMUXG2_2088
    );
  slowcnt_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_16_G,
      O => slowcnt_16_CYSELG_2077
    );
  slowcnt_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_16_SRINV_2075
    );
  slowcnt_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_16_CLKINV_2074
    );
  slowcnt_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      O => slowcnt_18_LOGIC_ZERO_2138
    );
  slowcnt_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_18_XORF_2163,
      O => slowcnt_18_DXMUX_2165
    );
  slowcnt_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      I0 => slowcnt_18_CYINIT_2162,
      I1 => slowcnt_18_F,
      O => slowcnt_18_XORF_2163
    );
  slowcnt_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => slowcnt_18_LOGIC_ZERO_2138,
      IB => slowcnt_18_CYINIT_2162,
      SEL => slowcnt_18_CYSELF_2144,
      O => Mcount_slowcnt_cy(18)
    );
  slowcnt_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => slowcnt_18_LOGIC_ZERO_2138,
      IB => slowcnt_18_LOGIC_ZERO_2138,
      SEL => slowcnt_18_CYSELF_2144,
      O => slowcnt_18_CYMUXF2_2139
    );
  slowcnt_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(17),
      O => slowcnt_18_CYINIT_2162
    );
  slowcnt_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_18_F,
      O => slowcnt_18_CYSELF_2144
    );
  slowcnt_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_18_XORG_2146,
      O => slowcnt_18_DYMUX_2148
    );
  slowcnt_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      I0 => Mcount_slowcnt_cy(18),
      I1 => slowcnt_18_G,
      O => slowcnt_18_XORG_2146
    );
  slowcnt_18_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_18_CYMUXFAST_2143,
      O => Mcount_slowcnt_cy(19)
    );
  slowcnt_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(17),
      O => slowcnt_18_FASTCARRY_2141
    );
  slowcnt_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      I0 => slowcnt_18_CYSELG_2129,
      I1 => slowcnt_18_CYSELF_2144,
      O => slowcnt_18_CYAND_2142
    );
  slowcnt_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => slowcnt_18_CYMUXG2_2140,
      IB => slowcnt_18_FASTCARRY_2141,
      SEL => slowcnt_18_CYAND_2142,
      O => slowcnt_18_CYMUXFAST_2143
    );
  slowcnt_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y36"
    )
    port map (
      IA => slowcnt_18_LOGIC_ZERO_2138,
      IB => slowcnt_18_CYMUXF2_2139,
      SEL => slowcnt_18_CYSELG_2129,
      O => slowcnt_18_CYMUXG2_2140
    );
  slowcnt_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_18_G,
      O => slowcnt_18_CYSELG_2129
    );
  slowcnt_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_18_SRINV_2127
    );
  slowcnt_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_18_CLKINV_2126
    );
  slowcnt_20_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      O => slowcnt_20_LOGIC_ZERO_2190
    );
  slowcnt_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_20_XORF_2215,
      O => slowcnt_20_DXMUX_2217
    );
  slowcnt_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      I0 => slowcnt_20_CYINIT_2214,
      I1 => slowcnt_20_F,
      O => slowcnt_20_XORF_2215
    );
  slowcnt_20_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => slowcnt_20_LOGIC_ZERO_2190,
      IB => slowcnt_20_CYINIT_2214,
      SEL => slowcnt_20_CYSELF_2196,
      O => Mcount_slowcnt_cy(20)
    );
  slowcnt_20_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => slowcnt_20_LOGIC_ZERO_2190,
      IB => slowcnt_20_LOGIC_ZERO_2190,
      SEL => slowcnt_20_CYSELF_2196,
      O => slowcnt_20_CYMUXF2_2191
    );
  slowcnt_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(19),
      O => slowcnt_20_CYINIT_2214
    );
  slowcnt_20_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_20_F,
      O => slowcnt_20_CYSELF_2196
    );
  slowcnt_20_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_20_XORG_2198,
      O => slowcnt_20_DYMUX_2200
    );
  slowcnt_20_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      I0 => Mcount_slowcnt_cy(20),
      I1 => slowcnt_20_G,
      O => slowcnt_20_XORG_2198
    );
  slowcnt_20_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_20_CYMUXFAST_2195,
      O => Mcount_slowcnt_cy(21)
    );
  slowcnt_20_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(19),
      O => slowcnt_20_FASTCARRY_2193
    );
  slowcnt_20_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      I0 => slowcnt_20_CYSELG_2181,
      I1 => slowcnt_20_CYSELF_2196,
      O => slowcnt_20_CYAND_2194
    );
  slowcnt_20_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => slowcnt_20_CYMUXG2_2192,
      IB => slowcnt_20_FASTCARRY_2193,
      SEL => slowcnt_20_CYAND_2194,
      O => slowcnt_20_CYMUXFAST_2195
    );
  slowcnt_20_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y37"
    )
    port map (
      IA => slowcnt_20_LOGIC_ZERO_2190,
      IB => slowcnt_20_CYMUXF2_2191,
      SEL => slowcnt_20_CYSELG_2181,
      O => slowcnt_20_CYMUXG2_2192
    );
  slowcnt_20_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_20_G,
      O => slowcnt_20_CYSELG_2181
    );
  slowcnt_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_20_SRINV_2179
    );
  slowcnt_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_20_CLKINV_2178
    );
  slowcnt_22_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      O => slowcnt_22_LOGIC_ZERO_2242
    );
  slowcnt_22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_22_XORF_2267,
      O => slowcnt_22_DXMUX_2269
    );
  slowcnt_22_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      I0 => slowcnt_22_CYINIT_2266,
      I1 => slowcnt_22_F,
      O => slowcnt_22_XORF_2267
    );
  slowcnt_22_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => slowcnt_22_LOGIC_ZERO_2242,
      IB => slowcnt_22_CYINIT_2266,
      SEL => slowcnt_22_CYSELF_2248,
      O => Mcount_slowcnt_cy(22)
    );
  slowcnt_22_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => slowcnt_22_LOGIC_ZERO_2242,
      IB => slowcnt_22_LOGIC_ZERO_2242,
      SEL => slowcnt_22_CYSELF_2248,
      O => slowcnt_22_CYMUXF2_2243
    );
  slowcnt_22_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(21),
      O => slowcnt_22_CYINIT_2266
    );
  slowcnt_22_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_22_F,
      O => slowcnt_22_CYSELF_2248
    );
  slowcnt_22_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_22_XORG_2250,
      O => slowcnt_22_DYMUX_2252
    );
  slowcnt_22_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      I0 => Mcount_slowcnt_cy(22),
      I1 => slowcnt_22_G,
      O => slowcnt_22_XORG_2250
    );
  slowcnt_22_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_22_CYMUXFAST_2247,
      O => Mcount_slowcnt_cy(23)
    );
  slowcnt_22_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(21),
      O => slowcnt_22_FASTCARRY_2245
    );
  slowcnt_22_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      I0 => slowcnt_22_CYSELG_2233,
      I1 => slowcnt_22_CYSELF_2248,
      O => slowcnt_22_CYAND_2246
    );
  slowcnt_22_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => slowcnt_22_CYMUXG2_2244,
      IB => slowcnt_22_FASTCARRY_2245,
      SEL => slowcnt_22_CYAND_2246,
      O => slowcnt_22_CYMUXFAST_2247
    );
  slowcnt_22_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y38"
    )
    port map (
      IA => slowcnt_22_LOGIC_ZERO_2242,
      IB => slowcnt_22_CYMUXF2_2243,
      SEL => slowcnt_22_CYSELG_2233,
      O => slowcnt_22_CYMUXG2_2244
    );
  slowcnt_22_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_22_G,
      O => slowcnt_22_CYSELG_2233
    );
  slowcnt_22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_22_SRINV_2231
    );
  slowcnt_22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_22_CLKINV_2230
    );
  slowcnt_24_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      O => slowcnt_24_LOGIC_ZERO_2294
    );
  slowcnt_24_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_24_XORF_2319,
      O => slowcnt_24_DXMUX_2321
    );
  slowcnt_24_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      I0 => slowcnt_24_CYINIT_2318,
      I1 => slowcnt_24_F,
      O => slowcnt_24_XORF_2319
    );
  slowcnt_24_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      IA => slowcnt_24_LOGIC_ZERO_2294,
      IB => slowcnt_24_CYINIT_2318,
      SEL => slowcnt_24_CYSELF_2300,
      O => Mcount_slowcnt_cy(24)
    );
  slowcnt_24_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      IA => slowcnt_24_LOGIC_ZERO_2294,
      IB => slowcnt_24_LOGIC_ZERO_2294,
      SEL => slowcnt_24_CYSELF_2300,
      O => slowcnt_24_CYMUXF2_2295
    );
  slowcnt_24_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(23),
      O => slowcnt_24_CYINIT_2318
    );
  slowcnt_24_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_24_F,
      O => slowcnt_24_CYSELF_2300
    );
  slowcnt_24_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_24_XORG_2302,
      O => slowcnt_24_DYMUX_2304
    );
  slowcnt_24_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      I0 => Mcount_slowcnt_cy(24),
      I1 => slowcnt_24_G,
      O => slowcnt_24_XORG_2302
    );
  slowcnt_24_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_24_CYMUXFAST_2299,
      O => Mcount_slowcnt_cy(25)
    );
  slowcnt_24_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(23),
      O => slowcnt_24_FASTCARRY_2297
    );
  slowcnt_24_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      I0 => slowcnt_24_CYSELG_2285,
      I1 => slowcnt_24_CYSELF_2300,
      O => slowcnt_24_CYAND_2298
    );
  slowcnt_24_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      IA => slowcnt_24_CYMUXG2_2296,
      IB => slowcnt_24_FASTCARRY_2297,
      SEL => slowcnt_24_CYAND_2298,
      O => slowcnt_24_CYMUXFAST_2299
    );
  slowcnt_24_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y39"
    )
    port map (
      IA => slowcnt_24_LOGIC_ZERO_2294,
      IB => slowcnt_24_CYMUXF2_2295,
      SEL => slowcnt_24_CYSELG_2285,
      O => slowcnt_24_CYMUXG2_2296
    );
  slowcnt_24_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_24_G,
      O => slowcnt_24_CYSELG_2285
    );
  slowcnt_24_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_24_SRINV_2283
    );
  slowcnt_24_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_24_CLKINV_2282
    );
  slowcnt_26_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      O => slowcnt_26_LOGIC_ZERO_2346
    );
  slowcnt_26_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_26_XORF_2371,
      O => slowcnt_26_DXMUX_2373
    );
  slowcnt_26_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      I0 => slowcnt_26_CYINIT_2370,
      I1 => slowcnt_26_F,
      O => slowcnt_26_XORF_2371
    );
  slowcnt_26_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      IA => slowcnt_26_LOGIC_ZERO_2346,
      IB => slowcnt_26_CYINIT_2370,
      SEL => slowcnt_26_CYSELF_2352,
      O => Mcount_slowcnt_cy(26)
    );
  slowcnt_26_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      IA => slowcnt_26_LOGIC_ZERO_2346,
      IB => slowcnt_26_LOGIC_ZERO_2346,
      SEL => slowcnt_26_CYSELF_2352,
      O => slowcnt_26_CYMUXF2_2347
    );
  slowcnt_26_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(25),
      O => slowcnt_26_CYINIT_2370
    );
  slowcnt_26_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_26_F,
      O => slowcnt_26_CYSELF_2352
    );
  slowcnt_26_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_26_XORG_2354,
      O => slowcnt_26_DYMUX_2356
    );
  slowcnt_26_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      I0 => Mcount_slowcnt_cy(26),
      I1 => slowcnt_26_G,
      O => slowcnt_26_XORG_2354
    );
  slowcnt_26_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_26_CYMUXFAST_2351,
      O => Mcount_slowcnt_cy(27)
    );
  slowcnt_26_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(25),
      O => slowcnt_26_FASTCARRY_2349
    );
  slowcnt_26_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      I0 => slowcnt_26_CYSELG_2337,
      I1 => slowcnt_26_CYSELF_2352,
      O => slowcnt_26_CYAND_2350
    );
  slowcnt_26_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      IA => slowcnt_26_CYMUXG2_2348,
      IB => slowcnt_26_FASTCARRY_2349,
      SEL => slowcnt_26_CYAND_2350,
      O => slowcnt_26_CYMUXFAST_2351
    );
  slowcnt_26_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y40"
    )
    port map (
      IA => slowcnt_26_LOGIC_ZERO_2346,
      IB => slowcnt_26_CYMUXF2_2347,
      SEL => slowcnt_26_CYSELG_2337,
      O => slowcnt_26_CYMUXG2_2348
    );
  slowcnt_26_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_26_G,
      O => slowcnt_26_CYSELG_2337
    );
  slowcnt_26_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_26_SRINV_2335
    );
  slowcnt_26_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_26_CLKINV_2334
    );
  slowcnt_28_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      O => slowcnt_28_LOGIC_ZERO_2398
    );
  slowcnt_28_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_28_XORF_2423,
      O => slowcnt_28_DXMUX_2425
    );
  slowcnt_28_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      I0 => slowcnt_28_CYINIT_2422,
      I1 => slowcnt_28_F,
      O => slowcnt_28_XORF_2423
    );
  slowcnt_28_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      IA => slowcnt_28_LOGIC_ZERO_2398,
      IB => slowcnt_28_CYINIT_2422,
      SEL => slowcnt_28_CYSELF_2404,
      O => Mcount_slowcnt_cy(28)
    );
  slowcnt_28_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      IA => slowcnt_28_LOGIC_ZERO_2398,
      IB => slowcnt_28_LOGIC_ZERO_2398,
      SEL => slowcnt_28_CYSELF_2404,
      O => slowcnt_28_CYMUXF2_2399
    );
  slowcnt_28_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(27),
      O => slowcnt_28_CYINIT_2422
    );
  slowcnt_28_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_28_F,
      O => slowcnt_28_CYSELF_2404
    );
  slowcnt_28_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_28_XORG_2406,
      O => slowcnt_28_DYMUX_2408
    );
  slowcnt_28_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      I0 => Mcount_slowcnt_cy(28),
      I1 => slowcnt_28_G,
      O => slowcnt_28_XORG_2406
    );
  slowcnt_28_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_slowcnt_cy(27),
      O => slowcnt_28_FASTCARRY_2401
    );
  slowcnt_28_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      I0 => slowcnt_28_CYSELG_2389,
      I1 => slowcnt_28_CYSELF_2404,
      O => slowcnt_28_CYAND_2402
    );
  slowcnt_28_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      IA => slowcnt_28_CYMUXG2_2400,
      IB => slowcnt_28_FASTCARRY_2401,
      SEL => slowcnt_28_CYAND_2402,
      O => slowcnt_28_CYMUXFAST_2403
    );
  slowcnt_28_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X3Y41"
    )
    port map (
      IA => slowcnt_28_LOGIC_ZERO_2398,
      IB => slowcnt_28_CYMUXF2_2399,
      SEL => slowcnt_28_CYSELG_2389,
      O => slowcnt_28_CYMUXG2_2400
    );
  slowcnt_28_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_28_G,
      O => slowcnt_28_CYSELG_2389
    );
  slowcnt_28_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_28_SRINV_2387
    );
  slowcnt_28_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_28_CLKINV_2386
    );
  slowcnt_30_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_30_XORF_2447,
      O => slowcnt_30_DXMUX_2449
    );
  slowcnt_30_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X3Y42"
    )
    port map (
      I0 => slowcnt_30_CYINIT_2446,
      I1 => slowcnt_30_rt_2444,
      O => slowcnt_30_XORF_2447
    );
  slowcnt_30_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X3Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowcnt_28_CYMUXFAST_2403,
      O => slowcnt_30_CYINIT_2446
    );
  slowcnt_30_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowcnt_30_SRINV_2436
    );
  slowcnt_30_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowcnt_30_CLKINV_2435
    );
  slowcnt_30_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y42"
    )
    port map (
      ADR0 => slowcnt(30),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_30_rt_2444
    );
  slowclk_and0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      O => slowclk_and0000_wg_cy_1_LOGIC_ZERO_2470
    );
  slowclk_and0000_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      IA => slowclk_and0000_wg_cy_1_LOGIC_ZERO_2470,
      IB => slowclk_and0000_wg_cy_1_CYINIT_2482,
      SEL => slowclk_and0000_wg_cy_1_CYSELF_2475,
      O => slowclk_and0000_wg_cy(0)
    );
  slowclk_and0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_cy_1_BXINV_2473,
      O => slowclk_and0000_wg_cy_1_CYINIT_2482
    );
  slowclk_and0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(0),
      O => slowclk_and0000_wg_cy_1_CYSELF_2475
    );
  slowclk_and0000_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => slowclk_and0000_wg_cy_1_BXINV_2473
    );
  slowclk_and0000_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X1Y33"
    )
    port map (
      IA => slowclk_and0000_wg_cy_1_LOGIC_ZERO_2470,
      IB => slowclk_and0000_wg_cy(0),
      SEL => slowclk_and0000_wg_cy_1_CYSELG_2464,
      O => slowclk_and0000_wg_cy_1_CYMUXG_2472
    );
  slowclk_and0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(1),
      O => slowclk_and0000_wg_cy_1_CYSELG_2464
    );
  slowclk_and0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y33"
    )
    port map (
      ADR0 => slowcnt(6),
      ADR1 => slowcnt(12),
      ADR2 => slowcnt(11),
      ADR3 => slowcnt(10),
      O => slowclk_and0000_wg_lut(1)
    );
  slowclk_and0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      O => slowclk_and0000_wg_cy_3_LOGIC_ZERO_2500
    );
  slowclk_and0000_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      IA => slowclk_and0000_wg_cy_3_LOGIC_ZERO_2500,
      IB => slowclk_and0000_wg_cy_3_LOGIC_ZERO_2500,
      SEL => slowclk_and0000_wg_cy_3_CYSELF_2506,
      O => slowclk_and0000_wg_cy_3_CYMUXF2_2501
    );
  slowclk_and0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(2),
      O => slowclk_and0000_wg_cy_3_CYSELF_2506
    );
  slowclk_and0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_cy_1_CYMUXG_2472,
      O => slowclk_and0000_wg_cy_3_FASTCARRY_2503
    );
  slowclk_and0000_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      I0 => slowclk_and0000_wg_cy_3_CYSELG_2494,
      I1 => slowclk_and0000_wg_cy_3_CYSELF_2506,
      O => slowclk_and0000_wg_cy_3_CYAND_2504
    );
  slowclk_and0000_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      IA => slowclk_and0000_wg_cy_3_CYMUXG2_2502,
      IB => slowclk_and0000_wg_cy_3_FASTCARRY_2503,
      SEL => slowclk_and0000_wg_cy_3_CYAND_2504,
      O => slowclk_and0000_wg_cy_3_CYMUXFAST_2505
    );
  slowclk_and0000_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y34"
    )
    port map (
      IA => slowclk_and0000_wg_cy_3_LOGIC_ZERO_2500,
      IB => slowclk_and0000_wg_cy_3_CYMUXF2_2501,
      SEL => slowclk_and0000_wg_cy_3_CYSELG_2494,
      O => slowclk_and0000_wg_cy_3_CYMUXG2_2502
    );
  slowclk_and0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(3),
      O => slowclk_and0000_wg_cy_3_CYSELG_2494
    );
  slowclk_and0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y34"
    )
    port map (
      ADR0 => slowcnt(4),
      ADR1 => slowcnt(17),
      ADR2 => slowcnt(18),
      ADR3 => slowcnt(16),
      O => slowclk_and0000_wg_lut(3)
    );
  slowclk_and0000_wg_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      O => slowclk_and0000_wg_cy_5_LOGIC_ZERO_2530
    );
  slowclk_and0000_wg_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => slowclk_and0000_wg_cy_5_LOGIC_ZERO_2530,
      IB => slowclk_and0000_wg_cy_5_LOGIC_ZERO_2530,
      SEL => slowclk_and0000_wg_cy_5_CYSELF_2536,
      O => slowclk_and0000_wg_cy_5_CYMUXF2_2531
    );
  slowclk_and0000_wg_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(4),
      O => slowclk_and0000_wg_cy_5_CYSELF_2536
    );
  slowclk_and0000_wg_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_cy_3_CYMUXFAST_2505,
      O => slowclk_and0000_wg_cy_5_FASTCARRY_2533
    );
  slowclk_and0000_wg_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      I0 => slowclk_and0000_wg_cy_5_CYSELG_2524,
      I1 => slowclk_and0000_wg_cy_5_CYSELF_2536,
      O => slowclk_and0000_wg_cy_5_CYAND_2534
    );
  slowclk_and0000_wg_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => slowclk_and0000_wg_cy_5_CYMUXG2_2532,
      IB => slowclk_and0000_wg_cy_5_FASTCARRY_2533,
      SEL => slowclk_and0000_wg_cy_5_CYAND_2534,
      O => slowclk_and0000_wg_cy_5_CYMUXFAST_2535
    );
  slowclk_and0000_wg_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y35"
    )
    port map (
      IA => slowclk_and0000_wg_cy_5_LOGIC_ZERO_2530,
      IB => slowclk_and0000_wg_cy_5_CYMUXF2_2531,
      SEL => slowclk_and0000_wg_cy_5_CYSELG_2524,
      O => slowclk_and0000_wg_cy_5_CYMUXG2_2532
    );
  slowclk_and0000_wg_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(5),
      O => slowclk_and0000_wg_cy_5_CYSELG_2524
    );
  slowclk_and0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => slowcnt(22),
      ADR1 => slowcnt(2),
      ADR2 => slowcnt(23),
      ADR3 => slowcnt(24),
      O => slowclk_and0000_wg_lut(5)
    );
  slowclk_and0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      O => slowclk_and0000_LOGIC_ZERO_2560
    );
  slowclk_and0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => slowclk_and0000_LOGIC_ZERO_2560,
      IB => slowclk_and0000_LOGIC_ZERO_2560,
      SEL => slowclk_and0000_CYSELF_2566,
      O => slowclk_and0000_CYMUXF2_2561
    );
  slowclk_and0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(6),
      O => slowclk_and0000_CYSELF_2566
    );
  slowclk_and0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_CYMUXFAST_2565,
      O => slowclk_and0000
    );
  slowclk_and0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_cy_5_CYMUXFAST_2535,
      O => slowclk_and0000_FASTCARRY_2563
    );
  slowclk_and0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      I0 => slowclk_and0000_CYSELG_2554,
      I1 => slowclk_and0000_CYSELF_2566,
      O => slowclk_and0000_CYAND_2564
    );
  slowclk_and0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => slowclk_and0000_CYMUXG2_2562,
      IB => slowclk_and0000_FASTCARRY_2563,
      SEL => slowclk_and0000_CYAND_2564,
      O => slowclk_and0000_CYMUXFAST_2565
    );
  slowclk_and0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y36"
    )
    port map (
      IA => slowclk_and0000_LOGIC_ZERO_2560,
      IB => slowclk_and0000_CYMUXF2_2561,
      SEL => slowclk_and0000_CYSELG_2554,
      O => slowclk_and0000_CYMUXG2_2562
    );
  slowclk_and0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000_wg_lut(7),
      O => slowclk_and0000_CYSELG_2554
    );
  slowclk_and0000_wg_lut_7_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => slowcnt(29),
      ADR1 => slowcnt(30),
      ADR2 => slowcnt(28),
      ADR3 => slowcnt(0),
      O => slowclk_and0000_wg_lut(7)
    );
  waitcnt_addsub0000_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      O => waitcnt_addsub0000_0_LOGIC_ONE_2589
    );
  waitcnt_addsub0000_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      O => waitcnt_addsub0000_0_LOGIC_ZERO_2606
    );
  waitcnt_addsub0000_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_0_XORF_2607,
      O => waitcnt_addsub0000(0)
    );
  waitcnt_addsub0000_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      I0 => waitcnt_addsub0000_0_CYINIT_2605,
      I1 => waitcnt_addsub0000_0_F,
      O => waitcnt_addsub0000_0_XORF_2607
    );
  waitcnt_addsub0000_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      IA => waitcnt_addsub0000_0_LOGIC_ZERO_2606,
      IB => waitcnt_addsub0000_0_CYINIT_2605,
      SEL => waitcnt_addsub0000_0_CYSELF_2596,
      O => Msub_waitcnt_addsub0000_cy_0_Q
    );
  waitcnt_addsub0000_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_0_BXINV_2594,
      O => waitcnt_addsub0000_0_CYINIT_2605
    );
  waitcnt_addsub0000_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_0_F,
      O => waitcnt_addsub0000_0_CYSELF_2596
    );
  waitcnt_addsub0000_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => waitcnt_addsub0000_0_BXINV_2594
    );
  waitcnt_addsub0000_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_0_XORG_2592,
      O => waitcnt_addsub0000(1)
    );
  waitcnt_addsub0000_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_0_Q,
      I1 => Msub_waitcnt_addsub0000_lut(1),
      O => waitcnt_addsub0000_0_XORG_2592
    );
  waitcnt_addsub0000_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_0_CYMUXG_2591,
      O => Msub_waitcnt_addsub0000_cy_1_Q
    );
  waitcnt_addsub0000_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      IA => waitcnt_addsub0000_0_LOGIC_ONE_2589,
      IB => Msub_waitcnt_addsub0000_cy_0_Q,
      SEL => waitcnt_addsub0000_0_CYSELG_2580,
      O => waitcnt_addsub0000_0_CYMUXG_2591
    );
  waitcnt_addsub0000_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(1),
      O => waitcnt_addsub0000_0_CYSELG_2580
    );
  Msub_waitcnt_addsub0000_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(1),
      O => Msub_waitcnt_addsub0000_lut(1)
    );
  waitcnt_addsub0000_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      O => waitcnt_addsub0000_2_LOGIC_ONE_2625
    );
  waitcnt_addsub0000_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_2_XORF_2645,
      O => waitcnt_addsub0000(2)
    );
  waitcnt_addsub0000_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      I0 => waitcnt_addsub0000_2_CYINIT_2644,
      I1 => Msub_waitcnt_addsub0000_lut(2),
      O => waitcnt_addsub0000_2_XORF_2645
    );
  waitcnt_addsub0000_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      IA => waitcnt_addsub0000_2_LOGIC_ONE_2625,
      IB => waitcnt_addsub0000_2_CYINIT_2644,
      SEL => waitcnt_addsub0000_2_CYSELF_2631,
      O => Msub_waitcnt_addsub0000_cy_2_Q
    );
  waitcnt_addsub0000_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      IA => waitcnt_addsub0000_2_LOGIC_ONE_2625,
      IB => waitcnt_addsub0000_2_LOGIC_ONE_2625,
      SEL => waitcnt_addsub0000_2_CYSELF_2631,
      O => waitcnt_addsub0000_2_CYMUXF2_2626
    );
  waitcnt_addsub0000_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_1_Q,
      O => waitcnt_addsub0000_2_CYINIT_2644
    );
  waitcnt_addsub0000_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(2),
      O => waitcnt_addsub0000_2_CYSELF_2631
    );
  waitcnt_addsub0000_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_2_XORG_2633,
      O => waitcnt_addsub0000(3)
    );
  waitcnt_addsub0000_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_2_Q,
      I1 => Msub_waitcnt_addsub0000_lut(3),
      O => waitcnt_addsub0000_2_XORG_2633
    );
  waitcnt_addsub0000_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_2_CYMUXFAST_2630,
      O => Msub_waitcnt_addsub0000_cy_3_Q
    );
  waitcnt_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_1_Q,
      O => waitcnt_addsub0000_2_FASTCARRY_2628
    );
  waitcnt_addsub0000_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      I0 => waitcnt_addsub0000_2_CYSELG_2616,
      I1 => waitcnt_addsub0000_2_CYSELF_2631,
      O => waitcnt_addsub0000_2_CYAND_2629
    );
  waitcnt_addsub0000_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      IA => waitcnt_addsub0000_2_CYMUXG2_2627,
      IB => waitcnt_addsub0000_2_FASTCARRY_2628,
      SEL => waitcnt_addsub0000_2_CYAND_2629,
      O => waitcnt_addsub0000_2_CYMUXFAST_2630
    );
  waitcnt_addsub0000_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y26"
    )
    port map (
      IA => waitcnt_addsub0000_2_LOGIC_ONE_2625,
      IB => waitcnt_addsub0000_2_CYMUXF2_2626,
      SEL => waitcnt_addsub0000_2_CYSELG_2616,
      O => waitcnt_addsub0000_2_CYMUXG2_2627
    );
  waitcnt_addsub0000_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(3),
      O => waitcnt_addsub0000_2_CYSELG_2616
    );
  Msub_waitcnt_addsub0000_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => waitcnt(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(3)
    );
  waitcnt_addsub0000_4_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      O => waitcnt_addsub0000_4_LOGIC_ONE_2663
    );
  waitcnt_addsub0000_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_4_XORF_2683,
      O => waitcnt_addsub0000(4)
    );
  waitcnt_addsub0000_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      I0 => waitcnt_addsub0000_4_CYINIT_2682,
      I1 => Msub_waitcnt_addsub0000_lut(4),
      O => waitcnt_addsub0000_4_XORF_2683
    );
  waitcnt_addsub0000_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      IA => waitcnt_addsub0000_4_LOGIC_ONE_2663,
      IB => waitcnt_addsub0000_4_CYINIT_2682,
      SEL => waitcnt_addsub0000_4_CYSELF_2669,
      O => Msub_waitcnt_addsub0000_cy_4_Q
    );
  waitcnt_addsub0000_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      IA => waitcnt_addsub0000_4_LOGIC_ONE_2663,
      IB => waitcnt_addsub0000_4_LOGIC_ONE_2663,
      SEL => waitcnt_addsub0000_4_CYSELF_2669,
      O => waitcnt_addsub0000_4_CYMUXF2_2664
    );
  waitcnt_addsub0000_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_3_Q,
      O => waitcnt_addsub0000_4_CYINIT_2682
    );
  waitcnt_addsub0000_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(4),
      O => waitcnt_addsub0000_4_CYSELF_2669
    );
  waitcnt_addsub0000_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_4_XORG_2671,
      O => waitcnt_addsub0000(5)
    );
  waitcnt_addsub0000_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_4_Q,
      I1 => Msub_waitcnt_addsub0000_lut(5),
      O => waitcnt_addsub0000_4_XORG_2671
    );
  waitcnt_addsub0000_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_4_CYMUXFAST_2668,
      O => Msub_waitcnt_addsub0000_cy_5_Q
    );
  waitcnt_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_3_Q,
      O => waitcnt_addsub0000_4_FASTCARRY_2666
    );
  waitcnt_addsub0000_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      I0 => waitcnt_addsub0000_4_CYSELG_2654,
      I1 => waitcnt_addsub0000_4_CYSELF_2669,
      O => waitcnt_addsub0000_4_CYAND_2667
    );
  waitcnt_addsub0000_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      IA => waitcnt_addsub0000_4_CYMUXG2_2665,
      IB => waitcnt_addsub0000_4_FASTCARRY_2666,
      SEL => waitcnt_addsub0000_4_CYAND_2667,
      O => waitcnt_addsub0000_4_CYMUXFAST_2668
    );
  waitcnt_addsub0000_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y27"
    )
    port map (
      IA => waitcnt_addsub0000_4_LOGIC_ONE_2663,
      IB => waitcnt_addsub0000_4_CYMUXF2_2664,
      SEL => waitcnt_addsub0000_4_CYSELG_2654,
      O => waitcnt_addsub0000_4_CYMUXG2_2665
    );
  waitcnt_addsub0000_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(5),
      O => waitcnt_addsub0000_4_CYSELG_2654
    );
  Msub_waitcnt_addsub0000_lut_5_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y27"
    )
    port map (
      ADR0 => waitcnt(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(5)
    );
  waitcnt_addsub0000_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      O => waitcnt_addsub0000_6_LOGIC_ONE_2701
    );
  waitcnt_addsub0000_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_6_XORF_2721,
      O => waitcnt_addsub0000(6)
    );
  waitcnt_addsub0000_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      I0 => waitcnt_addsub0000_6_CYINIT_2720,
      I1 => Msub_waitcnt_addsub0000_lut(6),
      O => waitcnt_addsub0000_6_XORF_2721
    );
  waitcnt_addsub0000_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      IA => waitcnt_addsub0000_6_LOGIC_ONE_2701,
      IB => waitcnt_addsub0000_6_CYINIT_2720,
      SEL => waitcnt_addsub0000_6_CYSELF_2707,
      O => Msub_waitcnt_addsub0000_cy_6_Q
    );
  waitcnt_addsub0000_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      IA => waitcnt_addsub0000_6_LOGIC_ONE_2701,
      IB => waitcnt_addsub0000_6_LOGIC_ONE_2701,
      SEL => waitcnt_addsub0000_6_CYSELF_2707,
      O => waitcnt_addsub0000_6_CYMUXF2_2702
    );
  waitcnt_addsub0000_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_5_Q,
      O => waitcnt_addsub0000_6_CYINIT_2720
    );
  waitcnt_addsub0000_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(6),
      O => waitcnt_addsub0000_6_CYSELF_2707
    );
  waitcnt_addsub0000_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_6_XORG_2709,
      O => waitcnt_addsub0000(7)
    );
  waitcnt_addsub0000_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_6_Q,
      I1 => Msub_waitcnt_addsub0000_lut(7),
      O => waitcnt_addsub0000_6_XORG_2709
    );
  waitcnt_addsub0000_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_6_CYMUXFAST_2706,
      O => Msub_waitcnt_addsub0000_cy_7_Q
    );
  waitcnt_addsub0000_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_5_Q,
      O => waitcnt_addsub0000_6_FASTCARRY_2704
    );
  waitcnt_addsub0000_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      I0 => waitcnt_addsub0000_6_CYSELG_2692,
      I1 => waitcnt_addsub0000_6_CYSELF_2707,
      O => waitcnt_addsub0000_6_CYAND_2705
    );
  waitcnt_addsub0000_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      IA => waitcnt_addsub0000_6_CYMUXG2_2703,
      IB => waitcnt_addsub0000_6_FASTCARRY_2704,
      SEL => waitcnt_addsub0000_6_CYAND_2705,
      O => waitcnt_addsub0000_6_CYMUXFAST_2706
    );
  waitcnt_addsub0000_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y28"
    )
    port map (
      IA => waitcnt_addsub0000_6_LOGIC_ONE_2701,
      IB => waitcnt_addsub0000_6_CYMUXF2_2702,
      SEL => waitcnt_addsub0000_6_CYSELG_2692,
      O => waitcnt_addsub0000_6_CYMUXG2_2703
    );
  waitcnt_addsub0000_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(7),
      O => waitcnt_addsub0000_6_CYSELG_2692
    );
  Msub_waitcnt_addsub0000_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => waitcnt(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(7)
    );
  waitcnt_addsub0000_8_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      O => waitcnt_addsub0000_8_LOGIC_ONE_2739
    );
  waitcnt_addsub0000_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_8_XORF_2759,
      O => waitcnt_addsub0000(8)
    );
  waitcnt_addsub0000_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      I0 => waitcnt_addsub0000_8_CYINIT_2758,
      I1 => Msub_waitcnt_addsub0000_lut(8),
      O => waitcnt_addsub0000_8_XORF_2759
    );
  waitcnt_addsub0000_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      IA => waitcnt_addsub0000_8_LOGIC_ONE_2739,
      IB => waitcnt_addsub0000_8_CYINIT_2758,
      SEL => waitcnt_addsub0000_8_CYSELF_2745,
      O => Msub_waitcnt_addsub0000_cy_8_Q
    );
  waitcnt_addsub0000_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      IA => waitcnt_addsub0000_8_LOGIC_ONE_2739,
      IB => waitcnt_addsub0000_8_LOGIC_ONE_2739,
      SEL => waitcnt_addsub0000_8_CYSELF_2745,
      O => waitcnt_addsub0000_8_CYMUXF2_2740
    );
  waitcnt_addsub0000_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_7_Q,
      O => waitcnt_addsub0000_8_CYINIT_2758
    );
  waitcnt_addsub0000_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(8),
      O => waitcnt_addsub0000_8_CYSELF_2745
    );
  waitcnt_addsub0000_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_8_XORG_2747,
      O => waitcnt_addsub0000(9)
    );
  waitcnt_addsub0000_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_8_Q,
      I1 => Msub_waitcnt_addsub0000_lut(9),
      O => waitcnt_addsub0000_8_XORG_2747
    );
  waitcnt_addsub0000_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_8_CYMUXFAST_2744,
      O => Msub_waitcnt_addsub0000_cy_9_Q
    );
  waitcnt_addsub0000_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_7_Q,
      O => waitcnt_addsub0000_8_FASTCARRY_2742
    );
  waitcnt_addsub0000_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      I0 => waitcnt_addsub0000_8_CYSELG_2730,
      I1 => waitcnt_addsub0000_8_CYSELF_2745,
      O => waitcnt_addsub0000_8_CYAND_2743
    );
  waitcnt_addsub0000_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      IA => waitcnt_addsub0000_8_CYMUXG2_2741,
      IB => waitcnt_addsub0000_8_FASTCARRY_2742,
      SEL => waitcnt_addsub0000_8_CYAND_2743,
      O => waitcnt_addsub0000_8_CYMUXFAST_2744
    );
  waitcnt_addsub0000_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      IA => waitcnt_addsub0000_8_LOGIC_ONE_2739,
      IB => waitcnt_addsub0000_8_CYMUXF2_2740,
      SEL => waitcnt_addsub0000_8_CYSELG_2730,
      O => waitcnt_addsub0000_8_CYMUXG2_2741
    );
  waitcnt_addsub0000_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(9),
      O => waitcnt_addsub0000_8_CYSELG_2730
    );
  Msub_waitcnt_addsub0000_lut_9_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(9),
      O => Msub_waitcnt_addsub0000_lut(9)
    );
  waitcnt_addsub0000_10_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      O => waitcnt_addsub0000_10_LOGIC_ONE_2777
    );
  waitcnt_addsub0000_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_10_XORF_2797,
      O => waitcnt_addsub0000(10)
    );
  waitcnt_addsub0000_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      I0 => waitcnt_addsub0000_10_CYINIT_2796,
      I1 => Msub_waitcnt_addsub0000_lut(10),
      O => waitcnt_addsub0000_10_XORF_2797
    );
  waitcnt_addsub0000_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      IA => waitcnt_addsub0000_10_LOGIC_ONE_2777,
      IB => waitcnt_addsub0000_10_CYINIT_2796,
      SEL => waitcnt_addsub0000_10_CYSELF_2783,
      O => Msub_waitcnt_addsub0000_cy_10_Q
    );
  waitcnt_addsub0000_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      IA => waitcnt_addsub0000_10_LOGIC_ONE_2777,
      IB => waitcnt_addsub0000_10_LOGIC_ONE_2777,
      SEL => waitcnt_addsub0000_10_CYSELF_2783,
      O => waitcnt_addsub0000_10_CYMUXF2_2778
    );
  waitcnt_addsub0000_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_9_Q,
      O => waitcnt_addsub0000_10_CYINIT_2796
    );
  waitcnt_addsub0000_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(10),
      O => waitcnt_addsub0000_10_CYSELF_2783
    );
  waitcnt_addsub0000_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_10_XORG_2785,
      O => waitcnt_addsub0000(11)
    );
  waitcnt_addsub0000_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_10_Q,
      I1 => Msub_waitcnt_addsub0000_lut(11),
      O => waitcnt_addsub0000_10_XORG_2785
    );
  waitcnt_addsub0000_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_10_CYMUXFAST_2782,
      O => Msub_waitcnt_addsub0000_cy_11_Q
    );
  waitcnt_addsub0000_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_9_Q,
      O => waitcnt_addsub0000_10_FASTCARRY_2780
    );
  waitcnt_addsub0000_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      I0 => waitcnt_addsub0000_10_CYSELG_2768,
      I1 => waitcnt_addsub0000_10_CYSELF_2783,
      O => waitcnt_addsub0000_10_CYAND_2781
    );
  waitcnt_addsub0000_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      IA => waitcnt_addsub0000_10_CYMUXG2_2779,
      IB => waitcnt_addsub0000_10_FASTCARRY_2780,
      SEL => waitcnt_addsub0000_10_CYAND_2781,
      O => waitcnt_addsub0000_10_CYMUXFAST_2782
    );
  waitcnt_addsub0000_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y30"
    )
    port map (
      IA => waitcnt_addsub0000_10_LOGIC_ONE_2777,
      IB => waitcnt_addsub0000_10_CYMUXF2_2778,
      SEL => waitcnt_addsub0000_10_CYSELG_2768,
      O => waitcnt_addsub0000_10_CYMUXG2_2779
    );
  waitcnt_addsub0000_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(11),
      O => waitcnt_addsub0000_10_CYSELG_2768
    );
  Msub_waitcnt_addsub0000_lut_11_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => waitcnt(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(11)
    );
  waitcnt_addsub0000_12_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      O => waitcnt_addsub0000_12_LOGIC_ONE_2815
    );
  waitcnt_addsub0000_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_12_XORF_2835,
      O => waitcnt_addsub0000(12)
    );
  waitcnt_addsub0000_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      I0 => waitcnt_addsub0000_12_CYINIT_2834,
      I1 => Msub_waitcnt_addsub0000_lut(12),
      O => waitcnt_addsub0000_12_XORF_2835
    );
  waitcnt_addsub0000_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      IA => waitcnt_addsub0000_12_LOGIC_ONE_2815,
      IB => waitcnt_addsub0000_12_CYINIT_2834,
      SEL => waitcnt_addsub0000_12_CYSELF_2821,
      O => Msub_waitcnt_addsub0000_cy_12_Q
    );
  waitcnt_addsub0000_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      IA => waitcnt_addsub0000_12_LOGIC_ONE_2815,
      IB => waitcnt_addsub0000_12_LOGIC_ONE_2815,
      SEL => waitcnt_addsub0000_12_CYSELF_2821,
      O => waitcnt_addsub0000_12_CYMUXF2_2816
    );
  waitcnt_addsub0000_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_11_Q,
      O => waitcnt_addsub0000_12_CYINIT_2834
    );
  waitcnt_addsub0000_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(12),
      O => waitcnt_addsub0000_12_CYSELF_2821
    );
  waitcnt_addsub0000_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_12_XORG_2823,
      O => waitcnt_addsub0000(13)
    );
  waitcnt_addsub0000_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_12_Q,
      I1 => Msub_waitcnt_addsub0000_lut(13),
      O => waitcnt_addsub0000_12_XORG_2823
    );
  waitcnt_addsub0000_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_12_CYMUXFAST_2820,
      O => Msub_waitcnt_addsub0000_cy_13_Q
    );
  waitcnt_addsub0000_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_11_Q,
      O => waitcnt_addsub0000_12_FASTCARRY_2818
    );
  waitcnt_addsub0000_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      I0 => waitcnt_addsub0000_12_CYSELG_2806,
      I1 => waitcnt_addsub0000_12_CYSELF_2821,
      O => waitcnt_addsub0000_12_CYAND_2819
    );
  waitcnt_addsub0000_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      IA => waitcnt_addsub0000_12_CYMUXG2_2817,
      IB => waitcnt_addsub0000_12_FASTCARRY_2818,
      SEL => waitcnt_addsub0000_12_CYAND_2819,
      O => waitcnt_addsub0000_12_CYMUXFAST_2820
    );
  waitcnt_addsub0000_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y31"
    )
    port map (
      IA => waitcnt_addsub0000_12_LOGIC_ONE_2815,
      IB => waitcnt_addsub0000_12_CYMUXF2_2816,
      SEL => waitcnt_addsub0000_12_CYSELG_2806,
      O => waitcnt_addsub0000_12_CYMUXG2_2817
    );
  waitcnt_addsub0000_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(13),
      O => waitcnt_addsub0000_12_CYSELG_2806
    );
  Msub_waitcnt_addsub0000_lut_13_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(13),
      O => Msub_waitcnt_addsub0000_lut(13)
    );
  waitcnt_addsub0000_14_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      O => waitcnt_addsub0000_14_LOGIC_ONE_2853
    );
  waitcnt_addsub0000_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_14_XORF_2873,
      O => waitcnt_addsub0000(14)
    );
  waitcnt_addsub0000_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      I0 => waitcnt_addsub0000_14_CYINIT_2872,
      I1 => Msub_waitcnt_addsub0000_lut(14),
      O => waitcnt_addsub0000_14_XORF_2873
    );
  waitcnt_addsub0000_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => waitcnt_addsub0000_14_LOGIC_ONE_2853,
      IB => waitcnt_addsub0000_14_CYINIT_2872,
      SEL => waitcnt_addsub0000_14_CYSELF_2859,
      O => Msub_waitcnt_addsub0000_cy_14_Q
    );
  waitcnt_addsub0000_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => waitcnt_addsub0000_14_LOGIC_ONE_2853,
      IB => waitcnt_addsub0000_14_LOGIC_ONE_2853,
      SEL => waitcnt_addsub0000_14_CYSELF_2859,
      O => waitcnt_addsub0000_14_CYMUXF2_2854
    );
  waitcnt_addsub0000_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_13_Q,
      O => waitcnt_addsub0000_14_CYINIT_2872
    );
  waitcnt_addsub0000_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(14),
      O => waitcnt_addsub0000_14_CYSELF_2859
    );
  waitcnt_addsub0000_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_14_XORG_2861,
      O => waitcnt_addsub0000(15)
    );
  waitcnt_addsub0000_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_14_Q,
      I1 => Msub_waitcnt_addsub0000_lut(15),
      O => waitcnt_addsub0000_14_XORG_2861
    );
  waitcnt_addsub0000_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_14_CYMUXFAST_2858,
      O => Msub_waitcnt_addsub0000_cy_15_Q
    );
  waitcnt_addsub0000_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_13_Q,
      O => waitcnt_addsub0000_14_FASTCARRY_2856
    );
  waitcnt_addsub0000_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      I0 => waitcnt_addsub0000_14_CYSELG_2844,
      I1 => waitcnt_addsub0000_14_CYSELF_2859,
      O => waitcnt_addsub0000_14_CYAND_2857
    );
  waitcnt_addsub0000_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => waitcnt_addsub0000_14_CYMUXG2_2855,
      IB => waitcnt_addsub0000_14_FASTCARRY_2856,
      SEL => waitcnt_addsub0000_14_CYAND_2857,
      O => waitcnt_addsub0000_14_CYMUXFAST_2858
    );
  waitcnt_addsub0000_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y32"
    )
    port map (
      IA => waitcnt_addsub0000_14_LOGIC_ONE_2853,
      IB => waitcnt_addsub0000_14_CYMUXF2_2854,
      SEL => waitcnt_addsub0000_14_CYSELG_2844,
      O => waitcnt_addsub0000_14_CYMUXG2_2855
    );
  waitcnt_addsub0000_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(15),
      O => waitcnt_addsub0000_14_CYSELG_2844
    );
  Msub_waitcnt_addsub0000_lut_15_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => waitcnt(15),
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(15)
    );
  waitcnt_addsub0000_16_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      O => waitcnt_addsub0000_16_LOGIC_ONE_2891
    );
  waitcnt_addsub0000_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_16_XORF_2911,
      O => waitcnt_addsub0000(16)
    );
  waitcnt_addsub0000_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      I0 => waitcnt_addsub0000_16_CYINIT_2910,
      I1 => Msub_waitcnt_addsub0000_lut(16),
      O => waitcnt_addsub0000_16_XORF_2911
    );
  waitcnt_addsub0000_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => waitcnt_addsub0000_16_LOGIC_ONE_2891,
      IB => waitcnt_addsub0000_16_CYINIT_2910,
      SEL => waitcnt_addsub0000_16_CYSELF_2897,
      O => Msub_waitcnt_addsub0000_cy_16_Q
    );
  waitcnt_addsub0000_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => waitcnt_addsub0000_16_LOGIC_ONE_2891,
      IB => waitcnt_addsub0000_16_LOGIC_ONE_2891,
      SEL => waitcnt_addsub0000_16_CYSELF_2897,
      O => waitcnt_addsub0000_16_CYMUXF2_2892
    );
  waitcnt_addsub0000_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_15_Q,
      O => waitcnt_addsub0000_16_CYINIT_2910
    );
  waitcnt_addsub0000_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(16),
      O => waitcnt_addsub0000_16_CYSELF_2897
    );
  waitcnt_addsub0000_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_16_XORG_2899,
      O => waitcnt_addsub0000(17)
    );
  waitcnt_addsub0000_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_16_Q,
      I1 => Msub_waitcnt_addsub0000_lut(17),
      O => waitcnt_addsub0000_16_XORG_2899
    );
  waitcnt_addsub0000_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_cy_15_Q,
      O => waitcnt_addsub0000_16_FASTCARRY_2894
    );
  waitcnt_addsub0000_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      I0 => waitcnt_addsub0000_16_CYSELG_2882,
      I1 => waitcnt_addsub0000_16_CYSELF_2897,
      O => waitcnt_addsub0000_16_CYAND_2895
    );
  waitcnt_addsub0000_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => waitcnt_addsub0000_16_CYMUXG2_2893,
      IB => waitcnt_addsub0000_16_FASTCARRY_2894,
      SEL => waitcnt_addsub0000_16_CYAND_2895,
      O => waitcnt_addsub0000_16_CYMUXFAST_2896
    );
  waitcnt_addsub0000_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X29Y33"
    )
    port map (
      IA => waitcnt_addsub0000_16_LOGIC_ONE_2891,
      IB => waitcnt_addsub0000_16_CYMUXF2_2892,
      SEL => waitcnt_addsub0000_16_CYSELG_2882,
      O => waitcnt_addsub0000_16_CYMUXG2_2893
    );
  waitcnt_addsub0000_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(17),
      O => waitcnt_addsub0000_16_CYSELG_2882
    );
  Msub_waitcnt_addsub0000_lut_17_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => waitcnt(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(17)
    );
  waitcnt_addsub0000_18_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      O => waitcnt_addsub0000_18_LOGIC_ONE_2941
    );
  waitcnt_addsub0000_18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_18_XORF_2942,
      O => waitcnt_addsub0000(18)
    );
  waitcnt_addsub0000_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      I0 => waitcnt_addsub0000_18_CYINIT_2940,
      I1 => Msub_waitcnt_addsub0000_lut(18),
      O => waitcnt_addsub0000_18_XORF_2942
    );
  waitcnt_addsub0000_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      IA => waitcnt_addsub0000_18_LOGIC_ONE_2941,
      IB => waitcnt_addsub0000_18_CYINIT_2940,
      SEL => waitcnt_addsub0000_18_CYSELF_2931,
      O => Msub_waitcnt_addsub0000_cy_18_Q
    );
  waitcnt_addsub0000_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_16_CYMUXFAST_2896,
      O => waitcnt_addsub0000_18_CYINIT_2940
    );
  waitcnt_addsub0000_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => Msub_waitcnt_addsub0000_lut(18),
      O => waitcnt_addsub0000_18_CYSELF_2931
    );
  waitcnt_addsub0000_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_addsub0000_18_XORG_2928,
      O => waitcnt_addsub0000(19)
    );
  waitcnt_addsub0000_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X29Y34"
    )
    port map (
      I0 => Msub_waitcnt_addsub0000_cy_18_Q,
      I1 => Msub_waitcnt_addsub0000_lut(19),
      O => waitcnt_addsub0000_18_XORG_2928
    );
  Msub_waitcnt_addsub0000_lut_19_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(19),
      O => Msub_waitcnt_addsub0000_lut(19)
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_LOGIC_ZERO_2961
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_wg_cy_1_LOGIC_ZERO_2961,
      IB => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYINIT_2972,
      SEL => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELF_2966,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy(0)
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_cy_1_BXINV_2964,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYINIT_2972
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_lut(0),
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELF_2966
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_BXINV_2964
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X27Y27"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_wg_cy_1_LOGIC_ZERO_2961,
      IB => fsm_module_nextstate_cmp_eq0002_wg_cy(0),
      SEL => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELG_2955,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYMUXG_2963
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_lut(1),
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYSELG_2955
    );
  fsm_module_nextstate_cmp_eq0002_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y27"
    )
    port map (
      ADR0 => waitcnt(8),
      ADR1 => waitcnt(9),
      ADR2 => waitcnt(12),
      ADR3 => waitcnt(3),
      O => fsm_module_nextstate_cmp_eq0002_wg_lut(1)
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO_2990
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO_2990,
      IB => fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO_2990,
      SEL => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELF_2996,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXF2_2991
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_lut(2),
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELF_2996
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_cy_1_CYMUXG_2963,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_FASTCARRY_2993
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      I0 => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELG_2984,
      I1 => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELF_2996,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYAND_2994
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXG2_2992,
      IB => fsm_module_nextstate_cmp_eq0002_wg_cy_3_FASTCARRY_2993,
      SEL => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYAND_2994,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXFAST_2995
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_wg_cy_3_LOGIC_ZERO_2990,
      IB => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXF2_2991,
      SEL => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELG_2984,
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXG2_2992
    );
  fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_lut(3),
      O => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYSELG_2984
    );
  fsm_module_nextstate_cmp_eq0002_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => waitcnt(15),
      ADR1 => waitcnt(14),
      ADR2 => waitcnt(0),
      ADR3 => waitcnt(17),
      O => fsm_module_nextstate_cmp_eq0002_wg_lut(3)
    );
  fsm_module_nextstate_cmp_eq0002_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      O => fsm_module_nextstate_cmp_eq0002_LOGIC_ZERO_3017
    );
  fsm_module_nextstate_cmp_eq0002_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => fsm_module_nextstate_cmp_eq0002_LOGIC_ZERO_3017,
      IB => fsm_module_nextstate_cmp_eq0002_CYINIT_3016,
      SEL => fsm_module_nextstate_cmp_eq0002_CYSELF_3010,
      O => fsm_module_nextstate_cmp_eq0002
    );
  fsm_module_nextstate_cmp_eq0002_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_cy_3_CYMUXFAST_2995,
      O => fsm_module_nextstate_cmp_eq0002_CYINIT_3016
    );
  fsm_module_nextstate_cmp_eq0002_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0002_wg_lut(4),
      O => fsm_module_nextstate_cmp_eq0002_CYSELF_3010
    );
  fsm_module_nextstate_cmp_eq0002_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y29"
    )
    port map (
      ADR0 => waitcnt(2),
      ADR1 => waitcnt(18),
      ADR2 => waitcnt(16),
      ADR3 => waitcnt(19),
      O => fsm_module_nextstate_cmp_eq0002_wg_lut(4)
    );
  leds_5_OBUF_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_5_OBUF_F5MUX_3048,
      O => memory_module_Mrom_data_rom0001371_3_f5
    );
  leds_5_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y0"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001371_5_3036,
      IB => memory_module_Mrom_data_rom0001371_3_f51_3046,
      SEL => leds_5_OBUF_BXINV_3040,
      O => leds_5_OBUF_F5MUX_3048
    );
  leds_5_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => leds_5_OBUF_BXINV_3040
    );
  leds_5_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_5_OBUF_F6MUX_3038,
      O => leds_5_OBUF_1518
    );
  leds_5_OBUF_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y0"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001371_4_f5,
      IB => memory_module_Mrom_data_rom0001371_3_f5,
      SEL => leds_5_OBUF_BYINV_3031,
      O => leds_5_OBUF_F6MUX_3038
    );
  leds_5_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_5_OBUF_BYINV_3031
    );
  memory_module_Mrom_data_rom0001371_5 : X_LUT4
    generic map(
      INIT => X"3327",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => cmdcnt(0),
      ADR2 => N60_0,
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom0001371_5_3036
    );
  memory_module_Mrom_data_rom0001371_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001371_4_f5_F5MUX_3072,
      O => memory_module_Mrom_data_rom0001371_4_f5
    );
  memory_module_Mrom_data_rom0001371_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X11Y1"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001371_6_3062,
      IB => memory_module_Mrom_data_rom0001371_51_3070,
      SEL => memory_module_Mrom_data_rom0001371_4_f5_BXINV_3064,
      O => memory_module_Mrom_data_rom0001371_4_f5_F5MUX_3072
    );
  memory_module_Mrom_data_rom0001371_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001371_4_f5_BXINV_3064
    );
  memory_module_Mrom_data_rom0001371_6 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000132_0,
      ADR1 => memory_module_Mrom_data_rom000131_0,
      ADR2 => VCC,
      ADR3 => cmdcnt(4),
      O => memory_module_Mrom_data_rom0001371_6_3062
    );
  leds_7_OBUF_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_7_OBUF_F5MUX_3103,
      O => memory_module_Mrom_data_rom0001512_3_f5
    );
  leds_7_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y10"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001441_5_3091,
      IB => memory_module_Mrom_data_rom0001371_4_3101,
      SEL => leds_7_OBUF_BXINV_3095,
      O => leds_7_OBUF_F5MUX_3103
    );
  leds_7_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => leds_7_OBUF_BXINV_3095
    );
  leds_7_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_7_OBUF_F6MUX_3093,
      O => leds_7_OBUF_1526
    );
  leds_7_OBUF_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y10"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001512_4_f5,
      IB => memory_module_Mrom_data_rom0001512_3_f5,
      SEL => leds_7_OBUF_BYINV_3085,
      O => leds_7_OBUF_F6MUX_3093
    );
  leds_7_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_7_OBUF_BYINV_3085
    );
  memory_module_Mrom_data_rom0001441_5 : X_LUT4
    generic map(
      INIT => X"5F0A",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => VCC,
      ADR2 => cmdcnt(0),
      ADR3 => memory_module_Mrom_data_rom000142_0,
      O => memory_module_Mrom_data_rom0001441_5_3091
    );
  memory_module_Mrom_data_rom0001512_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001512_4_f5_F5MUX_3127,
      O => memory_module_Mrom_data_rom0001512_4_f5
    );
  memory_module_Mrom_data_rom0001512_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y11"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001512_6_3118,
      IB => memory_module_Mrom_data_rom0001512_51_3125,
      SEL => memory_module_Mrom_data_rom0001512_4_f5_BXINV_3120,
      O => memory_module_Mrom_data_rom0001512_4_f5_F5MUX_3127
    );
  memory_module_Mrom_data_rom0001512_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001512_4_f5_BXINV_3120
    );
  memory_module_Mrom_data_rom0001512_6 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cmdcnt(4),
      ADR2 => memory_module_Mrom_data_rom000145_0,
      ADR3 => memory_module_Mrom_data_rom000146_0,
      O => memory_module_Mrom_data_rom0001512_6_3118
    );
  leds_6_OBUF_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_6_OBUF_F5MUX_3158,
      O => memory_module_Mrom_data_rom0001441_3_f5
    );
  leds_6_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y4"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001441_3_f51_3146,
      IB => memory_module_Mrom_data_rom0001441_3_f52_3156,
      SEL => leds_6_OBUF_BXINV_3150,
      O => leds_6_OBUF_F5MUX_3158
    );
  leds_6_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => leds_6_OBUF_BXINV_3150
    );
  leds_6_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_6_OBUF_F6MUX_3148,
      O => leds_6_OBUF_1533
    );
  leds_6_OBUF_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y4"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001441_4_f5,
      IB => memory_module_Mrom_data_rom0001441_3_f5,
      SEL => leds_6_OBUF_BYINV_3140,
      O => leds_6_OBUF_F6MUX_3148
    );
  leds_6_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_6_OBUF_BYINV_3140
    );
  memory_module_Mrom_data_rom0001441_3_f51 : X_LUT4
    generic map(
      INIT => X"7272",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => cmdcnt(0),
      ADR2 => memory_module_Mrom_data_rom000142_0,
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom0001441_3_f51_3146
    );
  memory_module_Mrom_data_rom0001441_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001441_4_f5_F5MUX_3182,
      O => memory_module_Mrom_data_rom0001441_4_f5
    );
  memory_module_Mrom_data_rom0001441_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y5"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001441_6_3173,
      IB => memory_module_Mrom_data_rom0001441_51_3180,
      SEL => memory_module_Mrom_data_rom0001441_4_f5_BXINV_3175,
      O => memory_module_Mrom_data_rom0001441_4_f5_F5MUX_3182
    );
  memory_module_Mrom_data_rom0001441_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001441_4_f5_BXINV_3175
    );
  memory_module_Mrom_data_rom0001441_6 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X13Y5"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000138_0,
      ADR1 => cmdcnt(4),
      ADR2 => VCC,
      ADR3 => memory_module_Mrom_data_rom000139_0,
      O => memory_module_Mrom_data_rom0001441_6_3173
    );
  spi_module_sdo_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_F5MUX_3222,
      O => spi_module_Mmux_sdo_mux0002_3_f5
    );
  spi_module_sdo_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y14"
    )
    port map (
      IA => spi_module_Mmux_sdo_mux0002_5_3205,
      IB => spi_module_Mmux_sdo_mux0002_4_3220,
      SEL => spi_module_sdo_BXINV_3214,
      O => spi_module_sdo_F5MUX_3222
    );
  spi_module_sdo_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt(1),
      O => spi_module_sdo_BXINV_3214
    );
  spi_module_sdo_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_F6MUX_3207,
      O => spi_module_sdo_DYMUX_3209
    );
  spi_module_sdo_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y14"
    )
    port map (
      IA => spi_module_Mmux_sdo_mux0002_4_f5,
      IB => spi_module_Mmux_sdo_mux0002_3_f5,
      SEL => spi_module_sdo_BYINV_3199,
      O => spi_module_sdo_F6MUX_3207
    );
  spi_module_sdo_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt(2),
      O => spi_module_sdo_BYINV_3199
    );
  spi_module_sdo_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_or0000_0,
      O => spi_module_sdo_SRINV_3198
    );
  spi_module_sdo_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_sdo_CLKINV_3197
    );
  spi_module_Mmux_sdo_mux0002_5 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => spi_module_cnt(0),
      ADR1 => spi_module_cdata(4),
      ADR2 => spi_module_cdata(5),
      ADR3 => VCC,
      O => spi_module_Mmux_sdo_mux0002_5_3205
    );
  spi_module_Mmux_sdo_mux0002_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Mmux_sdo_mux0002_4_f5_F5MUX_3246,
      O => spi_module_Mmux_sdo_mux0002_4_f5
    );
  spi_module_Mmux_sdo_mux0002_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X19Y15"
    )
    port map (
      IA => spi_module_Mmux_sdo_mux0002_6_3236,
      IB => spi_module_Mmux_sdo_mux0002_51_3244,
      SEL => spi_module_Mmux_sdo_mux0002_4_f5_BXINV_3238,
      O => spi_module_Mmux_sdo_mux0002_4_f5_F5MUX_3246
    );
  spi_module_Mmux_sdo_mux0002_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt(1),
      O => spi_module_Mmux_sdo_mux0002_4_f5_BXINV_3238
    );
  spi_module_Mmux_sdo_mux0002_6 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => spi_module_cdata(1),
      ADR2 => spi_module_cnt(0),
      ADR3 => spi_module_cdata(0),
      O => spi_module_Mmux_sdo_mux0002_6_3236
    );
  leds_4_OBUF_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_4_OBUF_F5MUX_3277,
      O => memory_module_Mrom_data_rom0001301_3_f5
    );
  leds_4_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y2"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001301_5_3265,
      IB => memory_module_Mrom_data_rom0001301_4_3275,
      SEL => leds_4_OBUF_BXINV_3269,
      O => leds_4_OBUF_F5MUX_3277
    );
  leds_4_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => leds_4_OBUF_BXINV_3269
    );
  leds_4_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_4_OBUF_F6MUX_3267,
      O => leds_4_OBUF_1555
    );
  leds_4_OBUF_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y2"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001301_4_f5,
      IB => memory_module_Mrom_data_rom0001301_3_f5,
      SEL => leds_4_OBUF_BYINV_3260,
      O => leds_4_OBUF_F6MUX_3267
    );
  leds_4_OBUF_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_4_OBUF_BYINV_3260
    );
  memory_module_Mrom_data_rom0001301_5 : X_LUT4
    generic map(
      INIT => X"5546",
      LOC => "SLICE_X13Y2"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(4),
      ADR2 => N56_0,
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom0001301_5_3265
    );
  memory_module_Mrom_data_rom0001301_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001301_4_f5_F5MUX_3301,
      O => memory_module_Mrom_data_rom0001301_4_f5
    );
  memory_module_Mrom_data_rom0001301_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y3"
    )
    port map (
      IA => memory_module_Mrom_data_rom0001301_6_3291,
      IB => memory_module_Mrom_data_rom0001301_51_3299,
      SEL => memory_module_Mrom_data_rom0001301_4_f5_BXINV_3293,
      O => memory_module_Mrom_data_rom0001301_4_f5_F5MUX_3301
    );
  memory_module_Mrom_data_rom0001301_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001301_4_f5_BXINV_3293
    );
  memory_module_Mrom_data_rom0001301_6 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X13Y3"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000124_0,
      ADR1 => cmdcnt(4),
      ADR2 => memory_module_Mrom_data_rom000125_0,
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom0001301_6_3291
    );
  dc_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => dc_O,
      O => dc
    );
  leds_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => leds_0_O,
      O => leds(0)
    );
  leds_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => leds_1_O,
      O => leds(1)
    );
  hclk_IBUFG : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 638 ps
    )
    port map (
      I => hclk,
      O => hclk_INBUF
    );
  cs_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => cs_O,
      O => cs
    );
  leds_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => leds_3_O,
      O => leds(3)
    );
  leds_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => leds_4_O,
      O => leds(4)
    );
  leds_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => leds_5_O,
      O => leds(5)
    );
  leds_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => leds_6_O,
      O => leds(6)
    );
  leds_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => leds_7_O,
      O => leds(7)
    );
  sck_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => sck_O,
      O => sck
    );
  leds_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => leds_2_O,
      O => leds(2)
    );
  sdo_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => sdo_O,
      O => sdo
    );
  rsti_IBUF : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 638 ps
    )
    port map (
      I => rsti,
      O => rsti_INBUF
    );
  rsti_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD60",
      PATHPULSE => 638 ps
    )
    port map (
      I => rsti_INBUF,
      O => rsti_IBUF_1568
    );
  rsto_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => rsto_O,
      O => rsto
    );
  Inst_pll2_CLK0_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => Inst_pll2_CLK0_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_pll2_CLK0_BUFG_INST_S_INVNOT,
      O => Inst_pll2_CLKFB_IN
    );
  Inst_pll2_CLK0_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_pll2_CLK0_BUFG_INST_S_INVNOT
    );
  Inst_pll2_CLK0_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_pll2_CLK0_BUF,
      O => Inst_pll2_CLK0_BUFG_INST_I0_INV
    );
  Inst_pll2_DCM_SP_INST_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => Inst_pll2_DCM_SP_INST_PSCLKINV_3433
    );
  Inst_pll2_DCM_SP_INST : X_DCM_SP
    generic map(
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      CLKDV_DIVIDE => 16.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLKIN_PERIOD => 20.000000,
      DESKEW_ADJUST => "6",
      DFS_FREQUENCY_MODE => "LOW",
      STARTUP_WAIT => FALSE,
      CLK_FEEDBACK => "1X",
      DLL_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      PHASE_SHIFT => 0,
      LOC => "DCM_X0Y1"
    )
    port map (
      CLKIN => Inst_pll2_DCM_SP_INST_CLKIN_BUF_3431,
      CLKFB => Inst_pll2_DCM_SP_INST_CLKFB_BUF_3432,
      RST => '0',
      DSSEN => NLW_Inst_pll2_DCM_SP_INST_DSSEN_UNCONNECTED,
      PSINCDEC => '0',
      PSEN => '0',
      PSCLK => Inst_pll2_DCM_SP_INST_PSCLKINV_3433,
      PSDONE => Inst_pll2_DCM_SP_INST_PSDONE,
      LOCKED => Inst_pll2_DCM_SP_INST_LOCKED,
      CLKFX180 => Inst_pll2_DCM_SP_INST_CLKFX180,
      CLKFX => Inst_pll2_DCM_SP_INST_CLKFX,
      CLKDV => Inst_pll2_CLKDV_BUF,
      CLK2X180 => Inst_pll2_DCM_SP_INST_CLK2X180,
      CLK2X => Inst_pll2_DCM_SP_INST_CLK2X,
      CLK270 => Inst_pll2_DCM_SP_INST_CLK270,
      CLK180 => Inst_pll2_DCM_SP_INST_CLK180,
      CLK90 => Inst_pll2_DCM_SP_INST_CLK90,
      CLK0 => Inst_pll2_CLK0_BUF,
      STATUS(7) => Inst_pll2_DCM_SP_INST_STATUS7,
      STATUS(6) => Inst_pll2_DCM_SP_INST_STATUS6,
      STATUS(5) => Inst_pll2_DCM_SP_INST_STATUS5,
      STATUS(4) => Inst_pll2_DCM_SP_INST_STATUS4,
      STATUS(3) => Inst_pll2_DCM_SP_INST_STATUS3,
      STATUS(2) => Inst_pll2_DCM_SP_INST_STATUS2,
      STATUS(1) => Inst_pll2_DCM_SP_INST_STATUS1,
      STATUS(0) => Inst_pll2_DCM_SP_INST_STATUS0
    );
  Inst_pll2_DCM_SP_INST_CLKFB_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_pll2_CLKFB_IN,
      O => Inst_pll2_DCM_SP_INST_CLKFB_BUF_3432
    );
  Inst_pll2_DCM_SP_INST_CLKIN_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => hclk_INBUF,
      O => Inst_pll2_DCM_SP_INST_CLKIN_BUF_3431
    );
  Inst_pll2_CLKDV_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => Inst_pll2_CLKDV_BUFG_INST_I0_INV,
      I1 => GND,
      S => Inst_pll2_CLKDV_BUFG_INST_S_INVNOT,
      O => fastclk
    );
  Inst_pll2_CLKDV_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_pll2_CLKDV_BUFG_INST_S_INVNOT
    );
  Inst_pll2_CLKDV_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_pll2_CLKDV_BUF,
      O => Inst_pll2_CLKDV_BUFG_INST_I0_INV
    );
  memory_module_Mrom_data_rom000051_5_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000051_5_f5_F5MUX_3479,
      O => memory_module_Mrom_data_rom000051_5_f5
    );
  memory_module_Mrom_data_rom000051_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y8"
    )
    port map (
      IA => memory_module_Mrom_data_rom000051_7_3468,
      IB => memory_module_Mrom_data_rom000051_6_3477,
      SEL => memory_module_Mrom_data_rom000051_5_f5_BXINV_3470,
      O => memory_module_Mrom_data_rom000051_5_f5_F5MUX_3479
    );
  memory_module_Mrom_data_rom000051_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom000051_5_f5_BXINV_3470
    );
  memory_module_Mrom_data_rom000051_7 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom00001_0,
      ADR1 => cmdcnt(4),
      ADR2 => memory_module_Mrom_data_rom0000_0,
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom000051_7_3468
    );
  memory_module_Mrom_data_rom0001112_5_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001112_5_f5_F5MUX_3504,
      O => memory_module_Mrom_data_rom0001112_5_f5
    );
  memory_module_Mrom_data_rom0001112_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y4"
    )
    port map (
      IA => N62,
      IB => N63,
      SEL => memory_module_Mrom_data_rom0001112_5_f5_BXINV_3496,
      O => memory_module_Mrom_data_rom0001112_5_f5_F5MUX_3504
    );
  memory_module_Mrom_data_rom0001112_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001112_5_f5_BXINV_3496
    );
  memory_module_Mrom_data_rom0001112_5_f5_F : X_LUT4
    generic map(
      INIT => X"5533",
      LOC => "SLICE_X26Y4"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom00017_0,
      ADR1 => memory_module_Mrom_data_rom00016_0,
      ADR2 => VCC,
      ADR3 => cmdcnt(4),
      O => N62
    );
  leds_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y7"
    )
    port map (
      IA => leds_1_1361_3520,
      IB => leds_1_136,
      SEL => leds_1_OBUF_BXINV_3522,
      O => leds_1_OBUF_F5MUX_3529
    );
  leds_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_1_OBUF_BXINV_3522
    );
  leds_1_1362_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X25Y7"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom0001112_5_f5,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => leds_1_1361_3520
    );
  memory_module_Mrom_data_rom000151_5_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000151_5_f5_F5MUX_3554,
      O => memory_module_Mrom_data_rom000151_5_f5
    );
  memory_module_Mrom_data_rom000151_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y0"
    )
    port map (
      IA => N68,
      IB => N69,
      SEL => memory_module_Mrom_data_rom000151_5_f5_BXINV_3546,
      O => memory_module_Mrom_data_rom000151_5_f5_F5MUX_3554
    );
  memory_module_Mrom_data_rom000151_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom000151_5_f5_BXINV_3546
    );
  memory_module_Mrom_data_rom000151_5_f5_F : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X13Y0"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom0001_0,
      ADR1 => cmdcnt(4),
      ADR2 => VCC,
      ADR3 => memory_module_Mrom_data_rom00011_0,
      O => N68
    );
  leds_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      IA => leds_3_1681_3570,
      IB => leds_3_168,
      SEL => leds_3_OBUF_BXINV_3572,
      O => leds_3_OBUF_F5MUX_3579
    );
  leds_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(6),
      O => leds_3_OBUF_BXINV_3572
    );
  leds_3_1682_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X12Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => memory_module_Mrom_data_rom0001231_5_f5,
      ADR3 => VCC,
      O => leds_3_1681_3570
    );
  memory_module_Mrom_data_rom0001231_5_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001231_5_f5_F5MUX_3604,
      O => memory_module_Mrom_data_rom0001231_5_f5
    );
  memory_module_Mrom_data_rom0001231_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y6"
    )
    port map (
      IA => N64,
      IB => N65,
      SEL => memory_module_Mrom_data_rom0001231_5_f5_BXINV_3596,
      O => memory_module_Mrom_data_rom0001231_5_f5_F5MUX_3604
    );
  memory_module_Mrom_data_rom0001231_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001231_5_f5_BXINV_3596
    );
  memory_module_Mrom_data_rom0001231_5_f5_F : X_LUT4
    generic map(
      INIT => X"1D1D",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000118_0,
      ADR1 => cmdcnt(4),
      ADR2 => memory_module_Mrom_data_rom000119_0,
      ADR3 => VCC,
      O => N64
    );
  leds_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y1"
    )
    port map (
      IA => cmdcnt_6_421_3620,
      IB => cmdcnt_6_42,
      SEL => leds_0_OBUF_BXINV_3622,
      O => leds_0_OBUF_F5MUX_3629
    );
  leds_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(1),
      O => leds_0_OBUF_BXINV_3622
    );
  cmdcnt_6_422 : X_LUT4
    generic map(
      INIT => X"5703",
      LOC => "SLICE_X12Y1"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(6),
      ADR2 => memory_module_Mrom_data_rom000151_5_f5,
      ADR3 => cmdcnt_6_23_0,
      O => cmdcnt_6_421_3620
    );
  cmdcnt_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_4_FXMUX_3662,
      O => cmdcnt_4_DXMUX_3663
    );
  cmdcnt_4_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_4_F5MUX_3661,
      O => cmdcnt_4_FXMUX_3662
    );
  cmdcnt_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y12"
    )
    port map (
      IA => Mcount_cmdcnt42_3652,
      IB => Mcount_cmdcnt41_3659,
      SEL => cmdcnt_4_BXINV_3654,
      O => cmdcnt_4_F5MUX_3661
    );
  cmdcnt_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(4),
      O => cmdcnt_4_BXINV_3654
    );
  cmdcnt_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_4_SRINV_3647
    );
  cmdcnt_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_4_CLKINV_3646
    );
  cmdcnt_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_4_CEINV_3645
    );
  Mcount_cmdcnt42 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X20Y12"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => Mcount_cmdcnt42_3652
    );
  memory_module_Mrom_data_rom0001171_5_f5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001171_5_f5_F5MUX_3692,
      O => memory_module_Mrom_data_rom0001171_5_f5
    );
  memory_module_Mrom_data_rom0001171_5_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y4"
    )
    port map (
      IA => N66,
      IB => N67,
      SEL => memory_module_Mrom_data_rom0001171_5_f5_BXINV_3684,
      O => memory_module_Mrom_data_rom0001171_5_f5_F5MUX_3692
    );
  memory_module_Mrom_data_rom0001171_5_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(5),
      O => memory_module_Mrom_data_rom0001171_5_f5_BXINV_3684
    );
  memory_module_Mrom_data_rom0001171_5_f5_F : X_LUT4
    generic map(
      INIT => X"1B1B",
      LOC => "SLICE_X25Y4"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => memory_module_Mrom_data_rom000112_0,
      ADR2 => memory_module_Mrom_data_rom000113_0,
      ADR3 => VCC,
      O => N66
    );
  leds_1_85_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_1_85_3715,
      O => leds_1_85_0
    );
  leds_1_85_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => N34_pack_1,
      O => N34
    );
  leds_1_85_SW2 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X24Y8"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(5),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(4),
      O => N34_pack_1
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  N20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_1_30_SW4_O_pack_1,
      O => leds_1_30_SW4_O
    );
  leds_1_30_SW4 : X_LUT4
    generic map(
      INIT => X"5455",
      LOC => "SLICE_X25Y15"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => N29,
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(6),
      O => leds_1_30_SW4_O_pack_1
    );
  N50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => N50,
      O => N50_0
    );
  N50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => N25_pack_1,
      O => N25
    );
  leds_3_115_SW2 : X_LUT4
    generic map(
      INIT => X"FFF6",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(5),
      ADR3 => cmdcnt(4),
      O => N25_pack_1
    );
  spi_module_cdata_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(0),
      O => spi_module_cdata_8_DXMUX_3794
    );
  spi_module_cdata_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001_0_47_SW0_O_pack_1,
      O => spi_module_cdata_mux0001_0_47_SW0_O
    );
  spi_module_cdata_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_8_CLKINV_3779
    );
  spi_module_cdata_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_8_CEINV_3778
    );
  spi_module_cdata_mux0001_0_47_SW0 : X_LUT4
    generic map(
      INIT => X"0804",
      LOC => "SLICE_X18Y8"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => N36_0,
      ADR3 => cmdcnt(2),
      O => spi_module_cdata_mux0001_0_47_SW0_O_pack_1
    );
  fsm_module_state_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001(1),
      O => fsm_module_state_2_DXMUX_3827
    );
  fsm_module_state_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001_1_SW0_O_pack_2,
      O => fsm_module_state_mux0001_1_SW0_O
    );
  fsm_module_state_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => fsm_module_state_2_CLKINV_3810
    );
  fsm_module_state_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => fsm_module_state_2_CEINV_3809
    );
  fsm_module_state_mux0001_1_SW0 : X_LUT4
    generic map(
      INIT => X"33FF",
      LOC => "SLICE_X27Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(1),
      ADR2 => VCC,
      ADR3 => fsm_module_nextstate_cmp_eq0001_0,
      O => fsm_module_state_mux0001_1_SW0_O_pack_2
    );
  fsm_module_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001(2),
      O => fsm_module_state_1_DXMUX_3860
    );
  fsm_module_state_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001_2_SW0_O_pack_2,
      O => fsm_module_state_mux0001_2_SW0_O
    );
  fsm_module_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => fsm_module_state_1_CLKINV_3844
    );
  fsm_module_state_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => fsm_module_state_1_CEINV_3843
    );
  fsm_module_state_mux0001_2_SW0 : X_LUT4
    generic map(
      INIT => X"FFCF",
      LOC => "SLICE_X23Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rstcnt(1),
      ADR2 => fsm_module_state(0),
      ADR3 => rstcnt(0),
      O => fsm_module_state_mux0001_2_SW0_O_pack_2
    );
  spi_module_cdata_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(7),
      O => spi_module_cdata_1_DXMUX_3893
    );
  spi_module_cdata_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_1_136_SW0_O_pack_1,
      O => leds_1_136_SW0_O
    );
  spi_module_cdata_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_1_CLKINV_3878
    );
  spi_module_cdata_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_1_CEINV_3877
    );
  leds_1_136_SW0 : X_LUT4
    generic map(
      INIT => X"FBEA",
      LOC => "SLICE_X21Y14"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => memory_module_Mrom_data_rom0001112_5_f5,
      ADR2 => N41_0,
      ADR3 => N40_0,
      O => leds_1_136_SW0_O_pack_1
    );
  cmdcnt_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_5_FXMUX_3928,
      O => cmdcnt_5_DXMUX_3929
    );
  cmdcnt_5_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt5_3926,
      O => cmdcnt_5_FXMUX_3928
    );
  cmdcnt_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt5_SW0_O_pack_2,
      O => Mcount_cmdcnt5_SW0_O
    );
  cmdcnt_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_5_SRINV_3913
    );
  cmdcnt_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_5_CLKINV_3912
    );
  cmdcnt_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_5_CEINV_3911
    );
  Mcount_cmdcnt5_SW0 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "SLICE_X18Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(4),
      O => Mcount_cmdcnt5_SW0_O_pack_2
    );
  spi_module_cdata_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(8),
      O => spi_module_cdata_0_DXMUX_3963
    );
  spi_module_cdata_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_6_42_SW0_O_pack_1,
      O => cmdcnt_6_42_SW0_O
    );
  spi_module_cdata_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_0_CLKINV_3948
    );
  spi_module_cdata_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_0_CEINV_3947
    );
  cmdcnt_6_42_SW0 : X_LUT4
    generic map(
      INIT => X"EF4F",
      LOC => "SLICE_X19Y9"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt_6_23_0,
      ADR3 => cmdcnt(0),
      O => cmdcnt_6_42_SW0_O_pack_1
    );
  Mcount_cmdcnt6_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => cmdcnt(5),
      ADR1 => cmdcnt(4),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => Mcount_cmdcnt6_SW0_O_pack_2
    );
  cmdcnt_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt6_3995,
      O => cmdcnt_6_DXMUX_3998
    );
  cmdcnt_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt6_SW0_O_pack_2,
      O => Mcount_cmdcnt6_SW0_O
    );
  cmdcnt_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_6_SRINV_3983
    );
  cmdcnt_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_6_CLKINV_3982
    );
  cmdcnt_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_6_CEINV_3981
    );
  slowcnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      I => slowcnt_0_DYMUX_1677,
      CE => VCC,
      CLK => slowcnt_0_CLKINV_1660,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_0_SRINV_1661,
      O => slowcnt(1)
    );
  fsm_module_nextstate_cmp_eq0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0001_4025,
      O => fsm_module_nextstate_cmp_eq0001_0
    );
  fsm_module_nextstate_cmp_eq0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_nextstate_cmp_eq0001_SW0_O_pack_1,
      O => fsm_module_nextstate_cmp_eq0001_SW0_O
    );
  fsm_module_nextstate_cmp_eq0001_SW0 : X_LUT4
    generic map(
      INIT => X"FFBF",
      LOC => "SLICE_X22Y12"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => cmdcnt_4_1_1631,
      ADR2 => cmdcnt(5),
      ADR3 => cmdcnt(0),
      O => fsm_module_nextstate_cmp_eq0001_SW0_O_pack_1
    );
  N40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => N40,
      O => N40_0
    );
  N40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => N29_pack_1,
      O => N29
    );
  leds_1_30_SW0 : X_LUT4
    generic map(
      INIT => X"FFBB",
      LOC => "SLICE_X21Y13"
    )
    port map (
      ADR0 => cmdcnt_4_1_1631,
      ADR1 => cmdcnt_1_2_1633,
      ADR2 => VCC,
      ADR3 => cmdcnt_5_1_1632,
      O => N29_pack_1
    );
  spi_module_sdo_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_or0000,
      O => spi_module_sdo_or0000_0
    );
  spi_module_sdo_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_cmp_eq0000_pack_1,
      O => spi_module_sdo_cmp_eq0000
    );
  spi_module_sdo_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X21Y16"
    )
    port map (
      ADR0 => spi_module_cnt(3),
      ADR1 => spi_module_cnt(1),
      ADR2 => spi_module_cnt(0),
      ADR3 => spi_module_cnt(2),
      O => spi_module_sdo_cmp_eq0000_pack_1
    );
  spi_module_cdata_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => N41,
      O => N41_0
    );
  spi_module_cdata_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(5),
      O => spi_module_cdata_3_DYMUX_4097
    );
  spi_module_cdata_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_3_CLKINV_4089
    );
  spi_module_cdata_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_3_CEINV_4088
    );
  spi_module_cdata_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"0207",
      LOC => "SLICE_X19Y12"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => N50_0,
      ADR2 => fsm_module_state(0),
      ADR3 => memory_module_Mrom_data_rom0001231_5_f5,
      O => spi_module_cdata_mux0001(5)
    );
  spi_module_cdata_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(3),
      O => spi_module_cdata_5_DXMUX_4142
    );
  spi_module_cdata_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(4),
      O => spi_module_cdata_5_DYMUX_4128
    );
  spi_module_cdata_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_5_CLKINV_4118
    );
  spi_module_cdata_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_5_CEINV_4117
    );
  spi_module_cdata_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X18Y15"
    )
    port map (
      ADR0 => leds_4_OBUF_1555,
      ADR1 => VCC,
      ADR2 => fsm_module_state(0),
      ADR3 => VCC,
      O => spi_module_cdata_mux0001(4)
    );
  spi_module_cdata_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(1),
      O => spi_module_cdata_7_DXMUX_4180
    );
  spi_module_cdata_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(2),
      O => spi_module_cdata_7_DYMUX_4166
    );
  spi_module_cdata_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_7_CLKINV_4156
    );
  spi_module_cdata_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_7_CEINV_4155
    );
  spi_module_cdata_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X18Y14"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => leds_6_OBUF_1533,
      ADR3 => VCC,
      O => spi_module_cdata_mux0001(2)
    );
  fsm_module_state_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000,
      O => cmdcnt_and0000_0
    );
  fsm_module_state_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001(3),
      O => fsm_module_state_0_DYMUX_4204
    );
  fsm_module_state_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => fsm_module_state_0_CLKINV_4196
    );
  fsm_module_state_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => fsm_module_state_0_CEINV_4195
    );
  fsm_module_state_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"FCF8",
      LOC => "SLICE_X22Y13"
    )
    port map (
      ADR0 => rstcnt(0),
      ADR1 => fsm_module_state(0),
      ADR2 => rsti_IBUF_1568,
      ADR3 => rstcnt(1),
      O => fsm_module_state_mux0001(3)
    );
  fsm_module_state_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002,
      O => cmdcnt_not0002_0
    );
  fsm_module_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state_mux0001(0),
      O => fsm_module_state_3_DYMUX_4238
    );
  fsm_module_state_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => fsm_module_state_3_CLKINV_4230
    );
  fsm_module_state_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => fsm_module_state_3_CEINV_4229
    );
  fsm_module_state_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"5444",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => rsti_IBUF_1568,
      ADR1 => fsm_module_state(3),
      ADR2 => fsm_module_nextstate_cmp_eq0002,
      ADR3 => fsm_module_state(2),
      O => fsm_module_state_mux0001(0)
    );
  waitcnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(18),
      O => waitcnt_1_DXMUX_4284
    );
  waitcnt_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(19),
      O => waitcnt_1_DYMUX_4271
    );
  waitcnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_1_CLKINV_4262
    );
  waitcnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_1_CEINV_4261
    );
  waitcnt_mux0002_19_1 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => waitcnt_addsub0000(0),
      O => waitcnt_mux0002(19)
    );
  waitcnt_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(16),
      O => waitcnt_3_DXMUX_4322
    );
  waitcnt_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(17),
      O => waitcnt_3_DYMUX_4309
    );
  waitcnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_3_CLKINV_4300
    );
  waitcnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_3_CEINV_4299
    );
  waitcnt_mux0002_17_1 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X27Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => waitcnt_addsub0000(2),
      ADR2 => fsm_module_state(0),
      ADR3 => fsm_module_state(2),
      O => waitcnt_mux0002(17)
    );
  waitcnt_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(14),
      O => waitcnt_5_DXMUX_4360
    );
  waitcnt_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(15),
      O => waitcnt_5_DYMUX_4347
    );
  waitcnt_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_5_CLKINV_4338
    );
  waitcnt_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_5_CEINV_4337
    );
  waitcnt_mux0002_15_1 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X28Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => waitcnt_addsub0000(4),
      O => waitcnt_mux0002(15)
    );
  waitcnt_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(12),
      O => waitcnt_7_DXMUX_4398
    );
  waitcnt_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(13),
      O => waitcnt_7_DYMUX_4385
    );
  waitcnt_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_7_CLKINV_4376
    );
  waitcnt_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_7_CEINV_4375
    );
  waitcnt_mux0002_13_1 : X_LUT4
    generic map(
      INIT => X"FDFD",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => fsm_module_state(2),
      ADR1 => fsm_module_state(0),
      ADR2 => waitcnt_addsub0000(6),
      ADR3 => VCC,
      O => waitcnt_mux0002(13)
    );
  waitcnt_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(10),
      O => waitcnt_9_DXMUX_4436
    );
  waitcnt_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(11),
      O => waitcnt_9_DYMUX_4423
    );
  waitcnt_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_9_CLKINV_4414
    );
  waitcnt_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_9_CEINV_4413
    );
  waitcnt_mux0002_11_1 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => waitcnt_addsub0000(8),
      O => waitcnt_mux0002(11)
    );
  rstcnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_rstcnt1,
      O => rstcnt_1_DXMUX_4478
    );
  rstcnt_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_rstcnt,
      O => rstcnt_1_DYMUX_4463
    );
  rstcnt_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => rsti_IBUF_1568,
      O => rstcnt_1_SRINV_4453
    );
  rstcnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => rstcnt_1_CLKINV_4452
    );
  rstcnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => rstcnt_1_CEINV_4451
    );
  Mcount_rstcnt_xor_0_11 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X23Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => fsm_module_state(0),
      ADR3 => rstcnt(0),
      O => Mcount_rstcnt
    );
  cmdcnt_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_3_FXMUX_4522,
      O => cmdcnt_3_DXMUX_4523
    );
  cmdcnt_3_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt3,
      O => cmdcnt_3_FXMUX_4522
    );
  cmdcnt_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_3_GYMUX_4509,
      O => cmdcnt_3_DYMUX_4510
    );
  cmdcnt_3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt2,
      O => cmdcnt_3_GYMUX_4509
    );
  cmdcnt_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_3_SRINV_4501
    );
  cmdcnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_3_CLKINV_4500
    );
  cmdcnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_3_CEINV_4499
    );
  Mcount_cmdcnt_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => VCC,
      O => Mcount_cmdcnt2
    );
  spi_module_cnt_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Result(2),
      O => spi_module_cnt_2_DYMUX_4547
    );
  spi_module_cnt_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Mcount_cnt_val_0,
      O => spi_module_cnt_2_SRINV_4538
    );
  spi_module_cnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cnt_2_CLKINV_4537
    );
  spi_module_cnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt_or0000_0,
      O => spi_module_cnt_2_CEINV_4536
    );
  spi_module_cnt_3_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state(0),
      O => spi_module_cnt_3_REVUSED_4574
    );
  spi_module_cnt_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Result(3),
      O => spi_module_cnt_3_DYMUX_4573
    );
  spi_module_cnt_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt_cst,
      O => spi_module_cnt_3_SRINV_4564
    );
  spi_module_cnt_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cnt_3_CLKINV_4563
    );
  spi_module_cnt_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt_or0000_0,
      O => spi_module_cnt_3_CEINV_4562
    );
  waitcnt_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(8),
      O => waitcnt_11_DXMUX_4614
    );
  waitcnt_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(9),
      O => waitcnt_11_DYMUX_4601
    );
  waitcnt_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_11_CLKINV_4592
    );
  waitcnt_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_11_CEINV_4591
    );
  waitcnt_mux0002_9_1 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => fsm_module_state(2),
      ADR2 => waitcnt_addsub0000(10),
      ADR3 => VCC,
      O => waitcnt_mux0002(9)
    );
  waitcnt_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(6),
      O => waitcnt_13_DXMUX_4652
    );
  waitcnt_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(7),
      O => waitcnt_13_DYMUX_4639
    );
  waitcnt_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_13_CLKINV_4630
    );
  waitcnt_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_13_CEINV_4629
    );
  waitcnt_mux0002_7_1 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => fsm_module_state(2),
      ADR1 => fsm_module_state(0),
      ADR2 => VCC,
      ADR3 => waitcnt_addsub0000(12),
      O => waitcnt_mux0002(7)
    );
  waitcnt_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(4),
      O => waitcnt_15_DXMUX_4690
    );
  waitcnt_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(5),
      O => waitcnt_15_DYMUX_4677
    );
  waitcnt_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_15_CLKINV_4668
    );
  waitcnt_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_15_CEINV_4667
    );
  waitcnt_mux0002_5_1 : X_LUT4
    generic map(
      INIT => X"FDFD",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => fsm_module_state(2),
      ADR1 => fsm_module_state(0),
      ADR2 => waitcnt_addsub0000(14),
      ADR3 => VCC,
      O => waitcnt_mux0002(5)
    );
  waitcnt_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(2),
      O => waitcnt_17_DXMUX_4728
    );
  waitcnt_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(3),
      O => waitcnt_17_DYMUX_4715
    );
  waitcnt_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_17_CLKINV_4706
    );
  waitcnt_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_17_CEINV_4705
    );
  waitcnt_mux0002_3_1 : X_LUT4
    generic map(
      INIT => X"FFCF",
      LOC => "SLICE_X28Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => waitcnt_addsub0000(16),
      O => waitcnt_mux0002(3)
    );
  waitcnt_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(0),
      O => waitcnt_19_DXMUX_4766
    );
  waitcnt_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => waitcnt_mux0002(1),
      O => waitcnt_19_DYMUX_4753
    );
  waitcnt_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => waitcnt_19_CLKINV_4744
    );
  waitcnt_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_1614,
      O => waitcnt_19_CEINV_4743
    );
  waitcnt_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => waitcnt_addsub0000(18),
      ADR3 => fsm_module_state(2),
      O => waitcnt_mux0002(1)
    );
  memory_module_Mrom_data_rom000118_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000118,
      O => memory_module_Mrom_data_rom000118_0
    );
  memory_module_Mrom_data_rom000118_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000120,
      O => memory_module_Mrom_data_rom000120_0
    );
  memory_module_Mrom_data_rom00012011 : X_LUT4
    generic map(
      INIT => X"0428",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom000120
    );
  N43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => N43,
      O => N43_0
    );
  N43_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_1_98_4809,
      O => leds_1_98_0
    );
  leds_1_98 : X_LUT4
    generic map(
      INIT => X"3737",
      LOC => "SLICE_X24Y15"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom0001112_5_f5,
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(6),
      ADR3 => VCC,
      O => leds_1_98_4809
    );
  memory_module_Mrom_data_rom00012111 : X_LUT4
    generic map(
      INIT => X"AB37",
      LOC => "SLICE_X12Y3"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom00012
    );
  memory_module_Mrom_data_rom000121_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000121,
      O => memory_module_Mrom_data_rom000121_0
    );
  memory_module_Mrom_data_rom000121_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00012,
      O => memory_module_Mrom_data_rom00012_0
    );
  spi_module_cdata_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001,
      O => spi_module_cdata_not0001_0
    );
  spi_module_cdata_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Mcount_cnt_val,
      O => spi_module_Mcount_cnt_val_0
    );
  spi_module_Mcount_cnt_val1 : X_LUT4
    generic map(
      INIT => X"FCEC",
      LOC => "SLICE_X20Y14"
    )
    port map (
      ADR0 => fsm_module_state(1),
      ADR1 => fsm_module_state(0),
      ADR2 => slowclk_1614,
      ADR3 => fsm_module_state(3),
      O => spi_module_Mcount_cnt_val
    );
  memory_module_Mrom_data_rom0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0001,
      O => memory_module_Mrom_data_rom0001_0
    );
  memory_module_Mrom_data_rom0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom0000,
      O => memory_module_Mrom_data_rom0000_0
    );
  memory_module_Mrom_data_rom00001 : X_LUT4
    generic map(
      INIT => X"336C",
      LOC => "SLICE_X13Y1"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom0000
    );
  cs_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cs_1642,
      O => cs_OBUF_DYMUX_4896
    );
  cs_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cs_OBUF_CLKINV_4894
    );
  spi_module_cnt_cst_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt_or0000,
      O => spi_module_cnt_or0000_0
    );
  spi_module_cnt_or00001 : X_LUT4
    generic map(
      INIT => X"EF0F",
      LOC => "SLICE_X21Y17"
    )
    port map (
      ADR0 => fsm_module_state(3),
      ADR1 => fsm_module_state(1),
      ADR2 => spi_module_sdo_cmp_eq0000,
      ADR3 => slowclk_1614,
      O => spi_module_cnt_or0000
    );
  N14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  N14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 638 ps
    )
    port map (
      I => N60,
      O => N60_0
    );
  memory_module_Mrom_data_rom0001371_5_SW0 : X_LUT4
    generic map(
      INIT => X"6565",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => VCC,
      O => N60
    );
  memory_module_Mrom_data_rom00013_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00013,
      O => memory_module_Mrom_data_rom00013_0
    );
  memory_module_Mrom_data_rom00013_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => N46,
      O => N46_0
    );
  memory_module_Mrom_data_rom000051_6_SW0 : X_LUT4
    generic map(
      INIT => X"EF4E",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(4),
      ADR3 => cmdcnt(1),
      O => N46
    );
  memory_module_Mrom_data_rom00011511 : X_LUT4
    generic map(
      INIT => X"10E2",
      LOC => "SLICE_X25Y5"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_0_1_1644,
      ADR2 => cmdcnt_1_2_1633,
      ADR3 => cmdcnt_3_1_1645,
      O => memory_module_Mrom_data_rom000115
    );
  memory_module_Mrom_data_rom000112_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000112,
      O => memory_module_Mrom_data_rom000112_0
    );
  memory_module_Mrom_data_rom000112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000115,
      O => memory_module_Mrom_data_rom000115_0
    );
  memory_module_Mrom_data_rom00011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00011_5017,
      O => memory_module_Mrom_data_rom00011_0
    );
  memory_module_Mrom_data_rom00011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000131_5010,
      O => memory_module_Mrom_data_rom000131_0
    );
  memory_module_Mrom_data_rom00013111 : X_LUT4
    generic map(
      INIT => X"A4F0",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000131_5010
    );
  memory_module_Mrom_data_rom000133_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000133,
      O => memory_module_Mrom_data_rom000133_0
    );
  memory_module_Mrom_data_rom000133_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00001_5034,
      O => memory_module_Mrom_data_rom00001_0
    );
  memory_module_Mrom_data_rom0000111 : X_LUT4
    generic map(
      INIT => X"FFAD",
      LOC => "SLICE_X10Y3"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom00001_5034
    );
  slowclk_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_BYINV_5050,
      O => slowclk_DYMUX_5051
    );
  slowclk_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => slowclk_BYINV_5050
    );
  slowclk_SRINV : X_INV
    generic map(
      LOC => "SLICE_X23Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => slowclk_and0000,
      O => slowclk_SRINVNOT
    );
  slowclk_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => slowclk_CLKINV_5048
    );
  memory_module_Mrom_data_rom000138_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000138,
      O => memory_module_Mrom_data_rom000138_0
    );
  memory_module_Mrom_data_rom000138_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000125,
      O => memory_module_Mrom_data_rom000125_0
    );
  memory_module_Mrom_data_rom00012511 : X_LUT4
    generic map(
      INIT => X"0406",
      LOC => "SLICE_X11Y3"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000125
    );
  memory_module_Mrom_data_rom000145_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000145,
      O => memory_module_Mrom_data_rom000145_0
    );
  memory_module_Mrom_data_rom000145_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => N54,
      O => N54_0
    );
  memory_module_Mrom_data_rom0001512_51_SW0 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cmdcnt(1),
      ADR2 => VCC,
      ADR3 => cmdcnt(0),
      O => N54
    );
  memory_module_Mrom_data_rom000124_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000124,
      O => memory_module_Mrom_data_rom000124_0
    );
  memory_module_Mrom_data_rom000124_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000142,
      O => memory_module_Mrom_data_rom000142_0
    );
  memory_module_Mrom_data_rom00014211 : X_LUT4
    generic map(
      INIT => X"5444",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(2),
      O => memory_module_Mrom_data_rom000142
    );
  memory_module_Mrom_data_rom00016_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00016,
      O => memory_module_Mrom_data_rom00016_0
    );
  memory_module_Mrom_data_rom00016_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000113,
      O => memory_module_Mrom_data_rom000113_0
    );
  memory_module_Mrom_data_rom0001131 : X_LUT4
    generic map(
      INIT => X"85E8",
      LOC => "SLICE_X26Y5"
    )
    port map (
      ADR0 => cmdcnt_0_1_1644,
      ADR1 => cmdcnt_2_1_1646,
      ADR2 => cmdcnt_3_1_1645,
      ADR3 => cmdcnt_1_2_1633,
      O => memory_module_Mrom_data_rom000113
    );
  memory_module_Mrom_data_rom00018_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00018,
      O => memory_module_Mrom_data_rom00018_0
    );
  memory_module_Mrom_data_rom00018_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000114,
      O => memory_module_Mrom_data_rom000114_0
    );
  memory_module_Mrom_data_rom0001141 : X_LUT4
    generic map(
      INIT => X"4C34",
      LOC => "SLICE_X27Y4"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_1_1_1647,
      ADR2 => cmdcnt_0_2_1648,
      ADR3 => cmdcnt_3_1_1645,
      O => memory_module_Mrom_data_rom000114
    );
  memory_module_Mrom_data_rom000126_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000126,
      O => memory_module_Mrom_data_rom000126_0
    );
  memory_module_Mrom_data_rom000126_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000127,
      O => memory_module_Mrom_data_rom000127_0
    );
  memory_module_Mrom_data_rom00012711 : X_LUT4
    generic map(
      INIT => X"0560",
      LOC => "SLICE_X11Y2"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000127
    );
  memory_module_Mrom_data_rom000132_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000132,
      O => memory_module_Mrom_data_rom000132_0
    );
  memory_module_Mrom_data_rom000132_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000130,
      O => memory_module_Mrom_data_rom000130_0
    );
  memory_module_Mrom_data_rom0001301 : X_LUT4
    generic map(
      INIT => X"0F07",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000130
    );
  spi_module_cdata_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_mux0001(6),
      O => spi_module_cdata_2_DXMUX_5252
    );
  spi_module_cdata_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_2_OBUF_pack_1,
      O => leds_2_OBUF_1566
    );
  spi_module_cdata_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cdata_2_CLKINV_5235
    );
  spi_module_cdata_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata_not0001_0,
      O => spi_module_cdata_2_CEINV_5234
    );
  leds_2_Q : X_LUT4
    generic map(
      INIT => X"0C55",
      LOC => "SLICE_X24Y6"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom0001171_5_f5,
      ADR1 => N14_0,
      ADR2 => N36_0,
      ADR3 => cmdcnt(6),
      O => leds_2_OBUF_pack_1
    );
  N36_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => N36,
      O => N36_0
    );
  N36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_6_23_5270,
      O => cmdcnt_6_23_0
    );
  cmdcnt_6_23 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => cmdcnt(5),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(6),
      ADR3 => cmdcnt(4),
      O => cmdcnt_6_23_5270
    );
  memory_module_Mrom_data_rom000146_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000146,
      O => memory_module_Mrom_data_rom000146_0
    );
  memory_module_Mrom_data_rom000146_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000134,
      O => memory_module_Mrom_data_rom000134_0
    );
  memory_module_Mrom_data_rom0001341 : X_LUT4
    generic map(
      INIT => X"34A8",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000134
    );
  spi_module_cs_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cs_BYINV_5311,
      O => spi_module_cs_DYMUX_5312
    );
  spi_module_cs_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => spi_module_cs_BYINV_5311
    );
  spi_module_cs_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_or0000_0,
      O => spi_module_cs_SRINV_5310
    );
  spi_module_cs_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cs_CLKINV_5309
    );
  memory_module_Mrom_data_rom000139_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000139,
      O => memory_module_Mrom_data_rom000139_0
    );
  memory_module_Mrom_data_rom000139_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000119,
      O => memory_module_Mrom_data_rom000119_0
    );
  memory_module_Mrom_data_rom0001191 : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X12Y4"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom000119
    );
  memory_module_Mrom_data_rom0001371 : X_LUT4
    generic map(
      INIT => X"D515",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000137
    );
  N56_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => N56,
      O => N56_0
    );
  N56_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom000137,
      O => memory_module_Mrom_data_rom000137_0
    );
  memory_module_Mrom_data_rom0001711 : X_LUT4
    generic map(
      INIT => X"CE32",
      LOC => "SLICE_X27Y5"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_3_1_1645,
      ADR2 => cmdcnt_1_1_1647,
      ADR3 => cmdcnt_0_1_1644,
      O => memory_module_Mrom_data_rom00017
    );
  memory_module_Mrom_data_rom00019_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00019,
      O => memory_module_Mrom_data_rom00019_0
    );
  memory_module_Mrom_data_rom00019_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => memory_module_Mrom_data_rom00017,
      O => memory_module_Mrom_data_rom00017_0
    );
  Mcount_cmdcnt_xor_1_1_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X12Y2"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(5),
      ADR3 => cmdcnt(6),
      O => Mcount_cmdcnt_xor_1_1_SW0_O_pack_4
    );
  cmdcnt_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_1_FXMUX_5428,
      O => cmdcnt_1_DXMUX_5429
    );
  cmdcnt_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_1_FXMUX_5428,
      O => Mcount_cmdcnt1_0
    );
  cmdcnt_1_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt1,
      O => cmdcnt_1_FXMUX_5428
    );
  cmdcnt_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(0),
      O => cmdcnt_1_DYMUX_5416
    );
  cmdcnt_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt_xor_1_1_SW0_O_pack_4,
      O => Mcount_cmdcnt_xor_1_1_SW0_O
    );
  cmdcnt_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_1_SRINV_5407
    );
  cmdcnt_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_1_CLKINV_5406
    );
  cmdcnt_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_1_CEINV_5405
    );
  cmdcnt_0_1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X27Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(0),
      O => cmdcnt_0_1_DYMUX_5444
    );
  cmdcnt_0_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_0_1_SRINV_5442
    );
  cmdcnt_0_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_0_1_CLKINV_5441
    );
  cmdcnt_0_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_0_1_CEINV_5440
    );
  cmdcnt_0_2_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X26Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt(0),
      O => cmdcnt_0_2_DYMUX_5459
    );
  cmdcnt_0_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_0_2_SRINV_5457
    );
  cmdcnt_0_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_0_2_CLKINV_5456
    );
  cmdcnt_0_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y7",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_0_2_CEINV_5455
    );
  spi_module_dco_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cdata(8),
      O => spi_module_dco_DYMUX_5472
    );
  spi_module_dco_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_or0000_0,
      O => spi_module_dco_SRINV_5470
    );
  spi_module_dco_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_dco_CLKINV_5469
    );
  sdo_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_sdo_1547,
      O => sdo_OBUF_DYMUX_5482
    );
  sdo_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => sdo_OBUF_CLKINV_5480
    );
  cmdcnt_1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt1_0,
      O => cmdcnt_1_1_DYMUX_5495
    );
  cmdcnt_1_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_1_1_SRINV_5493
    );
  cmdcnt_1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_1_1_CLKINV_5492
    );
  cmdcnt_1_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_1_1_CEINV_5491
    );
  cmdcnt_1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_cmdcnt1_0,
      O => cmdcnt_1_2_DYMUX_5510
    );
  cmdcnt_1_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_1_2_SRINV_5508
    );
  cmdcnt_1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_1_2_CLKINV_5507
    );
  cmdcnt_1_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y6",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_1_2_CEINV_5506
    );
  cmdcnt_2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_3_GYMUX_4509,
      O => cmdcnt_2_1_DYMUX_5525
    );
  cmdcnt_2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_2_1_SRINV_5523
    );
  cmdcnt_2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_2_1_CLKINV_5522
    );
  cmdcnt_2_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y4",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_2_1_CEINV_5521
    );
  cmdcnt_3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_3_FXMUX_4522,
      O => cmdcnt_3_1_DYMUX_5540
    );
  cmdcnt_3_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_3_1_SRINV_5538
    );
  cmdcnt_3_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_3_1_CLKINV_5537
    );
  cmdcnt_3_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y5",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_3_1_CEINV_5536
    );
  cmdcnt_4_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_4_FXMUX_3662,
      O => cmdcnt_4_1_DYMUX_5555
    );
  cmdcnt_4_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_4_1_SRINV_5553
    );
  cmdcnt_4_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_4_1_CLKINV_5552
    );
  cmdcnt_4_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y13",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_4_1_CEINV_5551
    );
  spi_module_cnt_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt(0),
      O => spi_module_cnt_0_DXMUX_5588
    );
  spi_module_cnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Result(1),
      O => spi_module_cnt_0_DYMUX_5581
    );
  spi_module_cnt_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_Mcount_cnt_val_0,
      O => spi_module_cnt_0_SRINV_5571
    );
  spi_module_cnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => spi_module_cnt_0_CLKINV_5570
    );
  spi_module_cnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_cnt_or0000_0,
      O => spi_module_cnt_0_CEINV_5569
    );
  cmdcnt_5_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_5_FXMUX_3928,
      O => cmdcnt_5_1_DYMUX_5603
    );
  cmdcnt_5_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_and0000_0,
      O => cmdcnt_5_1_SRINV_5601
    );
  cmdcnt_5_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => cmdcnt_5_1_CLKINV_5600
    );
  cmdcnt_5_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y12",
      PATHPULSE => 638 ps
    )
    port map (
      I => cmdcnt_not0002_0,
      O => cmdcnt_5_1_CEINV_5599
    );
  dc_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => spi_module_dco_1651,
      O => dc_OBUF_DYMUX_5614
    );
  dc_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => dc_OBUF_CLKINV_5612
    );
  Mcount_slowcnt_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X3Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_slowcnt_lut(0)
    );
  slowcnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y27",
      INIT => '0'
    )
    port map (
      I => slowcnt_0_DXMUX_1697,
      CE => VCC,
      CLK => slowcnt_0_CLKINV_1660,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_0_SRINV_1661,
      O => slowcnt(0)
    );
  slowcnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      I => slowcnt_2_DYMUX_1732,
      CE => VCC,
      CLK => slowcnt_2_CLKINV_1710,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_2_SRINV_1711,
      O => slowcnt(3)
    );
  slowcnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      I => slowcnt_2_DXMUX_1749,
      CE => VCC,
      CLK => slowcnt_2_CLKINV_1710,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_2_SRINV_1711,
      O => slowcnt(2)
    );
  slowcnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      I => slowcnt_4_DYMUX_1784,
      CE => VCC,
      CLK => slowcnt_4_CLKINV_1762,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_4_SRINV_1763,
      O => slowcnt(5)
    );
  slowcnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      I => slowcnt_4_DXMUX_1801,
      CE => VCC,
      CLK => slowcnt_4_CLKINV_1762,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_4_SRINV_1763,
      O => slowcnt(4)
    );
  slowcnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      I => slowcnt_6_DYMUX_1836,
      CE => VCC,
      CLK => slowcnt_6_CLKINV_1814,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_6_SRINV_1815,
      O => slowcnt(7)
    );
  slowcnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      I => slowcnt_6_DXMUX_1853,
      CE => VCC,
      CLK => slowcnt_6_CLKINV_1814,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_6_SRINV_1815,
      O => slowcnt(6)
    );
  slowcnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => slowcnt_8_DYMUX_1888,
      CE => VCC,
      CLK => slowcnt_8_CLKINV_1866,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_8_SRINV_1867,
      O => slowcnt(9)
    );
  slowcnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => slowcnt_8_DXMUX_1905,
      CE => VCC,
      CLK => slowcnt_8_CLKINV_1866,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_8_SRINV_1867,
      O => slowcnt(8)
    );
  slowcnt_11 : X_SFF
    generic map(
      LOC => "SLICE_X3Y32",
      INIT => '0'
    )
    port map (
      I => slowcnt_10_DYMUX_1940,
      CE => VCC,
      CLK => slowcnt_10_CLKINV_1918,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_10_SRINV_1919,
      O => slowcnt(11)
    );
  slowcnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X3Y32",
      INIT => '0'
    )
    port map (
      I => slowcnt_10_DXMUX_1957,
      CE => VCC,
      CLK => slowcnt_10_CLKINV_1918,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_10_SRINV_1919,
      O => slowcnt(10)
    );
  slowcnt_13 : X_SFF
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => '0'
    )
    port map (
      I => slowcnt_12_DYMUX_1992,
      CE => VCC,
      CLK => slowcnt_12_CLKINV_1970,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_12_SRINV_1971,
      O => slowcnt(13)
    );
  slowcnt_12 : X_SFF
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => '0'
    )
    port map (
      I => slowcnt_12_DXMUX_2009,
      CE => VCC,
      CLK => slowcnt_12_CLKINV_1970,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_12_SRINV_1971,
      O => slowcnt(12)
    );
  slowcnt_15 : X_SFF
    generic map(
      LOC => "SLICE_X3Y34",
      INIT => '0'
    )
    port map (
      I => slowcnt_14_DYMUX_2044,
      CE => VCC,
      CLK => slowcnt_14_CLKINV_2022,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_14_SRINV_2023,
      O => slowcnt(15)
    );
  slowclk_and0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y34"
    )
    port map (
      ADR0 => slowcnt(13),
      ADR1 => slowcnt(14),
      ADR2 => slowcnt(15),
      ADR3 => slowcnt(5),
      O => slowclk_and0000_wg_lut(2)
    );
  slowclk_and0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => slowcnt(20),
      ADR1 => slowcnt(19),
      ADR2 => slowcnt(21),
      ADR3 => slowcnt(3),
      O => slowclk_and0000_wg_lut(4)
    );
  slowclk_and0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => slowcnt(1),
      ADR1 => slowcnt(27),
      ADR2 => slowcnt(26),
      ADR3 => slowcnt(25),
      O => slowclk_and0000_wg_lut(6)
    );
  Msub_waitcnt_addsub0000_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => waitcnt(2),
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(2)
    );
  Msub_waitcnt_addsub0000_lut_4_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(4),
      O => Msub_waitcnt_addsub0000_lut(4)
    );
  Msub_waitcnt_addsub0000_lut_6_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => waitcnt(6),
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(6)
    );
  slowcnt_22 : X_SFF
    generic map(
      LOC => "SLICE_X3Y38",
      INIT => '0'
    )
    port map (
      I => slowcnt_22_DXMUX_2269,
      CE => VCC,
      CLK => slowcnt_22_CLKINV_2230,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_22_SRINV_2231,
      O => slowcnt(22)
    );
  slowcnt_25 : X_SFF
    generic map(
      LOC => "SLICE_X3Y39",
      INIT => '0'
    )
    port map (
      I => slowcnt_24_DYMUX_2304,
      CE => VCC,
      CLK => slowcnt_24_CLKINV_2282,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_24_SRINV_2283,
      O => slowcnt(25)
    );
  slowcnt_24 : X_SFF
    generic map(
      LOC => "SLICE_X3Y39",
      INIT => '0'
    )
    port map (
      I => slowcnt_24_DXMUX_2321,
      CE => VCC,
      CLK => slowcnt_24_CLKINV_2282,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_24_SRINV_2283,
      O => slowcnt(24)
    );
  slowcnt_27 : X_SFF
    generic map(
      LOC => "SLICE_X3Y40",
      INIT => '0'
    )
    port map (
      I => slowcnt_26_DYMUX_2356,
      CE => VCC,
      CLK => slowcnt_26_CLKINV_2334,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_26_SRINV_2335,
      O => slowcnt(27)
    );
  slowcnt_26 : X_SFF
    generic map(
      LOC => "SLICE_X3Y40",
      INIT => '0'
    )
    port map (
      I => slowcnt_26_DXMUX_2373,
      CE => VCC,
      CLK => slowcnt_26_CLKINV_2334,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_26_SRINV_2335,
      O => slowcnt(26)
    );
  slowcnt_29 : X_SFF
    generic map(
      LOC => "SLICE_X3Y41",
      INIT => '0'
    )
    port map (
      I => slowcnt_28_DYMUX_2408,
      CE => VCC,
      CLK => slowcnt_28_CLKINV_2386,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_28_SRINV_2387,
      O => slowcnt(29)
    );
  slowcnt_28 : X_SFF
    generic map(
      LOC => "SLICE_X3Y41",
      INIT => '0'
    )
    port map (
      I => slowcnt_28_DXMUX_2425,
      CE => VCC,
      CLK => slowcnt_28_CLKINV_2386,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_28_SRINV_2387,
      O => slowcnt(28)
    );
  slowcnt_30 : X_SFF
    generic map(
      LOC => "SLICE_X3Y42",
      INIT => '0'
    )
    port map (
      I => slowcnt_30_DXMUX_2449,
      CE => VCC,
      CLK => slowcnt_30_CLKINV_2435,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_30_SRINV_2436,
      O => slowcnt(30)
    );
  slowclk_and0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X1Y33"
    )
    port map (
      ADR0 => slowcnt(8),
      ADR1 => VCC,
      ADR2 => slowcnt(7),
      ADR3 => slowcnt(9),
      O => slowclk_and0000_wg_lut(0)
    );
  slowcnt_14 : X_SFF
    generic map(
      LOC => "SLICE_X3Y34",
      INIT => '0'
    )
    port map (
      I => slowcnt_14_DXMUX_2061,
      CE => VCC,
      CLK => slowcnt_14_CLKINV_2022,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_14_SRINV_2023,
      O => slowcnt(14)
    );
  slowcnt_17 : X_SFF
    generic map(
      LOC => "SLICE_X3Y35",
      INIT => '0'
    )
    port map (
      I => slowcnt_16_DYMUX_2096,
      CE => VCC,
      CLK => slowcnt_16_CLKINV_2074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_16_SRINV_2075,
      O => slowcnt(17)
    );
  slowcnt_16 : X_SFF
    generic map(
      LOC => "SLICE_X3Y35",
      INIT => '0'
    )
    port map (
      I => slowcnt_16_DXMUX_2113,
      CE => VCC,
      CLK => slowcnt_16_CLKINV_2074,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_16_SRINV_2075,
      O => slowcnt(16)
    );
  slowcnt_19 : X_SFF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      I => slowcnt_18_DYMUX_2148,
      CE => VCC,
      CLK => slowcnt_18_CLKINV_2126,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_18_SRINV_2127,
      O => slowcnt(19)
    );
  slowcnt_18 : X_SFF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      I => slowcnt_18_DXMUX_2165,
      CE => VCC,
      CLK => slowcnt_18_CLKINV_2126,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_18_SRINV_2127,
      O => slowcnt(18)
    );
  slowcnt_21 : X_SFF
    generic map(
      LOC => "SLICE_X3Y37",
      INIT => '0'
    )
    port map (
      I => slowcnt_20_DYMUX_2200,
      CE => VCC,
      CLK => slowcnt_20_CLKINV_2178,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_20_SRINV_2179,
      O => slowcnt(21)
    );
  slowcnt_20 : X_SFF
    generic map(
      LOC => "SLICE_X3Y37",
      INIT => '0'
    )
    port map (
      I => slowcnt_20_DXMUX_2217,
      CE => VCC,
      CLK => slowcnt_20_CLKINV_2178,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_20_SRINV_2179,
      O => slowcnt(20)
    );
  slowcnt_23 : X_SFF
    generic map(
      LOC => "SLICE_X3Y38",
      INIT => '0'
    )
    port map (
      I => slowcnt_22_DYMUX_2252,
      CE => VCC,
      CLK => slowcnt_22_CLKINV_2230,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowcnt_22_SRINV_2231,
      O => slowcnt(23)
    );
  Msub_waitcnt_addsub0000_lut_8_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => waitcnt(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(8)
    );
  Msub_waitcnt_addsub0000_lut_10_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => waitcnt(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(10)
    );
  Msub_waitcnt_addsub0000_lut_12_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => waitcnt(12),
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(12)
    );
  Msub_waitcnt_addsub0000_lut_14_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => waitcnt(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(14)
    );
  Msub_waitcnt_addsub0000_lut_16_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => waitcnt(16),
      O => Msub_waitcnt_addsub0000_lut(16)
    );
  Msub_waitcnt_addsub0000_lut_18_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => waitcnt(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Msub_waitcnt_addsub0000_lut(18)
    );
  spi_module_cdata_8 : X_FF
    generic map(
      LOC => "SLICE_X18Y8",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_8_DXMUX_3794,
      CE => spi_module_cdata_8_CEINV_3778,
      CLK => spi_module_cdata_8_CLKINV_3779,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(8)
    );
  fsm_module_state_mux0001_1_Q : X_LUT4
    generic map(
      INIT => X"0455",
      LOC => "SLICE_X27Y17"
    )
    port map (
      ADR0 => rsti_IBUF_1568,
      ADR1 => fsm_module_state(2),
      ADR2 => fsm_module_nextstate_cmp_eq0002,
      ADR3 => fsm_module_state_mux0001_1_SW0_O,
      O => fsm_module_state_mux0001(1)
    );
  fsm_module_state_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y17",
      INIT => '0'
    )
    port map (
      I => fsm_module_state_2_DXMUX_3827,
      CE => fsm_module_state_2_CEINV_3809,
      CLK => fsm_module_state_2_CLKINV_3810,
      SET => GND,
      RST => GND,
      O => fsm_module_state(2)
    );
  fsm_module_state_mux0001_2_Q : X_LUT4
    generic map(
      INIT => X"0323",
      LOC => "SLICE_X23Y12"
    )
    port map (
      ADR0 => fsm_module_state(1),
      ADR1 => rsti_IBUF_1568,
      ADR2 => fsm_module_state_mux0001_2_SW0_O,
      ADR3 => fsm_module_nextstate_cmp_eq0001_0,
      O => fsm_module_state_mux0001(2)
    );
  fsm_module_state_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y12",
      INIT => '0'
    )
    port map (
      I => fsm_module_state_1_DXMUX_3860,
      CE => fsm_module_state_1_CEINV_3843,
      CLK => fsm_module_state_1_CLKINV_3844,
      SET => GND,
      RST => GND,
      O => fsm_module_state(1)
    );
  spi_module_cdata_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"1D55",
      LOC => "SLICE_X21Y14"
    )
    port map (
      ADR0 => leds_1_136_SW0_O,
      ADR1 => leds_1_98_0,
      ADR2 => N20_0,
      ADR3 => leds_1_85_0,
      O => spi_module_cdata_mux0001(7)
    );
  spi_module_cdata_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_1_DXMUX_3893,
      CE => spi_module_cdata_1_CEINV_3877,
      CLK => spi_module_cdata_1_CLKINV_3878,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(1)
    );
  Mcount_cmdcnt5 : X_LUT4
    generic map(
      INIT => X"A6AA",
      LOC => "SLICE_X18Y13"
    )
    port map (
      ADR0 => cmdcnt(5),
      ADR1 => cmdcnt(3),
      ADR2 => Mcount_cmdcnt5_SW0_O,
      ADR3 => cmdcnt(2),
      O => Mcount_cmdcnt5_3926
    );
  cmdcnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => '0'
    )
    port map (
      I => cmdcnt_5_DXMUX_3929,
      CE => cmdcnt_5_CEINV_3911,
      CLK => cmdcnt_5_CLKINV_3912,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_5_SRINV_3913,
      O => cmdcnt(5)
    );
  spi_module_cdata_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"0155",
      LOC => "SLICE_X19Y9"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => cmdcnt(6),
      ADR2 => memory_module_Mrom_data_rom000151_5_f5,
      ADR3 => cmdcnt_6_42_SW0_O,
      O => spi_module_cdata_mux0001(8)
    );
  spi_module_cdata_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y9",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_0_DXMUX_3963,
      CE => spi_module_cdata_0_CEINV_3947,
      CLK => spi_module_cdata_0_CLKINV_3948,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(0)
    );
  Mcount_cmdcnt6 : X_LUT4
    generic map(
      INIT => X"C6CC",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(6),
      ADR2 => Mcount_cmdcnt6_SW0_O,
      ADR3 => cmdcnt(3),
      O => Mcount_cmdcnt6_3995
    );
  cmdcnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      I => cmdcnt_6_DXMUX_3998,
      CE => cmdcnt_6_CEINV_3981,
      CLK => cmdcnt_6_CLKINV_3982,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_6_SRINV_3983,
      O => cmdcnt(6)
    );
  fsm_module_nextstate_cmp_eq0001 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X22Y12"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => fsm_module_nextstate_cmp_eq0001_SW0_O,
      O => fsm_module_nextstate_cmp_eq0001_4025
    );
  leds_1_30_SW1 : X_LUT4
    generic map(
      INIT => X"EEEA",
      LOC => "SLICE_X21Y13"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => cmdcnt(6),
      ADR2 => cmdcnt(3),
      ADR3 => N29,
      O => N40
    );
  fsm_module_nextstate_cmp_eq0002_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y27"
    )
    port map (
      ADR0 => waitcnt(5),
      ADR1 => waitcnt(7),
      ADR2 => waitcnt(6),
      ADR3 => waitcnt(4),
      O => fsm_module_nextstate_cmp_eq0002_wg_lut(0)
    );
  fsm_module_nextstate_cmp_eq0002_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => waitcnt(13),
      ADR1 => waitcnt(1),
      ADR2 => waitcnt(10),
      ADR3 => waitcnt(11),
      O => fsm_module_nextstate_cmp_eq0002_wg_lut(2)
    );
  memory_module_Mrom_data_rom0001371_3_f51 : X_LUT4
    generic map(
      INIT => X"BB11",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => cmdcnt(0),
      ADR2 => VCC,
      ADR3 => memory_module_Mrom_data_rom000137_0,
      O => memory_module_Mrom_data_rom0001371_3_f51_3046
    );
  memory_module_Mrom_data_rom0001371_51 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => memory_module_Mrom_data_rom000134_0,
      ADR2 => memory_module_Mrom_data_rom000133_0,
      ADR3 => cmdcnt(4),
      O => memory_module_Mrom_data_rom0001371_51_3070
    );
  memory_module_Mrom_data_rom0001371_4 : X_LUT4
    generic map(
      INIT => X"CF03",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cmdcnt(4),
      ADR2 => cmdcnt(0),
      ADR3 => memory_module_Mrom_data_rom000137_0,
      O => memory_module_Mrom_data_rom0001371_4_3101
    );
  memory_module_Mrom_data_rom0001512_51 : X_LUT4
    generic map(
      INIT => X"0013",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => N54_0,
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(2),
      O => memory_module_Mrom_data_rom0001512_51_3125
    );
  memory_module_Mrom_data_rom0001441_3_f52 : X_LUT4
    generic map(
      INIT => X"A3A3",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000137_0,
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(4),
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom0001441_3_f52_3156
    );
  memory_module_Mrom_data_rom0001441_51 : X_LUT4
    generic map(
      INIT => X"010B",
      LOC => "SLICE_X13Y5"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => cmdcnt(0),
      ADR2 => N56_0,
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom0001441_51_3180
    );
  spi_module_sdo : X_SFF
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => '0'
    )
    port map (
      I => spi_module_sdo_DYMUX_3209,
      CE => VCC,
      CLK => spi_module_sdo_CLKINV_3197,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => spi_module_sdo_SRINV_3198,
      O => spi_module_sdo_1547
    );
  spi_module_Mmux_sdo_mux0002_4 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => spi_module_cdata(6),
      ADR1 => VCC,
      ADR2 => spi_module_cnt(0),
      ADR3 => spi_module_cdata(7),
      O => spi_module_Mmux_sdo_mux0002_4_3220
    );
  spi_module_Mmux_sdo_mux0002_51 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => spi_module_cnt(0),
      ADR1 => VCC,
      ADR2 => spi_module_cdata(2),
      ADR3 => spi_module_cdata(3),
      O => spi_module_Mmux_sdo_mux0002_51_3244
    );
  memory_module_Mrom_data_rom0001301_4 : X_LUT4
    generic map(
      INIT => X"8B8B",
      LOC => "SLICE_X13Y2"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000130_0,
      ADR1 => cmdcnt(4),
      ADR2 => cmdcnt(0),
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom0001301_4_3275
    );
  memory_module_Mrom_data_rom000051_6 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => N46_0,
      ADR1 => cmdcnt(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom000051_6_3477
    );
  memory_module_Mrom_data_rom0001112_5_f5_G : X_LUT4
    generic map(
      INIT => X"05AF",
      LOC => "SLICE_X26Y4"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => VCC,
      ADR2 => memory_module_Mrom_data_rom00018_0,
      ADR3 => memory_module_Mrom_data_rom00019_0,
      O => N63
    );
  leds_1_1361 : X_LUT4
    generic map(
      INIT => X"0511",
      LOC => "SLICE_X25Y7"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => N29,
      ADR2 => N34,
      ADR3 => cmdcnt(0),
      O => leds_1_136
    );
  memory_module_Mrom_data_rom000151_5_f5_G : X_LUT4
    generic map(
      INIT => X"03CF",
      LOC => "SLICE_X13Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cmdcnt(4),
      ADR2 => memory_module_Mrom_data_rom00012_0,
      ADR3 => memory_module_Mrom_data_rom00013_0,
      O => N69
    );
  leds_3_1681 : X_LUT4
    generic map(
      INIT => X"0047",
      LOC => "SLICE_X12Y6"
    )
    port map (
      ADR0 => N25,
      ADR1 => cmdcnt(0),
      ADR2 => N29,
      ADR3 => cmdcnt(3),
      O => leds_3_168
    );
  memory_module_Mrom_data_rom0001231_5_f5_G : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => memory_module_Mrom_data_rom000121_0,
      ADR2 => VCC,
      ADR3 => memory_module_Mrom_data_rom000120_0,
      O => N65
    );
  cmdcnt_6_421 : X_LUT4
    generic map(
      INIT => X"5703",
      LOC => "SLICE_X12Y1"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(6),
      ADR2 => memory_module_Mrom_data_rom000151_5_f5,
      ADR3 => cmdcnt_6_23_0,
      O => cmdcnt_6_42
    );
  Mcount_cmdcnt41 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X20Y12"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => Mcount_cmdcnt41_3659
    );
  cmdcnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => '0'
    )
    port map (
      I => cmdcnt_4_DXMUX_3663,
      CE => cmdcnt_4_CEINV_3645,
      CLK => cmdcnt_4_CLKINV_3646,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_4_SRINV_3647,
      O => cmdcnt(4)
    );
  memory_module_Mrom_data_rom0001171_5_f5_G : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X25Y4"
    )
    port map (
      ADR0 => cmdcnt(4),
      ADR1 => memory_module_Mrom_data_rom000114_0,
      ADR2 => VCC,
      ADR3 => memory_module_Mrom_data_rom000115_0,
      O => N67
    );
  leds_1_85 : X_LUT4
    generic map(
      INIT => X"CDEF",
      LOC => "SLICE_X24Y8"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => cmdcnt(3),
      ADR2 => memory_module_Mrom_data_rom0001112_5_f5,
      ADR3 => N34,
      O => leds_1_85_3715
    );
  leds_1_136_SW1 : X_LUT4
    generic map(
      INIT => X"FEBA",
      LOC => "SLICE_X25Y15"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => memory_module_Mrom_data_rom0001112_5_f5,
      ADR2 => N43_0,
      ADR3 => leds_1_30_SW4_O,
      O => N20
    );
  spi_module_cdata_mux0001_5_1_SW1 : X_LUT4
    generic map(
      INIT => X"FECE",
      LOC => "SLICE_X12Y10"
    )
    port map (
      ADR0 => N29,
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(0),
      ADR3 => N25,
      O => N50
    );
  spi_module_cdata_mux0001_0_59 : X_LUT4
    generic map(
      INIT => X"1032",
      LOC => "SLICE_X18Y8"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => fsm_module_state(0),
      ADR2 => memory_module_Mrom_data_rom000051_5_f5,
      ADR3 => spi_module_cdata_mux0001_0_47_SW0_O,
      O => spi_module_cdata_mux0001(0)
    );
  memory_module_Mrom_data_rom0001301_51 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X13Y3"
    )
    port map (
      ADR0 => memory_module_Mrom_data_rom000127_0,
      ADR1 => memory_module_Mrom_data_rom000126_0,
      ADR2 => cmdcnt(4),
      ADR3 => VCC,
      O => memory_module_Mrom_data_rom0001301_51_3299
    );
  waitcnt_10 : X_FF
    generic map(
      LOC => "SLICE_X28Y31",
      INIT => '0'
    )
    port map (
      I => waitcnt_11_DYMUX_4601,
      CE => waitcnt_11_CEINV_4591,
      CLK => waitcnt_11_CLKINV_4592,
      SET => GND,
      RST => GND,
      O => waitcnt(10)
    );
  waitcnt_mux0002_8_1 : X_LUT4
    generic map(
      INIT => X"EFEF",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => waitcnt_addsub0000(11),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(8)
    );
  waitcnt_11 : X_FF
    generic map(
      LOC => "SLICE_X28Y31",
      INIT => '0'
    )
    port map (
      I => waitcnt_11_DXMUX_4614,
      CE => waitcnt_11_CEINV_4591,
      CLK => waitcnt_11_CLKINV_4592,
      SET => GND,
      RST => GND,
      O => waitcnt(11)
    );
  waitcnt_12 : X_FF
    generic map(
      LOC => "SLICE_X28Y30",
      INIT => '0'
    )
    port map (
      I => waitcnt_13_DYMUX_4639,
      CE => waitcnt_13_CEINV_4629,
      CLK => waitcnt_13_CLKINV_4630,
      SET => GND,
      RST => GND,
      O => waitcnt(12)
    );
  waitcnt_mux0002_6_1 : X_LUT4
    generic map(
      INIT => X"FBFB",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => waitcnt_addsub0000(13),
      ADR1 => fsm_module_state(2),
      ADR2 => fsm_module_state(0),
      ADR3 => VCC,
      O => waitcnt_mux0002(6)
    );
  waitcnt_13 : X_FF
    generic map(
      LOC => "SLICE_X28Y30",
      INIT => '0'
    )
    port map (
      I => waitcnt_13_DXMUX_4652,
      CE => waitcnt_13_CEINV_4629,
      CLK => waitcnt_13_CLKINV_4630,
      SET => GND,
      RST => GND,
      O => waitcnt(13)
    );
  waitcnt_14 : X_FF
    generic map(
      LOC => "SLICE_X28Y32",
      INIT => '0'
    )
    port map (
      I => waitcnt_15_DYMUX_4677,
      CE => waitcnt_15_CEINV_4667,
      CLK => waitcnt_15_CLKINV_4668,
      SET => GND,
      RST => GND,
      O => waitcnt(14)
    );
  waitcnt_mux0002_4_1 : X_LUT4
    generic map(
      INIT => X"EFEF",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => waitcnt_addsub0000(15),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(4)
    );
  waitcnt_15 : X_FF
    generic map(
      LOC => "SLICE_X28Y32",
      INIT => '0'
    )
    port map (
      I => waitcnt_15_DXMUX_4690,
      CE => waitcnt_15_CEINV_4667,
      CLK => waitcnt_15_CLKINV_4668,
      SET => GND,
      RST => GND,
      O => waitcnt(15)
    );
  waitcnt_16 : X_FF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => waitcnt_17_DYMUX_4715,
      CE => waitcnt_17_CEINV_4705,
      CLK => waitcnt_17_CLKINV_4706,
      SET => GND,
      RST => GND,
      O => waitcnt(16)
    );
  waitcnt_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X28Y33"
    )
    port map (
      ADR0 => waitcnt_addsub0000(17),
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(2)
    );
  waitcnt_17 : X_FF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => waitcnt_17_DXMUX_4728,
      CE => waitcnt_17_CEINV_4705,
      CLK => waitcnt_17_CLKINV_4706,
      SET => GND,
      RST => GND,
      O => waitcnt(17)
    );
  waitcnt_18 : X_FF
    generic map(
      LOC => "SLICE_X28Y34",
      INIT => '0'
    )
    port map (
      I => waitcnt_19_DYMUX_4753,
      CE => waitcnt_19_CEINV_4743,
      CLK => waitcnt_19_CLKINV_4744,
      SET => GND,
      RST => GND,
      O => waitcnt(18)
    );
  waitcnt_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => waitcnt_addsub0000(19),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(0)
    );
  waitcnt_19 : X_FF
    generic map(
      LOC => "SLICE_X28Y34",
      INIT => '0'
    )
    port map (
      I => waitcnt_19_DXMUX_4766,
      CE => waitcnt_19_CEINV_4743,
      CLK => waitcnt_19_CLKINV_4744,
      SET => GND,
      RST => GND,
      O => waitcnt(19)
    );
  memory_module_Mrom_data_rom0001181 : X_LUT4
    generic map(
      INIT => X"1488",
      LOC => "SLICE_X13Y7"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000118
    );
  leds_1_30_SW3 : X_LUT4
    generic map(
      INIT => X"00A8",
      LOC => "SLICE_X24Y15"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => cmdcnt(3),
      ADR2 => N29,
      ADR3 => cmdcnt(0),
      O => N43
    );
  memory_module_Mrom_data_rom0001211 : X_LUT4
    generic map(
      INIT => X"4CD6",
      LOC => "SLICE_X12Y3"
    )
    port map (
      ADR0 => cmdcnt(2),
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000121
    );
  spi_module_cdata_not00011 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X20Y14"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => slowclk_1614,
      ADR2 => fsm_module_state(1),
      ADR3 => fsm_module_state(3),
      O => spi_module_cdata_not0001
    );
  waitcnt_4 : X_FF
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => '0'
    )
    port map (
      I => waitcnt_5_DYMUX_4347,
      CE => waitcnt_5_CEINV_4337,
      CLK => waitcnt_5_CLKINV_4338,
      SET => GND,
      RST => GND,
      O => waitcnt(4)
    );
  waitcnt_mux0002_14_1 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X28Y26"
    )
    port map (
      ADR0 => waitcnt_addsub0000(5),
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(14)
    );
  waitcnt_5 : X_FF
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => '0'
    )
    port map (
      I => waitcnt_5_DXMUX_4360,
      CE => waitcnt_5_CEINV_4337,
      CLK => waitcnt_5_CLKINV_4338,
      SET => GND,
      RST => GND,
      O => waitcnt(5)
    );
  waitcnt_6 : X_FF
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => '0'
    )
    port map (
      I => waitcnt_7_DYMUX_4385,
      CE => waitcnt_7_CEINV_4375,
      CLK => waitcnt_7_CLKINV_4376,
      SET => GND,
      RST => GND,
      O => waitcnt(6)
    );
  waitcnt_mux0002_12_1 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => waitcnt_addsub0000(7),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(12)
    );
  waitcnt_7 : X_FF
    generic map(
      LOC => "SLICE_X28Y29",
      INIT => '0'
    )
    port map (
      I => waitcnt_7_DXMUX_4398,
      CE => waitcnt_7_CEINV_4375,
      CLK => waitcnt_7_CLKINV_4376,
      SET => GND,
      RST => GND,
      O => waitcnt(7)
    );
  waitcnt_8 : X_FF
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => '0'
    )
    port map (
      I => waitcnt_9_DYMUX_4423,
      CE => waitcnt_9_CEINV_4413,
      CLK => waitcnt_9_CLKINV_4414,
      SET => GND,
      RST => GND,
      O => waitcnt(8)
    );
  waitcnt_mux0002_10_1 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => waitcnt_addsub0000(9),
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(10)
    );
  waitcnt_9 : X_FF
    generic map(
      LOC => "SLICE_X28Y28",
      INIT => '0'
    )
    port map (
      I => waitcnt_9_DXMUX_4436,
      CE => waitcnt_9_CEINV_4413,
      CLK => waitcnt_9_CLKINV_4414,
      SET => GND,
      RST => GND,
      O => waitcnt(9)
    );
  rstcnt_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      I => rstcnt_1_DYMUX_4463,
      CE => rstcnt_1_CEINV_4451,
      CLK => rstcnt_1_CLKINV_4452,
      SET => rstcnt_1_SRINV_4453,
      RST => GND,
      O => rstcnt(0)
    );
  Mcount_rstcnt_xor_1_11 : X_LUT4
    generic map(
      INIT => X"CF3F",
      LOC => "SLICE_X23Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => rstcnt(1),
      ADR2 => fsm_module_state(0),
      ADR3 => rstcnt(0),
      O => Mcount_rstcnt1
    );
  rstcnt_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      I => rstcnt_1_DXMUX_4478,
      CE => rstcnt_1_CEINV_4451,
      CLK => rstcnt_1_CLKINV_4452,
      SET => rstcnt_1_SRINV_4453,
      RST => GND,
      O => rstcnt(1)
    );
  cmdcnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      I => cmdcnt_3_DYMUX_4510,
      CE => cmdcnt_3_CEINV_4499,
      CLK => cmdcnt_3_CLKINV_4500,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_3_SRINV_4501,
      O => cmdcnt(2)
    );
  Mcount_cmdcnt31 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => Mcount_cmdcnt3
    );
  cmdcnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      I => cmdcnt_3_DXMUX_4523,
      CE => cmdcnt_3_CEINV_4499,
      CLK => cmdcnt_3_CLKINV_4500,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_3_SRINV_4501,
      O => cmdcnt(3)
    );
  spi_module_Mcount_cnt_xor_2_11 : X_LUT4
    generic map(
      INIT => X"A9A9",
      LOC => "SLICE_X20Y16"
    )
    port map (
      ADR0 => spi_module_cnt(2),
      ADR1 => spi_module_cnt(0),
      ADR2 => spi_module_cnt(1),
      ADR3 => VCC,
      O => spi_module_Result(2)
    );
  spi_module_cnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '1'
    )
    port map (
      I => spi_module_cnt_2_DYMUX_4547,
      CE => spi_module_cnt_2_CEINV_4536,
      CLK => spi_module_cnt_2_CLKINV_4537,
      SET => GND,
      RST => GND,
      SSET => spi_module_cnt_2_SRINV_4538,
      SRST => GND,
      O => spi_module_cnt(2)
    );
  spi_module_Mcount_cnt_xor_3_11 : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X20Y17"
    )
    port map (
      ADR0 => spi_module_cnt(2),
      ADR1 => spi_module_cnt(0),
      ADR2 => spi_module_cnt(1),
      ADR3 => spi_module_cnt(3),
      O => spi_module_Result(3)
    );
  spi_module_cnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '1'
    )
    port map (
      I => spi_module_cnt_3_DYMUX_4573,
      CE => spi_module_cnt_3_CEINV_4562,
      CLK => spi_module_cnt_3_CLKINV_4563,
      SET => GND,
      RST => GND,
      SSET => spi_module_cnt_3_REVUSED_4574,
      SRST => spi_module_cnt_3_SRINV_4564,
      O => spi_module_cnt(3)
    );
  spi_module_sdo_or00001 : X_LUT4
    generic map(
      INIT => X"FAFA",
      LOC => "SLICE_X21Y16"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => spi_module_sdo_cmp_eq0000,
      ADR3 => VCC,
      O => spi_module_sdo_or0000
    );
  spi_module_cdata_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y12",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_3_DYMUX_4097,
      CE => spi_module_cdata_3_CEINV_4088,
      CLK => spi_module_cdata_3_CLKINV_4089,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(3)
    );
  leds_1_30_SW2 : X_LUT4
    generic map(
      INIT => X"FFFD",
      LOC => "SLICE_X19Y12"
    )
    port map (
      ADR0 => cmdcnt(6),
      ADR1 => N29,
      ADR2 => fsm_module_state(0),
      ADR3 => cmdcnt(3),
      O => N41
    );
  spi_module_cdata_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_5_DYMUX_4128,
      CE => spi_module_cdata_5_CEINV_4117,
      CLK => spi_module_cdata_5_CLKINV_4118,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(4)
    );
  spi_module_cdata_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X18Y15"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => leds_5_OBUF_1518,
      ADR3 => VCC,
      O => spi_module_cdata_mux0001(3)
    );
  spi_module_cdata_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_5_DXMUX_4142,
      CE => spi_module_cdata_5_CEINV_4117,
      CLK => spi_module_cdata_5_CLKINV_4118,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(5)
    );
  spi_module_cdata_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_7_DYMUX_4166,
      CE => spi_module_cdata_7_CEINV_4155,
      CLK => spi_module_cdata_7_CLKINV_4156,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(6)
    );
  spi_module_cdata_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"5050",
      LOC => "SLICE_X18Y14"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => leds_7_OBUF_1526,
      ADR3 => VCC,
      O => spi_module_cdata_mux0001(1)
    );
  spi_module_cdata_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_7_DXMUX_4180,
      CE => spi_module_cdata_7_CEINV_4155,
      CLK => spi_module_cdata_7_CLKINV_4156,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(7)
    );
  fsm_module_state_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '1'
    )
    port map (
      I => fsm_module_state_0_DYMUX_4204,
      CE => fsm_module_state_0_CEINV_4195,
      CLK => fsm_module_state_0_CLKINV_4196,
      SET => GND,
      RST => GND,
      O => fsm_module_state(0)
    );
  cmdcnt_and00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X22Y13"
    )
    port map (
      ADR0 => slowclk_1614,
      ADR1 => fsm_module_state(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => cmdcnt_and0000
    );
  fsm_module_state_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y16",
      INIT => '0'
    )
    port map (
      I => fsm_module_state_3_DYMUX_4238,
      CE => fsm_module_state_3_CEINV_4229,
      CLK => fsm_module_state_3_CLKINV_4230,
      SET => GND,
      RST => GND,
      O => fsm_module_state(3)
    );
  cmdcnt_not00021 : X_LUT4
    generic map(
      INIT => X"EE00",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => fsm_module_state(3),
      ADR1 => fsm_module_state(1),
      ADR2 => VCC,
      ADR3 => slowclk_1614,
      O => cmdcnt_not0002
    );
  waitcnt_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => waitcnt_1_DYMUX_4271,
      CE => waitcnt_1_CEINV_4261,
      CLK => waitcnt_1_CLKINV_4262,
      SET => GND,
      RST => GND,
      O => waitcnt(0)
    );
  waitcnt_mux0002_18_1 : X_LUT4
    generic map(
      INIT => X"2020",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => waitcnt_addsub0000(1),
      ADR1 => fsm_module_state(0),
      ADR2 => fsm_module_state(2),
      ADR3 => VCC,
      O => waitcnt_mux0002(18)
    );
  waitcnt_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => waitcnt_1_DXMUX_4284,
      CE => waitcnt_1_CEINV_4261,
      CLK => waitcnt_1_CLKINV_4262,
      SET => GND,
      RST => GND,
      O => waitcnt(1)
    );
  waitcnt_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      I => waitcnt_3_DYMUX_4309,
      CE => waitcnt_3_CEINV_4299,
      CLK => waitcnt_3_CLKINV_4300,
      SET => GND,
      RST => GND,
      O => waitcnt(2)
    );
  waitcnt_mux0002_16_1 : X_LUT4
    generic map(
      INIT => X"FAFF",
      LOC => "SLICE_X27Y26"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => VCC,
      ADR2 => waitcnt_addsub0000(3),
      ADR3 => fsm_module_state(2),
      O => waitcnt_mux0002(16)
    );
  waitcnt_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      I => waitcnt_3_DXMUX_4322,
      CE => waitcnt_3_CEINV_4299,
      CLK => waitcnt_3_CLKINV_4300,
      SET => GND,
      RST => GND,
      O => waitcnt(3)
    );
  memory_module_Mrom_data_rom00011 : X_LUT4
    generic map(
      INIT => X"A896",
      LOC => "SLICE_X13Y1"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom0001
    );
  cs_2087 : X_FF
    generic map(
      LOC => "SLICE_X29Y35",
      INIT => '0'
    )
    port map (
      I => cs_OBUF_DYMUX_4896,
      CE => VCC,
      CLK => cs_OBUF_CLKINV_4894,
      SET => GND,
      RST => GND,
      O => cs_OBUF_1564
    );
  spi_module_cnt_cst1 : X_LUT4
    generic map(
      INIT => X"5040",
      LOC => "SLICE_X21Y17"
    )
    port map (
      ADR0 => fsm_module_state(0),
      ADR1 => fsm_module_state(1),
      ADR2 => slowclk_1614,
      ADR3 => fsm_module_state(3),
      O => spi_module_cnt_cst
    );
  leds_2_SW0 : X_LUT4
    generic map(
      INIT => X"9898",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => VCC,
      O => N14
    );
  memory_module_Mrom_data_rom000131 : X_LUT4
    generic map(
      INIT => X"560B",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom00013
    );
  memory_module_Mrom_data_rom0001121 : X_LUT4
    generic map(
      INIT => X"658A",
      LOC => "SLICE_X25Y5"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_0_1_1644,
      ADR2 => cmdcnt_1_2_1633,
      ADR3 => cmdcnt_3_1_1645,
      O => memory_module_Mrom_data_rom000112
    );
  memory_module_Mrom_data_rom0001111 : X_LUT4
    generic map(
      INIT => X"6260",
      LOC => "SLICE_X12Y0"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom00011_5017
    );
  memory_module_Mrom_data_rom00013321 : X_LUT4
    generic map(
      INIT => X"8103",
      LOC => "SLICE_X10Y3"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(1),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom000133
    );
  slowclk : X_SFF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      I => slowclk_DYMUX_5051,
      CE => VCC,
      CLK => slowclk_CLKINV_5048,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => slowclk_SRINVNOT,
      O => slowclk_1614
    );
  memory_module_Mrom_data_rom0001381 : X_LUT4
    generic map(
      INIT => X"4495",
      LOC => "SLICE_X11Y3"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000138
    );
  memory_module_Mrom_data_rom00014511 : X_LUT4
    generic map(
      INIT => X"8195",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000145
    );
  memory_module_Mrom_data_rom0001241 : X_LUT4
    generic map(
      INIT => X"DE80",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(3),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom000124
    );
  memory_module_Mrom_data_rom000161 : X_LUT4
    generic map(
      INIT => X"28BA",
      LOC => "SLICE_X26Y5"
    )
    port map (
      ADR0 => cmdcnt_0_1_1644,
      ADR1 => cmdcnt_2_1_1646,
      ADR2 => cmdcnt_3_1_1645,
      ADR3 => cmdcnt_1_1_1647,
      O => memory_module_Mrom_data_rom00016
    );
  memory_module_Mrom_data_rom000181 : X_LUT4
    generic map(
      INIT => X"03E6",
      LOC => "SLICE_X27Y4"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_1_1_1647,
      ADR2 => cmdcnt_3_1_1645,
      ADR3 => cmdcnt_0_1_1644,
      O => memory_module_Mrom_data_rom00018
    );
  memory_module_Mrom_data_rom0001261 : X_LUT4
    generic map(
      INIT => X"A80B",
      LOC => "SLICE_X11Y2"
    )
    port map (
      ADR0 => cmdcnt(0),
      ADR1 => cmdcnt(1),
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(3),
      O => memory_module_Mrom_data_rom000126
    );
  memory_module_Mrom_data_rom0001321 : X_LUT4
    generic map(
      INIT => X"2742",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000132
    );
  spi_module_cdata_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X24Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => fsm_module_state(0),
      ADR2 => VCC,
      ADR3 => leds_2_OBUF_1566,
      O => spi_module_cdata_mux0001(6)
    );
  spi_module_cdata_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y6",
      INIT => '0'
    )
    port map (
      I => spi_module_cdata_2_DXMUX_5252,
      CE => spi_module_cdata_2_CEINV_5234,
      CLK => spi_module_cdata_2_CLKINV_5235,
      SET => GND,
      RST => GND,
      O => spi_module_cdata(2)
    );
  leds_2_SW1 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => cmdcnt(5),
      ADR1 => cmdcnt(3),
      ADR2 => VCC,
      ADR3 => cmdcnt(4),
      O => N36
    );
  memory_module_Mrom_data_rom0001461 : X_LUT4
    generic map(
      INIT => X"0016",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => cmdcnt(1),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(3),
      ADR3 => cmdcnt(0),
      O => memory_module_Mrom_data_rom000146
    );
  spi_module_cs : X_SFF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '1'
    )
    port map (
      I => spi_module_cs_DYMUX_5312,
      CE => VCC,
      CLK => spi_module_cs_CLKINV_5309,
      SET => GND,
      RST => GND,
      SSET => spi_module_cs_SRINV_5310,
      SRST => GND,
      O => spi_module_cs_1642
    );
  memory_module_Mrom_data_rom00013911 : X_LUT4
    generic map(
      INIT => X"8002",
      LOC => "SLICE_X12Y4"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(2),
      ADR2 => cmdcnt(0),
      ADR3 => cmdcnt(1),
      O => memory_module_Mrom_data_rom000139
    );
  memory_module_Mrom_data_rom0001441_51_SW0 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cmdcnt(2),
      ADR3 => cmdcnt(1),
      O => N56
    );
  memory_module_Mrom_data_rom000191 : X_LUT4
    generic map(
      INIT => X"3868",
      LOC => "SLICE_X27Y5"
    )
    port map (
      ADR0 => cmdcnt_2_1_1646,
      ADR1 => cmdcnt_3_1_1645,
      ADR2 => cmdcnt_1_1_1647,
      ADR3 => cmdcnt_0_1_1644,
      O => memory_module_Mrom_data_rom00019
    );
  cmdcnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      I => cmdcnt_1_DYMUX_5416,
      CE => cmdcnt_1_CEINV_5405,
      CLK => cmdcnt_1_CLKINV_5406,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_1_SRINV_5407,
      O => cmdcnt(0)
    );
  Mcount_cmdcnt_xor_1_1 : X_LUT4
    generic map(
      INIT => X"1C3C",
      LOC => "SLICE_X12Y2"
    )
    port map (
      ADR0 => cmdcnt(3),
      ADR1 => cmdcnt(0),
      ADR2 => cmdcnt(1),
      ADR3 => Mcount_cmdcnt_xor_1_1_SW0_O,
      O => Mcount_cmdcnt1
    );
  cmdcnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      I => cmdcnt_1_DXMUX_5429,
      CE => cmdcnt_1_CEINV_5405,
      CLK => cmdcnt_1_CLKINV_5406,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_1_SRINV_5407,
      O => cmdcnt(1)
    );
  cmdcnt_0_1 : X_SFF
    generic map(
      LOC => "SLICE_X27Y6",
      INIT => '0'
    )
    port map (
      I => cmdcnt_0_1_DYMUX_5444,
      CE => cmdcnt_0_1_CEINV_5440,
      CLK => cmdcnt_0_1_CLKINV_5441,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_0_1_SRINV_5442,
      O => cmdcnt_0_1_1644
    );
  cmdcnt_0_2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y7",
      INIT => '0'
    )
    port map (
      I => cmdcnt_0_2_DYMUX_5459,
      CE => cmdcnt_0_2_CEINV_5455,
      CLK => cmdcnt_0_2_CLKINV_5456,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_0_2_SRINV_5457,
      O => cmdcnt_0_2_1648
    );
  spi_module_dco : X_SFF
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => '0'
    )
    port map (
      I => spi_module_dco_DYMUX_5472,
      CE => VCC,
      CLK => spi_module_dco_CLKINV_5469,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => spi_module_dco_SRINV_5470,
      O => spi_module_dco_1651
    );
  sdo_2298 : X_FF
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => '0'
    )
    port map (
      I => sdo_OBUF_DYMUX_5482,
      CE => VCC,
      CLK => sdo_OBUF_CLKINV_5480,
      SET => GND,
      RST => GND,
      O => sdo_OBUF_1567
    );
  cmdcnt_1_1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y6",
      INIT => '0'
    )
    port map (
      I => cmdcnt_1_1_DYMUX_5495,
      CE => cmdcnt_1_1_CEINV_5491,
      CLK => cmdcnt_1_1_CLKINV_5492,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_1_1_SRINV_5493,
      O => cmdcnt_1_1_1647
    );
  cmdcnt_1_2 : X_SFF
    generic map(
      LOC => "SLICE_X25Y6",
      INIT => '0'
    )
    port map (
      I => cmdcnt_1_2_DYMUX_5510,
      CE => cmdcnt_1_2_CEINV_5506,
      CLK => cmdcnt_1_2_CLKINV_5507,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_1_2_SRINV_5508,
      O => cmdcnt_1_2_1633
    );
  cmdcnt_2_1 : X_SFF
    generic map(
      LOC => "SLICE_X24Y4",
      INIT => '0'
    )
    port map (
      I => cmdcnt_2_1_DYMUX_5525,
      CE => cmdcnt_2_1_CEINV_5521,
      CLK => cmdcnt_2_1_CLKINV_5522,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_2_1_SRINV_5523,
      O => cmdcnt_2_1_1646
    );
  cmdcnt_3_1 : X_SFF
    generic map(
      LOC => "SLICE_X24Y5",
      INIT => '0'
    )
    port map (
      I => cmdcnt_3_1_DYMUX_5540,
      CE => cmdcnt_3_1_CEINV_5536,
      CLK => cmdcnt_3_1_CLKINV_5537,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_3_1_SRINV_5538,
      O => cmdcnt_3_1_1645
    );
  cmdcnt_4_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => '0'
    )
    port map (
      I => cmdcnt_4_1_DYMUX_5555,
      CE => cmdcnt_4_1_CEINV_5551,
      CLK => cmdcnt_4_1_CLKINV_5552,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_4_1_SRINV_5553,
      O => cmdcnt_4_1_1631
    );
  spi_module_Mcount_cnt_xor_1_11 : X_LUT4
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X21Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => spi_module_cnt(0),
      ADR3 => spi_module_cnt(1),
      O => spi_module_Result(1)
    );
  spi_module_cnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X21Y15",
      INIT => '1'
    )
    port map (
      I => spi_module_cnt_0_DYMUX_5581,
      CE => spi_module_cnt_0_CEINV_5569,
      CLK => spi_module_cnt_0_CLKINV_5570,
      SET => GND,
      RST => GND,
      SSET => spi_module_cnt_0_SRINV_5571,
      SRST => GND,
      O => spi_module_cnt(1)
    );
  spi_module_cnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X21Y15",
      INIT => '1'
    )
    port map (
      I => spi_module_cnt_0_DXMUX_5588,
      CE => spi_module_cnt_0_CEINV_5569,
      CLK => spi_module_cnt_0_CLKINV_5570,
      SET => GND,
      RST => GND,
      SSET => spi_module_cnt_0_SRINV_5571,
      SRST => GND,
      O => spi_module_cnt(0)
    );
  cmdcnt_5_1 : X_SFF
    generic map(
      LOC => "SLICE_X21Y12",
      INIT => '0'
    )
    port map (
      I => cmdcnt_5_1_DYMUX_5603,
      CE => cmdcnt_5_1_CEINV_5599,
      CLK => cmdcnt_5_1_CLKINV_5600,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => cmdcnt_5_1_SRINV_5601,
      O => cmdcnt_5_1_1632
    );
  dc_2358 : X_FF
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => '0'
    )
    port map (
      I => dc_OBUF_DYMUX_5614,
      CE => VCC,
      CLK => dc_OBUF_CLKINV_5612,
      SET => GND,
      RST => GND,
      O => dc_OBUF_1560
    );
  slowcnt_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y27"
    )
    port map (
      ADR0 => slowcnt(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_0_G
    );
  slowcnt_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => slowcnt(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_2_F
    );
  slowcnt_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(3),
      O => slowcnt_2_G
    );
  slowcnt_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_4_F
    );
  slowcnt_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(5),
      ADR3 => VCC,
      O => slowcnt_4_G
    );
  slowcnt_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y30"
    )
    port map (
      ADR0 => slowcnt(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_6_F
    );
  slowcnt_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(7),
      O => slowcnt_6_G
    );
  slowcnt_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_8_F
    );
  slowcnt_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(9),
      ADR3 => VCC,
      O => slowcnt_8_G
    );
  slowcnt_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y32"
    )
    port map (
      ADR0 => slowcnt(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_10_F
    );
  slowcnt_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(11),
      ADR3 => VCC,
      O => slowcnt_10_G
    );
  slowcnt_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_12_F
    );
  slowcnt_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(13),
      O => slowcnt_12_G
    );
  slowcnt_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y34"
    )
    port map (
      ADR0 => slowcnt(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_14_F
    );
  slowcnt_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(15),
      ADR3 => VCC,
      O => slowcnt_14_G
    );
  slowcnt_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(16),
      O => slowcnt_16_F
    );
  slowcnt_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(17),
      O => slowcnt_16_G
    );
  slowcnt_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y36"
    )
    port map (
      ADR0 => slowcnt(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_18_F
    );
  slowcnt_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(19),
      O => slowcnt_18_G
    );
  slowcnt_20_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(20),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_20_F
    );
  slowcnt_20_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(21),
      ADR3 => VCC,
      O => slowcnt_20_G
    );
  slowcnt_22_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y38"
    )
    port map (
      ADR0 => slowcnt(22),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_22_F
    );
  slowcnt_22_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y38"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(23),
      ADR3 => VCC,
      O => slowcnt_22_G
    );
  slowcnt_24_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(24),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_24_F
    );
  slowcnt_24_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(25),
      O => slowcnt_24_G
    );
  slowcnt_26_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X3Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => slowcnt(26),
      ADR3 => VCC,
      O => slowcnt_26_F
    );
  slowcnt_26_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X3Y40"
    )
    port map (
      ADR0 => slowcnt(27),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_26_G
    );
  slowcnt_28_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X3Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => slowcnt(28),
      ADR2 => VCC,
      ADR3 => VCC,
      O => slowcnt_28_F
    );
  slowcnt_28_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X3Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => slowcnt(29),
      O => slowcnt_28_G
    );
  waitcnt_addsub0000_0_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X29Y25"
    )
    port map (
      ADR0 => waitcnt(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => waitcnt_addsub0000_0_F
    );
  dc_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 638 ps
    )
    port map (
      I => dc_OBUF_1560,
      O => dc_O
    );
  leds_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_0_OBUF_F5MUX_3629,
      O => leds_0_O
    );
  leds_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_1_OBUF_F5MUX_3529,
      O => leds_1_O
    );
  cs_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => cs_OBUF_1564,
      O => cs_O
    );
  leds_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_3_OBUF_F5MUX_3579,
      O => leds_3_O
    );
  leds_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_4_OBUF_1555,
      O => leds_4_O
    );
  leds_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_5_OBUF_1518,
      O => leds_5_O
    );
  leds_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_6_OBUF_1533,
      O => leds_6_O
    );
  leds_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_7_OBUF_1526,
      O => leds_7_O
    );
  sck_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD17",
      PATHPULSE => 638 ps
    )
    port map (
      I => fastclk,
      O => sck_O
    );
  leds_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 638 ps
    )
    port map (
      I => leds_2_OBUF_1566,
      O => leds_2_O
    );
  sdo_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 638 ps
    )
    port map (
      I => sdo_OBUF_1567,
      O => sdo_O
    );
  rsto_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD30",
      PATHPULSE => 638 ps
    )
    port map (
      I => fsm_module_state(0),
      O => rsto_O
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

