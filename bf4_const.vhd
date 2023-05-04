-------------------------------------------------------------------------------
-- Lab Work 2 - Combinatorial Logic Implementations
-- Example 4: multiply output combinatorial circuit 
--            using ROM structure
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity bf4_const is
	port(
		X : in STD_LOGIC_VECTOR(3 downto 0);
		Y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end bf4_const;

architecture bf4_const of bf4_const is 
	type bf4_lut_t is array (0 to 15) of std_logic_vector(3 downto 0);
	constant K8_LUT : bf4_lut_t := (X"E", X"B", X"4", X"C", 
	                                X"6", X"D", X"F", X"A", 
	                                X"2", X"3", X"8", X"1", 
	                                X"0", X"7", X"5", X"9");
begin

	Y <= K8_LUT(to_integer(unsigned(X))); 

end bf4_const;
