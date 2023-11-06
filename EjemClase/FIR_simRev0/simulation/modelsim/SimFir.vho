-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/26/2023 16:32:09"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimFir IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	x : IN std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SimFir;

-- Design Ports Information
-- y[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SimFir IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \tap~16_combout\ : std_logic;
SIGNAL \tap[0][0]~q\ : std_logic;
SIGNAL \tap~2_combout\ : std_logic;
SIGNAL \tap[1][0]~q\ : std_logic;
SIGNAL \tap~3_combout\ : std_logic;
SIGNAL \tap[2][0]~q\ : std_logic;
SIGNAL \tap~17_combout\ : std_logic;
SIGNAL \tap[3][0]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \tap~20_combout\ : std_logic;
SIGNAL \tap[0][2]~q\ : std_logic;
SIGNAL \tap~14_combout\ : std_logic;
SIGNAL \tap[1][2]~q\ : std_logic;
SIGNAL \tap~15_combout\ : std_logic;
SIGNAL \tap[2][2]~q\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \tap~18_combout\ : std_logic;
SIGNAL \tap[0][1]~q\ : std_logic;
SIGNAL \tap~0_combout\ : std_logic;
SIGNAL \tap[1][1]~q\ : std_logic;
SIGNAL \tap~1_combout\ : std_logic;
SIGNAL \tap[2][1]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \tap~30_combout\ : std_logic;
SIGNAL \tap[0][7]~q\ : std_logic;
SIGNAL \tap~4_combout\ : std_logic;
SIGNAL \tap[1][7]~q\ : std_logic;
SIGNAL \tap~5_combout\ : std_logic;
SIGNAL \tap[2][7]~q\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \tap~28_combout\ : std_logic;
SIGNAL \tap[0][6]~q\ : std_logic;
SIGNAL \tap~6_combout\ : std_logic;
SIGNAL \tap[1][6]~q\ : std_logic;
SIGNAL \tap~7_combout\ : std_logic;
SIGNAL \tap[2][6]~q\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \tap~26_combout\ : std_logic;
SIGNAL \tap[0][5]~q\ : std_logic;
SIGNAL \tap~8_combout\ : std_logic;
SIGNAL \tap[1][5]~q\ : std_logic;
SIGNAL \tap~9_combout\ : std_logic;
SIGNAL \tap[2][5]~q\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \tap~24_combout\ : std_logic;
SIGNAL \tap[0][4]~q\ : std_logic;
SIGNAL \tap~10_combout\ : std_logic;
SIGNAL \tap[1][4]~q\ : std_logic;
SIGNAL \tap~11_combout\ : std_logic;
SIGNAL \tap[2][4]~q\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \tap~22_combout\ : std_logic;
SIGNAL \tap[0][3]~q\ : std_logic;
SIGNAL \tap~12_combout\ : std_logic;
SIGNAL \tap[1][3]~q\ : std_logic;
SIGNAL \tap~13_combout\ : std_logic;
SIGNAL \tap[2][3]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \y[0]~reg0_q\ : std_logic;
SIGNAL \tap~19_combout\ : std_logic;
SIGNAL \tap[3][1]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \y[1]~reg0_q\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \tap~21_combout\ : std_logic;
SIGNAL \tap[3][2]~q\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \y[2]~reg0_q\ : std_logic;
SIGNAL \tap~23_combout\ : std_logic;
SIGNAL \tap[3][3]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \y[3]~reg0_q\ : std_logic;
SIGNAL \tap~25_combout\ : std_logic;
SIGNAL \tap[3][4]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \y[4]~reg0_q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \tap~27_combout\ : std_logic;
SIGNAL \tap[3][5]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \y[5]~reg0_q\ : std_logic;
SIGNAL \tap~29_combout\ : std_logic;
SIGNAL \tap[3][6]~q\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \y[6]~reg0_q\ : std_logic;
SIGNAL \tap~31_combout\ : std_logic;
SIGNAL \tap[3][7]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \y[7]~0_combout\ : std_logic;
SIGNAL \y[7]~reg0_q\ : std_logic;
SIGNAL t1 : std_logic_vector(7 DOWNTO 0);
SIGNAL t2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_y[7]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_y[7]~reg0_q\ <= NOT \y[7]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y13_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~reg0_q\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]~reg0_q\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]~reg0_q\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~reg0_q\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[4]~reg0_q\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[5]~reg0_q\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[6]~reg0_q\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_y[7]~reg0_q\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y17_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X49_Y10_N26
\tap~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~16_combout\ = (\x[0]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~16_combout\);

-- Location: FF_X49_Y10_N27
\tap[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][0]~q\);

-- Location: LCCOMB_X50_Y10_N6
\tap~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~2_combout\ = (!\rst~input_o\ & \tap[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \tap[0][0]~q\,
	combout => \tap~2_combout\);

-- Location: FF_X50_Y10_N7
\tap[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][0]~q\);

-- Location: LCCOMB_X51_Y10_N10
\tap~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~3_combout\ = (\tap[1][0]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tap[1][0]~q\,
	datad => \rst~input_o\,
	combout => \tap~3_combout\);

-- Location: FF_X51_Y10_N11
\tap[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][0]~q\);

-- Location: LCCOMB_X50_Y10_N26
\tap~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~17_combout\ = (!\rst~input_o\ & \tap[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \tap[2][0]~q\,
	combout => \tap~17_combout\);

-- Location: FF_X50_Y10_N27
\tap[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][0]~q\);

-- Location: LCCOMB_X49_Y10_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\tap[0][0]~q\ & (\tap[3][0]~q\ $ (VCC))) # (!\tap[0][0]~q\ & (\tap[3][0]~q\ & VCC))
-- \Add1~1\ = CARRY((\tap[0][0]~q\ & \tap[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][0]~q\,
	datab => \tap[3][0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X48_Y9_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (!\rst~input_o\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X48_Y9_N11
\t2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(0));

-- Location: IOIBUF_X53_Y14_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X49_Y10_N22
\tap~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~20_combout\ = (\x[2]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[2]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~20_combout\);

-- Location: FF_X49_Y10_N23
\tap[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][2]~q\);

-- Location: LCCOMB_X50_Y10_N22
\tap~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~14_combout\ = (\tap[0][2]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[0][2]~q\,
	datac => \rst~input_o\,
	combout => \tap~14_combout\);

-- Location: FF_X50_Y10_N23
\tap[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][2]~q\);

-- Location: LCCOMB_X50_Y10_N0
\tap~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~15_combout\ = (\tap[1][2]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][2]~q\,
	datac => \rst~input_o\,
	combout => \tap~15_combout\);

-- Location: FF_X50_Y10_N1
\tap[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][2]~q\);

-- Location: IOIBUF_X53_Y14_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X49_Y10_N20
\tap~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~18_combout\ = (\x[1]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[1]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~18_combout\);

-- Location: FF_X49_Y10_N21
\tap[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][1]~q\);

-- Location: LCCOMB_X50_Y10_N16
\tap~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~0_combout\ = (\tap[0][1]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[0][1]~q\,
	datac => \rst~input_o\,
	combout => \tap~0_combout\);

-- Location: FF_X50_Y10_N17
\tap[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][1]~q\);

-- Location: LCCOMB_X51_Y10_N28
\tap~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~1_combout\ = (\tap[1][1]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tap[1][1]~q\,
	datad => \rst~input_o\,
	combout => \tap~1_combout\);

-- Location: FF_X51_Y10_N29
\tap[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][1]~q\);

-- Location: LCCOMB_X51_Y10_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\tap[2][0]~q\ & (\tap[1][0]~q\ $ (VCC))) # (!\tap[2][0]~q\ & (\tap[1][0]~q\ & VCC))
-- \Add0~1\ = CARRY((\tap[2][0]~q\ & \tap[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][0]~q\,
	datab => \tap[1][0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X51_Y10_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\tap[1][1]~q\ & ((\tap[2][1]~q\ & (\Add0~1\ & VCC)) # (!\tap[2][1]~q\ & (!\Add0~1\)))) # (!\tap[1][1]~q\ & ((\tap[2][1]~q\ & (!\Add0~1\)) # (!\tap[2][1]~q\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\tap[1][1]~q\ & (!\tap[2][1]~q\ & !\Add0~1\)) # (!\tap[1][1]~q\ & ((!\Add0~1\) # (!\tap[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][1]~q\,
	datab => \tap[2][1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X51_Y10_N16
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = ((\tap[2][2]~q\ $ (\tap[1][2]~q\ $ (!\Add0~3\)))) # (GND)
-- \Add0~6\ = CARRY((\tap[2][2]~q\ & ((\tap[1][2]~q\) # (!\Add0~3\))) # (!\tap[2][2]~q\ & (\tap[1][2]~q\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][2]~q\,
	datab => \tap[1][2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X50_Y9_N0
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (!\rst~input_o\ & \Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add0~5_combout\,
	combout => \Add0~19_combout\);

-- Location: FF_X50_Y9_N1
\t1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(2));

-- Location: IOIBUF_X53_Y11_N1
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X50_Y10_N8
\tap~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~30_combout\ = (\rst~input_o\) # (!\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \x[7]~input_o\,
	combout => \tap~30_combout\);

-- Location: FF_X50_Y10_N9
\tap[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][7]~q\);

-- Location: LCCOMB_X50_Y10_N12
\tap~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~4_combout\ = (\tap[0][7]~q\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[0][7]~q\,
	datac => \rst~input_o\,
	combout => \tap~4_combout\);

-- Location: FF_X50_Y10_N13
\tap[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][7]~q\);

-- Location: LCCOMB_X51_Y10_N0
\tap~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~5_combout\ = (\tap[1][7]~q\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][7]~q\,
	datad => \rst~input_o\,
	combout => \tap~5_combout\);

-- Location: FF_X51_Y10_N1
\tap[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][7]~q\);

-- Location: IOIBUF_X53_Y10_N15
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X52_Y10_N10
\tap~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~28_combout\ = (\x[6]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[6]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~28_combout\);

-- Location: FF_X52_Y10_N11
\tap[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][6]~q\);

-- Location: LCCOMB_X52_Y10_N4
\tap~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~6_combout\ = (\tap[0][6]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][6]~q\,
	datad => \rst~input_o\,
	combout => \tap~6_combout\);

-- Location: FF_X52_Y10_N5
\tap[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][6]~q\);

-- Location: LCCOMB_X51_Y10_N2
\tap~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~7_combout\ = (\tap[1][6]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datad => \rst~input_o\,
	combout => \tap~7_combout\);

-- Location: FF_X51_Y10_N3
\tap[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][6]~q\);

-- Location: IOIBUF_X53_Y12_N1
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X52_Y10_N16
\tap~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~26_combout\ = (\x[5]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[5]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~26_combout\);

-- Location: FF_X52_Y10_N17
\tap[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][5]~q\);

-- Location: LCCOMB_X52_Y10_N2
\tap~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~8_combout\ = (\tap[0][5]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[0][5]~q\,
	datad => \rst~input_o\,
	combout => \tap~8_combout\);

-- Location: FF_X52_Y10_N3
\tap[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][5]~q\);

-- Location: LCCOMB_X51_Y10_N4
\tap~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~9_combout\ = (\tap[1][5]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][5]~q\,
	datad => \rst~input_o\,
	combout => \tap~9_combout\);

-- Location: FF_X51_Y10_N5
\tap[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][5]~q\);

-- Location: IOIBUF_X53_Y11_N8
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LCCOMB_X49_Y10_N2
\tap~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~24_combout\ = (\x[4]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[4]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~24_combout\);

-- Location: FF_X49_Y10_N3
\tap[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][4]~q\);

-- Location: LCCOMB_X50_Y10_N30
\tap~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~10_combout\ = (\tap[0][4]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][4]~q\,
	datac => \rst~input_o\,
	combout => \tap~10_combout\);

-- Location: FF_X50_Y10_N31
\tap[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][4]~q\);

-- Location: LCCOMB_X51_Y10_N6
\tap~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~11_combout\ = (\tap[1][4]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][4]~q\,
	datad => \rst~input_o\,
	combout => \tap~11_combout\);

-- Location: FF_X51_Y10_N7
\tap[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][4]~q\);

-- Location: IOIBUF_X53_Y15_N8
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X49_Y10_N0
\tap~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~22_combout\ = (\x[3]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[3]~input_o\,
	datad => \rst~input_o\,
	combout => \tap~22_combout\);

-- Location: FF_X49_Y10_N1
\tap[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[0][3]~q\);

-- Location: LCCOMB_X50_Y10_N24
\tap~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~12_combout\ = (!\rst~input_o\ & \tap[0][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \tap[0][3]~q\,
	combout => \tap~12_combout\);

-- Location: FF_X50_Y10_N25
\tap[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][3]~q\);

-- Location: LCCOMB_X51_Y10_N8
\tap~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~13_combout\ = (\tap[1][3]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][3]~q\,
	datad => \rst~input_o\,
	combout => \tap~13_combout\);

-- Location: FF_X51_Y10_N9
\tap[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][3]~q\);

-- Location: LCCOMB_X51_Y10_N18
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\tap[2][3]~q\ & ((\tap[1][3]~q\ & (\Add0~6\ & VCC)) # (!\tap[1][3]~q\ & (!\Add0~6\)))) # (!\tap[2][3]~q\ & ((\tap[1][3]~q\ & (!\Add0~6\)) # (!\tap[1][3]~q\ & ((\Add0~6\) # (GND)))))
-- \Add0~8\ = CARRY((\tap[2][3]~q\ & (!\tap[1][3]~q\ & !\Add0~6\)) # (!\tap[2][3]~q\ & ((!\Add0~6\) # (!\tap[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][3]~q\,
	datab => \tap[1][3]~q\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X51_Y10_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\tap[2][4]~q\ $ (\tap[1][4]~q\ $ (!\Add0~8\)))) # (GND)
-- \Add0~10\ = CARRY((\tap[2][4]~q\ & ((\tap[1][4]~q\) # (!\Add0~8\))) # (!\tap[2][4]~q\ & (\tap[1][4]~q\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][4]~q\,
	datab => \tap[1][4]~q\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X51_Y10_N22
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\tap[1][5]~q\ & ((\tap[2][5]~q\ & (\Add0~10\ & VCC)) # (!\tap[2][5]~q\ & (!\Add0~10\)))) # (!\tap[1][5]~q\ & ((\tap[2][5]~q\ & (!\Add0~10\)) # (!\tap[2][5]~q\ & ((\Add0~10\) # (GND)))))
-- \Add0~12\ = CARRY((\tap[1][5]~q\ & (!\tap[2][5]~q\ & !\Add0~10\)) # (!\tap[1][5]~q\ & ((!\Add0~10\) # (!\tap[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][5]~q\,
	datab => \tap[2][5]~q\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X51_Y10_N24
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\tap[1][6]~q\ $ (\tap[2][6]~q\ $ (!\Add0~12\)))) # (GND)
-- \Add0~14\ = CARRY((\tap[1][6]~q\ & ((\tap[2][6]~q\) # (!\Add0~12\))) # (!\tap[1][6]~q\ & (\tap[2][6]~q\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datab => \tap[2][6]~q\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X51_Y10_N26
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \tap[1][7]~q\ $ (\Add0~14\ $ (\tap[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][7]~q\,
	datad => \tap[2][7]~q\,
	cin => \Add0~14\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X51_Y9_N24
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\rst~input_o\) # (!\Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X51_Y9_N25
\t1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(7));

-- Location: LCCOMB_X51_Y9_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (!\rst~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Add0~0_combout\,
	combout => \Add0~18_combout\);

-- Location: FF_X51_Y9_N31
\t1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(0));

-- Location: LCCOMB_X51_Y9_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (!\rst~input_o\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~4_combout\);

-- Location: FF_X51_Y9_N19
\t1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(1));

-- Location: LCCOMB_X51_Y9_N28
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (t1(0)) # (t1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t1(0),
	datad => t1(1),
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X50_Y9_N2
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((!t1(7) & \WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t1(7),
	datab => \WideOr0~combout\,
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X50_Y9_N4
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (t1(2) & (!\Add5~1_cout\)) # (!t1(2) & ((\Add5~1_cout\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1_cout\) # (!t1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X51_Y9_N0
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((t1(0) & !t1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t1(0),
	datab => t1(7),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X51_Y9_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (t1(1) & (!\Add3~1_cout\)) # (!t1(1) & ((\Add3~1_cout\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1_cout\) # (!t1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(1),
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X49_Y9_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (t1(0) & (\Add3~2_combout\ $ (VCC))) # (!t1(0) & (\Add3~2_combout\ & VCC))
-- \Add4~1\ = CARRY((t1(0) & \Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t1(0),
	datab => \Add3~2_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X49_Y9_N16
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\Add5~2_combout\ & (\Add4~0_combout\ $ (VCC))) # (!\Add5~2_combout\ & (\Add4~0_combout\ & VCC))
-- \Add6~1\ = CARRY((\Add5~2_combout\ & \Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X48_Y9_N16
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (t2(0) & (\Add6~0_combout\ $ (VCC))) # (!t2(0) & ((\Add6~0_combout\) # (GND)))
-- \Add7~1\ = CARRY((\Add6~0_combout\) # (!t2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2(0),
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: FF_X48_Y9_N17
\y[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0]~reg0_q\);

-- Location: LCCOMB_X50_Y10_N4
\tap~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~19_combout\ = (\tap[2][1]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][1]~q\,
	datac => \rst~input_o\,
	combout => \tap~19_combout\);

-- Location: FF_X50_Y10_N5
\tap[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][1]~q\);

-- Location: LCCOMB_X49_Y10_N6
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\tap[3][1]~q\ & ((\tap[0][1]~q\ & (\Add1~1\ & VCC)) # (!\tap[0][1]~q\ & (!\Add1~1\)))) # (!\tap[3][1]~q\ & ((\tap[0][1]~q\ & (!\Add1~1\)) # (!\tap[0][1]~q\ & ((\Add1~1\) # (GND)))))
-- \Add1~4\ = CARRY((\tap[3][1]~q\ & (!\tap[0][1]~q\ & !\Add1~1\)) # (!\tap[3][1]~q\ & ((!\Add1~1\) # (!\tap[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][1]~q\,
	datab => \tap[0][1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X48_Y9_N12
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\rst~input_o\ & \Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X48_Y9_N13
\t2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(1));

-- Location: LCCOMB_X51_Y9_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (!\rst~input_o\ & \Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \Add0~7_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X51_Y9_N27
\t1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(3));

-- Location: LCCOMB_X50_Y9_N6
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (t1(3) & (\Add5~3\ $ (GND))) # (!t1(3) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((t1(3) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(3),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X51_Y9_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (t1(2) & (\Add3~3\ $ (GND))) # (!t1(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((t1(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X50_Y9_N18
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (t1(0) & (t1(1) $ (VCC))) # (!t1(0) & (t1(1) & VCC))
-- \Add2~1\ = CARRY((t1(0) & t1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t1(0),
	datab => t1(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X49_Y9_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~4_combout\ & ((\Add2~0_combout\ & (\Add4~1\ & VCC)) # (!\Add2~0_combout\ & (!\Add4~1\)))) # (!\Add3~4_combout\ & ((\Add2~0_combout\ & (!\Add4~1\)) # (!\Add2~0_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add3~4_combout\ & (!\Add2~0_combout\ & !\Add4~1\)) # (!\Add3~4_combout\ & ((!\Add4~1\) # (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add2~0_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X49_Y9_N18
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add5~4_combout\ & ((\Add4~2_combout\ & (\Add6~1\ & VCC)) # (!\Add4~2_combout\ & (!\Add6~1\)))) # (!\Add5~4_combout\ & ((\Add4~2_combout\ & (!\Add6~1\)) # (!\Add4~2_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\Add5~4_combout\ & (!\Add4~2_combout\ & !\Add6~1\)) # (!\Add5~4_combout\ & ((!\Add6~1\) # (!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X48_Y9_N18
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (t2(1) & ((\Add6~2_combout\ & (!\Add7~1\)) # (!\Add6~2_combout\ & ((\Add7~1\) # (GND))))) # (!t2(1) & ((\Add6~2_combout\ & (\Add7~1\ & VCC)) # (!\Add6~2_combout\ & (!\Add7~1\))))
-- \Add7~3\ = CARRY((t2(1) & ((!\Add7~1\) # (!\Add6~2_combout\))) # (!t2(1) & (!\Add6~2_combout\ & !\Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2(1),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: FF_X48_Y9_N19
\y[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1]~reg0_q\);

-- Location: LCCOMB_X51_Y9_N20
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (!\rst~input_o\ & \Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add0~9_combout\,
	combout => \Add0~21_combout\);

-- Location: FF_X51_Y9_N21
\t1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(4));

-- Location: LCCOMB_X50_Y9_N8
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (t1(4) & (!\Add5~5\)) # (!t1(4) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!t1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X50_Y9_N20
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (t1(2) & ((t1(1) & (\Add2~1\ & VCC)) # (!t1(1) & (!\Add2~1\)))) # (!t1(2) & ((t1(1) & (!\Add2~1\)) # (!t1(1) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((t1(2) & (!t1(1) & !\Add2~1\)) # (!t1(2) & ((!\Add2~1\) # (!t1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(2),
	datab => t1(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X51_Y9_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (t1(3) & (!\Add3~5\)) # (!t1(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!t1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X49_Y9_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add2~2_combout\ $ (\Add3~6_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add2~2_combout\ & ((\Add3~6_combout\) # (!\Add4~3\))) # (!\Add2~2_combout\ & (\Add3~6_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X49_Y9_N20
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add5~6_combout\ $ (\Add4~4_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add5~6_combout\ & ((\Add4~4_combout\) # (!\Add6~3\))) # (!\Add5~6_combout\ & (\Add4~4_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X50_Y10_N10
\tap~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~21_combout\ = (\tap[2][2]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][2]~q\,
	datac => \rst~input_o\,
	combout => \tap~21_combout\);

-- Location: FF_X50_Y10_N11
\tap[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][2]~q\);

-- Location: LCCOMB_X49_Y10_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((\tap[0][2]~q\ $ (\tap[3][2]~q\ $ (!\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((\tap[0][2]~q\ & ((\tap[3][2]~q\) # (!\Add1~4\))) # (!\tap[0][2]~q\ & (\tap[3][2]~q\ & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][2]~q\,
	datab => \tap[3][2]~q\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X48_Y9_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\rst~input_o\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X48_Y9_N15
\t2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(2));

-- Location: LCCOMB_X48_Y9_N20
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add6~4_combout\ $ (t2(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add6~4_combout\ & ((!\Add7~3\) # (!t2(2)))) # (!\Add6~4_combout\ & (!t2(2) & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => t2(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: FF_X48_Y9_N21
\y[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2]~reg0_q\);

-- Location: LCCOMB_X50_Y10_N20
\tap~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~23_combout\ = (!\rst~input_o\ & \tap[2][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \tap[2][3]~q\,
	combout => \tap~23_combout\);

-- Location: FF_X50_Y10_N21
\tap[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][3]~q\);

-- Location: LCCOMB_X49_Y10_N10
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\tap[3][3]~q\ & ((\tap[0][3]~q\ & (\Add1~7\ & VCC)) # (!\tap[0][3]~q\ & (!\Add1~7\)))) # (!\tap[3][3]~q\ & ((\tap[0][3]~q\ & (!\Add1~7\)) # (!\tap[0][3]~q\ & ((\Add1~7\) # (GND)))))
-- \Add1~10\ = CARRY((\tap[3][3]~q\ & (!\tap[0][3]~q\ & !\Add1~7\)) # (!\tap[3][3]~q\ & ((!\Add1~7\) # (!\tap[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][3]~q\,
	datab => \tap[0][3]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X48_Y9_N8
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\rst~input_o\ & \Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X48_Y9_N9
\t2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(3));

-- Location: LCCOMB_X51_Y9_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (t1(4) & (\Add3~7\ $ (GND))) # (!t1(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((t1(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X50_Y9_N22
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((t1(2) $ (t1(3) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((t1(2) & ((t1(3)) # (!\Add2~3\))) # (!t1(2) & (t1(3) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(2),
	datab => t1(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X49_Y9_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~8_combout\ & ((\Add2~4_combout\ & (\Add4~5\ & VCC)) # (!\Add2~4_combout\ & (!\Add4~5\)))) # (!\Add3~8_combout\ & ((\Add2~4_combout\ & (!\Add4~5\)) # (!\Add2~4_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add3~8_combout\ & (!\Add2~4_combout\ & !\Add4~5\)) # (!\Add3~8_combout\ & ((!\Add4~5\) # (!\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X51_Y9_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (!\rst~input_o\ & \Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \Add0~11_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X51_Y9_N23
\t1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(5));

-- Location: LCCOMB_X50_Y9_N10
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (t1(5) & (\Add5~7\ $ (GND))) # (!t1(5) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((t1(5) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(5),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X49_Y9_N22
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add4~6_combout\ & ((\Add5~8_combout\ & (\Add6~5\ & VCC)) # (!\Add5~8_combout\ & (!\Add6~5\)))) # (!\Add4~6_combout\ & ((\Add5~8_combout\ & (!\Add6~5\)) # (!\Add5~8_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\Add4~6_combout\ & (!\Add5~8_combout\ & !\Add6~5\)) # (!\Add4~6_combout\ & ((!\Add6~5\) # (!\Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add5~8_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X48_Y9_N22
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (t2(3) & ((\Add6~6_combout\ & (!\Add7~5\)) # (!\Add6~6_combout\ & ((\Add7~5\) # (GND))))) # (!t2(3) & ((\Add6~6_combout\ & (\Add7~5\ & VCC)) # (!\Add6~6_combout\ & (!\Add7~5\))))
-- \Add7~7\ = CARRY((t2(3) & ((!\Add7~5\) # (!\Add6~6_combout\))) # (!t2(3) & (!\Add6~6_combout\ & !\Add7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2(3),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: FF_X48_Y9_N23
\y[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~6_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3]~reg0_q\);

-- Location: LCCOMB_X50_Y10_N2
\tap~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~25_combout\ = (\tap[2][4]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][4]~q\,
	datac => \rst~input_o\,
	combout => \tap~25_combout\);

-- Location: FF_X50_Y10_N3
\tap[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][4]~q\);

-- Location: LCCOMB_X49_Y10_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\tap[3][4]~q\ $ (\tap[0][4]~q\ $ (!\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((\tap[3][4]~q\ & ((\tap[0][4]~q\) # (!\Add1~10\))) # (!\tap[3][4]~q\ & (\tap[0][4]~q\ & !\Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][4]~q\,
	datab => \tap[0][4]~q\,
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X49_Y10_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~12_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => \rst~input_o\,
	combout => \Add1~14_combout\);

-- Location: FF_X49_Y10_N29
\t2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(4));

-- Location: LCCOMB_X51_Y10_N30
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (!\rst~input_o\ & \Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \Add0~13_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X51_Y9_N29
\t1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t1(6));

-- Location: LCCOMB_X50_Y9_N12
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (t1(6) & (!\Add5~9\)) # (!t1(6) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!t1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(6),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X51_Y9_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (t1(5) & (!\Add3~9\)) # (!t1(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!t1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X50_Y9_N24
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (t1(4) & ((t1(3) & (\Add2~5\ & VCC)) # (!t1(3) & (!\Add2~5\)))) # (!t1(4) & ((t1(3) & (!\Add2~5\)) # (!t1(3) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((t1(4) & (!t1(3) & !\Add2~5\)) # (!t1(4) & ((!\Add2~5\) # (!t1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(4),
	datab => t1(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X49_Y9_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add3~10_combout\ $ (\Add2~6_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add3~10_combout\ & ((\Add2~6_combout\) # (!\Add4~7\))) # (!\Add3~10_combout\ & (\Add2~6_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X49_Y9_N24
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Add5~10_combout\ $ (\Add4~8_combout\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Add5~10_combout\ & ((\Add4~8_combout\) # (!\Add6~7\))) # (!\Add5~10_combout\ & (\Add4~8_combout\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X48_Y9_N24
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((t2(4) $ (\Add6~8_combout\ $ (\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((t2(4) & (\Add6~8_combout\ & !\Add7~7\)) # (!t2(4) & ((\Add6~8_combout\) # (!\Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2(4),
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: FF_X48_Y9_N25
\y[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~8_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[4]~reg0_q\);

-- Location: LCCOMB_X50_Y9_N26
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((t1(4) $ (t1(5) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((t1(4) & ((t1(5)) # (!\Add2~7\))) # (!t1(4) & (t1(5) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(4),
	datab => t1(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X51_Y9_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (t1(6) & (\Add3~11\ $ (GND))) # (!t1(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((t1(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t1(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X49_Y9_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add2~8_combout\ & ((\Add3~12_combout\ & (\Add4~9\ & VCC)) # (!\Add3~12_combout\ & (!\Add4~9\)))) # (!\Add2~8_combout\ & ((\Add3~12_combout\ & (!\Add4~9\)) # (!\Add3~12_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Add2~8_combout\ & (!\Add3~12_combout\ & !\Add4~9\)) # (!\Add2~8_combout\ & ((!\Add4~9\) # (!\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X50_Y9_N14
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (t1(7) & (!\Add5~11\ & VCC)) # (!t1(7) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((!t1(7) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(7),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X49_Y9_N26
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add4~10_combout\ & ((\Add5~12_combout\ & (\Add6~9\ & VCC)) # (!\Add5~12_combout\ & (!\Add6~9\)))) # (!\Add4~10_combout\ & ((\Add5~12_combout\ & (!\Add6~9\)) # (!\Add5~12_combout\ & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\Add4~10_combout\ & (!\Add5~12_combout\ & !\Add6~9\)) # (!\Add4~10_combout\ & ((!\Add6~9\) # (!\Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add5~12_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X50_Y10_N28
\tap~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~27_combout\ = (\tap[2][5]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][5]~q\,
	datac => \rst~input_o\,
	combout => \tap~27_combout\);

-- Location: FF_X50_Y10_N29
\tap[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][5]~q\);

-- Location: LCCOMB_X49_Y10_N14
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (\tap[0][5]~q\ & ((\tap[3][5]~q\ & (\Add1~13\ & VCC)) # (!\tap[3][5]~q\ & (!\Add1~13\)))) # (!\tap[0][5]~q\ & ((\tap[3][5]~q\ & (!\Add1~13\)) # (!\tap[3][5]~q\ & ((\Add1~13\) # (GND)))))
-- \Add1~16\ = CARRY((\tap[0][5]~q\ & (!\tap[3][5]~q\ & !\Add1~13\)) # (!\tap[0][5]~q\ & ((!\Add1~13\) # (!\tap[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][5]~q\,
	datab => \tap[3][5]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X48_Y9_N6
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\rst~input_o\ & \Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add1~15_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X48_Y9_N7
\t2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(5));

-- Location: LCCOMB_X48_Y9_N26
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~10_combout\ & ((t2(5) & (!\Add7~9\)) # (!t2(5) & (\Add7~9\ & VCC)))) # (!\Add6~10_combout\ & ((t2(5) & ((\Add7~9\) # (GND))) # (!t2(5) & (!\Add7~9\))))
-- \Add7~11\ = CARRY((\Add6~10_combout\ & (t2(5) & !\Add7~9\)) # (!\Add6~10_combout\ & ((t2(5)) # (!\Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => t2(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: FF_X48_Y9_N27
\y[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~10_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[5]~reg0_q\);

-- Location: LCCOMB_X50_Y10_N14
\tap~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~29_combout\ = (\tap[2][6]~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][6]~q\,
	datac => \rst~input_o\,
	combout => \tap~29_combout\);

-- Location: FF_X50_Y10_N15
\tap[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][6]~q\);

-- Location: LCCOMB_X49_Y10_N16
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = ((\tap[0][6]~q\ $ (\tap[3][6]~q\ $ (!\Add1~16\)))) # (GND)
-- \Add1~19\ = CARRY((\tap[0][6]~q\ & ((\tap[3][6]~q\) # (!\Add1~16\))) # (!\tap[0][6]~q\ & (\tap[3][6]~q\ & !\Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[0][6]~q\,
	datab => \tap[3][6]~q\,
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X49_Y10_N30
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\rst~input_o\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X49_Y10_N31
\t2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(6));

-- Location: LCCOMB_X51_Y9_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (t1(7) & ((\Add3~13\) # (GND))) # (!t1(7) & (!\Add3~13\))
-- \Add3~15\ = CARRY((t1(7)) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X50_Y9_N28
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (t1(6) & ((t1(5) & (\Add2~9\ & VCC)) # (!t1(5) & (!\Add2~9\)))) # (!t1(6) & ((t1(5) & (!\Add2~9\)) # (!t1(5) & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((t1(6) & (!t1(5) & !\Add2~9\)) # (!t1(6) & ((!\Add2~9\) # (!t1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(6),
	datab => t1(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X49_Y9_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Add3~14_combout\ $ (\Add2~10_combout\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Add3~14_combout\ & ((\Add2~10_combout\) # (!\Add4~11\))) # (!\Add3~14_combout\ & (\Add2~10_combout\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X50_Y9_N16
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = t1(7) $ (!\Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(7),
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X49_Y9_N28
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\Add4~12_combout\ $ (\Add5~14_combout\ $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\Add4~12_combout\ & ((\Add5~14_combout\) # (!\Add6~11\))) # (!\Add4~12_combout\ & (\Add5~14_combout\ & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add5~14_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X48_Y9_N28
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = ((t2(6) $ (\Add6~12_combout\ $ (\Add7~11\)))) # (GND)
-- \Add7~13\ = CARRY((t2(6) & (\Add6~12_combout\ & !\Add7~11\)) # (!t2(6) & ((\Add6~12_combout\) # (!\Add7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t2(6),
	datab => \Add6~12_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: FF_X48_Y9_N29
\y[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~12_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[6]~reg0_q\);

-- Location: LCCOMB_X50_Y10_N18
\tap~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap~31_combout\ = (\rst~input_o\) # (\tap[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \tap[2][7]~q\,
	combout => \tap~31_combout\);

-- Location: FF_X50_Y10_N19
\tap[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][7]~q\);

-- Location: LCCOMB_X49_Y10_N18
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = \tap[0][7]~q\ $ (\Add1~19\ $ (\tap[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[0][7]~q\,
	datad => \tap[3][7]~q\,
	cin => \Add1~19\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X49_Y10_N24
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\rst~input_o\) # (!\Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \Add1~21_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X49_Y10_N25
\t2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t2(7));

-- Location: LCCOMB_X50_Y9_N30
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = t1(6) $ (\Add2~11\ $ (t1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(6),
	datad => t1(7),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X51_Y9_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = t1(7) $ (\Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => t1(7),
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X49_Y9_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add2~12_combout\ $ (\Add4~13\ $ (\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => \Add3~16_combout\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X49_Y9_N30
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = \Add4~14_combout\ $ (\Add6~13\ $ (\Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~14_combout\,
	datad => \Add5~14_combout\,
	cin => \Add6~13\,
	combout => \Add6~14_combout\);

-- Location: LCCOMB_X48_Y9_N30
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = t2(7) $ (\Add7~13\ $ (\Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => t2(7),
	datad => \Add6~14_combout\,
	cin => \Add7~13\,
	combout => \Add7~14_combout\);

-- Location: LCCOMB_X48_Y9_N4
\y[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~0_combout\ = !\Add7~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~14_combout\,
	combout => \y[7]~0_combout\);

-- Location: FF_X48_Y9_N5
\y[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[7]~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[7]~reg0_q\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


