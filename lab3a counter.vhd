library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--library BITLIB;
--use BITLIB.bit_pack.all;

entity Counter is
    port(En, U, D, PreN, Clk: in bit; Q: out std_logic_vector(5 downto 0));
end Counter;

architecture CounterArch of Counter is
    signal W: std_logic_vector(5 downto 0) := "111111";
begin

    Q <= W;
    
    process (PreN, Clk)
    begin
       if PreN = '0' then
         W <= "111111";
       elsif Clk'event and Clk = '1' then
         if En = '1' then
          if U&D = "10" then
              W <= W + 1;
          elsif U&D = "01" then
              W <= W - 1;
          end if;
         end if;
       end if;
    end process;
end CounterArch;

