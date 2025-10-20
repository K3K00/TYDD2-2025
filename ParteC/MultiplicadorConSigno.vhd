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
-- CREATED		"Sun Oct 19 20:31:01 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MultiplicadorConSigno IS 
	PORT
	(
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		p0 :  OUT  STD_LOGIC;
		p1 :  OUT  STD_LOGIC;
		p2 :  OUT  STD_LOGIC;
		p3 :  OUT  STD_LOGIC
	);
END MultiplicadorConSigno;

ARCHITECTURE bdf_type OF MultiplicadorConSigno IS 

COMPONENT circuitocombinacional
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 z : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_14 XOR SYNTHESIZED_WIRE_17;


b2v_inst14 : circuitocombinacional
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_1,
		 cin => SYNTHESIZED_WIRE_17,
		 z => SYNTHESIZED_WIRE_8,
		 cout => SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_16 XOR SYNTHESIZED_WIRE_17;


b2v_inst17 : circuitocombinacional
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 cin => SYNTHESIZED_WIRE_4,
		 z => SYNTHESIZED_WIRE_11,
		 cout => SYNTHESIZED_WIRE_7);


b2v_inst20 : circuitocombinacional
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 cin => SYNTHESIZED_WIRE_7,
		 z => SYNTHESIZED_WIRE_10);


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_17 <= B1;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_16 <= A1;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	p1 <= SYNTHESIZED_WIRE_8;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	p0 <= SYNTHESIZED_WIRE_9;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_14 <= A0;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_15 <= B0;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	p3 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	p2 <= SYNTHESIZED_WIRE_11;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_13 AND SYNTHESIZED_WIRE_17;


END bdf_type;