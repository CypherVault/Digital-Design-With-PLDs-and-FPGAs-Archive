 library IEEE;
use IEEE.std_logic_1164.all;

entity gray_bin_loop is
	
	port ( g: in std_logic_vector(3 downto 0); b: out std_logic_vector(3 downto 0));
	
attribute loc : string;
attribute loc of g : signal is "P3, P4, P5, P6";
attribute loc of b : signal is "P27, P26, P25, P24";


end gray_bin_loop;		   


architecture gray_loop of gray_bin_loop is
begin 
	comp: process (g(0),g(1),g(2),g(3))
	
	
	variable bout : std_logic_vector( 3 downto 0 );
	
	begin 	 
		
		
	for index in 3 downto 0 loop
		
		if (index=3) then bout(index) := g(index);
	
		else bout(index) := bout(index+1) xor g(index);
		
		   end if;
		
	end loop;
	
	b <= bout;
		
		
	end process;
	
 end gray_loop;