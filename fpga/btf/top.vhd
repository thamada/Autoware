-- Time-stamp: <2017-01-01 16:24:16 hamada>
--
-- Copyright (c) 2016 by Tsuyoshi Hamada, all right reserved
--
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_SIGNED.all;

library bftLib;
use bftLib.bftPackage.all;

entity top is 	  
    port ( 
        wbClk, bftClk, reset : in std_logic;
        wbDataForInput :in std_logic;
        wbWriteOut: in std_logic;
        wbDataForOutput : out std_logic; 
        wbInputData : in std_logic_vector (31 downto 0);
        wbOutputData : out std_logic_vector (31 downto 0);
        error : out std_logic
       );
       
attribute fsm_encoding :string;
attribute fsm_encoding of bft : entity is "one-hot" ;
end entity top;

architecture rtl of top is 

component btf
    port ( 
        wbClk, bftClk, reset : in std_logic;
        wbDataForInput :in std_logic;
        wbWriteOut: in std_logic;
        wbDataForOutput : out std_logic; 
        wbInputData : in std_logic_vector (31 downto 0);
        wbOutputData : out std_logic_vector (31 downto 0);
        error : out std_logic
       );
end component;


signal clk: std_logic;
signal din0: std_logic_VECTOR(31 downto 0);
signal rd_clk0: std_logic;
signal rd_en0: std_logic;
signal rst0: std_logic;
signal wr_clk0: std_logic;
signal wr_en0: std_logic;
signal dout0: std_logic_VECTOR(31 downto 0);
signal empty0: std_logic;
signal full0: std_logic;

begin  

clk <= wbClk;

--get the data back in sync with the enable
process (wbClk)
 begin
    wbInputDataStage0 <= wbInputData;
    wbInputDataStage1 <= wbInputDataStage0;
end process;

--state machine to load data from the WB bus to the input fifos
process (clk)
begin
    if rising_edge(clk) then
	 
        if (reset = '1') then
        readIngressFifo <='1';
        loadState <= s0;
            wbDataForInputReg <= '0';
        else
        readIngressFifo <='0';        
            loadState <= loadNextState;
            wbDataForInputReg <= wbDataForInput;
        end if;
    end if;
end process;


process (wbClk) 
begin
    if rising_edge(wbClk) then
        loadEgressFifo(0) <= loadEgressFoo;
        loadEgressFifo(7 downto 1) <= loadEgressFifo(6 downto 0);
    end if;
end process;    
        
btf0: entity btf
    port map(wbClk => wbClk, bftClk => bftClk, reset => reset,
        wbDataForInput => wbDataForInput,
        wbWriteOut => wbWriteOut,
        wbDataForOutput => wbDataForOutput,
        wbInputData => wbInputData,
        wbOutputData => wbOutputData,
        error => error
       );

process (wbClk)
begin
    if rising_edge(wbClk) then
        ingressFifoWrEn <= not(wbDataForInput);
    end if;    
end process;

process (bftClk)
begin
  if rising_edge(bftClk) then
      if (reset = '1') then
            validForEgressFifo <= (others => '0');
       else
           validForEgressFifo(0) <= not wbDataForInput;
           validForEgressFifo (13 downto 1) <= validForEgressFifo(12 downto 0);
       end if;    
  end if;     
end process;

end architecture rtl;
