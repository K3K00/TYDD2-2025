----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity circuitocombinacional is
	port(a : in std_logic;
		  b : in std_logic;
		  cin : in std_logic;
		  z : out std_logic;
		  cout : out std_logic);
end circuitocombinacional;
----------------------------------------------------------
architecture suma of circuitocombinacional is
begin
	z <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
end suma;
----------------------------------------------------------