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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/08/2018 08:02:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Secador IS
    PORT (
	S1 : OUT std_logic_vector(9 DOWNTO 0);
	FINISH : IN std_logic;
	CLK : IN std_logic;
	CSK : IN std_logic;
	DATA_MOSI : IN std_logic;
	S2 : OUT std_logic_vector(9 DOWNTO 0)
	);
END Secador;

-- Design Ports Information
-- S1[9]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[7]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[5]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[4]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[3]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[1]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[0]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[9]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[8]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[7]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[6]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[4]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[0]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FINISH	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CSK	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_MOSI	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Secador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FINISH : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CSK : std_logic;
SIGNAL ww_DATA_MOSI : std_logic;
SIGNAL ww_S2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CSK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \FINISH~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CSK~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\ : std_logic;
SIGNAL \DATA_MOSI~combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \CSK~combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~9_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~8_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~7_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~6_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~5_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~4_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~3_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~2_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~1_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~9_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~8_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~7_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~6_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~5_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~4_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~3_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~2_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~1_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst10|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\ : std_logic_vector(0 DOWNTO 0);

BEGIN

S1 <= ww_S1;
ww_FINISH <= FINISH;
ww_CLK <= CLK;
ww_CSK <= CSK;
ww_DATA_MOSI <= DATA_MOSI;
S2 <= ww_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\CSK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CSK~combout\);

\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\);
\inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0) <= NOT \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0);

-- Location: LCFF_X15_Y22_N13
\inst4|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCFF_X15_Y22_N11
\inst4|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCFF_X15_Y22_N21
\inst4|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCFF_X15_Y22_N5
\inst4|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FINISH~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FINISH,
	combout => \FINISH~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\CSK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CSK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CSK~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y22_N12
\inst4|LPM_SHIFTREG_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N10
\inst4|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst4|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N20
\inst4|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N4
\inst4|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y22_N12
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst2|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y22_N14
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ = \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\);

-- Location: CLKCTRL_G0
\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_MOSI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DATA_MOSI,
	combout => \DATA_MOSI~combout\);

-- Location: LCCOMB_X16_Y22_N2
\inst|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \DATA_MOSI~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_MOSI~combout\,
	combout => \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CSK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CSK,
	combout => \CSK~combout\);

-- Location: LCFF_X16_Y22_N3
\inst|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X16_Y22_N16
\inst|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y22_N17
\inst|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCFF_X16_Y22_N7
\inst|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(1),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X16_Y22_N12
\inst|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y22_N13
\inst|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X16_Y22_N10
\inst|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y22_N11
\inst|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X16_Y22_N4
\inst|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y22_N5
\inst|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCFF_X16_Y22_N31
\inst|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(5),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X16_Y22_N20
\inst|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X16_Y22_N21
\inst|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCFF_X16_Y22_N19
\inst|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(7),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X16_Y22_N24
\inst|LPM_SHIFTREG_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X16_Y22_N25
\inst|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CSK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCFF_X22_Y22_N13
\inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FINISH~combout\,
	datain => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X16_Y22_N29
\inst3|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(9),
	sload => VCC,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X16_Y22_N26
\inst3|LPM_SHIFTREG_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\);

-- Location: LCFF_X16_Y22_N27
\inst3|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCFF_X16_Y22_N1
\inst3|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(7),
	sload => VCC,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X16_Y22_N22
\inst3|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X16_Y22_N23
\inst3|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCFF_X16_Y22_N9
\inst3|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(5),
	sload => VCC,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X17_Y22_N10
\inst3|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X17_Y22_N11
\inst3|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X16_Y22_N14
\inst3|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y22_N15
\inst3|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X17_Y22_N12
\inst3|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X17_Y22_N13
\inst3|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X17_Y22_N2
\inst3|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X17_Y22_N3
\inst3|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X14_Y22_N6
\inst10|LPM_SHIFTREG_component|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~9_combout\ = (\inst3|LPM_SHIFTREG_component|dffs\(0)) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst3|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst10|LPM_SHIFTREG_component|_~9_combout\);

-- Location: LCFF_X14_Y22_N7
\inst10|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X14_Y22_N28
\inst10|LPM_SHIFTREG_component|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~8_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(1))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(1),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst10|LPM_SHIFTREG_component|_~8_combout\);

-- Location: LCFF_X14_Y22_N29
\inst10|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X14_Y22_N2
\inst10|LPM_SHIFTREG_component|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~7_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(2))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~7_combout\);

-- Location: LCFF_X14_Y22_N3
\inst10|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X14_Y22_N4
\inst10|LPM_SHIFTREG_component|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~6_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(3))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst10|LPM_SHIFTREG_component|_~6_combout\);

-- Location: LCFF_X14_Y22_N5
\inst10|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X17_Y22_N8
\inst3|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X17_Y22_N9
\inst3|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X14_Y22_N26
\inst10|LPM_SHIFTREG_component|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~5_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & ((\inst3|LPM_SHIFTREG_component|dffs\(4)))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- (\inst10|LPM_SHIFTREG_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst10|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst3|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst10|LPM_SHIFTREG_component|_~5_combout\);

-- Location: LCFF_X14_Y22_N27
\inst10|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X14_Y22_N24
\inst10|LPM_SHIFTREG_component|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~4_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(5))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst10|LPM_SHIFTREG_component|_~4_combout\);

-- Location: LCFF_X14_Y22_N25
\inst10|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X14_Y22_N22
\inst10|LPM_SHIFTREG_component|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~3_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(6))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datab => \inst3|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst10|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst10|LPM_SHIFTREG_component|_~3_combout\);

-- Location: LCFF_X14_Y22_N23
\inst10|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X14_Y22_N20
\inst10|LPM_SHIFTREG_component|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~2_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(7))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst10|LPM_SHIFTREG_component|_~2_combout\);

-- Location: LCFF_X14_Y22_N21
\inst10|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X14_Y22_N18
\inst10|LPM_SHIFTREG_component|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~1_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(8))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datab => \inst3|LPM_SHIFTREG_component|dffs\(8),
	datac => \inst10|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst10|LPM_SHIFTREG_component|_~1_combout\);

-- Location: LCFF_X14_Y22_N19
\inst10|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X14_Y22_N8
\inst10|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~0_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst3|LPM_SHIFTREG_component|dffs\(9))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst10|LPM_SHIFTREG_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst3|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst10|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X14_Y22_N9
\inst10|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X15_Y22_N2
\inst4|LPM_SHIFTREG_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(9),
	combout => \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X15_Y22_N3
\inst4|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X15_Y22_N22
\inst4|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst4|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X15_Y22_N23
\inst4|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X17_Y22_N20
\inst4|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X17_Y22_N21
\inst4|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X17_Y22_N18
\inst4|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X17_Y22_N19
\inst4|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X17_Y22_N4
\inst4|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X17_Y22_N5
\inst4|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X17_Y22_N22
\inst4|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst4|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X17_Y22_N23
\inst4|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	ena => \inst2|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X14_Y22_N0
\inst11|LPM_SHIFTREG_component|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~9_combout\ = (\inst4|LPM_SHIFTREG_component|dffs\(0)) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	combout => \inst11|LPM_SHIFTREG_component|_~9_combout\);

-- Location: LCFF_X14_Y22_N1
\inst11|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X14_Y22_N10
\inst11|LPM_SHIFTREG_component|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~8_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(1))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst4|LPM_SHIFTREG_component|dffs\(1),
	datad => \inst11|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst11|LPM_SHIFTREG_component|_~8_combout\);

-- Location: LCFF_X14_Y22_N11
\inst11|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X14_Y22_N12
\inst11|LPM_SHIFTREG_component|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~7_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(2))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~7_combout\);

-- Location: LCFF_X14_Y22_N13
\inst11|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X14_Y22_N30
\inst11|LPM_SHIFTREG_component|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~6_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(3))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst4|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst11|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst11|LPM_SHIFTREG_component|_~6_combout\);

-- Location: LCFF_X14_Y22_N31
\inst11|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X14_Y22_N16
\inst11|LPM_SHIFTREG_component|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~5_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(4))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datac => \inst4|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst11|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst11|LPM_SHIFTREG_component|_~5_combout\);

-- Location: LCFF_X14_Y22_N17
\inst11|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X15_Y22_N0
\inst11|LPM_SHIFTREG_component|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~4_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(5))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst11|LPM_SHIFTREG_component|_~4_combout\);

-- Location: LCFF_X15_Y22_N1
\inst11|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X15_Y22_N26
\inst11|LPM_SHIFTREG_component|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~3_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(6))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst11|LPM_SHIFTREG_component|_~3_combout\);

-- Location: LCFF_X15_Y22_N27
\inst11|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X15_Y22_N28
\inst11|LPM_SHIFTREG_component|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~2_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(7))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst11|LPM_SHIFTREG_component|_~2_combout\);

-- Location: LCFF_X15_Y22_N29
\inst11|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X15_Y22_N6
\inst11|LPM_SHIFTREG_component|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~1_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(8))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_SHIFTREG_component|dffs\(8),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst11|LPM_SHIFTREG_component|_~1_combout\);

-- Location: LCFF_X15_Y22_N7
\inst11|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X15_Y22_N16
\inst11|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~0_combout\ = (\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & (\inst4|LPM_SHIFTREG_component|dffs\(9))) # (!\inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\ & 
-- ((\inst11|LPM_SHIFTREG_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_SHIFTREG_component|dffs\(9),
	datac => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0_combout\,
	datad => \inst11|LPM_SHIFTREG_component|dffs\(8),
	combout => \inst11|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X15_Y22_N17
\inst11|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~0clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(9));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(9));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(8));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(6));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(4));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(2));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(1));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|LPM_SHIFTREG_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S1(0));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(9));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(8));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(7));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(5));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(1));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|LPM_SHIFTREG_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S2(0));
END structure;


