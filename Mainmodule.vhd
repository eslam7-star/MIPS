----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:55 05/12/2023 
-- Design Name: 
-- Module Name:    Mainmodule - Behavioral 
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
--hello hna
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.DataPathPackage.all;

entity mainmodule is 
port(clk, reset: in STD_LOGIC;
writedata, dataadr: out  STD_LOGIC_VECTOR(31 downto 0);
memwrite: out STD_LOGIC);
end;

architecture struct of mainmodule is
signal pc, instr, readdata ,dataadrt,writedatat: STD_LOGIC_VECTOR(31 downto 0);
signal memwritet:  STD_LOGIC;
begin
m:mips port map(clk, reset, pc, instr, memwritet, dataadrt, writedatat, readdata);
dm:dmem port map(clk, memwritet, dataadrt, writedatat, readdata);
im:imem port map(pc(7 downto 2), instr);
dataadr <= dataadrt;
memwrite <= memwritet;
writedata <= writedatat;
end;

