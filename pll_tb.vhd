--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:45:00 07/23/2021
-- Design Name:   
-- Module Name:   /mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/pll_tb.vhd
-- Project Name:  DisplayAdafruit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pll
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pll_tb IS
END pll_tb;
 
ARCHITECTURE behavior OF pll_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pll
    PORT(
         hclk : IN  std_logic;
         rst : IN  std_logic;
         fastclk : OUT  std_logic;
         slowclk : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal hclk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal fastclk : std_logic;
   signal slowclk : std_logic;

   -- Clock period definitions
   constant hclk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pll PORT MAP (
          hclk => hclk,
          rst => rst,
          fastclk => fastclk,
          slowclk => slowclk
        );

   -- Clock process definitions
   hclk_process :process
   begin
		hclk <= '0';
		wait for hclk_period/2;
		hclk <= '1';
		wait for hclk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <= '1';
		wait for 100 ns;	
		rst <= '0';
      wait for hclk_period*2000;
      -- insert stimulus here 

      wait;
   end process;

END;
