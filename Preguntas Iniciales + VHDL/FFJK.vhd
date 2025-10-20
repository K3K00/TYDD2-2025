----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity FFJK is
	port( J : in std_logic;
			K : in std_logic;
			clk : in std_logic;
			Qout : out std_logic);
end FFJK;
----------------------------------------------------------
architecture flipflopjk of FFJK is
	signal q : std_logic;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
		q <= (J and not q) or (not K and q);
		end if;
	end process;
	Qout <= q;
end flipflopjk;
----------------------------------------------------------