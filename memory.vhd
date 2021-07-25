----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:42 07/23/2021 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory is
    Port ( data 	: out  STD_LOGIC_VECTOR (8 downto 0);
			  sw		: in 	STD_LOGIC_VECTOR(7 downto 0);
           cmdnum : in  STD_LOGIC_VECTOR (6 downto 0));
end memory;

architecture Behavioral of memory is
	type ROM is array (0 to 127) of STD_LOGIC_VECTOR(7 downto 0);
	type ROMDC is array (0 to 127) of STD_LOGIC;
	
	impure function init_ram_hex return ROM is
	  file text_file : text open read_mode is "rom.hex";
	  variable text_line : line;
	  variable ram_content : ROM;
	  variable c : character;
	  variable offset : integer;
	  variable hex_val : std_logic_vector(3 downto 0);
	begin
	  ram_content := (others => "11100000");
	
	  for i in 0 to 126 loop
		 readline(text_file, text_line);
	 
		 offset := 0;
	 
		 while offset < ram_content(i)'high loop
			read(text_line, c);
	 
			case c is
			  when '0' => hex_val := "0000";
			  when '1' => hex_val := "0001";
			  when '2' => hex_val := "0010";
			  when '3' => hex_val := "0011";
			  when '4' => hex_val := "0100";
			  when '5' => hex_val := "0101";
			  when '6' => hex_val := "0110";
			  when '7' => hex_val := "0111";
			  when '8' => hex_val := "1000";
			  when '9' => hex_val := "1001";
			  when 'A' | 'a' => hex_val := "1010";
			  when 'B' | 'b' => hex_val := "1011";
			  when 'C' | 'c' => hex_val := "1100";
			  when 'D' | 'd' => hex_val := "1101";
			  when 'E' | 'e' => hex_val := "1110";
			  when 'F' | 'f' => hex_val := "1111";
	 
			  when others =>
				 hex_val := "XXXX";
				 assert false report "Found non-hex character '" & c & "'";
			end case;
	 
			ram_content(i)(ram_content(i)'high - offset
			  downto ram_content(i)'high - offset - 3) := hex_val;
			offset := offset + 4;
	 
		 end loop;
	  end loop;
	 
	  return ram_content;
	end function;
	impure function init_ram_bin return ROMDC is
	  file text_file : text open read_mode is "romdc.bin";
	  variable text_line : line;
	  variable ram_content : ROMDC;
	  variable bv : bit_vector(0 downto 0);
	begin
	  ram_content := (others => '1');
	  for i in 0 to 78 loop
		 readline(text_file, text_line);
		 read(text_line, bv);
		 ram_content(i) := To_StdLogicVector(bv)(0);
	  end loop;
	  --for i in 79 to 131071 - 1 loop
		--ram_content(i) := '1';
	  --end loop;
	 
	  return ram_content;
	end function;
	
	constant memory : ROM := init_ram_hex;
	constant memoryDC : ROMDC := init_ram_bin;
	signal customcolor : STD_LOGIC_VECTOR(7 downto 0);
begin
	
	customcolorp: process(cmdnum, sw)
		variable temp : STD_LOGIC_VECTOR(7 downto 0);
	begin
		for i in 3 downto 0 loop
			if to_integer(unsigned(cmdnum)) = 127 then
				temp(2*i) := sw(i);
				temp(2*i + 1) := sw(i);
			else
				temp(2*i) := sw(i+4);
				temp(2*i + 1) := sw(i+4);
			end if;
		end loop;
		customcolor <= temp;
	end process customcolorp;
	
	data <= memoryDC(to_integer(unsigned(cmdnum))) & memory(to_integer(unsigned(cmdnum))) when to_integer(unsigned(cmdnum)) /= 126 and to_integer(unsigned(cmdnum)) /= 127 else
				'1' & customcolor;

end Behavioral;

