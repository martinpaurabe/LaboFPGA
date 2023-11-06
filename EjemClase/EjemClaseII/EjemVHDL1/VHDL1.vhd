


PACKAGE FPGA_DE0_TYPES IS
TYPE SWITCHES is array (3 downto 0) of BIT;
TYPE LEDS   is array (7 downto 0) of BIT;
TYPE KEYS	is array (0 to 1) of BIT;
END FPGA_DE0_TYPES;

LIBRARY work;
USE work.FPGA_DE0_TYPES.ALL;


LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY VHDL1 IS                         ------> Interface
  PORT (
	   CLOCK_50   :   IN  STD_LOGIC:='0';
		rst	  	  :   IN  STD_LOGIC :='1';
      SW         :   IN  bit_vector (3 downto 0):="0000";
		KEY 	     :   IN  KEYS:="00";
      LED        :   OUT LEDS:="00000000";
		ADC_CS_N	  :   OUT STD_LOGIC :='1';
		ADC_SADDR  :	OUT STD_LOGIC :='1';
		ADC_SCLK   :	OUT STD_LOGIC :='1';
		ADC_SDAT   :   IN  STD_LOGIC :='0');
		
END VHDL1;

ARCHITECTURE my_logic of VHDL1 is

SIGNAL ADC_CH0 : BIT_VECTOR (2 downto 0) := "101";
SIGNAL ADC_MESU : BIT_VECTOR (11 downto 0);
SIGNAL ADC_CCOM : STD_LOGIC := '0';
SIGNAL ADC_EN   : STD_LOGIC := '0';
SIGNAL ADC_EN_PRESC: INTEGER RANGE 255 downto 0 := 0;

COMPONENT ADC IS                        
  PORT (
		RST_N			: IN  STD_LOGIC;
		ENABLE		: IN  STD_LOGIC;
		CLK		   : IN  STD_LOGIC;
		ADC_ADDR	   : IN  BIT_VECTOR (2 downto 0);
		ADC_VALUE  	: OUT BIT_VECTOR (11 downto 0);
		ADC_CS_N		: OUT STD_LOGIC;
		ADC_CCOM		: OUT STD_LOGIC;
		ADC_SCLK		: BUFFER	STD_LOGIC;
		ADC_SADDR	: OUT STD_LOGIC;
		ADC_SDAT 	: IN	STD_LOGIC);
END COMPONENT;

BEGIN



SAMPLE : PROCESS
	BEGIN
     WAIT UNTIL CLOCK_50 = '1';
	  ADC_EN_PRESC <= ADC_EN_PRESC + 1;
	  IF ADC_EN_PRESC = 32 THEN
	   ADC_EN_PRESC <= 0;
		ADC_EN <= '1';
	  ELSE
		ADC_EN <= '0';
	  END IF;
	 END PROCESS;

ADC0 :ADC PORT MAP(rst, ADC_EN,CLOCK_50,ADC_CH0,ADC_MESU,ADC_CS_N,ADC_CCOM,ADC_SCLK,ADC_SADDR,ADC_SDAT);


p1: PROCESS          
	BEGIN
     WAIT UNTIL CLOCK_50 = '1';
	  LED(0) <= not SW(0);
	  LED(1) <= KEY(0) and SW(1);
	  LED(2) <= KEY(1) or SW(2);
   END PROCESS;
	
	LED(3) <= not SW(0);


end my_logic;