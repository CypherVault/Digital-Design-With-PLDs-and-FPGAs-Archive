-------------------------------------------------------------------------------
--
-- Title       : gray_bin
-- Design      : gray_bin_selected
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\gray_to_binary_2\gray_bin_selected\src\gray_bin_conditional_dc.vhd
-- Generated   : Tue Feb 21 20:05:36 2023
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {gray_bin} architecture {conditional_dc}}

		  
library IEEE;
use IEEE.std_logic_1164.all;  

use ieee.numeric_std.all;

entity gray_bin_table_lookup is		 
	
port ( g: in std_logic_vector(3 downto 0); b: out std_logic_vector(3 downto 0));
	
end gray_bin_table_lookup;



architecture table_lookup of gray_bin_table_lookup is

			type truth_table is array (0 to 15) of std_logic_vector;
			
			constant b_out : truth_table := ("0000","0001","0011","0010","0111","0110","0100","0101","----","----","----","----", "1000", "1001", "1011", "1010"  ) ;	
			
										
begin

b <= b_out(to_integer(unsigned'(g(3),g(2),g(1),g(0))));

end table_lookup;

	
		   
