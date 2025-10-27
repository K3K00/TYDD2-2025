-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Oct 23 14:50:39 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY seronoser IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		SCL :  IN  STD_LOGIC;
		Hab_Dir :  IN  STD_LOGIC;
		soy :  OUT  STD_LOGIC;
		fin_dir :  OUT  STD_LOGIC
	);
END seronoser;

ARCHITECTURE bdf_type OF seronoser IS 

COMPONENT contadormod7
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT direccion
	PORT(		 Dire : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparador
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT comparadormod7
	PORT(dataa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT registro7bits
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(2 DOWNTO 0);


BEGIN 



b2v_inst : contadormod7
PORT MAP(clock => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst1 : direccion
PORT MAP(		 Dire => SYNTHESIZED_WIRE_2);


b2v_inst10 : comparador
PORT MAP(dataa => SYNTHESIZED_WIRE_1,
		 datab => SYNTHESIZED_WIRE_2,
		 aeb => soy);


SYNTHESIZED_WIRE_5 <= Hab_Dir AND SCL;


b2v_inst6 : comparadormod7
PORT MAP(dataa => SYNTHESIZED_WIRE_3,
		 aeb => fin_dir);


b2v_inst9 : registro7bits
PORT MAP(clock => clk,
		 shiftin => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_1);


END bdf_type;