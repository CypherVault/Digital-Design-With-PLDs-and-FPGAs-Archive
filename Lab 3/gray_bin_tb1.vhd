-- Non-self-checking testbench for 4-bit Gray-to-binary decoder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	-- package containing to_unsigned function
use work.all;

entity gray_bin_tb is
end gray_bin_tb;

architecture non_self_checking of gray_bin_tb is

	-- Stimulus signals
	signal g3_tb, g2_tb, g1_tb, g0_tb : std_logic;
	-- Observed signals
	signal b3_tb, b2_tb, b1_tb, b0_tb : std_logic;

	constant period : time := 20ns;	-- time between application
									-- of input stimulus combinations

begin
	-- Unit Under Test port map
	uut : entity gray_bin_cpos
		port map (
			g3 => g3_tb,	-- UUT port => local_signal
			g2 => g2_tb,
			g1 => g1_tb,
			g0 => g0_tb,
			b3 => b3_tb,
			b2 => b2_tb,
			b1 => b1_tb,
			b0 => b0_tb
		);					
		
		

	stimulus: process
	begin
		-- Loop to apply input vectors from "0000" to "1111"
		-- in a binary count sequence.
		for i in 0 to 15 loop
			(g3_tb, g2_tb, g1_tb, g0_tb) <= to_unsigned(i, 4);
			wait for period;
		end loop;
		std.env.finish;
	end process;
	
end non_self_checking;


