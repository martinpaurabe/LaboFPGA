--`timescale 1ns/100ps
--PACKAGE eight_bit_int IS    -- User defined types
--  SUBTYPE BYTE IS INTEGER RANGE -128 TO 127;
--  TYPE ARRAY_BYTE IS ARRAY (0 TO 3) OF BYTE;
--END eight_bit_int;



LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;
USE work.eight_bit_int.ALL;

ENTITY TB IS 
	
END TB;

ARCHITECTURE TB1 OF TB IS 
signal x_in:	BYTE := 0;
signal y_out:	BYTE;
signal clk:	std_logic:='0';
signal rst:	std_logic:='0';

constant clk_period : time := 10 ns;

COMPONENT SimFir IS                         ------> Interface
  PORT (clk   :   IN  STD_LOGIC;
		rst	  :   IN  STD_LOGIC;
        x     :   IN  BYTE;
        y     :   OUT BYTE);
END COMPONENT;


BEGIN 

DUT: SimFir port map(x => x_in,y => y_out,clk => clk,rst => rst);

-- Test bench 

x_in  <= 0,10 after 12 ns, 0 after 23 ns;
rst  <= '1','0' after 10 ns;

 -- Clock process definitions( clock with 50% duty cycle is generated here.
clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;  --for 5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 5 ns signal is '1'.
   end process;
 

END ARCHITECTURE;


