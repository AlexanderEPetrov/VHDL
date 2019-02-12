library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity mux8 is
port ( sel: in std_logic_vector(2 downto 0);
 a,b,c,d,e,f,g,h :in std_logic;
muxo: out std_logic );
end mux8;
 
architecture behavioral of mux8 is
begin
process (sel,a,b,c,d,e,f,g,h)
begin
case  sel is
when "000" => muxo <= a;
when "001" => muxo <= b;
when "010" => muxo <= c;
when "011" => muxo <= d;
when "100" => muxo <= e;
when "101" => muxo <= f;
when "110" => muxo <= g;
when "111" => muxo <= h;
when others => null;
end case;
end process;
end behavioral;



