


PACKAGE FPGA_DE0_TYPES IS
TYPE SWITCHES is array (3 downto 0) of BIT;
TYPE GPIO_1_t is array (33 downto 0) of BIT;
TYPE GPIO_2_IN_t is array (2 downto 0) of BIT;
--TYPE GPIO_2_t is array (12 downto 0) of BIT;
TYPE LEDS   is array (7 downto 0) of BIT;
TYPE KEYS	is array (0 to 1) of BIT;
END FPGA_DE0_TYPES;


LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.FPGA_DE0_TYPES.ALL;




ENTITY VHDL1 IS                         ------> Interface
  PORT (
	   CLOCK_50   :   IN  STD_LOGIC:='0';
		GPIO_2_IN  :   IN  GPIO_2_IN_t;
--		GPIO_2     :   OUT GPIO_2_t;
      SW         :   IN  bit_vector (3 downto 0):="0000";
		KEY 	     :   IN  KEYS:="00";
      LED        :   OUT LEDS:="00000000";
		GPIO_1     :   OUT GPIO_1_t;
		ADC_CS_N	  :   BUFFER STD_LOGIC :='1';
		ADC_SADDR  :	BUFFER STD_LOGIC :='1';
		ADC_SCLK   :	BUFFER STD_LOGIC :='1';
		ADC_SDAT   :   IN  STD_LOGIC :='0');
		
END VHDL1;

ARCHITECTURE my_logic of VHDL1 is

SIGNAL RST  	 : STD_LOGIC := '0';
SIGNAL ADC_CH0  : BIT_VECTOR (2 downto 0) := "000";
SIGNAL ADC_MESU : BIT_VECTOR (11 downto 0) := "000000000000";
SIGNAL ADC_CCOM : STD_LOGIC := '0';
SIGNAL ADC_CLK  : STD_LOGIC := '0';
SIGNAL ADC_EN   : STD_LOGIC := '0';
SIGNAL ADC_CLK_PRESC: INTEGER RANGE 255 downto 0 := 0;
SIGNAL ADC_EN_PRESC: INTEGER RANGE 255 downto 0 := 0;

COMPONENT ADC IS                        
  PORT (
		RST			: IN  STD_LOGIC;
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

RST<= TO_STDULOGIC(GPIO_2_IN(0));

ADCCLK : PROCESS
	BEGIN
     WAIT UNTIL CLOCK_50 = '1';
	  IF (RST = '0') THEN
	   ADC_CLK_PRESC <= 0;
		ADC_CLK <= '1';	  	
	  END iF;
	  ADC_CLK_PRESC <= ADC_CLK_PRESC + 1;
	  IF ADC_CLK_PRESC = 20 THEN
	   ADC_CLK_PRESC <= 0;
		ADC_CLK <= not ADC_CLK;
	  END IF;
	 END PROCESS;

SAMPLE : PROCESS
	BEGIN
     WAIT UNTIL ADC_CLK = '1';
	  IF (RST = '0') THEN
	   ADC_EN_PRESC <= 0;
		ADC_EN <= '0';	  
	  END iF;
	  ADC_EN_PRESC <= ADC_EN_PRESC + 1;
	  IF ADC_EN_PRESC = 64 THEN
	   ADC_EN_PRESC <= 0;
		ADC_EN <= '1';
	  ELSE
		ADC_EN <= '0';
	  END IF;
	 END PROCESS;

ADC0 :ADC PORT MAP(RST,ADC_EN,ADC_CLK,ADC_CH0,ADC_MESU,ADC_CS_N,ADC_CCOM,ADC_SCLK,ADC_SADDR,ADC_SDAT);

GPIO_1(1) <= to_bit(ADC_CLK);
GPIO_1(2) <= to_bit(ADC_EN);
GPIO_1(3) <= to_bit(ADC_CS_N);
GPIO_1(4) <= to_bit(ADC_SCLK);
GPIO_1(5) <= to_bit(ADC_SADDR);
GPIO_1(6) <= to_bit(ADC_CCOM);



p1: PROCESS          
	BEGIN
     WAIT UNTIL ADC_CCOM = '1';
	  LED(0) <= ADC_MESU(4);
	  LED(1) <= ADC_MESU(5);
	  LED(2) <= ADC_MESU(6);
	  LED(3) <= ADC_MESU(7);
	  LED(4) <= ADC_MESU(8);
	  LED(5) <= ADC_MESU(9);
	  LED(6) <= ADC_MESU(10);
	  LED(7) <= ADC_MESU(11);
  END PROCESS;
	


end my_logic;