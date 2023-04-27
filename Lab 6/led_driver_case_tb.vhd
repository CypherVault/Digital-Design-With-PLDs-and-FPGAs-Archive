
library	ieee;
use ieee.std_logic_1164.all;
--library lab01_half_adder;	--either these two statements
--use lab01_half_adder.all;	-- or use work.all will work
use work.all;


entity testbench is
end testbench;

architecture behavior of testbench is	 
signal a_tb, b_tb, d_tb, c_tb, cold_tb, norm_tb, hot_tb : std_logic;

begin 						  
	
	uut : entity led_driver port map ( adc => (a_tb, b_tb, c_tb, d_tb), cold => cold_tb, normal => norm_tb, hot => hot_tb );
		
	process
begin 
		
		case std_logic_vector'(a_tb,b_tb,c_tb,d_tb) is 
			when  "0000" => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
			when  "0001"  => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "0010"  => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "0011"  => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
			when  "0100"  => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
			when  "0101"  => assert ((cold_tb = '1') and (norm_tb = '0') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "0110"  => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "0111"  => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "1000"  => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
			when  "1001"  => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "1010" => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;
			when  "1011" =>assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
			when  "1100" => assert ((cold_tb = '0') and (norm_tb = '1') and (hot_tb = '0')) report "test failed for input combination 000" severity error;	  
				  
				when others =>assert ((cold_tb = '0') and (norm_tb = '0') and (hot_tb = '1')) report "test failed for input combination 000" severity error;	 
			end case;
		end process;
	end behavior;
			