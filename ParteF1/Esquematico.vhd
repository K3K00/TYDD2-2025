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
-- CREATED		"Thu Oct 23 15:28:48 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Esquematico IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Ack :  OUT  STD_LOGIC
	);
END Esquematico;

ARCHITECTURE bdf_type OF Esquematico IS 

COMPONENT seronoser
	PORT(Hab_Dir : IN STD_LOGIC;
		 SCL : IN STD_LOGIC;
		 SDA : IN STD_LOGIC;
		 fin_dir : OUT STD_LOGIC;
		 soy : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT esaeslacuestion
	PORT(SDA : IN STD_LOGIC;
		 Hab_Dat : IN STD_LOGIC;
		 SCL : IN STD_LOGIC;
		 fin_dato : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT implementacioni2c
	PORT(SDA : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 fin_dato : IN STD_LOGIC;
		 fin_dir : IN STD_LOGIC;
		 soy : IN STD_LOGIC;
		 ACK : OUT STD_LOGIC;
		 Hab_Dat : OUT STD_LOGIC;
		 Hab_Dir : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



b2v_inst : seronoser
PORT MAP(Hab_Dir => SYNTHESIZED_WIRE_0,
		 SCL => SCL,
		 SDA => SDA,
		 fin_dir => SYNTHESIZED_WIRE_3,
		 soy => SYNTHESIZED_WIRE_4);


b2v_inst2 : esaeslacuestion
PORT MAP(SDA => SDA,
		 Hab_Dat => SYNTHESIZED_WIRE_1,
		 SCL => SCL,
		 fin_dato => SYNTHESIZED_WIRE_2);


b2v_inst3 : implementacioni2c
PORT MAP(SDA => SDA,
		 clk => clk,
		 fin_dato => SYNTHESIZED_WIRE_2,
		 fin_dir => SYNTHESIZED_WIRE_3,
		 soy => SYNTHESIZED_WIRE_4,
		 ACK => Ack,
		 Hab_Dat => SYNTHESIZED_WIRE_1,
		 Hab_Dir => SYNTHESIZED_WIRE_0);


END bdf_type;