----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:05 07/23/2021 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( sck 	: out  STD_LOGIC;
           sdo 	: out  STD_LOGIC;
           dc 		: out  STD_LOGIC;
           rsto 	: out  STD_LOGIC;
			  rsti 	: in	 STD_LOGIC;
			  sw	 	: in	 STD_LOGIC_VECTOR(7 downto 0);
           cs 		: out  STD_LOGIC;
           hclk 	: in   STD_LOGIC;
			  leds	: out		STD_LOGIC_VECTOR(7 downto 0));
end top;

architecture Behavioral of top is
	signal sdo_b, dc_b, cs_b					: STD_LOGIC;
	signal fastclk, slowclk						: STD_LOGIC;
	signal spi_data 								: STD_LOGIC_VECTOR(8 downto 0);
	--signal spi_en	 								: STD_LOGIC;
	signal cmdcnt 									: natural range 0 to 127;
	signal cmdcnt_vector							: STD_LOGIC_VECTOR(6 downto 0);
	signal waitcnt 								: natural range 0 to 1000000;
	signal waitcnt_vector						: STD_LOGIC_VECTOR(19 downto 0);
	signal rstcnt 									: natural range 0 to 3;
	signal rstcnt_vector							: STD_LOGIC_VECTOR(1 downto 0);
	signal cmden, waiten, rsten, rsto_b 	: STD_LOGIC;
	signal rsti_b, rsti_pll						: STD_LOGIC;
	signal slowcnt									: natural;
	
	COMPONENT pll2
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKDV_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	component spi is
    Port ( fastclk 	: in  	STD_LOGIC;
			  slowclk 	: in  	STD_LOGIC;
			  we			: in	 	STD_LOGIC;
           sdo 		: out  	STD_LOGIC;
			  dco 		: out  	STD_LOGIC;
           data 		: in  	STD_LOGIC_VECTOR (8 downto 0);
           cs 			: out  	STD_LOGIC;
           rst 		: in  	STD_LOGIC);
	end component spi;
	component memory is
    Port ( data : out  STD_LOGIC_VECTOR (8 downto 0);
			  sw		: in STD_LOGIC_VECTOR(7 downto 0);
           cmdnum : in  STD_LOGIC_VECTOR (6 downto 0));
	end component memory;
	component fsm is
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
	end component fsm;
begin
	rsto <= not rsto_b;
	leds <= spi_data(7 downto 0);
	rsti_b <= rsti;
	Inst_pll2: pll2 PORT MAP(
		CLKIN_IN => hclk,
		CLKDV_OUT => open,
		CLK0_OUT => open,
		LOCKED_OUT => rsti_pll
	);
	fastclk <= hclk;
	spi_module : spi port map (fastclk, slowclk, cmden, sdo_b, dc_b, spi_data, cs_b, rsto_b);
	memory_module : memory port map (spi_data, sw, cmdcnt_vector);
	fsm_module : fsm port map (fastclk, slowclk, cmdcnt_vector, waitcnt_vector, rstcnt_vector, cmden, waiten, rsten, rsto_b, rsti_b);
	
	cmdcnt_vector <= std_logic_vector(to_unsigned(cmdcnt, 7));
	waitcnt_vector <= std_logic_vector(to_unsigned(waitcnt, 20));
	rstcnt_vector <= std_logic_vector(to_unsigned(rstcnt, 2));
	
	slowclkcnt: process (fastclk)
	begin
		if (rising_edge(fastclk))
		then
			if slowcnt /= 8 then
				slowcnt <= slowcnt + 1;
				slowclk <= '0';
			else
				slowcnt <= 0;
				slowclk <= '1';
			end if;
		end if;
	end process slowclkcnt;
	
	outwp: process (fastclk) 
	begin
		sck <= not fastclk;
		if rising_edge(fastclk) then
			sdo <= sdo_b;
			cs <= cs_b;
			dc <= dc_b;
		end if;
	end process outwp;
	
	cmdcntp: process (fastclk)
	begin
		if rising_edge(fastclk) and slowclk = '1' then
			if(rsto_b = '1') then
				cmdcnt <= 0;
			elsif cmden = '1' then
				if cmdcnt /= 127 then
					cmdcnt <= cmdcnt + 1;
				else
					cmdcnt <= cmdcnt - 1;
				end if;
			end if;
		end if;
	end process cmdcntp;
	
	waitcntp: process (fastclk)
	begin
		if rising_edge(fastclk) and slowclk = '1' then
			if(rsto_b = '1') then
				waitcnt <= 125000;
			elsif waiten = '1' then
				waitcnt <= waitcnt - 1;
			else
				waitcnt <= 125000;
			end if;
		end if;
	end process waitcntp;
	
	rstp: process (fastclk, rsti_b)
	begin
		if(rsti_b = '1') then
				rstcnt <= 3;
		elsif rising_edge(fastclk) and slowclk = '1' then
			if rsten = '1' then
				rstcnt <= rstcnt - 1;
			else
				rstcnt <= 3;
			end if;
		end if;
	end process rstp;
	
	--spienp : process (slowclk)
	--begin
	--	if (rising_edge(slowclk)) then
	--		spi_en <= cmden;
	--	end if;
	--end process spienp;
end Behavioral;

