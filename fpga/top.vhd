-- Time-stamp: "2017-01-06 23:42:37 hamada"
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
--[WRITE]
--clk         __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __
-- CBUS(0)    _______/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--[ DBUS ]           X   >< n ><d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--MEM_ADR                        0 >< n ><n+1><n+2><n+3><n+4><n+5><n+6><n+7>< 0
--MEM_DATA                          <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--MEM_WE                        ____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______
--
--[READ] 
--clk         __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __~~ __
-- CBUS(1)    _______/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______________
--DBUS               X   >< n ><HHH>----------<d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--DBUS_Port_ff                                <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--DBUS_Port                              <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >
--DBUS_HiZ           ~~~~~~~~~~~~~~~\_________________________________________________/~~~~
--MEM_RE                        ____/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\______
--MEM_ADR                        0 >< n ><n+1><n+2><n+3><n+4><n+5><n+6><n+7>< 0
--MEM_DATA                               <d0 ><d1 ><d2 ><d3 ><d4 ><d5 ><d6 ><d7 >

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
  port (
    RST       : in std_logic;
    CK66      : in std_logic;
    CK133     : out std_logic;
    CBUS      : inout std_logic_vector(7 downto 0);
    DBUS      : inout std_logic_vector(63 downto 0);
    LED       : out std_logic_vector(3 downto 0);
    FPGA_NO   : inout std_logic_vector(2 downto 0)
  );
end top;

architecture rtl of top is

component dmaw
  port (
    RST       : in std_logic;
    CLK       : in std_logic;
    ENABLE    : in std_logic;
    DBUS      : in std_logic_vector(63 downto 0);
    MEM_WE    : out std_logic;
    MEM_ADR   : out std_logic_vector(18 downto 0);
    MEM_DATA  : out std_logic_vector(63 downto 0)   );
end component;

component dmar
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
end component;

component user
  port (
    FPGA_NO : in std_logic_vector(1 downto 0);
    RST : in std_logic;
    CLK  : in std_logic;
    PCLK : in std_logic;
    WE  : in std_logic;
    RE  : in std_logic;
    WAD : in std_logic_vector(18 downto 0);
    WDT : in std_logic_vector(63 downto 0);
    RAD : in std_logic_vector(18 downto 0);
    RDT : out std_logic_vector(63 downto 0);
    STS : out std_logic);
end component;

component CLK_MULDIV
  generic (CLKFX_MULTIPLY : integer :=2;
           CLKFX_DIVIDE : integer := 2);
  port (ICLK : in std_logic;
        OCLK : out std_logic;
        OCLK_FX : out std_logic;
        LOCKED : out std_logic);
end component;

signal DBUS_HiZ    : std_logic;
signal DBUS_idata  : std_logic_vector(63 downto 0);
signal DBUS_Port   : std_logic_vector(63 downto 0);
signal DBUS_Port_ff: std_logic_vector(63 downto 0);
signal dmaw_enable : std_logic;
signal dmar_enable : std_logic;
signal dmaw_mem_adr : std_logic_vector(18 downto 0);
signal dmar_mem_adr : std_logic_vector(18 downto 0);
signal dmaw_mem_we  : std_logic;
signal dmar_mem_re  : std_logic;
signal dmaw_mem_data : std_logic_vector(63 downto 0);
signal dmar_mem_data : std_logic_vector(63 downto 0);
---
signal LED_ff : std_logic_vector(3 downto 0) := (others=>'1');

signal user_status : std_logic :='0';
signal CLK0,CLK1 : std_logic;
signal DCM_LOCKED : std_logic;
signal FPGA_NO_ff : std_logic_vector(1 downto 0);
begin

dcm0: CLK_MULDIV
  generic map (CLKFX_MULTIPLY => 2,
               CLKFX_DIVIDE   => 2)
  port map (ICLK => CK66,
            OCLK => CLK0,
            OCLK_FX => CLK1,
            LOCKED => DCM_LOCKED);

-- CLK0 <= CK66;
-- CLK1 <= CK66;
-- DCM_LOCKED <= '0';

  CBUS(7) <= user_status;

  DBUS <= (others=>'Z') when DBUS_HiZ = '1' else DBUS_Port_ff;
  DBUS_idata <= DBUS;
  dmaw_enable <= CBUS(0);
  dmar_enable <= CBUS(1);
  process (CLK0) begin
    if(CLK0'event and CLK0='1') then
      DBUS_Port_ff <= DBUS_Port;
    end if;
  end process;

  u0 : dmaw port map(
    RST       => RST,
    CLK       => CLK0,
    ENABLE    => dmaw_enable,
    DBUS      => DBUS_idata,
    MEM_WE    => dmaw_mem_we,
    MEM_ADR   => dmaw_mem_adr,
    MEM_DATA  => dmaw_mem_data);

  u1: dmar port map(
    RST       => RST,
    CLK       => CLK0,
    ENABLE    => dmar_enable,
    DBUS      => DBUS_idata,
    DBUS_Port => DBUS_Port,
    DBUS_HiZ  => DBUS_HiZ,
    MEM_RE    => dmar_mem_re,
    MEM_ADR   => dmar_mem_adr,
    MEM_DATA  => dmar_mem_data);

  u2: user port map(
      FPGA_NO => FPGA_NO_ff(1 downto 0),
      RST => RST,
      CLK  => CLK0,
      PCLK => CLK1,
      WE  => dmaw_mem_we,
      RE  => dmar_mem_re,
      WAD => dmaw_mem_adr,
      WDT => dmaw_mem_data,
      RAD => dmar_mem_adr,
      RDT => dmar_mem_data,
      STS => user_status);

  -----------------------------------------------------------------------------
  process (CLK0) begin
    if(CLK0'event and CLK0='1') then
      FPGA_NO_ff <= FPGA_NO(1 downto 0);
    end if;
  end process;

  -- LED --
  LED <= LED_ff(3 downto 0);

  process (RST,CLK0) begin
    if(RST='1') then
      LED_ff <= (others=>'0');
    elsif(CLK0'event and CLK0='1') then
--      if(dmaw_enable = '1' AND dmar_enable = '0') then
--        LED_ff(7 downto 4) <= (others=>'0');
--        LED_ff(3 downto 0) <= (others=>'1');
--      elsif(dmaw_enable = '0' AND dmar_enable = '1') then
--        LED_ff(7 downto 4) <= (others=>'1');
--        LED_ff(3 downto 0) <= (others=>'0');
--      else
--        LED_ff <= "1111111" & DCM_LOCKED;
--      end if;
      LED_ff <= "101" & DCM_LOCKED;
    end if;
  end process;

  -----------------------------------------------------------------------------
  CK133      <= 'Z';
  FPGA_NO(2) <= 'Z';
  CBUS(6 downto 2) <= (others=>'Z');

end rtl;
