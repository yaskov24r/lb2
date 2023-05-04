-------------------------------------------------------------------------------
-- Lab Work 2 - Combinatorial Logic Implementations
-- Example 3: multiply output combinatorial circuit
--            using "with .. select" assignment
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 

entity bf4_conc_WS is
	port(
		X : in STD_LOGIC_VECTOR(3 downto 0);
		Y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end bf4_conc_WS;

architecture bf4_conc_WS of bf4_conc_WS is 
begin

	with X select
	Y <= "1110" when "0000",
	     "1011" when "0001",
	     "0100" when "0010",
	     "1100" when "0011",
	     "0110" when "0100",
	     "1101" when "0101",
	     "1111" when "0110",
	     "1010" when "0111",
	     "0010" when "1000",
	     "0011" when "1001",
	     "1000" when "1010",
	     "0001" when "1011",
	     "0000" when "1100",
	     "0111" when "1101",
	     "0101" when "1110",
	     "1001" when "1111",
	     "ZZZZ" when others;
end bf4_conc_WS;
