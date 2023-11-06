LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY Compuerta IS                         ------> Interface
  PORT (clk   :   IN  STD_LOGIC;
		rst	  :   IN  STD_LOGIC;
        x     :   IN  BIT;
        y     :   OUT BIT);
END Compuerta;

ARCHITECTURE my_not of compuerta is

begin
y <= not x;

end my_not;