-- Time-stamp: <2017-01-12 07:11:49 hamada>
--
-- (c) Copyright 2017 by Tsuyoshi Hamada. All rights reserved.
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench is
end;

architecture sim of testbench is

  component full_adder
    port (a, b, cin : in  std_logic;
          s, cout   : out std_logic);
  end component;
  
  signal a, b, cin, s, cout: std_logic;

begin

  -- instanticate Unit Under Test: UUT
  uut: full_adder port map (a, b, cin, s, cout);

  -- Stimulus process
  stim_proc: process
  begin
    wait for 10 ns;
    a <= 'U'; b <='U'; cin <='U';
    wait for 10 ns;
    a <= '0'; b <='0'; cin <='0'; 
    wait for 10 ns;
    a <= '1'; b <='0'; cin <='0'; 
    wait for 10 ns;
    a <= '0'; b <='1'; cin <='0'; 
    wait for 10 ns;
    a <= '1'; b <='1'; cin <='0'; 
    wait for 10 ns;
    a <= '0'; b <='0'; cin <='1'; 
    wait for 10 ns;
    a <= '1'; b <='0'; cin <='1'; 
    wait for 10 ns;
    a <= '0'; b <='1'; cin <='1'; 
    wait for 10 ns;
    a <= '1'; b <='1'; cin <='1'; 
    wait for 10 ns;
    wait for 10 ns;
    wait for 10 ns;
    a <= '0';
    wait for 10 ns;
    wait for 10 ns;
    wait for 10 ns;
  end process;
  
end architecture sim;
