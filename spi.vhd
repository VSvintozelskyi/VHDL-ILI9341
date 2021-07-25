----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:06:08 07/23/2021 
-- Design Name: 
-- Module Name:    spi - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi is
    Port ( fastclk 	: in  	STD_LOGIC;
			  slowclk 	: in  	STD_LOGIC;
			  we			: in	 	STD_LOGIC;
           sdo 		: out  	STD_LOGIC;
			  dco 		: out  	STD_LOGIC;
           data 		: in  	STD_LOGIC_VECTOR (8 downto 0);
           cs 			: out  	STD_LOGIC;
           rst 		: in  	STD_LOGIC);
end spi;

architecture Behavioral of spi is
	signal cnt 							: integer range -1 to 7;
	signal cdata						: STD_LOGIC_VECTOR (8 downto 0);
begin

	loaddata: process (fastclk)
	begin
		if (rising_edge(fastclk) and slowclk = '1') then
			if (rst = '1') then
				cdata <= (others => '0');
			elsif we = '1' then
				cdata <= data;
			end if;
		end if;
	end process loaddata;

	senddata: process (fastclk)
	begin
		if rising_edge(fastclk) then
			if rst = '1' then
				sdo <= '0';
				dco <= '0';
				cs <= '1';
				cnt <= -1;
			else
				if slowclk = '1' and we='1' then
					cnt <= 7;
				elsif cnt /= -1 then
					cnt <= cnt - 1;
				end if;
				if cnt /= -1 then
					cs <= '0';
					dco <= cdata(8);
					sdo <= cdata(cnt);
				else
					cs <= '1';
					dco <= '0';
					sdo <= '0';
				end if;
			end if;
		end if;
	end process senddata;
	
end Behavioral;

