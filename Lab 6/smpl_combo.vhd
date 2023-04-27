library IEEE;
use IEEE.std_logic_1164.all;
	   	   
entity smpl_combo is 

		   
	   port (	 
	   a , b, c : in std_logic;
	   x, y : out std_logic
	   
	   );
	   
	   end smpl_combo;
	   	   
architecture dataflow of smpl_combo is 

begin 
 
 x <= (  a and not b and not c ) or (not a and b and not c) or ( a and b and not c);
 
 y <= (a or b or c) and (a or not b or c) and (not a or b or c);
 
 end dataflow;
 