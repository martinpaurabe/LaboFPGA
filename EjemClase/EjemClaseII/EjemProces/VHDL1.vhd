--Ejemplo para demostrar ejecucion paralela y modificacion de variables en proceso



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
      LED        :   OUT LEDS:="00000000");
		
END VHDL1;

ARCHITECTURE my_logic of VHDL1 is

BEGIN

 p1: PROCESS --Recordar que no puede tener WAIT y Sensibilidad(SW(0),SW(1),SW(2),KEY(1),KEY(0))          
				 --Pero tiene que tener una de las dos porque si no se ejecutaria continuamente 	
				 --Y nunca se estableceria el resultado de la evaluacion.	
	BEGIN
     WAIT UNTIL CLOCK_50 = '1';
	  LED(0) <= not SW(0); 
	  LED(1) <= KEY(0) and SW(1);
	  LED(2) <= KEY(1) or SW(2);

	  LED(0) <= SW(0);     -- para verificar que el ultimo valor es el unico que se 
								  -- carga en la salida
   END PROCESS;
 
 p2: PROCESS(SW(3)) --las asignaciones solas, en si mismas, son un proceso en intrinseco
	BEGIN
	LED(3) <= not SW(3); --Cambian sin importar la señal de CLK
	END PROCESS;
	 
	LED(4) <= not SW(3);
	

end my_logic;