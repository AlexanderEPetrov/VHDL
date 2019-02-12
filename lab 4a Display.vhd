--EE354 Lab4

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
  ENTITY seg7 IS
   PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
   seven : OUT STD_LOGIC_VECTOR(1 TO 7) );
  END seg7 ;
ARCHITECTURE Behavior OF seg7 IS
BEGIN
   process ( bcd )
     BEGIN
      CASE bcd IS --abcdefg
        when"0000" => seven <= "1111110" ;
        when"0001" => seven <= "0110000" ;
        when"0010" => seven <= "1101101" ;
        when"0011" => seven <= "1111001" ;
        when"0100" => seven <= "0110011" ;
        when"0101" => seven <= "1011011" ;
        when"0110" => seven <= "1011111" ;
        when"0111" => seven <= "1110000" ;
        when"1000" => seven <= "1111111" ;
        when"1001" => seven <= "1110011" ;
        when others => seven <= "-------" ;
  END CASE ;
END process ;
END Behavior ;

