---------------------------------------------------------------------
----                                                             ----
---- Copyright (C) 2004-2017 by Tsuyoshi Hamada.                 ----
----                                  All rights reserved.       ----
----                                                             ----
---- Contact: hamada@progrape.jp                                 ----
---- License: GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 ----
----                                                             ----
---- This source file may be used and distributed without        ----
---- restriction provided that this copyright statement is not   ----
---- removed from the file and that any derivative work contains ----
---- the original copyright notice and the associated disclaimer.----
----                                                             ----
----     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ----
---- EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ----
---- TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ----
---- FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ----
---- OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ----
---- INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ----
---- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ----
---- GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ----
---- BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ----
---- LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ----
---- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ----
---- OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ----
---- POSSIBILITY OF SUCH DAMAGE.                                 ----
----                                                             ----
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dmar_start_adr is
  port (
    CLK       : in std_logic;
    DBUS      : in std_logic_vector(63 downto 0);
    STATE     : in std_logic_vector(1 downto 0);
    START_ADR : out std_logic_vector(18 downto 0) );
end dmar_start_adr;

architecture rtl of dmar_start_adr is
component dmaw_start_adr
  port (
    CLK       : in std_logic;
    DBUS      : in std_logic_vector(63 downto 0);
    STATE     : in std_logic_vector(1 downto 0);
    START_ADR : out std_logic_vector(18 downto 0) );
end component;
begin
  u0 : dmaw_start_adr port map(CLK=>CLK, DBUS=>DBUS, STATE=>STATE, START_ADR=>START_ADR);
end rtl;
