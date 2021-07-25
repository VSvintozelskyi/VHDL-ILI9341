--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:49 07/23/2021
-- Design Name:   
-- Module Name:   /mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/spi_tb.vhd
-- Project Name:  DisplayAdafruit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: spi
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
 
ENTITY spi_tb IS
END spi_tb;
 
ARCHITECTURE behavior OF spi_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi
    PORT(
         fastclk 	: IN  	std_logic;
         slowclk 	: IN  	std_logic;
			we			: IN 		std_logic;
         sdo 		: OUT  	std_logic;
         dco 		: OUT  	std_logic;
         data 		: IN  	std_logic_vector(8 downto 0);
         cs 		: OUT  	std_logic;
         rst 		: IN  	std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fastclk 	: std_logic := '0';
   signal slowclk 	: std_logic := '0';
   signal data 		: std_logic_vector(8 downto 0) := (others => '0');
   signal rst,we 		: std_logic := '0';

 	--Outputs
   signal sdo : std_logic;
   signal dco : std_logic;
   signal cs : std_logic;

   -- Clock period definitions
   constant fastclk_period : time := 1 ns;
   --constant slowclk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: spi PORT MAP (
          fastclk => fastclk,
          slowclk => slowclk,
          sdo => sdo,
			 we => we,
          dco => dco,
          data => data,
          cs => cs,
          rst => rst
        );

   -- Clock process definitions
   fastclk_process :process
   begin
		fastclk <= '0';
		wait for fastclk_period/2;
		fastclk <= '1';
		wait for fastclk_period/2;
   end process;
 
   slowclk_process :process
   begin
		slowclk <= '0';
		wait for 6.5*fastclk_period;
		slowclk <= '1';
		wait for fastclk_period;
		slowclk <= '0';
		wait for 0.5*fastclk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst <= '1';
		data <= (others => '0');
		we <= '0';
		wait for 20*fastclk_period;	
		rst <= '0';
		wait until rising_edge(slowclk);
		we <= '1';
		data <= "101010011";
		wait until rising_edge(slowclk);
		data <= "010101010";
		wait until rising_edge(slowclk);
		we <= '0';
      wait for fastclk_period*20;
		assert FALSE Report "SImulation Finished" severity FAILURE;
      -- insert stimulus here 
   end process;

END;
