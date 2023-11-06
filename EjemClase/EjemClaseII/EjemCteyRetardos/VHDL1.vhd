--Ejemplo para demostrar Tipos de datos


PACKAGE FPGA_DE0_TYPES IS
TYPE SWITCHES is array (3 downto 0) of BIT; --Recordar que no es lo mismo que Boolean (True/False)
TYPE LEDS   is array (7 downto 0) of BIT;   --El '1' no necesariamente es true
TYPE KEYS	is array (0 to 1) of BIT;		  --El '0' no necesariamente es false	
END FPGA_DE0_TYPES;

LIBRARY work;
USE work.FPGA_DE0_TYPES.ALL;


LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY VHDL1 IS                         ------> Interface
  generic(
			 constant tr,tf:time:=5 ns;
			 ttr:time:=15ns);
  PORT (
	   signal CLOCK_50   :   IN  STD_LOGIC:='0';
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
	  LED(0) <= transport not SW(0) after ttr; --atrasa la señal si filtrar
	  LED(1) <= not SW(0); --atrasa la señal si filtrar

	  LED(2) <= reject (tr+tf) inertial (KEY(1) and SW(0)) after ttr;
	  LED(3) <= KEY(1) and SW(0);


	  --LED(0) <= SW(0);     -- para verificar que el ultimo valor es el unico que se 
								  -- carga en la salida
   END PROCESS;
 
 p2: PROCESS(SW(3)) --las asignaciones solas, en si mismas, son un proceso en intrinseco
	BEGIN
	LED(4) <= not SW(3); --Cambian sin importar la señal de CLK
	END PROCESS;
	 
	LED(5) <= not SW(3);

	LED(6) <= reject (tr+tf) inertial SW(3) after ttr;
	

end my_logic;