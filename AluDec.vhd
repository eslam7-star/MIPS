----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:12 05/09/2023 
-- Design Name: 
-- Module Name:    AluDec - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AluDec is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           ALuControl : out  STD_LOGIC_VECTOR (3 downto 0));
end AluDec;

architecture Behavioral of AluDec is
begin
process(aluop, funct) 
begin 
  case aluop is
    when "00" => AluControl <= "0010";
	 when "01" => AluControl <= "0110";
	 when others =>
	   case funct is 
		   when "100000" => AluControl <= "0010"; -- add
			when "100010" => AluControl <= "0110"; -- sub
         when "100100" => AluControl <= "0000"; -- and
			when "100101" => AluControl <= "0001"; -- or
			when "101010" => AluControl <= "0111"; -- sub
         when others => AluControl <= "----"; -- ?????
      end case;
  end case;
end process;		  
end Behavioral;