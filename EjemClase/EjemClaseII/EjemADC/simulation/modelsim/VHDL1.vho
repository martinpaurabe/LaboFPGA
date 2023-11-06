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

-- DATE "10/28/2023 18:03:32"

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
	GPIO_2_IN : IN std_logic_vector(2 DOWNTO 0);
	SW : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(0 TO 1);
	LED : OUT std_logic_vector(7 DOWNTO 0);
	GPIO_1 : OUT std_logic_vector(33 DOWNTO 0);
	ADC_CS_N : BUFFER std_logic;
	ADC_SADDR : BUFFER std_logic;
	ADC_SCLK : BUFFER std_logic;
	ADC_SDAT : IN std_logic
	);
END VHDL1;

-- Design Ports Information
-- GPIO_2_IN[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_2_IN[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[8]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[22]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[23]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[24]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[26]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[27]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[28]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[30]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[31]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[32]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[33]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_2_IN[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_GPIO_2_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 TO 1);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_GPIO_1 : std_logic_vector(33 DOWNTO 0);
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL \ADC0|ADC_CCOM~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO_2_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[0]~output_o\ : std_logic;
SIGNAL \GPIO_1[1]~output_o\ : std_logic;
SIGNAL \GPIO_1[2]~output_o\ : std_logic;
SIGNAL \GPIO_1[3]~output_o\ : std_logic;
SIGNAL \GPIO_1[4]~output_o\ : std_logic;
SIGNAL \GPIO_1[5]~output_o\ : std_logic;
SIGNAL \GPIO_1[6]~output_o\ : std_logic;
SIGNAL \GPIO_1[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[8]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[22]~output_o\ : std_logic;
SIGNAL \GPIO_1[23]~output_o\ : std_logic;
SIGNAL \GPIO_1[24]~output_o\ : std_logic;
SIGNAL \GPIO_1[25]~output_o\ : std_logic;
SIGNAL \GPIO_1[26]~output_o\ : std_logic;
SIGNAL \GPIO_1[27]~output_o\ : std_logic;
SIGNAL \GPIO_1[28]~output_o\ : std_logic;
SIGNAL \GPIO_1[29]~output_o\ : std_logic;
SIGNAL \GPIO_1[30]~output_o\ : std_logic;
SIGNAL \GPIO_1[31]~output_o\ : std_logic;
SIGNAL \GPIO_1[32]~output_o\ : std_logic;
SIGNAL \GPIO_1[33]~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ADC_CLK_PRESC~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ADC_CLK_PRESC~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ADC_CLK_PRESC~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \GPIO_2_IN[0]~input_o\ : std_logic;
SIGNAL \ADC_CLK~0_combout\ : std_logic;
SIGNAL \ADC_CLK~feeder_combout\ : std_logic;
SIGNAL \ADC_CLK~q\ : std_logic;
SIGNAL \ADC_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ADC_EN_PRESC~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \ADC_EN_PRESC~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \ADC_EN~q\ : std_logic;
SIGNAL \ADC0|Mux7~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_SCLK~q\ : std_logic;
SIGNAL \ADC0|BIT_CNT[0]~6_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG[10]~9_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[0]~8_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[0]~7\ : std_logic;
SIGNAL \ADC0|BIT_CNT[1]~9_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[1]~10\ : std_logic;
SIGNAL \ADC0|BIT_CNT[2]~11_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[2]~12\ : std_logic;
SIGNAL \ADC0|BIT_CNT[3]~13_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[3]~14\ : std_logic;
SIGNAL \ADC0|BIT_CNT[4]~15_combout\ : std_logic;
SIGNAL \ADC0|BIT_CNT[4]~16\ : std_logic;
SIGNAL \ADC0|BIT_CNT[5]~17_combout\ : std_logic;
SIGNAL \ADC0|STT~0_combout\ : std_logic;
SIGNAL \ADC0|STT~1_combout\ : std_logic;
SIGNAL \ADC0|Mux40~0_combout\ : std_logic;
SIGNAL \ADC0|Mux39~0_combout\ : std_logic;
SIGNAL \ADC0|Mux6~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_CCOM~q\ : std_logic;
SIGNAL \ADC0|ADC_CCOM~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~13_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG[10]~1_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~12_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~11_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~10_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[4]~feeder_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[4]~0_combout\ : std_logic;
SIGNAL \LED[0]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~2_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[5]~feeder_combout\ : std_logic;
SIGNAL \LED[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[1]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~3_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[6]~feeder_combout\ : std_logic;
SIGNAL \LED[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[2]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~4_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[7]~feeder_combout\ : std_logic;
SIGNAL \LED[3]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~5_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[8]~feeder_combout\ : std_logic;
SIGNAL \LED[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[4]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~6_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[9]~feeder_combout\ : std_logic;
SIGNAL \LED[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[5]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~7_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[10]~feeder_combout\ : std_logic;
SIGNAL \LED[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[6]~reg0_q\ : std_logic;
SIGNAL \ADC0|ADC_VALUE_REG~8_combout\ : std_logic;
SIGNAL \ADC0|ADC_VALUE[11]~feeder_combout\ : std_logic;
SIGNAL \LED[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[7]~reg0_q\ : std_logic;
SIGNAL \ADC0|Mux41~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_CS_N~q\ : std_logic;
SIGNAL \ADC0|Mux8~0_combout\ : std_logic;
SIGNAL \ADC0|ADC_SADDR~q\ : std_logic;
SIGNAL ADC_EN_PRESC : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC0|STT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ADC_CLK_PRESC : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC0|BIT_CNT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ADC0|ADC_VALUE\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ADC0|ADC_VALUE_REG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_GPIO_2_IN[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_GPIO_2_IN <= GPIO_2_IN;
ww_SW <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW);
ww_KEY <= KEY;
LED <= ww_LED;
GPIO_1 <= ww_GPIO_1;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SADDR <= ww_ADC_SADDR;
ADC_SCLK <= ww_ADC_SCLK;
ww_ADC_SDAT <= ADC_SDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ADC0|ADC_CCOM~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC0|ADC_CCOM~q\);

\ADC_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC_CLK~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_GPIO_2_IN[0]~input_o\ <= NOT \GPIO_2_IN[0]~input_o\;
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
	i => \LED[3]~reg0_q\,
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
	i => \LED[4]~reg0_q\,
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
	i => \LED[5]~reg0_q\,
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
	i => \LED[6]~reg0_q\,
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
	i => \LED[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\GPIO_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\GPIO_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC_CLK~q\,
	devoe => ww_devoe,
	o => \GPIO_1[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPIO_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC_EN~q\,
	devoe => ww_devoe,
	o => \GPIO_1[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\GPIO_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_CS_N~q\,
	devoe => ww_devoe,
	o => \GPIO_1[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\GPIO_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_SCLK~q\,
	devoe => ww_devoe,
	o => \GPIO_1[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\GPIO_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_SADDR~q\,
	devoe => ww_devoe,
	o => \GPIO_1[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\GPIO_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_CCOM~q\,
	devoe => ww_devoe,
	o => \GPIO_1[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\GPIO_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\GPIO_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\GPIO_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\GPIO_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\GPIO_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\GPIO_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\GPIO_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\GPIO_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\GPIO_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\GPIO_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\GPIO_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\GPIO_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\GPIO_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\GPIO_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\GPIO_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\GPIO_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[22]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\GPIO_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[23]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\GPIO_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\GPIO_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[25]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\GPIO_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[26]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\GPIO_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\GPIO_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[28]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\GPIO_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[29]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\GPIO_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[30]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\GPIO_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[31]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\GPIO_1[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[32]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\GPIO_1[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[33]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC0|ADC_CS_N~q\,
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
	i => \ADC0|ADC_SADDR~q\,
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
	i => \ADC0|ADC_SCLK~q\,
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

-- Location: LCCOMB_X52_Y17_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ADC_CLK_PRESC(1) & (!\Add0~1\)) # (!ADC_CLK_PRESC(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ADC_CLK_PRESC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_CLK_PRESC(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y17_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ADC_CLK_PRESC(2) & (\Add0~3\ $ (GND))) # (!ADC_CLK_PRESC(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((ADC_CLK_PRESC(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_CLK_PRESC(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X52_Y17_N28
\ADC_CLK_PRESC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_CLK_PRESC~1_combout\ = (\Add0~4_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \ADC_CLK_PRESC~1_combout\);

-- Location: FF_X52_Y17_N29
\ADC_CLK_PRESC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_CLK_PRESC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_CLK_PRESC(2));

-- Location: LCCOMB_X52_Y17_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ADC_CLK_PRESC(3) & (!\Add0~5\)) # (!ADC_CLK_PRESC(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ADC_CLK_PRESC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_CLK_PRESC(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X52_Y17_N11
\ADC_CLK_PRESC[3]\ : dffeas
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
	q => ADC_CLK_PRESC(3));

-- Location: LCCOMB_X52_Y17_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (ADC_CLK_PRESC(4) & (\Add0~7\ $ (GND))) # (!ADC_CLK_PRESC(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((ADC_CLK_PRESC(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_CLK_PRESC(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X52_Y17_N20
\ADC_CLK_PRESC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_CLK_PRESC~0_combout\ = (\Add0~8_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~8_combout\,
	combout => \ADC_CLK_PRESC~0_combout\);

-- Location: FF_X52_Y17_N21
\ADC_CLK_PRESC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_CLK_PRESC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_CLK_PRESC(4));

-- Location: LCCOMB_X52_Y17_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ADC_CLK_PRESC(5) & (!\Add0~9\)) # (!ADC_CLK_PRESC(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!ADC_CLK_PRESC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_CLK_PRESC(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X52_Y17_N15
\ADC_CLK_PRESC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_CLK_PRESC(5));

-- Location: LCCOMB_X52_Y17_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (ADC_CLK_PRESC(6) & (\Add0~11\ $ (GND))) # (!ADC_CLK_PRESC(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((ADC_CLK_PRESC(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_CLK_PRESC(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X52_Y17_N17
\ADC_CLK_PRESC[6]\ : dffeas
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
	q => ADC_CLK_PRESC(6));

-- Location: LCCOMB_X52_Y17_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (ADC_CLK_PRESC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ADC_CLK_PRESC(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: FF_X52_Y17_N19
\ADC_CLK_PRESC[7]\ : dffeas
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
	q => ADC_CLK_PRESC(7));

-- Location: LCCOMB_X52_Y17_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ADC_CLK_PRESC(4) & (!ADC_CLK_PRESC(7) & (!ADC_CLK_PRESC(5) & !ADC_CLK_PRESC(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_CLK_PRESC(4),
	datab => ADC_CLK_PRESC(7),
	datac => ADC_CLK_PRESC(5),
	datad => ADC_CLK_PRESC(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X52_Y17_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ADC_CLK_PRESC(0) $ (VCC)
-- \Add0~1\ = CARRY(ADC_CLK_PRESC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_CLK_PRESC(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y17_N30
\ADC_CLK_PRESC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_CLK_PRESC~2_combout\ = (\Add0~0_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \ADC_CLK_PRESC~2_combout\);

-- Location: FF_X52_Y17_N31
\ADC_CLK_PRESC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_CLK_PRESC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_CLK_PRESC(0));

-- Location: FF_X52_Y17_N7
\ADC_CLK_PRESC[1]\ : dffeas
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
	q => ADC_CLK_PRESC(1));

-- Location: LCCOMB_X52_Y17_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!ADC_CLK_PRESC(1) & (ADC_CLK_PRESC(2) & (!ADC_CLK_PRESC(0) & !ADC_CLK_PRESC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_CLK_PRESC(1),
	datab => ADC_CLK_PRESC(2),
	datac => ADC_CLK_PRESC(0),
	datad => ADC_CLK_PRESC(3),
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X53_Y17_N1
\GPIO_2_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(0),
	o => \GPIO_2_IN[0]~input_o\);

-- Location: LCCOMB_X52_Y17_N2
\ADC_CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_CLK~0_combout\ = (\ADC_CLK~q\ & (((!\Equal0~0_combout\)) # (!\Equal0~1_combout\))) # (!\ADC_CLK~q\ & (((\Equal0~1_combout\ & \Equal0~0_combout\)) # (!\GPIO_2_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \ADC_CLK~q\,
	combout => \ADC_CLK~0_combout\);

-- Location: LCCOMB_X52_Y17_N24
\ADC_CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_CLK~feeder_combout\ = \ADC_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_CLK~0_combout\,
	combout => \ADC_CLK~feeder_combout\);

-- Location: FF_X52_Y17_N25
ADC_CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ADC_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_CLK~q\);

-- Location: CLKCTRL_G7
\ADC_CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y17_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ADC_EN_PRESC(1) & (!\Add1~1\)) # (!ADC_EN_PRESC(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!ADC_EN_PRESC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X40_Y17_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ADC_EN_PRESC(2) & (\Add1~3\ $ (GND))) # (!ADC_EN_PRESC(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((ADC_EN_PRESC(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X40_Y17_N17
\ADC_EN_PRESC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(2));

-- Location: LCCOMB_X40_Y17_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ADC_EN_PRESC(3) & (!\Add1~5\)) # (!ADC_EN_PRESC(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!ADC_EN_PRESC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X40_Y17_N19
\ADC_EN_PRESC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(3));

-- Location: LCCOMB_X40_Y17_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (ADC_EN_PRESC(4) & (\Add1~7\ $ (GND))) # (!ADC_EN_PRESC(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((ADC_EN_PRESC(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ADC_EN_PRESC(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X40_Y17_N21
\ADC_EN_PRESC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(4));

-- Location: LCCOMB_X40_Y17_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (ADC_EN_PRESC(5) & (!\Add1~9\)) # (!ADC_EN_PRESC(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!ADC_EN_PRESC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X40_Y17_N23
\ADC_EN_PRESC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(5));

-- Location: LCCOMB_X40_Y17_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (ADC_EN_PRESC(6) & (\Add1~11\ $ (GND))) # (!ADC_EN_PRESC(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((ADC_EN_PRESC(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X40_Y17_N30
\ADC_EN_PRESC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_EN_PRESC~0_combout\ = (\Add1~12_combout\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add1~12_combout\,
	combout => \ADC_EN_PRESC~0_combout\);

-- Location: FF_X40_Y17_N31
\ADC_EN_PRESC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC_EN_PRESC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(6));

-- Location: LCCOMB_X40_Y17_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (ADC_EN_PRESC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ADC_EN_PRESC(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: FF_X40_Y17_N27
\ADC_EN_PRESC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(7));

-- Location: LCCOMB_X40_Y17_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (ADC_EN_PRESC(6) & (!ADC_EN_PRESC(4) & (!ADC_EN_PRESC(5) & !ADC_EN_PRESC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(6),
	datab => ADC_EN_PRESC(4),
	datac => ADC_EN_PRESC(5),
	datad => ADC_EN_PRESC(7),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X40_Y17_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ADC_EN_PRESC(0) $ (VCC)
-- \Add1~1\ = CARRY(ADC_EN_PRESC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X40_Y17_N10
\ADC_EN_PRESC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC_EN_PRESC~1_combout\ = (\Add1~0_combout\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add1~0_combout\,
	combout => \ADC_EN_PRESC~1_combout\);

-- Location: FF_X40_Y17_N11
\ADC_EN_PRESC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC_EN_PRESC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(0));

-- Location: FF_X40_Y17_N15
\ADC_EN_PRESC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ADC_EN_PRESC(1));

-- Location: LCCOMB_X40_Y17_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ADC_EN_PRESC(1) & (!ADC_EN_PRESC(0) & (!ADC_EN_PRESC(3) & !ADC_EN_PRESC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ADC_EN_PRESC(1),
	datab => ADC_EN_PRESC(0),
	datac => ADC_EN_PRESC(3),
	datad => ADC_EN_PRESC(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X40_Y17_N8
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X40_Y17_N9
ADC_EN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_EN~q\);

-- Location: LCCOMB_X41_Y21_N10
\ADC0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux7~0_combout\ = (\ADC0|STT\(1) $ (!\ADC0|ADC_SCLK~q\)) # (!\ADC0|STT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(1),
	datac => \ADC0|ADC_SCLK~q\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux7~0_combout\);

-- Location: FF_X41_Y21_N11
\ADC0|ADC_SCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|Mux7~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_GPIO_2_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_SCLK~q\);

-- Location: LCCOMB_X40_Y21_N12
\ADC0|BIT_CNT[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[0]~6_combout\ = (\ADC0|BIT_CNT\(0) & (\ADC0|ADC_SCLK~q\ $ (GND))) # (!\ADC0|BIT_CNT\(0) & (!\ADC0|ADC_SCLK~q\ & VCC))
-- \ADC0|BIT_CNT[0]~7\ = CARRY((\ADC0|BIT_CNT\(0) & !\ADC0|ADC_SCLK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(0),
	datab => \ADC0|ADC_SCLK~q\,
	datad => VCC,
	combout => \ADC0|BIT_CNT[0]~6_combout\,
	cout => \ADC0|BIT_CNT[0]~7\);

-- Location: LCCOMB_X40_Y21_N4
\ADC0|ADC_VALUE_REG[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG[10]~9_combout\ = (!\ADC0|STT\(0)) # (!\GPIO_2_IN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_2_IN[0]~input_o\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG[10]~9_combout\);

-- Location: LCCOMB_X40_Y21_N2
\ADC0|BIT_CNT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[0]~8_combout\ = (!\ADC0|STT\(1)) # (!\GPIO_2_IN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \ADC0|STT\(1),
	combout => \ADC0|BIT_CNT[0]~8_combout\);

-- Location: FF_X40_Y21_N13
\ADC0|BIT_CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[0]~6_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(0));

-- Location: LCCOMB_X40_Y21_N14
\ADC0|BIT_CNT[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[1]~9_combout\ = (\ADC0|BIT_CNT\(1) & (!\ADC0|BIT_CNT[0]~7\)) # (!\ADC0|BIT_CNT\(1) & ((\ADC0|BIT_CNT[0]~7\) # (GND)))
-- \ADC0|BIT_CNT[1]~10\ = CARRY((!\ADC0|BIT_CNT[0]~7\) # (!\ADC0|BIT_CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(1),
	datad => VCC,
	cin => \ADC0|BIT_CNT[0]~7\,
	combout => \ADC0|BIT_CNT[1]~9_combout\,
	cout => \ADC0|BIT_CNT[1]~10\);

-- Location: FF_X40_Y21_N15
\ADC0|BIT_CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[1]~9_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(1));

-- Location: LCCOMB_X40_Y21_N16
\ADC0|BIT_CNT[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[2]~11_combout\ = (\ADC0|BIT_CNT\(2) & (\ADC0|BIT_CNT[1]~10\ $ (GND))) # (!\ADC0|BIT_CNT\(2) & (!\ADC0|BIT_CNT[1]~10\ & VCC))
-- \ADC0|BIT_CNT[2]~12\ = CARRY((\ADC0|BIT_CNT\(2) & !\ADC0|BIT_CNT[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(2),
	datad => VCC,
	cin => \ADC0|BIT_CNT[1]~10\,
	combout => \ADC0|BIT_CNT[2]~11_combout\,
	cout => \ADC0|BIT_CNT[2]~12\);

-- Location: FF_X40_Y21_N17
\ADC0|BIT_CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[2]~11_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(2));

-- Location: LCCOMB_X40_Y21_N18
\ADC0|BIT_CNT[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[3]~13_combout\ = (\ADC0|BIT_CNT\(3) & (!\ADC0|BIT_CNT[2]~12\)) # (!\ADC0|BIT_CNT\(3) & ((\ADC0|BIT_CNT[2]~12\) # (GND)))
-- \ADC0|BIT_CNT[3]~14\ = CARRY((!\ADC0|BIT_CNT[2]~12\) # (!\ADC0|BIT_CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(3),
	datad => VCC,
	cin => \ADC0|BIT_CNT[2]~12\,
	combout => \ADC0|BIT_CNT[3]~13_combout\,
	cout => \ADC0|BIT_CNT[3]~14\);

-- Location: FF_X40_Y21_N19
\ADC0|BIT_CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[3]~13_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(3));

-- Location: LCCOMB_X40_Y21_N20
\ADC0|BIT_CNT[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[4]~15_combout\ = (\ADC0|BIT_CNT\(4) & (\ADC0|BIT_CNT[3]~14\ $ (GND))) # (!\ADC0|BIT_CNT\(4) & (!\ADC0|BIT_CNT[3]~14\ & VCC))
-- \ADC0|BIT_CNT[4]~16\ = CARRY((\ADC0|BIT_CNT\(4) & !\ADC0|BIT_CNT[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|BIT_CNT\(4),
	datad => VCC,
	cin => \ADC0|BIT_CNT[3]~14\,
	combout => \ADC0|BIT_CNT[4]~15_combout\,
	cout => \ADC0|BIT_CNT[4]~16\);

-- Location: FF_X40_Y21_N21
\ADC0|BIT_CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[4]~15_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(4));

-- Location: LCCOMB_X40_Y21_N22
\ADC0|BIT_CNT[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|BIT_CNT[5]~17_combout\ = \ADC0|BIT_CNT\(5) $ (\ADC0|BIT_CNT[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(5),
	cin => \ADC0|BIT_CNT[4]~16\,
	combout => \ADC0|BIT_CNT[5]~17_combout\);

-- Location: FF_X40_Y21_N23
\ADC0|BIT_CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|BIT_CNT[5]~17_combout\,
	sclr => \ADC0|ADC_VALUE_REG[10]~9_combout\,
	ena => \ADC0|BIT_CNT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|BIT_CNT\(5));

-- Location: LCCOMB_X40_Y21_N26
\ADC0|STT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|STT~0_combout\ = (\ADC0|BIT_CNT\(0) & (\ADC0|BIT_CNT\(1) & (!\ADC0|ADC_SCLK~q\ & \ADC0|BIT_CNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(0),
	datab => \ADC0|BIT_CNT\(1),
	datac => \ADC0|ADC_SCLK~q\,
	datad => \ADC0|BIT_CNT\(2),
	combout => \ADC0|STT~0_combout\);

-- Location: LCCOMB_X39_Y21_N16
\ADC0|STT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|STT~1_combout\ = (!\ADC0|BIT_CNT\(5) & (\ADC0|BIT_CNT\(3) & (!\ADC0|BIT_CNT\(4) & \ADC0|STT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|BIT_CNT\(5),
	datab => \ADC0|BIT_CNT\(3),
	datac => \ADC0|BIT_CNT\(4),
	datad => \ADC0|STT~0_combout\,
	combout => \ADC0|STT~1_combout\);

-- Location: LCCOMB_X39_Y21_N12
\ADC0|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux40~0_combout\ = (!\ADC0|STT\(1) & ((\ADC0|STT\(0) & ((!\ADC0|STT~1_combout\))) # (!\ADC0|STT\(0) & (\ADC_EN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(1),
	datab => \ADC_EN~q\,
	datac => \ADC0|STT\(0),
	datad => \ADC0|STT~1_combout\,
	combout => \ADC0|Mux40~0_combout\);

-- Location: FF_X39_Y21_N13
\ADC0|STT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|Mux40~0_combout\,
	sclr => \ALT_INV_GPIO_2_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|STT\(0));

-- Location: LCCOMB_X39_Y21_N6
\ADC0|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux39~0_combout\ = (\ADC0|STT\(0) & (!\ADC0|STT\(1) & \ADC0|STT~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datac => \ADC0|STT\(1),
	datad => \ADC0|STT~1_combout\,
	combout => \ADC0|Mux39~0_combout\);

-- Location: FF_X39_Y21_N7
\ADC0|STT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|Mux39~0_combout\,
	sclr => \ALT_INV_GPIO_2_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|STT\(1));

-- Location: LCCOMB_X40_Y21_N24
\ADC0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux6~0_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_CCOM~q\)) # (!\ADC0|STT\(0) & ((\ADC0|STT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_CCOM~q\,
	datac => \ADC0|STT\(1),
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux6~0_combout\);

-- Location: FF_X45_Y21_N29
\ADC0|ADC_CCOM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	asdata => \ADC0|Mux6~0_combout\,
	sclr => \ALT_INV_GPIO_2_IN[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_CCOM~q\);

-- Location: CLKCTRL_G9
\ADC0|ADC_CCOM~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC0|ADC_CCOM~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC0|ADC_CCOM~clkctrl_outclk\);

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

-- Location: LCCOMB_X39_Y21_N30
\ADC0|ADC_VALUE_REG~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~13_combout\ = (\ADC0|STT\(0) & (\ADC_SDAT~input_o\ & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC_SDAT~input_o\,
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~13_combout\);

-- Location: LCCOMB_X39_Y21_N20
\ADC0|ADC_VALUE_REG[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG[10]~1_combout\ = ((!\ADC0|STT\(1) & ((!\ADC0|STT\(0)) # (!\ADC0|ADC_SCLK~q\)))) # (!\GPIO_2_IN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(1),
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \ADC0|ADC_SCLK~q\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG[10]~1_combout\);

-- Location: FF_X39_Y21_N31
\ADC0|ADC_VALUE_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~13_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(0));

-- Location: LCCOMB_X39_Y21_N4
\ADC0|ADC_VALUE_REG~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~12_combout\ = (\ADC0|ADC_VALUE_REG\(0) & (\GPIO_2_IN[0]~input_o\ & \ADC0|STT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|ADC_VALUE_REG\(0),
	datab => \GPIO_2_IN[0]~input_o\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG~12_combout\);

-- Location: FF_X39_Y21_N5
\ADC0|ADC_VALUE_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~12_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(1));

-- Location: LCCOMB_X39_Y21_N22
\ADC0|ADC_VALUE_REG~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~11_combout\ = (\GPIO_2_IN[0]~input_o\ & (\ADC0|ADC_VALUE_REG\(1) & \ADC0|STT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \ADC0|ADC_VALUE_REG\(1),
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG~11_combout\);

-- Location: FF_X39_Y21_N23
\ADC0|ADC_VALUE_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~11_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(2));

-- Location: LCCOMB_X39_Y21_N26
\ADC0|ADC_VALUE_REG~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~10_combout\ = (\GPIO_2_IN[0]~input_o\ & (\ADC0|ADC_VALUE_REG\(2) & \ADC0|STT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \ADC0|ADC_VALUE_REG\(2),
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG~10_combout\);

-- Location: FF_X39_Y21_N27
\ADC0|ADC_VALUE_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~10_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(3));

-- Location: LCCOMB_X39_Y21_N24
\ADC0|ADC_VALUE_REG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~0_combout\ = (\GPIO_2_IN[0]~input_o\ & (\ADC0|ADC_VALUE_REG\(3) & \ADC0|STT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_2_IN[0]~input_o\,
	datac => \ADC0|ADC_VALUE_REG\(3),
	datad => \ADC0|STT\(0),
	combout => \ADC0|ADC_VALUE_REG~0_combout\);

-- Location: FF_X39_Y21_N25
\ADC0|ADC_VALUE_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~0_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(4));

-- Location: LCCOMB_X38_Y21_N30
\ADC0|ADC_VALUE[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[4]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|ADC_VALUE_REG\(4),
	combout => \ADC0|ADC_VALUE[4]~feeder_combout\);

-- Location: LCCOMB_X38_Y21_N22
\ADC0|ADC_VALUE[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[4]~0_combout\ = (\GPIO_2_IN[0]~input_o\ & (!\ADC0|STT\(0) & \ADC0|STT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_2_IN[0]~input_o\,
	datab => \ADC0|STT\(0),
	datad => \ADC0|STT\(1),
	combout => \ADC0|ADC_VALUE[4]~0_combout\);

-- Location: FF_X38_Y21_N31
\ADC0|ADC_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[4]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(4));

-- Location: FF_X38_Y21_N23
\LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	asdata => \ADC0|ADC_VALUE\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[0]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N18
\ADC0|ADC_VALUE_REG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~2_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(4) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|ADC_VALUE_REG\(4),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~2_combout\);

-- Location: FF_X39_Y21_N19
\ADC0|ADC_VALUE_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~2_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(5));

-- Location: LCCOMB_X38_Y21_N8
\ADC0|ADC_VALUE[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[5]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|ADC_VALUE_REG\(5),
	combout => \ADC0|ADC_VALUE[5]~feeder_combout\);

-- Location: FF_X38_Y21_N9
\ADC0|ADC_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[5]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(5));

-- Location: LCCOMB_X38_Y21_N2
\LED[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[1]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE\(5),
	combout => \LED[1]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N3
\LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[1]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N0
\ADC0|ADC_VALUE_REG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~3_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(5) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|ADC_VALUE_REG\(5),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~3_combout\);

-- Location: FF_X39_Y21_N1
\ADC0|ADC_VALUE_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~3_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(6));

-- Location: LCCOMB_X38_Y21_N20
\ADC0|ADC_VALUE[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[6]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE_REG\(6),
	combout => \ADC0|ADC_VALUE[6]~feeder_combout\);

-- Location: FF_X38_Y21_N21
\ADC0|ADC_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[6]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(6));

-- Location: LCCOMB_X38_Y21_N4
\LED[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[2]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE\(6),
	combout => \LED[2]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N5
\LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N2
\ADC0|ADC_VALUE_REG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~4_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(6) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|ADC_VALUE_REG\(6),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~4_combout\);

-- Location: FF_X39_Y21_N3
\ADC0|ADC_VALUE_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~4_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(7));

-- Location: LCCOMB_X38_Y21_N6
\ADC0|ADC_VALUE[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[7]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|ADC_VALUE_REG\(7),
	combout => \ADC0|ADC_VALUE[7]~feeder_combout\);

-- Location: FF_X38_Y21_N7
\ADC0|ADC_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[7]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(7));

-- Location: FF_X38_Y21_N11
\LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	asdata => \ADC0|ADC_VALUE\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[3]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N8
\ADC0|ADC_VALUE_REG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~5_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(7) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datac => \ADC0|ADC_VALUE_REG\(7),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~5_combout\);

-- Location: FF_X39_Y21_N9
\ADC0|ADC_VALUE_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~5_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(8));

-- Location: LCCOMB_X38_Y21_N28
\ADC0|ADC_VALUE[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[8]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE_REG\(8),
	combout => \ADC0|ADC_VALUE[8]~feeder_combout\);

-- Location: FF_X38_Y21_N29
\ADC0|ADC_VALUE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[8]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(8));

-- Location: LCCOMB_X38_Y21_N24
\LED[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[4]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE\(8),
	combout => \LED[4]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N25
\LED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[4]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N10
\ADC0|ADC_VALUE_REG~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~6_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(8) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|ADC_VALUE_REG\(8),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~6_combout\);

-- Location: FF_X39_Y21_N11
\ADC0|ADC_VALUE_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~6_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(9));

-- Location: LCCOMB_X38_Y21_N16
\ADC0|ADC_VALUE[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[9]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE_REG\(9),
	combout => \ADC0|ADC_VALUE[9]~feeder_combout\);

-- Location: FF_X38_Y21_N17
\ADC0|ADC_VALUE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[9]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(9));

-- Location: LCCOMB_X38_Y21_N12
\LED[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[5]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|ADC_VALUE\(9),
	combout => \LED[5]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N13
\LED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[5]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N28
\ADC0|ADC_VALUE_REG~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~7_combout\ = (\ADC0|STT\(0) & (\GPIO_2_IN[0]~input_o\ & \ADC0|ADC_VALUE_REG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datac => \GPIO_2_IN[0]~input_o\,
	datad => \ADC0|ADC_VALUE_REG\(9),
	combout => \ADC0|ADC_VALUE_REG~7_combout\);

-- Location: FF_X39_Y21_N29
\ADC0|ADC_VALUE_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~7_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(10));

-- Location: LCCOMB_X38_Y21_N0
\ADC0|ADC_VALUE[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[10]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC0|ADC_VALUE_REG\(10),
	combout => \ADC0|ADC_VALUE[10]~feeder_combout\);

-- Location: FF_X38_Y21_N1
\ADC0|ADC_VALUE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[10]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(10));

-- Location: LCCOMB_X38_Y21_N18
\LED[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[6]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC0|ADC_VALUE\(10),
	combout => \LED[6]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N19
\LED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[6]~reg0_q\);

-- Location: LCCOMB_X39_Y21_N14
\ADC0|ADC_VALUE_REG~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE_REG~8_combout\ = (\ADC0|STT\(0) & (\ADC0|ADC_VALUE_REG\(10) & \GPIO_2_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(0),
	datab => \ADC0|ADC_VALUE_REG\(10),
	datad => \GPIO_2_IN[0]~input_o\,
	combout => \ADC0|ADC_VALUE_REG~8_combout\);

-- Location: FF_X39_Y21_N15
\ADC0|ADC_VALUE_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE_REG~8_combout\,
	ena => \ADC0|ADC_VALUE_REG[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE_REG\(11));

-- Location: LCCOMB_X38_Y21_N26
\ADC0|ADC_VALUE[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|ADC_VALUE[11]~feeder_combout\ = \ADC0|ADC_VALUE_REG\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE_REG\(11),
	combout => \ADC0|ADC_VALUE[11]~feeder_combout\);

-- Location: FF_X38_Y21_N27
\ADC0|ADC_VALUE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|ADC_VALUE[11]~feeder_combout\,
	ena => \ADC0|ADC_VALUE[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_VALUE\(11));

-- Location: LCCOMB_X38_Y21_N14
\LED[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[7]~reg0feeder_combout\ = \ADC0|ADC_VALUE\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC0|ADC_VALUE\(11),
	combout => \LED[7]~reg0feeder_combout\);

-- Location: FF_X38_Y21_N15
\LED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC0|ADC_CCOM~clkctrl_outclk\,
	d => \LED[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[7]~reg0_q\);

-- Location: LCCOMB_X41_Y21_N28
\ADC0|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux41~0_combout\ = (\ADC0|STT\(1) & (((\ADC0|ADC_CS_N~q\)))) # (!\ADC0|STT\(1) & ((\ADC0|STT\(0) & (\ADC0|ADC_CS_N~q\)) # (!\ADC0|STT\(0) & ((!\ADC_EN~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(1),
	datab => \ADC0|STT\(0),
	datac => \ADC0|ADC_CS_N~q\,
	datad => \ADC_EN~q\,
	combout => \ADC0|Mux41~0_combout\);

-- Location: FF_X41_Y21_N29
\ADC0|ADC_CS_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|Mux41~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_GPIO_2_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_CS_N~q\);

-- Location: LCCOMB_X41_Y21_N12
\ADC0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ADC0|Mux8~0_combout\ = (\ADC0|STT\(1) & (((\ADC0|ADC_SADDR~q\)))) # (!\ADC0|STT\(1) & (((!\ADC0|ADC_SCLK~q\ & \ADC0|ADC_SADDR~q\)) # (!\ADC0|STT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC0|STT\(1),
	datab => \ADC0|ADC_SCLK~q\,
	datac => \ADC0|ADC_SADDR~q\,
	datad => \ADC0|STT\(0),
	combout => \ADC0|Mux8~0_combout\);

-- Location: FF_X41_Y21_N13
\ADC0|ADC_SADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK~clkctrl_outclk\,
	d => \ADC0|Mux8~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_GPIO_2_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC0|ADC_SADDR~q\);

-- Location: IOIBUF_X53_Y17_N8
\GPIO_2_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(1),
	o => \GPIO_2_IN[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\GPIO_2_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(2),
	o => \GPIO_2_IN[2]~input_o\);

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

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_GPIO_1(0) <= \GPIO_1[0]~output_o\;

ww_GPIO_1(1) <= \GPIO_1[1]~output_o\;

ww_GPIO_1(2) <= \GPIO_1[2]~output_o\;

ww_GPIO_1(3) <= \GPIO_1[3]~output_o\;

ww_GPIO_1(4) <= \GPIO_1[4]~output_o\;

ww_GPIO_1(5) <= \GPIO_1[5]~output_o\;

ww_GPIO_1(6) <= \GPIO_1[6]~output_o\;

ww_GPIO_1(7) <= \GPIO_1[7]~output_o\;

ww_GPIO_1(8) <= \GPIO_1[8]~output_o\;

ww_GPIO_1(9) <= \GPIO_1[9]~output_o\;

ww_GPIO_1(10) <= \GPIO_1[10]~output_o\;

ww_GPIO_1(11) <= \GPIO_1[11]~output_o\;

ww_GPIO_1(12) <= \GPIO_1[12]~output_o\;

ww_GPIO_1(13) <= \GPIO_1[13]~output_o\;

ww_GPIO_1(14) <= \GPIO_1[14]~output_o\;

ww_GPIO_1(15) <= \GPIO_1[15]~output_o\;

ww_GPIO_1(16) <= \GPIO_1[16]~output_o\;

ww_GPIO_1(17) <= \GPIO_1[17]~output_o\;

ww_GPIO_1(18) <= \GPIO_1[18]~output_o\;

ww_GPIO_1(19) <= \GPIO_1[19]~output_o\;

ww_GPIO_1(20) <= \GPIO_1[20]~output_o\;

ww_GPIO_1(21) <= \GPIO_1[21]~output_o\;

ww_GPIO_1(22) <= \GPIO_1[22]~output_o\;

ww_GPIO_1(23) <= \GPIO_1[23]~output_o\;

ww_GPIO_1(24) <= \GPIO_1[24]~output_o\;

ww_GPIO_1(25) <= \GPIO_1[25]~output_o\;

ww_GPIO_1(26) <= \GPIO_1[26]~output_o\;

ww_GPIO_1(27) <= \GPIO_1[27]~output_o\;

ww_GPIO_1(28) <= \GPIO_1[28]~output_o\;

ww_GPIO_1(29) <= \GPIO_1[29]~output_o\;

ww_GPIO_1(30) <= \GPIO_1[30]~output_o\;

ww_GPIO_1(31) <= \GPIO_1[31]~output_o\;

ww_GPIO_1(32) <= \GPIO_1[32]~output_o\;

ww_GPIO_1(33) <= \GPIO_1[33]~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;
END structure;


