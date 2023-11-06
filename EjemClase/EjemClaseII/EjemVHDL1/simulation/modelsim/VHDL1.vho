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

-- DATE "10/26/2023 15:53:54"

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

ENTITY 	VHDL1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	rst : IN std_logic;
	SW : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(0 TO 1);
	LED : OUT std_logic_vector(7 DOWNTO 0);
	ADC_CS_N : OUT std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	ADC_SDAT : IN std_logic
	);
END VHDL1;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VHDL1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 TO 1);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC0|ADC_ADDR_REG[11]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LED[0]~2_combout\ : std_logic;
SIGNAL \LED[0]~reg0_q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \LED[1]~reg0_q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \LED[2]~reg0_q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ADC0|Add0~0_combout\ : std_logic;
SIGNAL \ADC0|Add0~2_combout\ : std_logic;
SIGNAL \ADC0|Mux57~0_combout\ : std_logic;
SIGNAL \ADC0|Mux58~0_combout\ : std_logic;
SIGNAL \ADC0|Mux13~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_SCLK~combout\ : std_logic;
SIGNAL \ADC0|Mux54~0_combout\ : std_logic;
SIGNAL \ADC0|Add0~1\ : std_logic;
SIGNAL \ADC0|Add0~3_combout\ : std_logic;
SIGNAL \ADC0|Add0~5_combout\ : std_logic;
SIGNAL \ADC0|Mux56~1_combout\ : std_logic;
SIGNAL \ADC0|Add0~4\ : std_logic;
SIGNAL \ADC0|Add0~6_combout\ : std_logic;
SIGNAL \ADC0|Add0~8_combout\ : std_logic;
SIGNAL \ADC0|Add0~7\ : std_logic;
SIGNAL \ADC0|Add0~9_combout\ : std_logic;
SIGNAL \ADC0|Add0~11_combout\ : std_logic;
SIGNAL \ADC0|Add0~10\ : std_logic;
SIGNAL \ADC0|Add0~12_combout\ : std_logic;
SIGNAL \ADC0|Add0~14_combout\ : std_logic;
SIGNAL \ADC0|Add0~13\ : std_logic;
SIGNAL \ADC0|Add0~15_combout\ : std_logic;
SIGNAL \ADC0|Add0~17_combout\ : std_logic;
SIGNAL \ADC0|Mux56~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ADC_EN_PRESC~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ADC_EN_PRESC~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \ADC_EN~q\ : std_logic;
SIGNAL \ADC0|Mux56~0_combout\ : std_logic;
SIGNAL \ADC0|Mux56~3_combout\ : std_logic;
SIGNAL \ADC0|Mux55~0_combout\ : std_logic;
SIGNAL \ADC0|process_0~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_CS_N~combout\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[0]~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[11]~1_combout\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[11]~2_combout\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\ : std_logic;
SIGNAL \ADC0|Mux32~0_combout\ : std_logic;
SIGNAL \ADC0|Mux31~0_combout\ : std_logic;
SIGNAL \ADC0|Mux0~0_combout\ : std_logic;
SIGNAL \ADC0|Mux29~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_SADDR~combout\ : std_logic;
SIGNAL \ADC0|ADC_ADDR_REG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ADC_EN_PRESC : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC0|STT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC0|BIT_CNT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_rst <= rst;
ww_SW <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW);
ww_KEY <= KEY;
LED <= ww_LED;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SADDR <= ww_ADC_SADDR;
ADC_SCLK <= ww_ADC_SCLK;
ww_ADC_SDAT <= ADC_SDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ADC0|ADC_ADDR_REG[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC0|ADC_ADDR_REG[0]~0_combout\);

\ADC0|ADC_ADDR_REG[11]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC0|ADC_ADDR_REG[11]~2_combout\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_CS_N~combout\,
	devoe => ww_devoe,
	o => \ADC_CS_N~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_SADDR~combout\,
	devoe => ww_devoe,
	o => \ADC_SADDR~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_SCLK~combout\,
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X38_Y33_N0
\LED[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[0]~2_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \LED[0]~2_combout\);

-- Location: FF_X38_Y33_N1
\LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[0]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X50_Y18_N24
\LED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\SW[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \LED~0_combout\);

-- Location: FF_X50_Y18_N25
\LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[1]~reg0_q\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X27_Y30_N0
\LED~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (\KEY[1]~input_o\) # (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \LED~1_combout\);

-- Location: FF_X27_Y30_N1
\LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_q\);

-- Location: IOIBUF_X47_Y34_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X40_Y29_N20
\ADC0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~0_combout\ = \ADC0|BIT_CNT\(0) $ (VCC)
-- \ADC0|Add0~1\ = CARRY(\ADC0|BIT_CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(0),
	datad => VCC,
	combout => \ADC0|Add0~0_combout\,
	cout => \ADC0|Add0~1\);

-- Location: LCCOMB_X40_Y29_N14
\ADC0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~2_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datad => \ADC0|Add0~0_combout\,
	combout => \ADC0|Add0~2_combout\);

-- Location: LCCOMB_X38_Y29_N0
\ADC0|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux57~0_combout\ = (!\ADC0|STT\(1) & \ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|STT\(1),
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux57~0_combout\);

-- Location: LCCOMB_X38_Y29_N6
\ADC0|STT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|STT\(1) = (\rst~input_o\ & ((\ADC0|Mux56~3_combout\ & (\ADC0|Mux57~0_combout\)) # (!\ADC0|Mux56~3_combout\ & ((\ADC0|STT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|Mux56~3_combout\,
	datac => \ADC0|Mux57~0_combout\,
	datad => \ADC0|STT\(1),
	combout => \ADC0|STT\(1));

-- Location: LCCOMB_X39_Y29_N8
\ADC0|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux58~0_combout\ = (!\ADC0|STT\(0)) # (!\ADC0|STT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|STT\(1),
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux58~0_combout\);

-- Location: LCCOMB_X38_Y29_N20
\ADC0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux13~0_combout\ = ((!\ADC0|ADC_SCLK~combout\ & !\ADC0|STT\(1))) # (!\ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|STT\(0),
	datac => \ADC0|ADC_SCLK~combout\,
	datad => \ADC0|STT\(1),
	combout => \ADC0|Mux13~0_combout\);

-- Location: LCCOMB_X38_Y29_N16
\ADC0|ADC_SCLK\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_SCLK~combout\ = ((\ADC0|Mux58~0_combout\ & ((\ADC0|Mux13~0_combout\))) # (!\ADC0|Mux58~0_combout\ & (\ADC0|ADC_SCLK~combout\))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|ADC_SCLK~combout\,
	datac => \ADC0|Mux58~0_combout\,
	datad => \ADC0|Mux13~0_combout\,
	combout => \ADC0|ADC_SCLK~combout\);

-- Location: LCCOMB_X39_Y29_N14
\ADC0|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux54~0_combout\ = (!\ADC0|STT\(1) & ((!\ADC0|STT\(0)) # (!\ADC0|ADC_SCLK~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|STT\(1),
	datac => \ADC0|ADC_SCLK~combout\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux54~0_combout\);

-- Location: LCCOMB_X40_Y29_N8
\ADC0|BIT_CNT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(0) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & ((\ADC0|Add0~2_combout\))) # (!\ADC0|Mux54~0_combout\ & (\ADC0|BIT_CNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|BIT_CNT\(0),
	datac => \ADC0|Add0~2_combout\,
	datad => \ADC0|Mux54~0_combout\,
	combout => \ADC0|BIT_CNT\(0));

-- Location: LCCOMB_X40_Y29_N22
\ADC0|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~3_combout\ = (\ADC0|BIT_CNT\(1) & (!\ADC0|Add0~1\)) # (!\ADC0|BIT_CNT\(1) & ((\ADC0|Add0~1\) # (GND)))
-- \ADC0|Add0~4\ = CARRY((!\ADC0|Add0~1\) # (!\ADC0|BIT_CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(1),
	datad => VCC,
	cin => \ADC0|Add0~1\,
	combout => \ADC0|Add0~3_combout\,
	cout => \ADC0|Add0~4\);

-- Location: LCCOMB_X40_Y29_N4
\ADC0|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~5_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datac => \ADC0|Add0~3_combout\,
	combout => \ADC0|Add0~5_combout\);

-- Location: LCCOMB_X40_Y29_N18
\ADC0|BIT_CNT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(1) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & ((\ADC0|Add0~5_combout\))) # (!\ADC0|Mux54~0_combout\ & (\ADC0|BIT_CNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|BIT_CNT\(1),
	datac => \ADC0|Add0~5_combout\,
	datad => \ADC0|Mux54~0_combout\,
	combout => \ADC0|BIT_CNT\(1));

-- Location: LCCOMB_X39_Y29_N22
\ADC0|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux56~1_combout\ = (\ADC0|STT\(0) & (\ADC0|BIT_CNT\(0) & (!\ADC0|ADC_SCLK~combout\ & \ADC0|BIT_CNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|BIT_CNT\(0),
	datac => \ADC0|ADC_SCLK~combout\,
	datad => \ADC0|BIT_CNT\(1),
	combout => \ADC0|Mux56~1_combout\);

-- Location: LCCOMB_X40_Y29_N24
\ADC0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~6_combout\ = (\ADC0|BIT_CNT\(2) & (\ADC0|Add0~4\ $ (GND))) # (!\ADC0|BIT_CNT\(2) & (!\ADC0|Add0~4\ & VCC))
-- \ADC0|Add0~7\ = CARRY((\ADC0|BIT_CNT\(2) & !\ADC0|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(2),
	datad => VCC,
	cin => \ADC0|Add0~4\,
	combout => \ADC0|Add0~6_combout\,
	cout => \ADC0|Add0~7\);

-- Location: LCCOMB_X40_Y29_N6
\ADC0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~8_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datad => \ADC0|Add0~6_combout\,
	combout => \ADC0|Add0~8_combout\);

-- Location: LCCOMB_X40_Y29_N12
\ADC0|BIT_CNT[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(2) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & (\ADC0|Add0~8_combout\)) # (!\ADC0|Mux54~0_combout\ & ((\ADC0|BIT_CNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|Add0~8_combout\,
	datac => \ADC0|BIT_CNT\(2),
	datad => \ADC0|Mux54~0_combout\,
	combout => \ADC0|BIT_CNT\(2));

-- Location: LCCOMB_X40_Y29_N26
\ADC0|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~9_combout\ = (\ADC0|BIT_CNT\(3) & (!\ADC0|Add0~7\)) # (!\ADC0|BIT_CNT\(3) & ((\ADC0|Add0~7\) # (GND)))
-- \ADC0|Add0~10\ = CARRY((!\ADC0|Add0~7\) # (!\ADC0|BIT_CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(3),
	datad => VCC,
	cin => \ADC0|Add0~7\,
	combout => \ADC0|Add0~9_combout\,
	cout => \ADC0|Add0~10\);

-- Location: LCCOMB_X40_Y29_N2
\ADC0|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~11_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datad => \ADC0|Add0~9_combout\,
	combout => \ADC0|Add0~11_combout\);

-- Location: LCCOMB_X40_Y29_N10
\ADC0|BIT_CNT[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(3) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & ((\ADC0|Add0~11_combout\))) # (!\ADC0|Mux54~0_combout\ & (\ADC0|BIT_CNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(3),
	datab => \rst~input_o\,
	datac => \ADC0|Add0~11_combout\,
	datad => \ADC0|Mux54~0_combout\,
	combout => \ADC0|BIT_CNT\(3));

-- Location: LCCOMB_X40_Y29_N28
\ADC0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~12_combout\ = (\ADC0|BIT_CNT\(4) & (\ADC0|Add0~10\ $ (GND))) # (!\ADC0|BIT_CNT\(4) & (!\ADC0|Add0~10\ & VCC))
-- \ADC0|Add0~13\ = CARRY((\ADC0|BIT_CNT\(4) & !\ADC0|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(4),
	datad => VCC,
	cin => \ADC0|Add0~10\,
	combout => \ADC0|Add0~12_combout\,
	cout => \ADC0|Add0~13\);

-- Location: LCCOMB_X40_Y29_N0
\ADC0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~14_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datad => \ADC0|Add0~12_combout\,
	combout => \ADC0|Add0~14_combout\);

-- Location: LCCOMB_X40_Y29_N16
\ADC0|BIT_CNT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(4) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & ((\ADC0|Add0~14_combout\))) # (!\ADC0|Mux54~0_combout\ & (\ADC0|BIT_CNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|BIT_CNT\(4),
	datac => \ADC0|Add0~14_combout\,
	datad => \ADC0|Mux54~0_combout\,
	combout => \ADC0|BIT_CNT\(4));

-- Location: LCCOMB_X40_Y29_N30
\ADC0|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~15_combout\ = \ADC0|Add0~13\ $ (\ADC0|BIT_CNT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|BIT_CNT\(5),
	cin => \ADC0|Add0~13\,
	combout => \ADC0|Add0~15_combout\);

-- Location: LCCOMB_X39_Y29_N10
\ADC0|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Add0~17_combout\ = (\ADC0|STT\(0) & \ADC0|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|STT\(0),
	datac => \ADC0|Add0~15_combout\,
	combout => \ADC0|Add0~17_combout\);

-- Location: LCCOMB_X39_Y29_N12
\ADC0|BIT_CNT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT\(5) = (\rst~input_o\ & ((\ADC0|Mux54~0_combout\ & ((\ADC0|Add0~17_combout\))) # (!\ADC0|Mux54~0_combout\ & (\ADC0|BIT_CNT\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(5),
	datab => \rst~input_o\,
	datac => \ADC0|Mux54~0_combout\,
	datad => \ADC0|Add0~17_combout\,
	combout => \ADC0|BIT_CNT\(5));

-- Location: LCCOMB_X39_Y29_N30
\ADC0|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux56~2_combout\ = (!\ADC0|BIT_CNT\(5) & (\ADC0|BIT_CNT\(3) & (\ADC0|BIT_CNT\(2) & !\ADC0|BIT_CNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(5),
	datab => \ADC0|BIT_CNT\(3),
	datac => \ADC0|BIT_CNT\(2),
	datad => \ADC0|BIT_CNT\(4),
	combout => \ADC0|Mux56~2_combout\);

-- Location: LCCOMB_X32_Y18_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ADC_EN_PRESC(0) $ (VCC)
-- \Add0~1\ = CARRY(ADC_EN_PRESC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y18_N22
\ADC_EN_PRESC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_EN_PRESC~1_combout\ = (\Add0~0_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \ADC_EN_PRESC~1_combout\);

-- Location: FF_X32_Y18_N23
\ADC_EN_PRESC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_EN_PRESC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(0));

-- Location: LCCOMB_X32_Y18_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ADC_EN_PRESC(1) & (!\Add0~1\)) # (!ADC_EN_PRESC(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ADC_EN_PRESC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X32_Y18_N9
\ADC_EN_PRESC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(1));

-- Location: LCCOMB_X32_Y18_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ADC_EN_PRESC(2) & (\Add0~3\ $ (GND))) # (!ADC_EN_PRESC(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((ADC_EN_PRESC(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X32_Y18_N11
\ADC_EN_PRESC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(2));

-- Location: LCCOMB_X32_Y18_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ADC_EN_PRESC(3) & (!\Add0~5\)) # (!ADC_EN_PRESC(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ADC_EN_PRESC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X32_Y18_N13
\ADC_EN_PRESC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(3));

-- Location: LCCOMB_X32_Y18_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!ADC_EN_PRESC(1) & (!ADC_EN_PRESC(2) & (!ADC_EN_PRESC(0) & !ADC_EN_PRESC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(1),
	datab => ADC_EN_PRESC(2),
	datac => ADC_EN_PRESC(0),
	datad => ADC_EN_PRESC(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y18_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (ADC_EN_PRESC(4) & (\Add0~7\ $ (GND))) # (!ADC_EN_PRESC(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((ADC_EN_PRESC(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X32_Y18_N15
\ADC_EN_PRESC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(4));

-- Location: LCCOMB_X32_Y18_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ADC_EN_PRESC(5) & (!\Add0~9\)) # (!ADC_EN_PRESC(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!ADC_EN_PRESC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y18_N30
\ADC_EN_PRESC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_EN_PRESC~0_combout\ = (\Add0~10_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~10_combout\,
	combout => \ADC_EN_PRESC~0_combout\);

-- Location: FF_X32_Y18_N31
\ADC_EN_PRESC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_EN_PRESC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(5));

-- Location: LCCOMB_X32_Y18_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (ADC_EN_PRESC(6) & (\Add0~11\ $ (GND))) # (!ADC_EN_PRESC(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((ADC_EN_PRESC(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X32_Y18_N19
\ADC_EN_PRESC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(6));

-- Location: LCCOMB_X32_Y18_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (ADC_EN_PRESC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ADC_EN_PRESC(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: FF_X32_Y18_N21
\ADC_EN_PRESC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(7));

-- Location: LCCOMB_X32_Y18_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ADC_EN_PRESC(5) & (!ADC_EN_PRESC(6) & (!ADC_EN_PRESC(4) & !ADC_EN_PRESC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(5),
	datab => ADC_EN_PRESC(6),
	datac => ADC_EN_PRESC(4),
	datad => ADC_EN_PRESC(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y18_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X32_Y18_N29
ADC_EN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_EN~q\);

-- Location: LCCOMB_X39_Y29_N16
\ADC0|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux56~0_combout\ = (\ADC0|STT\(1)) # ((\ADC_EN~q\ & (!\ADC0|STT\(0) & \CLOCK_50~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_EN~q\,
	datab => \ADC0|STT\(1),
	datac => \ADC0|STT\(0),
	datad => \CLOCK_50~input_o\,
	combout => \ADC0|Mux56~0_combout\);

-- Location: LCCOMB_X39_Y29_N28
\ADC0|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux56~3_combout\ = (\ADC0|Mux56~0_combout\) # ((\ADC0|Mux56~1_combout\ & \ADC0|Mux56~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|Mux56~1_combout\,
	datac => \ADC0|Mux56~2_combout\,
	datad => \ADC0|Mux56~0_combout\,
	combout => \ADC0|Mux56~3_combout\);

-- Location: LCCOMB_X38_Y29_N22
\ADC0|STT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|STT\(0) = (\rst~input_o\ & ((\ADC0|Mux56~3_combout\ & ((!\ADC0|Mux55~0_combout\))) # (!\ADC0|Mux56~3_combout\ & (\ADC0|STT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \rst~input_o\,
	datac => \ADC0|Mux55~0_combout\,
	datad => \ADC0|Mux56~3_combout\,
	combout => \ADC0|STT\(0));

-- Location: LCCOMB_X38_Y29_N24
\ADC0|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux55~0_combout\ = (\ADC0|STT\(0)) # (\ADC0|STT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|STT\(0),
	datad => \ADC0|STT\(1),
	combout => \ADC0|Mux55~0_combout\);

-- Location: LCCOMB_X39_Y29_N18
\ADC0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|process_0~0_combout\ = (\CLOCK_50~input_o\ & \ADC_EN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_50~input_o\,
	datad => \ADC_EN~q\,
	combout => \ADC0|process_0~0_combout\);

-- Location: LCCOMB_X39_Y29_N26
\ADC0|ADC_CS_N\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_CS_N~combout\ = ((\ADC0|Mux55~0_combout\ & ((\ADC0|ADC_CS_N~combout\))) # (!\ADC0|Mux55~0_combout\ & (!\ADC0|process_0~0_combout\))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|Mux55~0_combout\,
	datac => \ADC0|process_0~0_combout\,
	datad => \ADC0|ADC_CS_N~combout\,
	combout => \ADC0|ADC_CS_N~combout\);

-- Location: LCCOMB_X39_Y29_N24
\ADC0|ADC_ADDR_REG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG[0]~0_combout\ = (\rst~input_o\ & (!\ADC0|STT\(1) & (\ADC0|ADC_SCLK~combout\ & \ADC0|STT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ADC0|STT\(1),
	datac => \ADC0|ADC_SCLK~combout\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_ADDR_REG[0]~0_combout\);

-- Location: CLKCTRL_G14
\ADC0|ADC_ADDR_REG[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC0|ADC_ADDR_REG[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X39_Y29_N20
\ADC0|ADC_ADDR_REG[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG[11]~1_combout\ = (\ADC0|STT\(0) & (((\ADC0|ADC_SCLK~combout\)))) # (!\ADC0|STT\(0) & (\ADC_EN~q\ & (\CLOCK_50~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_EN~q\,
	datab => \CLOCK_50~input_o\,
	datac => \ADC0|ADC_SCLK~combout\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_ADDR_REG[11]~1_combout\);

-- Location: LCCOMB_X39_Y29_N6
\ADC0|ADC_ADDR_REG[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG[11]~2_combout\ = (\rst~input_o\ & (!\ADC0|STT\(1) & \ADC0|ADC_ADDR_REG[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \ADC0|STT\(1),
	datad => \ADC0|ADC_ADDR_REG[11]~1_combout\,
	combout => \ADC0|ADC_ADDR_REG[11]~2_combout\);

-- Location: CLKCTRL_G12
\ADC0|ADC_ADDR_REG[11]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC0|ADC_ADDR_REG[11]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\);

-- Location: LCCOMB_X38_Y29_N12
\ADC0|ADC_ADDR_REG[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG\(11) = (GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & ((!\ADC0|STT\(0)))) # (!GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & (\ADC0|ADC_ADDR_REG\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|ADC_ADDR_REG\(11),
	datac => \ADC0|STT\(0),
	datad => \ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\,
	combout => \ADC0|ADC_ADDR_REG\(11));

-- Location: LCCOMB_X38_Y29_N26
\ADC0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux32~0_combout\ = (\ADC0|ADC_ADDR_REG\(11) & \ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_ADDR_REG\(11),
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux32~0_combout\);

-- Location: LCCOMB_X38_Y29_N30
\ADC0|ADC_ADDR_REG[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG\(12) = (GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & ((\ADC0|Mux32~0_combout\))) # (!GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & (\ADC0|ADC_ADDR_REG\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|ADC_ADDR_REG\(12),
	datac => \ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\,
	datad => \ADC0|Mux32~0_combout\,
	combout => \ADC0|ADC_ADDR_REG\(12));

-- Location: LCCOMB_X38_Y29_N2
\ADC0|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux31~0_combout\ = (\ADC0|ADC_ADDR_REG\(12)) # (!\ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_ADDR_REG\(12),
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux31~0_combout\);

-- Location: LCCOMB_X38_Y29_N28
\ADC0|ADC_ADDR_REG[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG\(13) = (GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & ((\ADC0|Mux31~0_combout\))) # (!GLOBAL(\ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\) & (\ADC0|ADC_ADDR_REG\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_ADDR_REG\(13),
	datac => \ADC0|Mux31~0_combout\,
	datad => \ADC0|ADC_ADDR_REG[11]~2clkctrl_outclk\,
	combout => \ADC0|ADC_ADDR_REG\(13));

-- Location: LCCOMB_X38_Y29_N4
\ADC0|ADC_ADDR_REG[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG\(14) = (GLOBAL(\ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\) & ((\ADC0|ADC_ADDR_REG\(13)))) # (!GLOBAL(\ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\) & (\ADC0|ADC_ADDR_REG\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_ADDR_REG\(14),
	datac => \ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\,
	datad => \ADC0|ADC_ADDR_REG\(13),
	combout => \ADC0|ADC_ADDR_REG\(14));

-- Location: LCCOMB_X38_Y29_N18
\ADC0|ADC_ADDR_REG[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_ADDR_REG\(15) = (GLOBAL(\ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\) & ((\ADC0|ADC_ADDR_REG\(14)))) # (!GLOBAL(\ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\) & (\ADC0|ADC_ADDR_REG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_ADDR_REG\(15),
	datac => \ADC0|ADC_ADDR_REG\(14),
	datad => \ADC0|ADC_ADDR_REG[0]~0clkctrl_outclk\,
	combout => \ADC0|ADC_ADDR_REG\(15));

-- Location: LCCOMB_X38_Y29_N8
\ADC0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux0~0_combout\ = (\ADC0|ADC_ADDR_REG\(15)) # (!\ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|STT\(0),
	datad => \ADC0|ADC_ADDR_REG\(15),
	combout => \ADC0|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y29_N14
\ADC0|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux29~0_combout\ = (!\ADC0|STT\(1) & ((\ADC0|ADC_SCLK~combout\) # (!\ADC0|STT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_SCLK~combout\,
	datac => \ADC0|STT\(0),
	datad => \ADC0|STT\(1),
	combout => \ADC0|Mux29~0_combout\);

-- Location: LCCOMB_X38_Y29_N10
\ADC0|ADC_SADDR\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_SADDR~combout\ = ((\ADC0|Mux29~0_combout\ & (\ADC0|Mux0~0_combout\)) # (!\ADC0|Mux29~0_combout\ & ((\ADC0|ADC_SADDR~combout\)))) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|Mux0~0_combout\,
	datab => \rst~input_o\,
	datac => \ADC0|Mux29~0_combout\,
	datad => \ADC0|ADC_SADDR~combout\,
	combout => \ADC0|ADC_SADDR~combout\);

-- Location: IOIBUF_X53_Y17_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;
END structure;


