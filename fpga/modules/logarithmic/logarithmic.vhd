-- Time-stamp: <2017-01-03 01:50:02 hamada>
--
-- Copyright(c) 2006-2017 by Tsuyoshi Hamada. All rights reserved 
--
-- Nman	8-bit
-- Ncut	6-bit
-- Npipe	9
-- rom_c0(address)	6-bit
-- rom_c1(address)	6-bit
-- rom_c0(data)	10-bit
-- rom_c1(data)	9-bit
---------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity pg_log_unsigned_add_itp_17_8_6_9 is
  port( x,y : in std_logic_vector(16 downto 0);
        z : out std_logic_vector(16 downto 0);
        clock : in std_logic);
end pg_log_unsigned_add_itp_17_8_6_9;

architecture rtl of pg_log_unsigned_add_itp_17_8_6_9 is

  component pg_log_unsigned_add_umult_6_9_2
  port (
    clk : in std_logic; 
    x : in std_logic_vector(5 downto 0); 
    y : in std_logic_vector(8 downto 0); 
    z : out std_logic_vector(14 downto 0));
  end component;

-- This part has a bug potentially.
-- The MULTIPLE DECLARATION will be occure!!
-- But I don't have time to fix it today. (2004/02/19)
-- I will kill the bug for future.
-- If your VHDL code bumps this MULTIPLE DECLARATION error at synthesis,
-- Please contact me(hamada@provence.c.u-tokyo.ac.jp).
  -- u1 --
  component pg_adder_RCA_SUB_17_1
    port (x,y: in std_logic_vector(16 downto 0);
          clk: in std_logic;
          z: out std_logic_vector(16 downto 0));
  end component;

  -- u2 --
  component pg_adder_RCA_SUB_16_1
    port (x,y: in std_logic_vector(15 downto 0);
          clk: in std_logic;
          z: out std_logic_vector(15 downto 0));
  end component;

  -- itp_sub --
  component pg_adder_RCA_SUB_11_0
    port (x,y: in std_logic_vector(10 downto 0);
          clk: in std_logic;
          z: out std_logic_vector(10 downto 0));
  end component;

  -- u4 --
  component pg_adder_RCA_ADD_16_1
    port (x,y: in std_logic_vector(15 downto 0);
          clk: in std_logic;
          z: out std_logic_vector(15 downto 0));
  end component;

  component lcell_rom_a106_6_10_1
   port (indata: in std_logic_vector(5 downto 0);
         clk: in std_logic;
         outdata: out std_logic_vector(9 downto 0));
  end component;

  component lcell_rom_a906_6_9_1
   port (indata: in std_logic_vector(5 downto 0);
         clk: in std_logic;
         outdata: out std_logic_vector(8 downto 0));
  end component;


  signal x1,y1,xy : std_logic_vector(16 downto 0);
  signal yx : std_logic_vector(15 downto 0);
  signal xd,yd : std_logic_vector(15 downto 0);
  signal x2,x3,x4,x5,x6,x7,x8 : std_logic_vector(15 downto 0);
  signal d0,d1,d4 : std_logic_vector(15 downto 0);
  signal z0 : std_logic_vector(15 downto 0);
  signal sign0,sign1,sign2,sign3,sign4,sign5,sign6,sign7,sign8 : std_logic;
  signal signxy : std_logic_vector(1 downto 0);
  -- FOR TABLE SUB LOGIC
  signal df0,df1,df2,df3,df4,df5 : std_logic;
  signal d_isz0,d_isz1,d_isz2,d_isz3,d_isz4,d_isz5 : std_logic;
  signal d2 : std_logic_vector(8 downto 0);
  signal itp_x : std_logic_vector(5 downto 0);
  signal itp_dx0,itp_dx1 : std_logic_vector(5 downto 0);
  signal itp_c0,itp_c0d0,itp_c0d1,itp_c0d2 : std_logic_vector(9 downto 0);
  signal itp_c1 : std_logic_vector(8 downto 0);
  signal itp_c1dx : std_logic_vector(14 downto 0);
  signal itp_c1dx_shift : std_logic_vector(9 downto 0);
  signal itp_c1dx2: std_logic_vector(9 downto 0);
  signal itp_subx,itp_suby,itp_subz: std_logic_vector(10 downto 0);
  signal itp_c0_c1dx: std_logic_vector(7 downto 0);
  signal itp_out0,itp_out1: std_logic_vector(7 downto 0);

begin

  x1 <= '0' & x(15 downto 0);
  y1 <= '0' & y(15 downto 0);

  --- PIPELINE 1 ---
  u1: pg_adder_RCA_SUB_17_1  port map(x=>x1,y=>y1,z=>xy,clk=>clock);
  u2: pg_adder_RCA_SUB_16_1  port map(x=>y(15 downto 0),y=>x(15 downto 0),z=>yx,clk=>clock);
  process(clock) begin
    if(clock'event and clock='1') then
      xd <= x(15 downto 0);
      yd <= y(15 downto 0);
      sign1 <= sign0;
    end if;
  end process;
  ------------------.


  x2 <= xd when xy(16)='0' else yd;
  d0 <= xy(15 downto 0) when xy(16)='0' else yx;

  signxy <= x(16)&y(16);
  with signxy select
    sign0 <= y(16) when "01",
             x(16) when others;

  --- PIPELINE 2 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x3 <= x2;
      d1 <= d0;
      sign2 <= sign1;
    end if;
  end process;
  ------------------.


-- TABLE PART (START) ---------------------------------------------
-- INPUT  d1 : 16-bit
-- OUTPUT d4 : 16-bit
  df0 <= '1' when d1(15 downto 12)="0000" else '0';
  
  -- ALL OR -> NOT (PLUS) --
  d_isz0 <= '1' when d1(11 downto 0)="000000000000" else '0';

-- TABLE (INTERPOLATION) --
-- *************************************************************** 
-- * PGPG UNSIGNED LOGARITHMIC ADDER MODULE OF                   * 
-- * INTERPORATED TABLE LOGIC : f(x+dx) ~= c0(x) + c1(x)dx       * 
-- *  c0(x) and c1(x) are chebyshev coefficients.                * 
-- *************************************************************** 
  itp_x   <= d1(11 downto 6);
  itp_dx0 <= d1(5 downto 0);

  --- PIPELINE 3 ---

  -- OUT REGISTERED TABLE --                          
  -- c0(x) --                                         
  itp_c0_rom: lcell_rom_a106_6_10_1
  port map(indata=>itp_x,outdata=>itp_c0,clk=>clock);

  -- c1(x) --                                         
  itp_c1_rom: lcell_rom_a906_6_9_1
  port map(indata=>itp_x,outdata=>itp_c1,clk=>clock);

  process(clock) begin
    if(clock'event and clock='1') then
      df1 <= df0;
      d_isz1 <= d_isz0;
      itp_dx1 <= itp_dx0;
    end if;
  end process;
  ------------------.


  --- PIPELINE 4,5 ---
  -- ITP MULT --  6-bit * 9-bit -> 15-bit
  itp_mult: pg_log_unsigned_add_umult_6_9_2
    port map (       
    clk  => clock,   
    x  => itp_dx1,   
    y  => itp_c1,    
    z  => itp_c1dx); 
  ------------------.
  --- PIPELINE 4 ---
  process(clock) begin
    if(clock'event and clock='1') then
      df2 <= df1;
      d_isz2 <= d_isz1;
      itp_c0d0 <= itp_c0;
    end if;
  end process;
  ------------------.
  --- PIPELINE 5 ---
  process(clock) begin
    if(clock'event and clock='1') then
      df3 <= df2;
      d_isz3 <= d_isz2;
      itp_c0d1 <= itp_c0d0;
    end if;
  end process;
  ------------------.


  -- SHIFT >> 8-bit , JOINE ZERO-VECTORS TO THE UPPER-BIT
  itp_c1dx_shift <= "000" & itp_c1dx(14 downto 8);

  --- PIPELINE 6 ---
  process(clock) begin
    if(clock'event and clock='1') then
      df4 <= df3;
      d_isz4 <= d_isz3;
      itp_c0d2 <= itp_c0d1;
      itp_c1dx2 <= itp_c1dx_shift;
    end if;
  end process;
  ------------------.


  itp_subx <= '0' & itp_c0d2;
  itp_suby <= '0' & itp_c1dx2;
  itp_sub: pg_adder_RCA_SUB_11_0  port map(x=>itp_subx,y=>itp_suby,z=>itp_subz,clk=>clock);

  -- IF [f(x+dx)=c0(x)-c1(x)dx<0] THEN [f(x+dx) := 0] ELSE SHIFT >> 2-bit
  itp_c0_c1dx <= "00000000" when (itp_subz(10)='1') else itp_subz(9 downto 2);


  itp_out0 <= itp_c0_c1dx when (d_isz4='0') else "00000000";


  --- PIPELINE 7 ---
  process(clock) begin
    if(clock'event and clock='1') then
      df5 <= df4;
      d_isz5 <= d_isz4;
      itp_out1 <= itp_out0;
    end if;
  end process;
  ------------------.

  d2(8) <= d_isz5;
  d2(7 downto 0) <= itp_out1;
  d4(8 downto 0) <= d2 when (df5 = '1') else "000000000";
  d4(15 downto 9) <= "0000000";

-- TABLE PART (END) ---------------------------------------------


  --- PIPELINE 3 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x4 <= x3;
      sign3 <= sign2;
    end if;
  end process;
  ------------------.

  --- PIPELINE 4 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x5 <= x4;
      sign4 <= sign3;
    end if;
  end process;
  ------------------.

  --- PIPELINE 5 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x6 <= x5;
      sign5 <= sign4;
    end if;
  end process;
  ------------------.

  --- PIPELINE 6 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x7 <= x6;
      sign6 <= sign5;
    end if;
  end process;
  ------------------.

  --- PIPELINE 7 ---
  process(clock) begin
    if(clock'event and clock='1') then
      x8 <= x7;
      sign7 <= sign6;
    end if;
  end process;
  ------------------.

  --- PIPELINE 8 ---
  u4: pg_adder_RCA_ADD_16_1  port map(x=>x8,y=>d4,z=>z0,clk=>clock);

  process(clock) begin
    if(clock'event and clock='1') then
      sign8 <= sign7;
    end if;
  end process;
  ------------------.

  --- PIPELINE 9 ---
  process(clock) begin
    if(clock'event and clock='1') then
      z(15 downto 0) <= z0;
      z(16) <= sign8;
    end if;
  end process;
  ------------------.

end rtl;
-- ============= END  pg_log_unsigned_add interporation version    


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pg_log_unsigned_add_umult_6_9_2 is
  port(x : in std_logic_vector(5 downto 0);
       y : in std_logic_vector(8 downto 0);
       z : out std_logic_vector(14 downto 0);
     clk : in std_logic);
end pg_log_unsigned_add_umult_6_9_2;

architecture rtl of pg_log_unsigned_add_umult_6_9_2 is

  signal y0 : std_logic_vector(4 downto 0);
  signal y1 : std_logic_vector(3 downto 0);
  signal s0,s0d : std_logic_vector(11 downto 0);
  signal s1,s1d : std_logic_vector(9 downto 0);
  signal s : std_logic_vector(14 downto 0);
begin
  y0 <= y(4 downto 0);
  y1 <= y(8 downto 5);

  s0 <= x * ('0'&y0); -- 12-bit
  s1 <= x * y1;       -- 10-bit
  s <=(s1d & "00000")+("000" & s0d);

  process(clk) begin
    if(clk'event and clk='1') then
      s0d <= s0;
      s1d <= s1;
      z <= s;
    end if;
  end process;
end rtl;


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pg_adder_RCA_SUB_17_1 is
  port(x,y : in std_logic_vector(16 downto 0);
       z : out std_logic_vector(16 downto 0);
       clk : in std_logic);
end pg_adder_RCA_SUB_17_1;

architecture rtl of pg_adder_RCA_SUB_17_1 is

  signal sum : std_logic_vector(16 downto 0);
begin
  sum <= x - y;
  process(clk) begin
    if(clk'event and clk='1') then
      z <= sum;
    end if;
  end process;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pg_adder_RCA_SUB_16_1 is
  port(x,y : in std_logic_vector(15 downto 0);
       z : out std_logic_vector(15 downto 0);
       clk : in std_logic);
end pg_adder_RCA_SUB_16_1;

architecture rtl of pg_adder_RCA_SUB_16_1 is

  signal sum : std_logic_vector(15 downto 0);
begin
  sum <= x - y;
  process(clk) begin
    if(clk'event and clk='1') then
      z <= sum;
    end if;
  end process;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pg_adder_RCA_SUB_11_0 is
  port(x,y : in std_logic_vector(10 downto 0);
       z : out std_logic_vector(10 downto 0);
       clk : in std_logic);
end pg_adder_RCA_SUB_11_0;

architecture rtl of pg_adder_RCA_SUB_11_0 is

  signal sum : std_logic_vector(10 downto 0);
begin
  sum <= x - y;
  z <= sum;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pg_adder_RCA_ADD_16_1 is
  port(x,y : in std_logic_vector(15 downto 0);
       z : out std_logic_vector(15 downto 0);
       clk : in std_logic);
end pg_adder_RCA_ADD_16_1;

architecture rtl of pg_adder_RCA_ADD_16_1 is

  signal sum : std_logic_vector(15 downto 0);
begin
  sum <= x + y;
  process(clk) begin
    if(clk'event and clk='1') then
      z <= sum;
    end if;
  end process;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ROM using Lcell not ESB         
-- Author: Tsuyoshi Hamada         
-- Last Modified at May 29,2003    
-- In 6 Out 10 Stage 1 Type"a106"
library ieee;                      
use ieee.std_logic_1164.all;       
                                   
entity lcell_rom_a106_6_10_1 is
  port( indata : in std_logic_vector(5 downto 0);
        clk : in std_logic;
        outdata : out std_logic_vector(9 downto 0));
end lcell_rom_a106_6_10_1;

architecture rtl of lcell_rom_a106_6_10_1 is

  component pg_lcell
    generic (MASK : bit_vector  := X"ffff";
             FF   : integer :=0);
    port (x   : in  std_logic_vector(3 downto 0);
          z   : out std_logic;
          clk : in  std_logic);
  end component;

  signal adr0 : std_logic_vector(5 downto 0);
  signal adr1 : std_logic_vector(5 downto 0);
  signal adr2 : std_logic_vector(5 downto 0);
  signal lc_4_0 : std_logic_vector(9 downto 0);
  signal lc_4_1 : std_logic_vector(9 downto 0);
  signal lc_4_2 : std_logic_vector(9 downto 0);
  signal lc_4_3 : std_logic_vector(9 downto 0);
  signal lut_5_0,lc_5_0 : std_logic_vector(9 downto 0);
  signal lut_5_1,lc_5_1 : std_logic_vector(9 downto 0);
  signal lut_6_0,lc_6_0 : std_logic_vector(9 downto 0);

begin

  LC_000_00 : pg_lcell
  generic map(MASK=>X"6305",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(0));

  LC_000_01 : pg_lcell
  generic map(MASK=>X"B071",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(1));

  LC_000_02 : pg_lcell
  generic map(MASK=>X"5877",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(2));

  LC_000_03 : pg_lcell
  generic map(MASK=>X"DB41",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(3));

  LC_000_04 : pg_lcell
  generic map(MASK=>X"665D",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(4));

  LC_000_05 : pg_lcell
  generic map(MASK=>X"D449",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(5));

  LC_000_06 : pg_lcell
  generic map(MASK=>X"CD11",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(6));

  LC_000_07 : pg_lcell
  generic map(MASK=>X"3CCB",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(7));

  LC_000_08 : pg_lcell
  generic map(MASK=>X"03C7",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(8));

  LC_000_09 : pg_lcell
  generic map(MASK=>X"003F",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(9));

  LC_001_00 : pg_lcell
  generic map(MASK=>X"9393",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(0));

  LC_001_01 : pg_lcell
  generic map(MASK=>X"BBAA",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(1));

  LC_001_02 : pg_lcell
  generic map(MASK=>X"8938",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(2));

  LC_001_03 : pg_lcell
  generic map(MASK=>X"7893",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(3));

  LC_001_04 : pg_lcell
  generic map(MASK=>X"0789",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(4));

  LC_001_05 : pg_lcell
  generic map(MASK=>X"0078",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(5));

  LC_001_06 : pg_lcell
  generic map(MASK=>X"0007",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(6));

--LC_001_07 
  lc_4_1(7) <= '0';

--LC_001_08 
  lc_4_1(8) <= '0';

--LC_001_09 
  lc_4_1(9) <= '0';

  LC_002_00 : pg_lcell
  generic map(MASK=>X"001A",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(0));

  LC_002_01 : pg_lcell
  generic map(MASK=>X"0079",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(1));

  LC_002_02 : pg_lcell
  generic map(MASK=>X"0007",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(2));

--LC_002_03 
  lc_4_2(3) <= '0';

--LC_002_04 
  lc_4_2(4) <= '0';

--LC_002_05 
  lc_4_2(5) <= '0';

--LC_002_06 
  lc_4_2(6) <= '0';

--LC_002_07 
  lc_4_2(7) <= '0';

--LC_002_08 
  lc_4_2(8) <= '0';

--LC_002_09 
  lc_4_2(9) <= '0';

--LC_003_00 
  lc_4_3(0) <= '0';

--LC_003_01 
  lc_4_3(1) <= '0';

--LC_003_02 
  lc_4_3(2) <= '0';

--LC_003_03 
  lc_4_3(3) <= '0';

--LC_003_04 
  lc_4_3(4) <= '0';

--LC_003_05 
  lc_4_3(5) <= '0';

--LC_003_06 
  lc_4_3(6) <= '0';

--LC_003_07 
  lc_4_3(7) <= '0';

--LC_003_08 
  lc_4_3(8) <= '0';

--LC_003_09 
  lc_4_3(9) <= '0';

  adr0 <= indata;
  adr1(5 downto 4) <= adr0(5 downto 4);
  process(clk) begin
    if(clk'event and clk='1') then
      adr2(5) <= adr1(5);
    end if;
  end process;

--  =================================
  with adr1(4) select
    lut_5_0 <= lc_4_0 when '0',
              lc_4_1 when others;

  with adr1(4) select
    lut_5_1 <= lc_4_2 when '0',
              lc_4_3 when others;

--  =================================
  with adr2(5) select
    lut_6_0 <= lc_5_0 when '0',
              lc_5_1 when others;


--  =================================
  process(clk) begin
    if(clk'event and clk='1') then
      lc_5_0 <= lut_5_0;
      lc_5_1 <= lut_5_1;
    end if;
  end process;
--  =================================
    lc_6_0 <= lut_6_0;
  outdata <= lc_6_0;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ROM using Lcell not ESB         
-- Author: Tsuyoshi Hamada         
-- Last Modified at May 29,2003    
-- In 6 Out 9 Stage 1 Type"a906"
library ieee;                      
use ieee.std_logic_1164.all;       
                                   
entity lcell_rom_a906_6_9_1 is
  port( indata : in std_logic_vector(5 downto 0);
        clk : in std_logic;
        outdata : out std_logic_vector(8 downto 0));
end lcell_rom_a906_6_9_1;

architecture rtl of lcell_rom_a906_6_9_1 is

  component pg_lcell
    generic (MASK : bit_vector  := X"ffff";
             FF   : integer :=0);
    port (x   : in  std_logic_vector(3 downto 0);
          z   : out std_logic;
          clk : in  std_logic);
  end component;

  signal adr0 : std_logic_vector(5 downto 0);
  signal adr1 : std_logic_vector(5 downto 0);
  signal adr2 : std_logic_vector(5 downto 0);
  signal lc_4_0 : std_logic_vector(8 downto 0);
  signal lc_4_1 : std_logic_vector(8 downto 0);
  signal lc_4_2 : std_logic_vector(8 downto 0);
  signal lc_4_3 : std_logic_vector(8 downto 0);
  signal lut_5_0,lc_5_0 : std_logic_vector(8 downto 0);
  signal lut_5_1,lc_5_1 : std_logic_vector(8 downto 0);
  signal lut_6_0,lc_6_0 : std_logic_vector(8 downto 0);

begin

  LC_000_00 : pg_lcell
  generic map(MASK=>X"DD64",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(0));

  LC_000_01 : pg_lcell
  generic map(MASK=>X"2F5F",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(1));

  LC_000_02 : pg_lcell
  generic map(MASK=>X"47A2",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(2));

  LC_000_03 : pg_lcell
  generic map(MASK=>X"7DEB",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(3));

  LC_000_04 : pg_lcell
  generic map(MASK=>X"29E6",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(4));

  LC_000_05 : pg_lcell
  generic map(MASK=>X"1B4B",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(5));

  LC_000_06 : pg_lcell
  generic map(MASK=>X"F8D9",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(6));

  LC_000_07 : pg_lcell
  generic map(MASK=>X"07C7",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(7));

  LC_000_08 : pg_lcell
  generic map(MASK=>X"003F",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_0(8));

  LC_001_00 : pg_lcell
  generic map(MASK=>X"5892",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(0));

  LC_001_01 : pg_lcell
  generic map(MASK=>X"350A",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(1));

  LC_001_02 : pg_lcell
  generic map(MASK=>X"F352",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(2));

  LC_001_03 : pg_lcell
  generic map(MASK=>X"0F37",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(3));

  LC_001_04 : pg_lcell
  generic map(MASK=>X"00F1",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(4));

  LC_001_05 : pg_lcell
  generic map(MASK=>X"000F",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_1(5));

--LC_001_06 
  lc_4_1(6) <= '0';

--LC_001_07 
  lc_4_1(7) <= '0';

--LC_001_08 
  lc_4_1(8) <= '0';

  LC_002_00 : pg_lcell
  generic map(MASK=>X"0046",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(0));

  LC_002_01 : pg_lcell
  generic map(MASK=>X"003E",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(1));

  LC_002_02 : pg_lcell
  generic map(MASK=>X"0001",FF=>0)
  port map( x=>adr0(3 downto 0),clk=>clk,
            z=>lc_4_2(2));

--LC_002_03 
  lc_4_2(3) <= '0';

--LC_002_04 
  lc_4_2(4) <= '0';

--LC_002_05 
  lc_4_2(5) <= '0';

--LC_002_06 
  lc_4_2(6) <= '0';

--LC_002_07 
  lc_4_2(7) <= '0';

--LC_002_08 
  lc_4_2(8) <= '0';

--LC_003_00 
  lc_4_3(0) <= '0';

--LC_003_01 
  lc_4_3(1) <= '0';

--LC_003_02 
  lc_4_3(2) <= '0';

--LC_003_03 
  lc_4_3(3) <= '0';

--LC_003_04 
  lc_4_3(4) <= '0';

--LC_003_05 
  lc_4_3(5) <= '0';

--LC_003_06 
  lc_4_3(6) <= '0';

--LC_003_07 
  lc_4_3(7) <= '0';

--LC_003_08 
  lc_4_3(8) <= '0';

  adr0 <= indata;
  adr1(5 downto 4) <= adr0(5 downto 4);
  process(clk) begin
    if(clk'event and clk='1') then
      adr2(5) <= adr1(5);
    end if;
  end process;

--  =================================
  with adr1(4) select
    lut_5_0 <= lc_4_0 when '0',
              lc_4_1 when others;

  with adr1(4) select
    lut_5_1 <= lc_4_2 when '0',
              lc_4_3 when others;

--  =================================
  with adr2(5) select
    lut_6_0 <= lc_5_0 when '0',
              lc_5_1 when others;


--  =================================
  process(clk) begin
    if(clk'event and clk='1') then
      lc_5_0 <= lut_5_0;
      lc_5_1 <= lut_5_1;
    end if;
  end process;
--  =================================
    lc_6_0 <= lut_6_0;
  outdata <= lc_6_0;
end rtl;

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--+-------------------------------+
--| PG_LCELL/PG_LCELL_ARI         |
--| For Xilinx Devices            |
--| Multidevice Logic Cell Module |.GKey:hYj8zgUkjgdkfhB3ozXM
--| 2004/02/06                    |
--|            by Tsuyoshi Hamada |
--+-------------------------------+
--+-------------+----------+
--| x3,x2,x1,x0 |    z     |
--+-------------+----------+
--|  0, 0, 0, 0 | MASK(0)  |
--|  0, 0, 0, 1 | MASK(1)  |
--|  0, 0, 1, 0 | MASK(2)  |
--|  0, 0, 1, 1 | MASK(3)  |
--|  0, 1, 0, 0 | MASK(4)  |
--|  0, 1, 0, 1 | MASK(5)  |
--|  .......... | .......  |
--|  1, 1, 1, 1 | MASK(16) |
--+-------------+----------+
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
entity pg_lcell is
  generic(MASK: bit_vector  := X"ffff";
            FF: integer := 0);
    port(x : in std_logic_vector(3 downto 0);
         z : out std_logic;
         clk : in std_logic);
end pg_lcell;

architecture schematic of pg_lcell is
   ATTRIBUTE BOX_TYPE : STRING;
   ATTRIBUTE INIT : STRING ;
   COMPONENT LUT4
   GENERIC( INIT : BIT_VECTOR := X"0000");
      PORT ( I0	:	IN	STD_LOGIC;
             I1	:	IN	STD_LOGIC;
             I2	:	IN	STD_LOGIC;
             I3	:	IN	STD_LOGIC;
             O	:	OUT	STD_LOGIC);
   END COMPONENT;
   ATTRIBUTE BOX_TYPE OF LUT4 : COMPONENT IS "BLACK_BOX";

   signal z0 : std_logic;

BEGIN

   xlcell : LUT4 GENERIC MAP (INIT => MASK)
      PORT MAP (I0=>x(0), I1=>x(1), I2=>x(2), I3=>x(3), O=>z0);

-- unreged output
ifgen0: if (FF=0) generate
  z <= z0;
end generate;

-- reged output
ifgen1: if (FF>0) generate
  process(clk) begin
    if(clk'event and clk='1') then
      z <= z0;
    end if;
  end process;
end generate;

end schematic;

