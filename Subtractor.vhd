library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fs1 is
Port (x : in STD_LOGIC;
y : in STD_LOGIC;
bin : in STD_LOGIC;
d : out STD_LOGIC;
bout : out STD_LOGIC);
end fs1;

architecture Behavioral of fs1 is
begin
d<=x xor y xor bin;
bout<=((not x)and y)or((not x)and bin)or(y and bin);
end Behavioral;
