--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:09:50 04/26/2023
-- Design Name:   
-- Module Name:   C:/Users/SIVEEN/Desktop/zeft/MIPS/newtestreg.vhd
-- Project Name:  MIPS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regfile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY newtestreg IS
END newtestreg;
 
ARCHITECTURE behavior OF newtestreg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regfile
    PORT(
         read_seL1 : IN  std_logic_vector(4 downto 0);
         read_seL2 : IN  std_logic_vector(4 downto 0);
         write_seL : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk,rst : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal read_seL1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_seL2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_seL : std_logic_vector(4 downto 0) := (others => '0');
   signal write_ena : std_logic := '0';
   signal clk : std_logic := '0';
	signal rst : std_logic := '0';
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal data1 : std_logic_vector(31 downto 0);
   signal data2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regfile PORT MAP (
          read_seL1 => read_seL1,
          read_seL2 => read_seL2,
          write_seL => write_seL,
          write_ena => write_ena,
          clk => clk,
			 rst => rst,
          write_data => write_data,
          data1 => data1,
          data2 => data2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
	begin
  wait for clk_period - 3ps;
			
		--Write value in $t0
			write_sel <= "01000" ; --$t0
			write_data <= "00001111000011110000111100001111" ;
			write_ena <= '1' ;
			wait for clk_period * 1;

		--Write value in $s0
			write_sel <= "10000" ; --$s0
			write_data <= "11110000111100001111000011110000" ;
			write_ena <= '1' ;
			wait for clk_period * 1;

		--Read data from $t0 and $s0
			read_sel1 <= "01000" ; --$t0
			read_sel2 <= "10000" ; --$s0
			write_ena <= '1' ;
			wait for clk_period * 2;
			
			report "Test1";
			assert(data1 = "00001111000011110000111100001111") report "1:Fail" severity error;
			report "Test2";
			assert(data2 = "11110000111100001111000011110000") report "2:Fail" severity error;
			
			wait for clk_period * 1 ;

		--Read data from $t0 and $s0 and write new data in $t0
			read_sel1 <= "01000" ; --$t0
			read_sel2 <= "10000" ; --$s0
			write_sel <= "01000" ; --$t0
			write_data <= "00000000000000000000000000000000" ;
			write_ena <= '1' ;

			wait for clk_period * 2;
			
			report "Test3";
			assert(data1 = "00000000000000000000000000000000") report "3:Fail" severity error;
			report "Test4";
			assert(data2 = "11110000111100001111000011110000") report "4:Fail" severity error;
		-- insert stimulus here 
		report "Test Complete";
      wait;
		end process;
   
		end;