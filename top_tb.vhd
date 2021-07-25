--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:23:24 07/23/2021
-- Design Name:   
-- Module Name:   /mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top_tb.vhd
-- Project Name:  DisplayAdafruit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         sck : OUT  std_logic;
         sdo : OUT  std_logic;
         dc : OUT  std_logic;
         rsto : OUT  std_logic;
         rsti : IN  std_logic;
         cs : OUT  std_logic;
         hclk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rsti : std_logic := '0';
   signal hclk : std_logic := '0';

 	--Outputs
   signal sck : std_logic;
   signal sdo : std_logic;
   signal dc : std_logic;
   signal rsto : std_logic;
   signal cs : std_logic;

   -- Clock period definitions
   constant hclk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          sck => sck,
          sdo => sdo,
          dc => dc,
          rsto => rsto,
          rsti => rsti,
          cs => cs,
          hclk => hclk
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
		rsti <= '1';
      wait for 100 ns;	
		rsti <= '0';
      wait for hclk_period*100*16;

      -- insert stimulus here 

      wait;
   end process;

END;
