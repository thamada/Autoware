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
--
-- DMAR_STATE is used only 
--                dmar_mem_adr.vhd  
--                dmar_mem_re.vhd
--                dmar_start_adr.vhd
-- dmar_dbus_hiz and dma_mem_data do not used DMAR_STATE.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dmar_state is
  port (
    RST      : in std_logic;
    CLK      : in std_logic;
    ENABLE   : in std_logic;
    STATE    : out std_logic_vector(1 downto 0) );
end dmar_state;

architecture rtl of dmar_state is

component dmaw_state
  port (
    RST      : in std_logic;
    CLK      : in std_logic;
    ENABLE   : in std_logic;
    STATE    : out std_logic_vector(1 downto 0) );
end component;

begin
  u0 : dmaw_state port map(RST=>RST, CLK=>CLK, ENABLE=>ENABLE, STATE=>STATE);
end rtl;
