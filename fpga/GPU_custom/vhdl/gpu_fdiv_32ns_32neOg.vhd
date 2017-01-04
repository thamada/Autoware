-- ==============================================================
-- Time-stamp: <2017-01-05 04:32:47 hamada>
-- Copyright (C) 2017 Tsuyoshi Hamada. All Rights Reserved.
--
-- Autoware for FPGAs project.
-- 
-- --------------------------------------------------------------
-- RTL design for my OpenCL-enebled custom GPU
--   : floating-point division conforming 
--   :     to the IEEE 754 single precision storage format.
-- ==============================================================

Library ieee;
use ieee.std_logic_1164.all;

entity gpu_fdiv_32ns_32neOg is
    generic (
        ID         : integer := 5;
        NUM_STAGE  : integer := 9;
        din0_WIDTH : integer := 32;
        din1_WIDTH : integer := 32;
        dout_WIDTH : integer := 32
    );
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        ce    : in  std_logic;
        din0  : in  std_logic_vector(din0_WIDTH-1 downto 0);
        din1  : in  std_logic_vector(din1_WIDTH-1 downto 0);
        dout  : out std_logic_vector(dout_WIDTH-1 downto 0)
    );
end entity;

architecture arch of gpu_fdiv_32ns_32neOg is
    --------------------- Component ---------------------
    component gpu_ap_fdiv_7_no_dsp_32 is
        port (
            aclk                 : in  std_logic;
            aclken               : in  std_logic;
            s_axis_a_tvalid      : in  std_logic;
            s_axis_a_tdata       : in  std_logic_vector(31 downto 0);
            s_axis_b_tvalid      : in  std_logic;
            s_axis_b_tdata       : in  std_logic_vector(31 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(31 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal aclk      : std_logic;
    signal aclken    : std_logic;
    signal a_tvalid  : std_logic;
    signal a_tdata   : std_logic_vector(31 downto 0);
    signal b_tvalid  : std_logic;
    signal b_tdata   : std_logic_vector(31 downto 0);
    signal r_tvalid  : std_logic;
    signal r_tdata   : std_logic_vector(31 downto 0);
    signal din0_buf1 : std_logic_vector(din0_WIDTH-1 downto 0);
    signal din1_buf1 : std_logic_vector(din1_WIDTH-1 downto 0);
begin
    --------------------- Instantiation -----------------
    gpu_ap_fdiv_7_no_dsp_32_u : component gpu_ap_fdiv_7_no_dsp_32
    port map (
        aclk                 => aclk,
        aclken               => aclken,
        s_axis_a_tvalid      => a_tvalid,
        s_axis_a_tdata       => a_tdata,
        s_axis_b_tvalid      => b_tvalid,
        s_axis_b_tdata       => b_tdata,
        m_axis_result_tvalid => r_tvalid,
        m_axis_result_tdata  => r_tdata
    );

    --------------------- Assignment --------------------
    aclk     <= clk;
    aclken   <= ce;
    a_tvalid <= '1';
    a_tdata  <= din0_buf1;
    b_tvalid <= '1';
    b_tdata  <= din1_buf1;
    dout     <= r_tdata;

    --------------------- Input buffer ------------------
    process (clk) begin
        if clk'event and clk = '1' then
            if ce = '1' then
                din0_buf1 <= din0;
                din1_buf1 <= din1;
            end if;
        end if;
    end process;

end architecture;
