--Estructuras Principales
--ENTITY Nombre_Abarcativo_Entidad is
--Generic -->Señales constantes
--Port  -->Señales de Entrada Salida para conectar la entidad
--END Nombre_Abarcativo_Entidad;


--ARCHITECTURE nombre_arq OF nombre de la entidad
--//Declaraciones
--Constants *mediante l
--Types      -->Declaro nuevos tipos de variables que utilizo en la entidad
--Signals    -->Señales internas a la entidad (Puedo inicializar, pero no son In ni out)
--Components -->Declaro componente otras entidades que voy a utilizar dentro
--BEGIN
--Component instantiation   -->Instancio los componentes que voy a utilizar(puedo repetir
									 -->lo que no puedo hacer es manejar las mismas salidas
--Concurrent signal assignments  -->Procesos intrinsecos
--Process Statements					-->Procesos propios de la arquitectura
--END



PACKAGE FPGA_DE0_TYPES IS
TYPE SWITCHES_TYPE is array (3 downto 0) of BIT;
TYPE LEDS_TYPE   is array (7 downto 0) of BIT;
TYPE KEYS_TYPE	is array (0 to 1) of BIT;
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
		KEY 	     :   IN  KEYS_TYPE:="00";
      LED        :   OUT LEDS_TYPE:="00000000");
		
END VHDL1;

ARCHITECTURE my_logic of VHDL1 is

COMPONENT Compuerta IS                        
  PORT (clk   :   IN  STD_LOGIC;
		rst	  :   IN  STD_LOGIC;
        x     :   IN  BIT;
        y     :   OUT BIT);
END COMPONENT;

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
	
Comp1 :compuerta port map(CLOCK_50, rst,KEY(1),LED(7));	
	

end my_logic;