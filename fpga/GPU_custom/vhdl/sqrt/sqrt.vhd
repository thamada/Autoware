#Time-stamp: <2017-01-06 08:50:37 hamada>

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sqrt is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_in_V : IN STD_LOGIC_VECTOR (15 downto 0);
    sqrtX_out_V : OUT STD_LOGIC_VECTOR (8 downto 0);
    sqrtX_out_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of sqrt_ is 
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_cordic_base_fu_29_ap_start : STD_LOGIC;
    signal grp_cordic_base_fu_29_ap_done : STD_LOGIC;
    signal grp_cordic_base_fu_29_ap_idle : STD_LOGIC;
    signal grp_cordic_base_fu_29_ap_ready : STD_LOGIC;
    signal grp_cordic_base_fu_29_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_reg_grp_cordic_base_fu_29_ap_start : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";

    component cordic_base IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        inputData_in_V_read : IN STD_LOGIC_VECTOR (15 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;

begin

    grp_cordic_base_fu_29 : component cordic_base
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_cordic_base_fu_29_ap_start,
        ap_done => grp_cordic_base_fu_29_ap_done,
        ap_idle => grp_cordic_base_fu_29_ap_idle,
        ap_ready => grp_cordic_base_fu_29_ap_ready,
        inputData_in_V_read => x_in_V,
        ap_return => grp_cordic_base_fu_29_ap_return);


    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_grp_cordic_base_fu_29_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_grp_cordic_base_fu_29_ap_start <= ap_const_logic_0;
            else
                if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
                    ap_reg_grp_cordic_base_fu_29_ap_start <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_cordic_base_fu_29_ap_ready)) then 
                    ap_reg_grp_cordic_base_fu_29_ap_start <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, grp_cordic_base_fu_29_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (not((ap_const_logic_0 = grp_cordic_base_fu_29_ap_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);

    ap_done_assign_proc : process(grp_cordic_base_fu_29_ap_done, ap_CS_fsm_state2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2) and not((ap_const_logic_0 = grp_cordic_base_fu_29_ap_done)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_cordic_base_fu_29_ap_done, ap_CS_fsm_state2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2) and not((ap_const_logic_0 = grp_cordic_base_fu_29_ap_done)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_cordic_base_fu_29_ap_start <= ap_reg_grp_cordic_base_fu_29_ap_start;
    sqrtX_out_V <= grp_cordic_base_fu_29_ap_return;

    sqrtX_out_V_ap_vld_assign_proc : process(grp_cordic_base_fu_29_ap_done, ap_CS_fsm_state2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2) and not((ap_const_logic_0 = grp_cordic_base_fu_29_ap_done)))) then 
            sqrtX_out_V_ap_vld <= ap_const_logic_1;
        else 
            sqrtX_out_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
