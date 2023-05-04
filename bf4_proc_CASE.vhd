-------------------------------------------------------------------------------
-- Lab Work 2 - Combinatorial Logic Implementations
-- Example 6: multiply output combinatorial circuit
--            using process with CASE statement
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 

entity bf4_proc_CASE is
	port(
		X : in STD_LOGIC_VECTOR(3 downto 0);
		Y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end bf4_proc_CASE;

architecture bf4_proc_CASE of bf4_proc_CASE is 
begin
	KXX_CASE: process(X)
	begin
		case X is
			when "0000" => Y <= "1110";
			when "0001" => Y <= "1011";
			when "0010" => Y <= "0100";
			when "0011" => Y <= "1100";
			when "0100" => Y <= "0110";
			when "0101" => Y <= "1101";
			when "0110" => Y <= "1111";
			when "0111" => Y <= "1010";
			when "1000" => Y <= "0010";
			when "1001" => Y <= "0011";
			when "1010" => Y <= "1000";
			when "1011" => Y <= "0001";
			when "1100" => Y <= "0000";
			when "1101" => Y <= "0111";
			when "1110" => Y <= "0101";
			when "1111" => Y <= "1001";
			when others => Y <= "ZZZZ";
		end case;
	end process;
end bf4_proc_CASE;
