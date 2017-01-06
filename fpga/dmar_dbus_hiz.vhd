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
--[DMAR_ENABLE] _____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--en0                _____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--en1                     _____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--en2                          _____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--en3                               _____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--DBUS_HiZ            ~~~~~~~~~~~~~~\_________________________________________________/~~~~

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dmar_dbus_hiz is
  port (
    RST       : in std_logic;
    CLK       : in std_logic;
    ENABLE    : in std_logic;
    DBUS_HiZ  : out std_logic :='1');
end dmar_dbus_hiz;

architecture rtl of dmar_dbus_hiz is
signal en0,en1,en2,en3 : std_logic :='0';
begin

  process(CLK) begin
    if(CLK'event and CLK = '1') then
      en3 <= en2;
      en2 <= en1;
      en1 <= en0;
      en0 <= ENABLE;
    end if;
  end process;


  process(RST,CLK,en2,en3) begin
    if(RST='1') then
      DBUS_HiZ <= '1';
    elsif(CLK'event and CLK = '1') then
     if( (en1='1') AND (en2='0') ) then
       DBUS_HiZ <= '0';
     elsif( (en2='0') AND (en3='1') ) then
       DBUS_HiZ <= '1';
     end if;
    end if;
  end process;

end rtl;
