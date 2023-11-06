

PACKAGE eight_bit_int IS    -- User defined types
  SUBTYPE BYTE IS INTEGER RANGE -128 TO 127;
  TYPE ARRAY_BYTE IS ARRAY (0 TO 3) OF BYTE;
END eight_bit_int;

LIBRARY work;
USE work.eight_bit_int.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY SimFir IS                         ------> Interface
  PORT (clk   :   IN  STD_LOGIC;
        x     :   IN  BYTE;
        y     :   OUT BYTE);
END Simfir;

ARCHITECTURE flex OF SimFir IS

TYPE TIPO_DE_IMPLEMENTACION IS (SYM ,NOSYM,CSD,PIPE);

constant TIPO:TIPO_DE_IMPLEMENTACION:=NOSYM;


  SIGNAL tap : ARRAY_BYTE;   -- Tapped delay line of bytes
  SIGNAL  t1,t2,t3,t4 : BYTE;
  SIGNAL  tmpy : BYTE;
BEGIN

-- Results (Used FPGA EP4CE22F17C6)

-- NOSYM  97.64  MHz   (As is)
-- SYM    168.58 MHz   (Simetric)
-- CSD    208.86 MHz   (CSD + Simetric)
-- PIPE   254.32 MHZ   (CSD + Simetric + PIPE) 


NS1 :if TIPO=NOSYM generate

  p1: PROCESS(clk)             ------> Behavioral Style 
  
 
	BEGIN
     IF (clk'EVENT AND clk = '1') THEN
  -- Compute output y with the filter coefficients weight.
  -- The coefficients are [-1  3.75  3.75  -1]. 
  -- Division for Altera VHDL is only allowed for 
  -- powers-of-two values!



-- =================21.55 MHz===142 LE===================================
    tmpy <= 2 * tap(1) + tap(1) + tap(1) / 2 + tap(1) / 4 
    + 2 * tap(2) + tap(2) + tap(2) / 2 + tap(2) / 4 
    - tap(3) - tap(0);
-- ====================================================== 


    FOR I IN 3 DOWNTO 1 LOOP 
 --     tap(I) <= tap(I-1); -- Tapped delay line: shift one
    END LOOP;
    tap(0) <= x;                -- Input in register 
    
    END IF;
    
  END PROCESS;
  y<=tmpy;

end generate NS1;


END flex;
