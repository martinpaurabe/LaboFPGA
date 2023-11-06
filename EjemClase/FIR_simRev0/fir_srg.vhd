

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
		  rst	  :   IN  STD_LOGIC;
        x     :   IN  BYTE;
        y     :   OUT BYTE);
END Simfir;

ARCHITECTURE flex OF SimFir IS

TYPE TIPO_DE_IMPLEMENTACION IS (SYM ,NOSYM,CSD,PIPE);

constant TIPO:TIPO_DE_IMPLEMENTACION:=SYM;


  SIGNAL tap : ARRAY_BYTE;   -- Tapped delay line of bytes
  SIGNAL  t1,t2,t3,t4 : BYTE;
BEGIN

-- Results (Used FPGA EP4CE22F17C6)

-- NOSYM  97.64  MHz   (As is)
-- SYM    168.58 MHz   (Simetric)
-- CSD    208.86 MHz   (CSD + Simetric)
-- PIPE   254.32 MHZ   (CSD + Simetric + PIPE) 


NS1 :if TIPO=NOSYM generate

	p1: PROCESS             ------> Behavioral Style 
  
 
	BEGIN
     WAIT UNTIL clk = '1';
  -- Compute output y with the filter coefficients weight.
  -- The coefficients are [-1  3.75  3.75  -1]. 
  -- Division for Altera VHDL is only allowed for 
  -- powers-of-two values!

	if (rst = '1') then
		tap(0)<=0;
		tap(1)<=0;
		tap(2)<=0;
		tap(3)<=0;
		t1 <= 0;
		t2 <= 0;
		t3 <= 0;
		t4 <= 0;
	else

-- =================21.55 MHz===142 LE===================================
    y <= 2 * tap(1) + tap(1) + tap(1) / 2 + tap(1) / 4 
    + 2 * tap(2) + tap(2) + tap(2) / 2 + tap(2) / 4 
    - tap(3) - tap(0);
-- ====================================================== 


    FOR I IN 3 DOWNTO 1 LOOP 
      tap(I) <= tap(I-1); -- Tapped delay line: shift one
    END LOOP;
    tap(0) <= x;                -- Input in register 0
    
    end if;
    
  END PROCESS;

end generate NS1;

SYM1 :if TIPO=SYM generate

  p1: PROCESS             ------> Behavioral Style 
  
 
	BEGIN
    WAIT UNTIL clk = '1';
  -- Compute output y with the filter coefficients weight.
  -- The coefficients are [-1  3.75  3.75  -1]. 
  -- Division for Altera VHDL is only allowed for 
  -- powers-of-two values!
	if (rst = '1') then
		tap(0)<=0;
		tap(1)<=0;
		tap(2)<=0;
		tap(3)<=0;
		t1 <= 0;
		t2 <= 0;
		t3 <= 0;
		t4 <= 0;
	else


-- ================================35.97 MHz  119 LE======================

		t1<=tap(1)+ tap(2);
		t2<=tap(0)+ tap(3);
		y <= 2 * t1 + t1 + t1 / 2 + t1 / 4 - t2;
 
-- ======================================================


		FOR I IN 3 DOWNTO 1 LOOP 
			tap(I) <= tap(I-1); -- Tapped delay line: shift one
		END LOOP;
		tap(0) <= x;                -- Input in register 0
	end if;
	END PROCESS;

end generate SYM1;


CSD1 :if TIPO=CSD generate

  p1: PROCESS             ------> Behavioral Style 
  
 
	BEGIN
    WAIT UNTIL clk = '1';
  -- Compute output y with the filter coefficients weight.
  -- The coefficients are [-1  3.75  3.75  -1]. 
  -- Division for Altera VHDL is only allowed for 
  -- powers-of-two values!

	if (rst = '1') then
		tap(0)<=0;
		tap(1)<=0;
		tap(2)<=0;
		tap(3)<=0;
		t1 <= 0;
		t2 <= 0;
		t3 <= 0;
		t4 <= 0;
	else



-- ================================39.06 MHz  119 LE======================

		t1<=tap(1)+ tap(2);
		t2<=tap(0)+ tap(3);
		y <= 4*t1 - t1 / 4 - t2;
 
-- ======================================================


		FOR I IN 3 DOWNTO 1 LOOP 
			tap(I) <= tap(I-1); -- Tapped delay line: shift one
		END LOOP;
		tap(0) <= x;                -- Input in register 0
	end if;
  END PROCESS;

end generate CSD1;

PIPE1 :if TIPO=PIPE generate

  p1: PROCESS             ------> Behavioral Style 
  
 
	BEGIN
    WAIT UNTIL clk = '1';
  -- Compute output y with the filter coefficients weight.
  -- The coefficients are [-1  3.75  3.75  -1]. 
  -- Division for Altera VHDL is only allowed for 
  -- powers-of-two values!
	 if (rst = '1') then
		tap(0)<=0;
		tap(1)<=0;
		tap(2)<=0;
		tap(3)<=0;
		t1 <= 0;
		t2 <= 0;
		t3 <= 0;
		t4 <= 0;
	 else




-- ================================47.17 MHz  119 LE======================

		t1<=tap(1)+ tap(2);
		t2<=tap(0)+ tap(3);
		t3<= 4*t1 - t1 / 4 ;
		t4<=-t2;
		y<=t3+t4;
-- ======================================================


		FOR I IN 3 DOWNTO 1 LOOP 
			tap(I) <= tap(I-1); -- Tapped delay line: shift one
		END LOOP;
		tap(0) <= x;                -- Input in register 0
	 end if;
  END PROCESS;

end generate PIPE1;


END flex;
