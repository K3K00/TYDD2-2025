----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity PruebaSumadorCompleto is
end PruebaSumadorCompleto;
----------------------------------------------------------
architecture behavior of PruebaSumadorCompleto is
	component SumadorCompleto
	port(a : in std_logic;
		  b : in std_logic;
		  cin : in std_logic;
		  z : out std_logic;
		  cout : out std_logic);
end component;
----------------------------------------------------------
--Entradas
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal cin : std_logic := '0';
----------------------------------------------------------
--Salidas
	signal z : std_logic;
	signal cout : std_logic;
----------------------------------------------------------
Begin
	uut: SumadorCompleto port map (
		a 	  => a,
		b 	  => b,
		cin  => cin,
		z 	  => z,
		cout => cout
	);
----------------------------------------------------------
	stim_proc: process
	begin
		a <= '0'; b <= '0'; cin <= '0'; wait for 10ns;
		a <= '0'; b <= '0'; cin <= '1'; wait for 10ns;
		a <= '0'; b <= '1'; cin <= '0'; wait for 10ns;
		a <= '0'; b <= '1'; cin <= '1'; wait for 10ns;
		a <= '1'; b <= '0'; cin <= '0'; wait for 10ns;
		a <= '1'; b <= '0'; cin <= '1'; wait for 10ns;
		a <= '1'; b <= '1'; cin <= '0'; wait for 10ns;
		a <= '1'; b <= '1'; cin <= '1'; wait for 10ns;
	end process;
end;