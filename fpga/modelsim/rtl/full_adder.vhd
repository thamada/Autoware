-- Time-stamp: <2017-01-12 07:23:29 hamada>
--
-- (c) Copyright 2017 by Tsuyoshi Hamada. All rights reserved.
--

-- a, b, cin => cout, s
-- 0, 0, 0 => 0, 0
-- 0, 0, 1 => 0, 1
-- 0, 1, 0 => 0, 1
-- 0, 1, 1 => 1, 0
-- 1, 0, 0 => 0, 1
-- 1, 0, 1 => 1, 0
-- 1, 1, 0 => 1, 0
-- 1, 1, 1 => 1, 1

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder is
  port (a, b, cin  : in  std_logic;
        s, cout    : out std_logic
        );
end;

architecture rtl of full_adder is

begin

  s <= (a xor b) xor cin;
  cout <= (a and b) or ((a xor b) and cin);

end;



