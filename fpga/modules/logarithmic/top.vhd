-- Time-stamp: <2017-01-03 02:26:39 hamada>
--
-- Copyright(c) 2013-2017 by Tsuyoshi Hamada. All rights reserved 
--

library ieee;
use ieee.std_logic_1164.all;

entity top is
  port( x,y : in std_logic_vector(16 downto 0);
        z : out std_logic_vector(16 downto 0);
        clock : in std_logic);
end top;

architecture rtl of top is

component pg_log_unsigned_add_itp_17_8_6_9
port( x,y : in std_logic_vector(16 downto 0);
      z : out std_logic_vector(16 downto 0);
      clock : in std_logic);
end component;

begin

  u1: pg_log_unsigned_add_itp_17_8_6_9 port map(x=>x, y=>y, z=>z, clock=>clock);

end rtl;

