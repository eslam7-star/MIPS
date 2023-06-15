----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:06 05/12/2023 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
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
use work.DataPathPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MIPS is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			    PC : out  STD_LOGIC_VECTOR (31 downto 0);
           INSTR : in  STD_LOGIC_VECTOR (31 downto 0);
			  MEMWRITE : out  STD_LOGIC;
           ALUOUT : out  STD_LOGIC_VECTOR (31 downto 0);
			  WRITEDATA : out  STD_LOGIC_VECTOR (31 downto 0);
			   READDATA : in  STD_LOGIC_VECTOR (31 downto 0));
           
end MIPS;

architecture Behavioral of MIPS is
signal memtoreg, alusrc, regdst, regwrite, jump, pcsrc: STD_LOGIC;
SIGNAL zero: STD_LOGIC;
Signal alucontrol: STD_LOGIC_VECTOR (3 downto 0);

begin
Cont: Controller port map ( instr(31 downto 26),instr( 5 downto 0 ),zero,memtoreg,
MEMWRITE,pcsrc,alusrc,regdst,regwrite,jump,alucontrol);
data: dataPath port map ( clk, rst, readdata,instr,
 memtoreg, pcsrc, alusrc, regwrite, regdst,jump, alucontrol, zero, PC, ALUOUT,WRITEDATA);

end Behavioral;

