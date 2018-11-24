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

-- DATE "11/08/2018 15:37:13"

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
	pin_name1 : OUT std_logic;
	FINISH : IN std_logic;
	CLK : IN std_logic;
	debug_Counter : OUT std_logic_vector(1 DOWNTO 0);
	S1 : OUT std_logic_vector(9 DOWNTO 0);
	CSK : IN std_logic;
	DATA_MOSI : IN std_logic;
	S2 : OUT std_logic_vector(9 DOWNTO 0)
	);
END Secador;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_Counter[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_Counter[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[9]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[8]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[4]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S1[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[9]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[8]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[7]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[6]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[5]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[4]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[3]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S2[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FINISH	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CSK	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_FINISH : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_debug_Counter : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CSK : std_logic;
SIGNAL ww_DATA_MOSI : std_logic;
SIGNAL ww_S2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FINISH~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \FINISH~combout\ : std_logic;
SIGNAL \FINISH~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \inst8|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \DATA_MOSI~combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \CSK~combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~1_combout\ : std_logic;
SIGNAL \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~2_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~3_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~9_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~8_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~7_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~6_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~5_combout\ : std_logic;
SIGNAL \inst3|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|LPM_SHIFTREG_component|_~4_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~1_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~0_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~3_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~2_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~9_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~8_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~7_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~6_combout\ : std_logic;
SIGNAL \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~5_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|_~4_combout\ : std_logic;
SIGNAL \inst11|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|LPM_SHIFTREG_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst10|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|LPM_SHIFTREG_component|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\ : std_logic_vector(0 DOWNTO 0);

BEGIN

pin_name1 <= ww_pin_name1;
ww_FINISH <= FINISH;
ww_CLK <= CLK;
debug_Counter <= ww_debug_Counter;
S1 <= ww_S1;
ww_CSK <= CSK;
ww_DATA_MOSI <= DATA_MOSI;
S2 <= ww_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\FINISH~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FINISH~combout\);
\inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0) <= NOT \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0);

-- Location: LCFF_X22_Y29_N7
\inst4|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[9]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X22_Y29_N6
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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\FINISH~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FINISH~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FINISH~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y29_N24
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst7|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X21_Y29_N26
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ $ (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\);

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

-- Location: LCCOMB_X21_Y29_N30
\inst8|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_SHIFTREG_component|_~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\CLK~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst8|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X21_Y29_N31
\inst8|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst8|LPM_SHIFTREG_component|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCFF_X21_Y29_N27
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FINISH~clkctrl_outclk\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	aclr => \inst8|LPM_SHIFTREG_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCFF_X21_Y29_N25
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FINISH~clkctrl_outclk\,
	datain => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	aclr => \inst8|LPM_SHIFTREG_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0));

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

-- Location: LCCOMB_X23_Y29_N10
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X23_Y29_N11
\inst|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X23_Y29_N28
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

-- Location: LCFF_X23_Y29_N29
\inst|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X23_Y29_N6
\inst|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y29_N7
\inst|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X23_Y29_N20
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

-- Location: LCFF_X23_Y29_N21
\inst|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCFF_X23_Y29_N23
\inst|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(3),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X23_Y29_N16
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

-- Location: LCFF_X23_Y29_N17
\inst|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCFF_X23_Y29_N19
\inst|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(5),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X23_Y29_N8
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

-- Location: LCFF_X23_Y29_N9
\inst|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCFF_X23_Y29_N31
\inst|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(7),
	sload => VCC,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X23_Y29_N14
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

-- Location: LCFF_X23_Y29_N15
\inst3|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[8]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X22_Y29_N22
\inst10|LPM_SHIFTREG_component|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~1_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(8)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~1_combout\);

-- Location: LCFF_X22_Y29_N23
\inst10|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X23_Y29_N24
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

-- Location: LCFF_X23_Y29_N25
\inst|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|LPM_SHIFTREG_component|dffs[9]~feeder_combout\,
	ena => \CSK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCFF_X23_Y29_N13
\inst3|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(9),
	sload => VCC,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X22_Y29_N12
\inst10|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(9)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_SHIFTREG_component|dffs\(8),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X22_Y29_N13
\inst10|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X20_Y29_N12
\inst3|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst3|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X20_Y29_N13
\inst3|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X21_Y29_N12
\inst10|LPM_SHIFTREG_component|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(7)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_SHIFTREG_component|dffs\(6),
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst3|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst10|LPM_SHIFTREG_component|_~2_combout\);

-- Location: LCFF_X21_Y29_N13
\inst10|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X20_Y29_N30
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

-- Location: LCFF_X20_Y29_N31
\inst3|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X21_Y29_N10
\inst10|LPM_SHIFTREG_component|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~3_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(6)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_SHIFTREG_component|dffs\(5),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(6),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~3_combout\);

-- Location: LCFF_X21_Y29_N11
\inst10|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X20_Y29_N4
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

-- Location: LCFF_X20_Y29_N5
\inst3|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X20_Y29_N22
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

-- Location: LCFF_X20_Y29_N23
\inst3|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X22_Y29_N8
\inst10|LPM_SHIFTREG_component|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~9_combout\ = (\inst3|LPM_SHIFTREG_component|dffs\(0)) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~9_combout\);

-- Location: LCFF_X22_Y29_N9
\inst10|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X20_Y29_N24
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

-- Location: LCFF_X20_Y29_N25
\inst3|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X22_Y29_N2
\inst10|LPM_SHIFTREG_component|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~8_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(1)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_SHIFTREG_component|dffs\(0),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(1),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~8_combout\);

-- Location: LCFF_X22_Y29_N3
\inst10|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X20_Y29_N2
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

-- Location: LCFF_X20_Y29_N3
\inst3|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X22_Y29_N20
\inst10|LPM_SHIFTREG_component|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(2)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|LPM_SHIFTREG_component|dffs\(1),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst10|LPM_SHIFTREG_component|_~7_combout\);

-- Location: LCFF_X22_Y29_N21
\inst10|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X21_Y29_N4
\inst10|LPM_SHIFTREG_component|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst3|LPM_SHIFTREG_component|dffs\(3))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst10|LPM_SHIFTREG_component|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst3|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst10|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst10|LPM_SHIFTREG_component|_~6_combout\);

-- Location: LCFF_X21_Y29_N5
\inst10|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X20_Y29_N14
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

-- Location: LCFF_X20_Y29_N15
\inst3|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X21_Y29_N22
\inst10|LPM_SHIFTREG_component|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~5_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(4)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst10|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst3|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst10|LPM_SHIFTREG_component|_~5_combout\);

-- Location: LCFF_X21_Y29_N23
\inst10|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X20_Y29_N16
\inst3|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \inst|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst3|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y29_N17
\inst3|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst3|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X21_Y29_N20
\inst10|LPM_SHIFTREG_component|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_SHIFTREG_component|_~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst3|LPM_SHIFTREG_component|dffs\(5)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst10|LPM_SHIFTREG_component|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst10|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst3|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst10|LPM_SHIFTREG_component|_~4_combout\);

-- Location: LCFF_X21_Y29_N21
\inst10|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst10|LPM_SHIFTREG_component|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X22_Y29_N16
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

-- Location: LCFF_X22_Y29_N17
\inst4|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[8]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X22_Y29_N0
\inst11|LPM_SHIFTREG_component|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~1_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(8)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_SHIFTREG_component|dffs\(7),
	datac => \inst4|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~1_combout\);

-- Location: LCFF_X22_Y29_N1
\inst11|LPM_SHIFTREG_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(8));

-- Location: LCCOMB_X22_Y29_N18
\inst11|LPM_SHIFTREG_component|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst4|LPM_SHIFTREG_component|dffs\(9))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst11|LPM_SHIFTREG_component|dffs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_SHIFTREG_component|dffs\(9),
	datab => \inst11|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~0_combout\);

-- Location: LCFF_X22_Y29_N19
\inst11|LPM_SHIFTREG_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(9));

-- Location: LCCOMB_X22_Y29_N4
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

-- Location: LCFF_X22_Y29_N5
\inst4|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X21_Y29_N0
\inst11|LPM_SHIFTREG_component|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~3_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(6)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst4|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst11|LPM_SHIFTREG_component|_~3_combout\);

-- Location: LCFF_X21_Y29_N1
\inst11|LPM_SHIFTREG_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCFF_X22_Y29_N31
\inst4|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(7),
	sload => VCC,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X21_Y29_N14
\inst11|LPM_SHIFTREG_component|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(7)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_SHIFTREG_component|dffs\(6),
	datac => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst4|LPM_SHIFTREG_component|dffs\(7),
	combout => \inst11|LPM_SHIFTREG_component|_~2_combout\);

-- Location: LCFF_X21_Y29_N15
\inst11|LPM_SHIFTREG_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCFF_X22_Y29_N15
\inst4|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(0),
	sload => VCC,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X21_Y29_N8
\inst11|LPM_SHIFTREG_component|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~9_combout\ = (\inst4|LPM_SHIFTREG_component|dffs\(0)) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~9_combout\);

-- Location: LCFF_X21_Y29_N9
\inst11|LPM_SHIFTREG_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X22_Y29_N28
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

-- Location: LCFF_X22_Y29_N29
\inst4|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X21_Y29_N18
\inst11|LPM_SHIFTREG_component|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~8_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(1)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst11|LPM_SHIFTREG_component|dffs\(0),
	datad => \inst4|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~8_combout\);

-- Location: LCFF_X21_Y29_N19
\inst11|LPM_SHIFTREG_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X22_Y29_N10
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

-- Location: LCFF_X22_Y29_N11
\inst4|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X21_Y29_N16
\inst11|LPM_SHIFTREG_component|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(2)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_SHIFTREG_component|dffs\(1),
	datac => \inst4|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~7_combout\);

-- Location: LCFF_X21_Y29_N17
\inst11|LPM_SHIFTREG_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X22_Y29_N24
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

-- Location: LCFF_X22_Y29_N25
\inst4|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X21_Y29_N2
\inst11|LPM_SHIFTREG_component|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(3)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst11|LPM_SHIFTREG_component|dffs\(2),
	datad => \inst4|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst11|LPM_SHIFTREG_component|_~6_combout\);

-- Location: LCFF_X21_Y29_N3
\inst11|LPM_SHIFTREG_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X20_Y29_N20
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

-- Location: LCFF_X20_Y29_N21
\inst4|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X21_Y29_N28
\inst11|LPM_SHIFTREG_component|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~5_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(4)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_SHIFTREG_component|dffs\(3),
	datac => \inst4|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~5_combout\);

-- Location: LCFF_X21_Y29_N29
\inst11|LPM_SHIFTREG_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCFF_X22_Y29_N27
\inst4|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \inst|LPM_SHIFTREG_component|dffs\(5),
	sload => VCC,
	ena => \inst7|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X21_Y29_N6
\inst11|LPM_SHIFTREG_component|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_SHIFTREG_component|_~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_SHIFTREG_component|dffs\(5)))) # (!\inst7|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_SHIFTREG_component|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_SHIFTREG_component|dffs\(4),
	datac => \inst4|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst11|LPM_SHIFTREG_component|_~4_combout\);

-- Location: LCFF_X21_Y29_N7
\inst11|LPM_SHIFTREG_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst11|LPM_SHIFTREG_component|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|LPM_SHIFTREG_component|dffs\(5));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_Counter[1]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_Counter(1));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_Counter[0]~I\ : cycloneii_io
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
	datain => \inst7|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_Counter(0));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


