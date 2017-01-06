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
--
--
--clk         __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __
--[ENABLE]    _______/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--DBUS               X   >< n ><HHH>----------<d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--DBUS_Port                              <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--DBUS_HiZ           ~~~~~~~~~~~~~~~\_________________________________________________/~~~~
--MEM_RE                        ____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______
--MEM_ADR                        0 >< n ><n+1><n+2><n+3><n+4><n+5><n+6><n+7>< 0
--MEM_DATA                               <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dmar is
  port (
    RST       : in std_logic;
    CLK       : in std_logic;
    ENABLE    : in std_logic;
    DBUS      : in std_logic_vector(63 downto 0);
    DBUS_Port : out std_logic_vector(63 downto 0);
    DBUS_HiZ  : out std_logic;
    MEM_RE    : out std_logic;
    MEM_ADR   : out std_logic_vector(18 downto 0);
    MEM_DATA  : in std_logic_vector(63 downto 0)  ); 
end dmar;

architecture rtl of dmar is

component dmar_dbus_hiz
  port (
    RST       : in std_logic;
    CLK       : in std_logic;
    ENABLE    : in std_logic;
    DBUS_HiZ  : out std_logic);
end component;

component dmar_state
  port (
    RST      : in std_logic;
    CLK      : in std_logic;
    ENABLE   : in std_logic;
    STATE    : out std_logic_vector(1 downto 0) );
end component;

component dmar_start_adr
  port (
    CLK       : in std_logic;
    DBUS      : in std_logic_vector(63 downto 0);
    STATE     : in std_logic_vector(1 downto 0);
    START_ADR : out std_logic_vector(18 downto 0) );
end component;

component dmar_mem_adr
  port (
    CLK       : in  std_logic;
    STATE     : in std_logic_vector(1 downto 0);  -- STATE of DMAW
    START_ADR : in std_logic_vector(18 downto 0);
    MEM_ADR   : out  std_logic_vector(18 downto 0)
    );
end component;


component dmar_mem_re
  port (
    CLK       : in std_logic;
    STATE     : in std_logic_vector(1 downto 0);
    MEM_RE    : out std_logic );
end component;

signal state : std_logic_vector(1 downto 0);
signal start_adr : std_logic_vector(18 downto 0);

begin

-- DBUSのトライステート処理は上位で行う
-- DBUS <= (others=>'Z') when DBUS_HiZ = '1' else DBUS_Port;

 u0 : dmar_state     port map(RST=>RST, CLK=>CLK,     ENABLE=>ENABLE,       STATE=>state);
 u1 : dmar_start_adr port map(CLK=>CLK, STATE=>state, DBUS=>DBUS,           START_ADR=>start_adr);
 u2 : dmar_mem_adr   port map(CLK=>CLK, STATE=>state, START_ADR=>start_adr, MEM_ADR  => MEM_ADR);
 u3 : dmar_mem_re    port map(CLK=>CLK, STATE=>state,                       MEM_RE   => MEM_RE);

 u4 : dmar_dbus_hiz  port map(RST=>RST, CLK=>CLK,     ENABLE=>ENABLE,       DBUS_HiZ=>DBUS_HiZ);
 DBUS_Port <= MEM_DATA;


end rtl;
