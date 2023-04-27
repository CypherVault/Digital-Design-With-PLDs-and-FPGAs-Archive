-- d:\Bkvhdl_progs\Chap01\half_adder\src\half_adder_tb.vhd

library	ieee;
use ieee.std_logic_1164.all;
--library lab01_half_adder;	--either these two statements
--use lab01_half_adder.all;	-- or use work.all will work
use work.all;


entity testbench is
end testbench;

architecture behavior of testbench is

	-- Declare local signals to assign values to and observe
	signal a_tb, b_tb, c_tb, x_tb, y_tb :  std_logic;
	
	begin
	-- Create an instance of the circuit to be tested
	uut: entity smpl_combo port map(a => a_tb,c => c_tb, b => b_tb,
		x => x_tb, y => y_tb);
	
	-- Define a process to apply input stimulus and test outputs
	tb : process
		constant period: time := 20 ns;
		
		begin		-- Apply every possible input combination
		
		a_tb <= '0';	--apply input combination 00 and check outputs
		b_tb <= '0';
		c_tb <= '0';
		wait for period;
		assert ((x_tb = '1') and (y_tb = '0'))
		report "test failed for input combination 000" severity error;
		
		a_tb <= '0';	--apply input combination 00 and check outputs
		b_tb <= '0';
		c_tb <= '1';
		wait for period;
		assert ((x_tb = '0') and (y_tb = '1'))
		report "test failed for input combination 001" severity error;
		
		a_tb <= '0';	--apply input combination 00 and check outputs
		b_tb <= '1';
		c_tb <= '0';
		wait for period;
		assert ((x_tb = '1') and (y_tb = '0'))
		report "test failed for input combination 010" severity error;
		
		a_tb <= '0';	--apply input combination 00 and check outputs
		b_tb <= '1';
		c_tb <= '1';
		wait for period;
		assert ((x_tb = '0') and (y_tb = '1'))
		report "test failed for input combination 011" severity error;
		
		a_tb <= '1';	--apply input combination 00 and check outputs
		b_tb <= '0';
		c_tb <= '0';
		wait for period;
		assert ((x_tb = '0') and (y_tb = '0'))
		report "test failed for input combination 100" severity error;
		
		a_tb <= '1';	--apply input combination 00 and check outputs
		b_tb <= '0';
		c_tb <= '1';
		wait for period;
		assert ((x_tb = '0') and (y_tb = '1'))
		report "test failed for input combination 101" severity error;
			
		a_tb <= '1';	--apply input combination 00 and check outputs
		b_tb <= '1';
		c_tb <= '0';
		wait for period;
		assert ((x_tb = '1') and (y_tb = '1'))
		report "test failed for input combination 110" severity error;
		
		a_tb <= '1';	--apply input combination 00 and check outputs
		b_tb <= '1';
		c_tb <= '1';
		wait for period;
		assert ((x_tb = '0') and (y_tb = '1'))
		report "test failed for input combination 111" severity error;
		
			
		wait;	-- indefinitely suspend process
		
	end process;
	
end;