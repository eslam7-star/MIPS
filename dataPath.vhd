----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:57 05/11/2023 
-- Design Name: 
-- Module Name:    Datapath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.DatapathPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Datapath is
port(clk, reset: in STD_LOGIC;
readdata: in STD_LOGIC_VECTOR(31 downto 0);  
instr: in STD_LOGIC_VECTOR(31 downto 0);  
memtoreg, pcsrc,alusrc,regwrite, regdst: in STD_LOGIC;  
jump : in STD_LOGIC;
aluoperation: in STD_LOGIC_VECTOR(3 downto 0);  
zero: out STD_LOGIC;
pc: out STD_LOGIC_VECTOR(31 downto 0);
aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));
end Datapath;

architecture Behavioral of Datapath is

signal writereg: STD_LOGIC_VECTOR(4 downto 0);
signal pcjump, pcnext, pcnextbr, pcplus4,  pcbranch: STD_LOGIC_VECTOR(31 downto 0);
signal signimm, signimmsh: STD_LOGIC_VECTOR(31 downto 0);
signal srca, srcb, result: STD_LOGIC_VECTOR(31 downto 0);

signal pcsignal : STD_LOGIC_VECTOR(31 downto 0);
signal writedatasignal : STD_LOGIC_VECTOR(31 downto 0);
signal aluoutsignal : STD_LOGIC_VECTOR(31 downto 0);

begin


pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00";  
pcreg: flopr port map(clk , reset, pcnext, pcsignal);  
pcadd1: adder port map(pcsignal, X"00000004", pcplus4);
immsh: sl2 port map(signimm, signimmsh);
pcadd2: adder port map(pcplus4, signimmsh, pcbranch);  
pcbrmux: mux2 generic map (32) port map(pcplus4, pcbranch , pcsrc, pcnextbr);
pcmux: mux2 generic map (32) port map(pcnextbr, pcjump , jump,  pcnext);


regmux : mux2 generic map (5) port map(instr(20 downto 16), instr(15 downto 11), regdst, writereg );
extend : signext port map( instr(15 downto 0) , signimm);

alumux : mux2 port map( srcb , signimm , alusrc, result );
regfile1 : regfile port map(instr(25 downto 21), instr(20 downto 16), writereg, regwrite , clk, reset ,writedatasignal, srca , srcb );
alu1: alu_t port map( srca , result , aluoperation, aluoutsignal , zero);
muxwrie : mux2 generic map (32) port map( aluoutsignal,readdata , memtoreg, writedatasignal );



pc <= pcsignal;
aluout <= aluoutsignal;
writedata <= srcb;

end Behavioral;

