
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;



entity flp is

    Port ( clk : in  STD_LOGIC;
	 L : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end flp;

architecture Behavioral of flp is

begin

process (clk, rst)
begin

if (rst ='1') then q <=(others => '0');
Elsif (rising_edge(clk) ) THEN
if (L='1') then Q<=D; end if;
 END IF ; 
 
end process; 

end Behavioral;

