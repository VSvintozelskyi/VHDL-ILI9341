----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:21 07/23/2021 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm is
    Port ( fastclk : in  STD_LOGIC;
			  slowclk : in  STD_LOGIC;
           cmdcnt : in  STD_LOGIC_VECTOR (6 downto 0);
           waitcnt : in  STD_LOGIC_VECTOR (19 downto 0);
			  rstcnt : in  STD_LOGIC_VECTOR (1 downto 0);
           cmden : out  STD_LOGIC;
           waiten : out  STD_LOGIC;
			  rsten : out  STD_LOGIC;
           rsto : out  STD_LOGIC;
           rsti : in  STD_LOGIC);
end fsm;

architecture Behavioral of fsm is
	type fsm is (RST_ST, WAIT1_ST, CMD1_ST, WAIT2_ST, CMD2_ST);
	signal state 		: fsm;
	signal nextstate 	: fsm;
begin
	nextp: process (nextstate, state, cmdcnt, rstcnt, waitcnt, rsti)
	begin
		nextstate <= RST_ST;
		case state is
			when RST_ST =>
				if to_integer(unsigned(rstcnt)) = 0 then
					nextstate <= WAIT1_ST;
				else
					nextstate <= RST_ST;
				end if;
			when WAIT1_ST =>
				if to_integer(unsigned(waitcnt)) = 0 then
					nextstate <= CMD1_ST;
				else
					nextstate <= WAIT1_ST;
				end if;
			when CMD1_ST =>
				if to_integer(unsigned(cmdcnt)) = 56 then
					nextstate <= WAIT2_ST;
				else
					nextstate <= CMD1_ST;
				end if;
			when WAIT2_ST =>
				if to_integer(unsigned(waitcnt)) = 0 then
					nextstate <= CMD2_ST;
				else
					nextstate <= WAIT2_ST;
				end if;
			when CMD2_ST =>
				nextstate <= CMD2_ST;
			when others =>
				nextstate <= RST_ST;
		end case;
		if rsti = '1' then
			nextstate <= RST_ST;
		end if;
	end process nextp;
	
	stp: process (fastclk)
	begin
		if rising_edge(fastclk) and slowclk = '1' then
			if	(rsti = '1') then
				state <= RST_ST;
			else
				state <= nextstate;
			end if;
		end if;
	end process stp;
	
	outp: process(state)
	begin
		rsto <= '0';
		cmden <= '0';
		rsten <= '0';
		waiten <= '0';
		case state is
			when RST_ST =>
				rsto <= '1';
				rsten <= '1';
			when CMD1_ST =>
				cmden <= '1';
			when CMD2_ST =>
				cmden <= '1';
			when WAIT1_ST =>
				waiten <= '1';
			when WAIT2_ST =>
				waiten <= '1';
		end case;
	end process outp;
end Behavioral;

