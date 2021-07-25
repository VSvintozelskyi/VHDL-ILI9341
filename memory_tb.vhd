--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:39 07/23/2021
-- Design Name:   
-- Module Name:   /mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/memory_tb.vhd
-- Project Name:  DisplayAdafruit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memory
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
USE ieee.numeric_std.ALL;
 
ENTITY memory_tb IS
END memory_tb;
 
ARCHITECTURE behavior OF memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory
    PORT(
         data : OUT  std_logic_vector(8 downto 0);
         cmdnum : IN  std_logic_vector(17 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cmdnum : std_logic_vector(17 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(8 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
          data => data,
          cmdnum => cmdnum
        );
 
   -- Stimulus process
   stim_proc: process
   begin	
		for i in 0 to 1024 loop
			cmdnum <= std_logic_vector(to_unsigned(i,18));
			wait for 5 ns;
		end loop;
      -- hold reset state for 100 ns.
      wait;
   end process;

END;
