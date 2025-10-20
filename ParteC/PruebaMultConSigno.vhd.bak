----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity PruebaMultSinSigno is
end PruebaMultSinSigno;
----------------------------------------------------------
architecture behavior of PruebaMultSinSigno is
	component MultiplicadorSinSigno
	port(A0 :  in std_logic;
		  A1 :  in std_logic;
		  B0 :  in std_logic;
		  B1 :  in std_logic;
		  p0 :  out std_logic;
		  p1 :  out std_logic;
		  p2 :  out std_logic;
		  p3 :  out std_logic
		 );
	end component;
----------------------------------------------------------
--Entradas
	signal A0 : std_logic := '0';
	signal A1 : std_logic := '0';
	signal B0 : std_logic := '0';
	signal B1 : std_logic := '0';
----------------------------------------------------------
--Salidas
	signal p0 : std_logic;
	signal p1 : std_logic;
	signal p2 : std_logic;
	signal p3 : std_logic;
----------------------------------------------------------
begin
	uut: MultiplicadorSinSigno port map (
		A0  => A0,
		A1  => A1,
		B0  => B0,
		B1  => B1,
		p0  => p0,
		p1  => p1,
		p2  => p2,
		p3  => p3
	);
----------------------------------------------------------
	stim_proc: process
	begin
		A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '0'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '0'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '0'; B1 <= '1'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '0'; wait for 10ns;
		A0 <= '1'; A1 <= '1'; B0 <= '1'; B1 <= '1'; wait for 10ns;
		wait;
	end process;
end;