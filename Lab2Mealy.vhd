library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mealy is

port(X,ClrN,Ck : in std_logic; Q,Qbar,Z: out std_logic);

end mealy;

architecture behavioral of mealy is
  signal temp:std_logic;                 --internal signal takes feedback
begin

process(ClrN,Ck) is
begin
    if (ClrN'event and ClrN='0') then    --ClrN is an active low, ff resets PS 
     temp<='0';
    elsif (Ck'event and Ck='1') then     --Clock to the D-ff
     temp<=X;
    end if;
  
Z<=X xor temp;
Q<=temp;
Qbar<=not(temp);
end process;

end behavioral;
