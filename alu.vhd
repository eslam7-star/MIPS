----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:10 04/23/2023 
-- Design Name: 
-- Module Name:    ALU_T - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_T is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end ALU_T;
architecture Behavioral of ALU_T is
SIGNAL Temp: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal BB: STD_LOGIC_VECTOR(31 downto 0);
signal res: STD_LOGIC_VECTOR(31 downto 0);

begin
BB <= (not data2) when (aluop(3 downto 2) = "01") else data2;
Temp <= data1 + BB + aluop(2);
res <= Temp when (aluop = "0010" or aluop = "0110") else 
data1 and data2 when (aluop = "0000") else
data1 or data2 when (aluop = "0001") else data1 nor data2 when (aluop = "1100") 
else ("0000000000000000000000000000000" & Temp(31)) when (aluop = "0111") else  x"00000000";
dataout<= res;
zflag <= '1' when res = x"00000000" else
	'0' ;
end Behavioral;

