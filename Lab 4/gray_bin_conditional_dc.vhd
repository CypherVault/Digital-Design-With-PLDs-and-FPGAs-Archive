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

entity gray_bin_conditional_dc is		 
	
	port ( g: in std_logic_vector(3 downto 0); b: out std_logic_vector(3 downto 0));
attribute loc : string;
attribute loc of g : signal is "P3, P4, P5, P6";
attribute loc of b : signal is "P27, P26, P25, P24";


end gray_bin_conditional_dc;

--}} End of automatically maintained section

architecture conditional_dc of gray_bin_conditional_dc is
begin
		
process (g(0),g(1),g(2),g(3))
		begin
				case std_logic_vector'(g(0),g(1),g(2),g(3)) is
					when "0011" | "1011" | "1111" | "0111" => b(3) <= '1';
							when "0101" |"1101" |"1001" | "0001" => b(3) <= '-';
					when others => b(3) <= '0';
				end case; 
				
				
				case std_logic_vector'(g(0),g(1),g(2),g(3)) is
					when "0110" | "1110" | "1010" | "0010" => b(2) <= '1';
							when"0101" |"1101" |"1001" |"0001" => b(2) <= '-';
					when others => b(2) <= '0';
				end case; 
				
				case std_logic_vector'(g(0),g(1),g(2),g(3)) is
					when "1100" | "0100" | "1010" |"0010" |"1111" |"0111" => b(1) <= '1';
							when "1101" |"0101" |"1001" |"0001" => b(1) <= '-';
					when others => b(1) <= '0';
				end case; 
				
				case std_logic_vector'(g(0),g(1),g(2),g(3)) is
					when "0111" |"1011" |"1000" |"0100" |"1110" |"0010" => b(0) <= '1';
							when "1001" |"0101" |"1101" |"0001" => b(0) <= '-';
					when others => b(0) <= '0';
				end case; 
				
				
end process;	

end conditional_dc;	   

					