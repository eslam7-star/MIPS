library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
USE ieee.numeric_std.ALL;
use work.DataPathPackage.all;


entity regfile is port(
read_seL1 : in std_logic_vector(4 downto 0); 
read_seL2 : in std_logic_vector(4 downto 0); 
write_seL : in std_logic_vector(4 downto 0); 
WRITE_ENA : in std_logic ;
clk,rst: in std_logic ;
write_data: in std_logic_vector(31 downto 0); 
data1: out std_logic_vector(31 downto 0); 
data2: out std_logic_vector(31 downto 0));
end regfile;

architecture Behavioral of regfile is
SIGNAL Tmp1,Tmp2,Tmp3,Tmp4,Tmp5,Tmp6,Tmp7,Tmp8,Tmp9,Tmp10,Tmp11,Tmp12,Tmp13,Tmp14,Tmp15,Tmp16,Tmp17,Tmp18,Tmp19,Tmp20
,Tmp21,Tmp22,Tmp23,Tmp24,Tmp25,Tmp26,Tmp27,Tmp28,Tmp29,Tmp30,Tmp31,Tmp32: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL OUTD: STD_LOGIC_VECTOR (31 DOWNTO 0);
 


begin
DeMAP : dec_5x32 port map( write_seL , OUTD );

ata1M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(0),RST,write_data,Tmp1);
ata2M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(1),RST,write_data,Tmp2);
ata3M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(2),RST,write_data,Tmp3);
ata4M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(3),RST,write_data,Tmp4);
ata5M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(4),RST,write_data,Tmp5);
ata6M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(5),RST,write_data,Tmp6);
ata7M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(6),RST,write_data,Tmp7);
ata8M: flp PORT MAP (clk,WRITE_ENA AND OUTD(7),RST,write_data,Tmp8);
ata9M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(8),RST,write_data,Tmp9);
ata10M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(9),RST,write_data,Tmp10);
ata11M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(10),RST,write_data,Tmp11);
ata12M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(11),RST,write_data,Tmp12);
ata13M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(12),RST,write_data,Tmp13);
ata14M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(13),RST,write_data,Tmp14);
ata15M: flp PORT MAP (clk,WRITE_ENA AND OUTD(14),RST,write_data,Tmp15);
ata16M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(15),RST,write_data,Tmp16);
ata17M: flp PORT MAP (clk,WRITE_ENA AND OUTD(16),RST,write_data,Tmp17);
ata18M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(17),RST,write_data,Tmp18);
ata19M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(18),RST,write_data,Tmp19);
ata20M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(19),RST,write_data,Tmp20);
ata21M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(20),RST,write_data,Tmp21);
ata22M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(21),RST,write_data,Tmp22);
ata23M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(22),RST,write_data,Tmp23);
ata24M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(23),RST,write_data,Tmp24);
ata25M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(24),RST,write_data,Tmp25);
ata26M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(25),RST,write_data,Tmp26);
ata27M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(26),RST,write_data,Tmp27);
ata28M: flp PORT MAP (clk,WRITE_ENA AND OUTD(27),RST,write_data,Tmp28);
ata29M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(28),RST,write_data,Tmp29);
ata30M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(29),RST,write_data,Tmp30);
ata31M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(30),RST,write_data,Tmp31);
ata32M: flp  PORT MAP (clk,WRITE_ENA AND OUTD(31),RST,write_data,Tmp32);



MUX21: MUX PORT MAP (read_seL1,DATA1, Tmp1,Tmp2,Tmp3,Tmp4,Tmp5,Tmp6,Tmp7,Tmp8,Tmp9,Tmp10,Tmp11,Tmp12,Tmp13,Tmp14,Tmp15,Tmp16
,Tmp17,Tmp18,Tmp19,Tmp20,Tmp21,Tmp22,Tmp23,Tmp24,Tmp25,Tmp26,Tmp27,Tmp28,Tmp29,Tmp30,Tmp31,Tmp32);

MUX12: MUX PORT MAP (read_seL2,DATA2,Tmp1,Tmp2,Tmp3,Tmp4,Tmp5,Tmp6,Tmp7,Tmp8,Tmp9,Tmp10,Tmp11,Tmp12,Tmp13,Tmp14,Tmp15,Tmp16
,Tmp17,Tmp18,Tmp19,Tmp20,Tmp21,Tmp22,Tmp23,Tmp24,Tmp25,Tmp26,Tmp27,Tmp28,Tmp29,Tmp30,Tmp31,Tmp32);


end Behavioral;

