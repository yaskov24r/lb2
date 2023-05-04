-------------------------------------------------------------------------------
-- Lab Work 2 - Combinatorial Logic Implementations
-- Example 1: multiply output combinatorial circuit
--            using logic operators (2 variants)
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 

entity bf4_logic is
	port(
		X : in STD_LOGIC_VECTOR(3 downto 0);
		Y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end bf4_logic;

architecture bf4_logic of bf4_logic is
	signal P : STD_LOGIC_VECTOR(12 downto 0); --.p 13																																												
begin										   
																																																										  
	P(0) <= X(3) and not X(2) and X(1) and not X(0);
	P(1) <= X(3) and not X(1) and X(0);
	P(2) <= not X(3) and not X(2) and X(1) and X(0);
	P(3) <= not X(3) and  not X(1) and not X(0);
	P(4) <= X(2) and not X(1) and X(0);
	P(5) <= X(2) and X(1) and not X(0);
	P(6) <= X(2) and X(1) and X(0);
	P(7) <= not X(3) and not X(2) and not X(1);
	P(8) <= X(3) and X(0); 
	P(9) <= not X(3) and X(2) and X(1); 
	P(10) <= not X(3) and not X(0);
	P(11) <= not X(2) and not X(1);
	P(12) <= not X(3) and not X(1) and X(0);	  
	
	Y(3) <= P(0) or P(2) or P(6) or P(7) or P(9) or P(12);
	Y(2) <= P(2) or P(4) or P(5) or P(10);
	Y(1) <= P(1) or P(3) or P(9) or P(11);
	Y(0) <= P(5) or P(8) or P(12);
	
	
--	Y(3) = (X(3) and not X(2) and X(1) and not X(0)) or 
--	(not X(3) and not X(2) and X(1) and X(0)) or 
--	(X(2) and X(1) and X(0)) or 
--	(not X(3) and not X(2) and not X(1)) or 
--	(not X(3) and X(2) and X(1)) or 
--	(not X(3) and not X(1) and X(0));

--	Y(2) = (not X(3) and not X(2) and X(1) and X(0)) or 
--	(X(2) and not X(1) and X(0)) or 
--	(X(2) and X(1) and not X(0)) or 
--	(not X(3) and not X(0));
		   
--	Y(1) = (X(3) and not X(1) and X(0)) or 
--	(not X(3) and not X(1) and not X(0)) or 
--	(not X(3) and X(2) and X(1)) or 
--	(not X(2) and not X(1));
		   
--	Y(0) = (X(2) and X(1) and not X(0)) or 
--	(X(3) and X(0)) or 
--	(not X(3) and not X(1) and X(0));
	
		   
end bf4_logic;
