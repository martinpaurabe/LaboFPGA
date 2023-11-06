--ejemplo para mostrar que cambian asincronicamente y sincronicamente dependiendo del wait.
--tambien el concepto de proceso en la escala jerarquica




LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.FPGA_DE0_TYPES.ALL;

ENTITY TB IS 
	
END TB;

ARCHITECTURE TB1 OF TB IS 
signal SW_in: bit_vector (3 downto 0);
signal KEY_in : KEYS;
signal LED_IN : LEDS;
signal GPIO1_OUT : GPIO_1_t;
signal clk:	std_logic:='0';
signal GPIO_2_IN  : GPIO_2_IN_t;
signal ADC_CS_N	: STD_LOGIC :='1';
signal ADC_SADDR  : STD_LOGIC :='1';
signal ADC_SCLK   : STD_LOGIC :='1';
signal ADC_SDAT   : STD_LOGIC :='0';

constant clk_period : time := 20 ns;

COMPONENT VHDL1 IS                         ------> Interface
  PORT (
	   CLOCK_50   :   IN  STD_LOGIC:='0';
		GPIO_2_IN  :   IN  GPIO_2_IN_t;
      SW         :   IN  bit_vector (3 downto 0):="0000";
		KEY 	     :   IN  KEYS:="00";
      LED        :   OUT LEDS:="00000000";
		GPIO_1     :   OUT GPIO_1_t;
		ADC_CS_N	  :   BUFFER STD_LOGIC :='1';
		ADC_SADDR  :	BUFFER STD_LOGIC :='1';
		ADC_SCLK   :	BUFFER STD_LOGIC :='1';
		ADC_SDAT   :   IN  STD_LOGIC :='0');
END COMPONENT;


BEGIN 

DUT: VHDL1 port map(CLOCK_50 => clk,GPIO_2_IN => GPIO_2_IN,SW => SW_in,KEY => KEY_in,LED => LED_IN,GPIO_1 => GPIO1_OUT,ADC_CS_N =>ADC_CS_N,ADC_SADDR=>ADC_SADDR,ADC_SCLK=>ADC_SCLK,ADC_SDAT=>ADC_SDAT);

-- Test bench 

SW_in(0)  <= '0','1' after 24 ns, '0' after 48 ns;
SW_in(1)  <= '0','1' after 24 ns, '1' after 48 ns;
SW_in(2)  <= '1','0' after 24 ns, '0' after 48 ns;


KEY_in(0) <= '0','1' after 12 ns, '0' after 23 ns;
KEY_in(1) <= '0','1' after 12 ns, '1' after 23 ns;

GPIO_2_IN(0)  <= '0','1' after 10 ns;

--SW3_process :process
--	begin
--		SW(3)<= '0';
--		wait for 5 ns;
--		SW(3)<='1';
--		wait for 8 ns;
--	end process
SW_process :process
   begin
        SW_in(3) <= '0';
        wait for 5 ns;  --for 5 ns signal is '0'.
        SW_in(3) <= '1';
        wait for 8 ns;  --for next 5 ns signal is '1'.
   end process;

	
 -- Clock process definitions( clock with 50% duty cycle is generated here.

clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;  --for 5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 5 ns signal is '1'.
   end process;

 
 

END ARCHITECTURE;


