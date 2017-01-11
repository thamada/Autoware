-- Time-stamp: <2017-01-12 07:23:24 hamada>
--
-- (c) Copyright 2017 by Tsuyoshi Hamada. All rights reserved.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dff is
  port (clk: in  std_logic;
        rst: in  std_logic;
        d  : in  std_logic;
        q  : out std_logic
        );
end;

architecture rtl of dff is

begin

  process (clk, rst) begin
    if rst = '1' then 
      q <= '0';
    elsif clk'event and clk ='1' then
      q <= d;
    end if;
  end process;

end architecture rtl;
