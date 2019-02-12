entity dff is
  port(D, Clr: in bit; Q, Qn: out bit);
end dff;

architecture arch_dff of dff is
  signal Ck : bit:= '0';
  constant Ck_period : time := 10 ns;

  signal Qint: bit;
begin
Q <= Qint;
Qn <= not Qint;

Ck_process :process
   begin
        Ck <= '0';
        wait for Ck_period/2;  --for 0.5 ns signal is '0'.
        Ck <= '1';
        wait for Ck_period/2;  --for next 0.5 ns signal is '1'.
   end process;

process(Ck)
  begin
  if Ck'event and Ck='1' then
    if clr = '0' then Qint <= '0';
    else Qint <= D;
    end if;
  end if;
end process;
end arch_dff;

