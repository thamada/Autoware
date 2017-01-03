-- Time-stamp: <2017-01-03 20:32:17 hamada>
--
-- Copyright(c) 2012-2017 by Tsuyoshi Hamada. All rights reserved.
--
-- D-type Flip-Flop
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dff is
    port  (
        clk   : in std_logic;
        rst   : in std_logic;   -- acvite low
        D     : in std_logic;
        Q     : out std_logic
    );
end dff;


architecture rtl of dff is
   signal q0   : std_logic;
begin

    Q <= q0;

    u0: process(clk, rst)
    begin
        if (rst='0') then
            q0 <= '0';
        else
            if (rising_edge(clk)) then
                q0 <= D;
            end if;
        end if;
    end process;
    

end rtl;
