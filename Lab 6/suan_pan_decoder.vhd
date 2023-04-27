library IEEE;
use IEEE.std_logic_1164.all;

entity suan_pan is		

port ( 
sp : in std_logic_vector(8 downto 0);
d, c, b, a: out std_logic
);					 
attribute loc : string;
attribute loc of sp : signal is "P3,P4,P5,P14,P15,P16,P17,P18,P19 ";
attribute loc of d  : signal is "P43";
attribute loc of c  : signal is "P42";
attribute loc of b  : signal is "P41";
attribute loc of a  : signal is "P40";


end suan_pan;

architecture cond of suan_pan is 
begin 

d <= '1' when (sp="110111101") or (sp="101111101") else '0';

c <= '1'when (sp = "110111101") or (sp = "101011111" ) or ( sp = "101101111" ) or (sp = "101110111") else '0' ;

b <= '1' when (sp = "110110111") or (sp = "110111011") or (sp = "101101111") or 	(sp = "101110111")	else '0';

a <= '1' when (sp = "110101111") or (sp = "110111011") or (sp = "101011111") or (sp = "101110111") or  (sp = "101111101") else '0';

end cond;
	