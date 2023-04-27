library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity gray_bin_loop_tb is
	
end gray_bin_loop_tb;


architecture tb_architecture of gray_bin_loop_tb is

signal g : std_logic_vector(3 downto 0);
signal b : std_logic_vector(3 downto 0);

constant period: time := 20ns;

begin 
	UUT : entity gray_bin_loop
		port map ( g=> g, b=> b );
		
		stimulus : process
		begin
			
			for i in 0 to 15 loop
				g <= std_logic_vector(to_unsigned(i, 4));
				wait for period;
				assert ((b(3) = g(3)) and (b(2) = (g(3) xor g(2))) and (b(1) = ((g(3) xor g(2)) xor g(1))) and (b(0) = (((g(3) xor g(2)) xor g(1)) xor g(0))))
				report "error for input" & to_string(g)
					& " output was " & to_string(b)
					& ", output was supposed to be " & to_string((g(3) , (g(3) xor g(2)), ((g(3) xor g(2)) xor g(1)), (((g(3) xor g(2)) xor g(1)) xor g(0)))) & "."
					severity error;
					
				end loop;
				wait;
			end	process;
			
			end   tb_architecture;