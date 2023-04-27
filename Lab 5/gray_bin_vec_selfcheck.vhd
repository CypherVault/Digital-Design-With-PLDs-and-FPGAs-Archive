																 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity gray_bin_table_lookup_selfcheck_tb is
end gray_bin_table_lookup_selfcheck_tb;

architecture tb_architecture of gray_bin_table_lookup_selfcheck_tb is

	-- Stimulus signals
	signal g: std_logic_vector(3 downto 0);
					 
	-- Observed signals
	signal b : std_logic_vector(3 downto 0);

	constant period: time := 20ns;

begin

	-- Unit Under Test port map
	UUT : entity gray_bin_case_vect
		port map (g(3)=> g(3), g(2) => g(2), g(1) => g(1), g(0) => g(0),
			b(3) => b(3), b(2) => b(2), b(1) => b(1), b(0) => b(0)
		);

	stimulus: process
	begin
		for i in 0 to 15 loop	 -- generate all integer values of i from 0 to 15
			-- convert i to a vector of std_logic elements and assign to g3, g2, g1, g0
			(g(3), g(2), g(1), g(0)) <= to_unsigned(i, 4);
			wait for period;	-- wait for outputs to settle
			-- verify outputs  
			assert ((b(3)= g(3)) and (b(2) = (g(3) xor g(2))) and
			(b(1) = ((g(3) xor g(2)) xor g(1))) and (b(0) = (((g(3) xor g(2)) xor g(1)) xor g(0))))
			report "Error for input " & to_string(unsigned'(g(3), g(2), g(1), g(0))) & "."
				severity error;
			
		end loop;
		std.env.finish;	--stop simulation
	end process;

end tb_architecture;


			