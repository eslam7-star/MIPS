--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package DataPathPackage is

component adder is
   port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
           y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component sl2 is
   port(a: in STD_LOGIC_VECTOR(31 downto 0);
        y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component signext is
   port(a: in STD_LOGIC_VECTOR(15 downto 0);
	y: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component flopr generic(n : NATURAL := 32);
	port(clk, reset: in STD_LOGIC;
	d: in STD_LOGIC_VECTOR(n-1 downto 0);
	q: out STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component mux2 generic(n : NATURAL := 32);
	port(d0: in STD_LOGIC_VECTOR(n-1 downto 0);
	d1: in STD_LOGIC_VECTOR(n-1 downto 0);
	s: in STD_LOGIC;
	y: out STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component ALU_T is 
	port(data1, data2: in STD_LOGIC_VECTOR(31 downto 0);
	aluop: in STD_LOGIC_VECTOR(3 downto 0);
	dataout: out STD_LOGIC_VECTOR(31 downto 0);
	zflag: out STD_LOGIC);
end component;

component flp is

    Port ( clk : in  STD_LOGIC;
	 L : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component dec_5x32 is
    Port ( din : in  STD_LOGIC_VECTOR (4 downto 0);
       dout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component MUX is
    Port ( s : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           I0 : in  STD_LOGIC_VECTOR (31 downto 0);
           I1 : in  STD_LOGIC_VECTOR (31 downto 0);
           I2 : in  STD_LOGIC_VECTOR (31 downto 0);
           I3 : in  STD_LOGIC_VECTOR (31 downto 0);
           I4 : in  STD_LOGIC_VECTOR (31 downto 0);
           I5 : in  STD_LOGIC_VECTOR (31 downto 0);
           I6 : in  STD_LOGIC_VECTOR (31 downto 0);
           I7 : in  STD_LOGIC_VECTOR (31 downto 0);
           I8 : in  STD_LOGIC_VECTOR (31 downto 0);
           I9 : in  STD_LOGIC_VECTOR (31 downto 0);
           I10 : in  STD_LOGIC_VECTOR (31 downto 0);
           I11 : in  STD_LOGIC_VECTOR (31 downto 0);
           I12 : in  STD_LOGIC_VECTOR (31 downto 0);
           I13 : in  STD_LOGIC_VECTOR (31 downto 0);
           I14 : in  STD_LOGIC_VECTOR (31 downto 0);
           I15 : in  STD_LOGIC_VECTOR (31 downto 0);
           I16 : in  STD_LOGIC_VECTOR (31 downto 0);
           I17 : in  STD_LOGIC_VECTOR (31 downto 0);
           I18 : in  STD_LOGIC_VECTOR (31 downto 0);
           I19 : in  STD_LOGIC_VECTOR (31 downto 0);
           I20 : in  STD_LOGIC_VECTOR (31 downto 0);
           I21 : in  STD_LOGIC_VECTOR (31 downto 0);
           I22 : in  STD_LOGIC_VECTOR (31 downto 0);
           I23 : in  STD_LOGIC_VECTOR (31 downto 0);
           I24 : in  STD_LOGIC_VECTOR (31 downto 0);
           I25 : in  STD_LOGIC_VECTOR (31 downto 0);
           I26 : in  STD_LOGIC_VECTOR (31 downto 0);
           I27 : in  STD_LOGIC_VECTOR (31 downto 0);
           I28 : in  STD_LOGIC_VECTOR (31 downto 0);
           I29 : in  STD_LOGIC_VECTOR (31 downto 0);
           I30 : in  STD_LOGIC_VECTOR (31 downto 0);
           I31 : in  STD_LOGIC_VECTOR (31 downto 0));
end component;

component regfile is port(
read_seL1 : in std_logic_vector(4 downto 0); 
read_seL2 : in std_logic_vector(4 downto 0); 
write_seL : in std_logic_vector(4 downto 0); 
WRITE_ENA : in std_logic ;
clk,rst: in std_logic ;
write_data: in std_logic_vector(31 downto 0); 
data1: out std_logic_vector(31 downto 0); 
data2: out std_logic_vector(31 downto 0));
end component;

component maindec is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component AluDec is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           ALuControl : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Controller is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           pcsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component dataPath is 
 port(clk, reset: in STD_LOGIC;
	 readdata: in STD_LOGIC_VECTOR(31 downto 0);  
    instr: in STD_LOGIC_VECTOR(31 downto 0);
    memtoreg, pcsrc,alusrc,regwrite, regdst: in STD_LOGIC;
    jump : in  STD_LOGIC;
	 aluoperation: in STD_LOGIC_VECTOR(3 downto 0);
	 zero: out STD_LOGIC;
	 pc: out STD_LOGIC_VECTOR(31 downto 0);
    aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0)
	 );
	 end component;
	 component MIPS is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			    PC : out  STD_LOGIC_VECTOR (31 downto 0);
           INSTR : in  STD_LOGIC_VECTOR (31 downto 0);
			  MEMWRITE : out  STD_LOGIC;
           ALUOUT : out  STD_LOGIC_VECTOR (31 downto 0);
			  WRITEDATA : out  STD_LOGIC_VECTOR (31 downto 0);
			   READDATA : in  STD_LOGIC_VECTOR (31 downto 0));
           
end component;
component dmem is -- data memory
port(clk, we: in STD_LOGIC;
a, wd: in STD_LOGIC_VECTOR (31 downto 0);
rd: out STD_LOGIC_VECTOR (31 downto 0));
end component;
component imem is -- instruction memory
port(a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;


	 


end DataPathPackage;


