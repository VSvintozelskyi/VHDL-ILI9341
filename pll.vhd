----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:23 07/23/2021 
-- Design Name: 
-- Module Name:    pll - Behavioral 
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

entity pll is
   Port ( 
		hclk 	:	in  	STD_LOGIC;
      fastclk 	:	out   STD_LOGIC;
		slowclk 	:	out   STD_LOGIC);
end pll;

architecture Behavioral of pll is
	signal fastcnt : STD_LOGIC_VECTOR(8 downto 0);
	signal slowcnt : natural;
	signal fastclk_b : STD_LOGIC;
begin
	cntp: process (hclk)
	begin
		--if rst='1' then
		--	fastcnt <= (others => '0');
		if (rising_edge(hclk)) then
			fastcnt <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(fastcnt)) + 1, 9));
			fastclk_b <= fastcnt(6);
		end if;
	end process cntp;
	fastclk <= fastclk_b;

	slwcnt: process (fastclk_b)
	begin
		--if rst = '1' then
		--		slowcnt <= 0;
		if rising_edge(fastclk_b) then 
				if slowcnt = 8 then
					slowcnt <= 0;
					slowclk <= '1';
				else
					slowcnt <= slowcnt + 1;
					slowclk <= '0';
				end if;
		end if;
	end process slwcnt;
	
end Behavioral;

