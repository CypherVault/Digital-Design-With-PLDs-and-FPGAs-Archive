
-- d:\Bkvhdl_progs\Chap01\half_subtractor\src\half_subtractor_tb.vhd

library	ieee;
use ieee.std_logic_1164.all;
--library lab01_half_subtractor;	--either these two statements
--use lab01_half_subtractor.all;	-- or use work.all will work
use work.all;


entity testbench is
end testbench;

architecture behavior of testbench is

	-- Declare local signals to assign values to and observe
	signal a_tb, b_tb, diff_tb, borrow_tb :  std_logic;
	
	begin
	-- Create an instance of the circuit to be tested
	uut: entity half_subtractor port map(a => a_tb, b => b_tb,
		diff => diff_tb, borrow => borrow_tb);
	
	-- Define a process to apply input stimulus and test outputs
	tb : process
		constant period: time := 20 ns;
		
		begin		-- Apply every possible input combination
		
		a_tb <= '0';	--apply input combination 00 and check outputs
		b_tb <= '0';
		wait for period;
		assert ((diff_tb = '0') and (borrow_tb = '0'))
		report "test failed for input combination 00" severity error;
		
		a_tb <= '0';	--apply input combination 01 and check outputs
		b_tb <= '1';
		wait for period;
		assert ((diff_tb = '1') and (borrow_tb = '1'))
		report "test failed for input combination 01" severity error;
		
		a_tb <= '1';	--apply input combination 10 and check outputs
		b_tb <= '0';
		wait for period;
		assert ((diff_tb = '1') and (borrow_tb = '0'))
		report "test failed for input combination 10" severity error;
		
		a_tb <= '1';	--apply input combination 11 and check outputs
		b_tb <= '1';
		wait for period;
		assert ((diff_tb = '0') and (borrow_tb = '1'))
		report "test failed for input combination 11" severity error;
		
		wait;	-- indefinitely suspend process
		
	end process;
	
end;