-------------------------------------------------------------------------------
--
-- Title       : dff
-- Design      : lab_08
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : E:\382\lab_08\lab_08\src\dff.vhd
-- Generated   : Sun Apr  2 13:49:52 2023
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
--{entity {dff} architecture {behavior}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
	 port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 qff : out STD_LOGIC
	     );
end dff;

--}} End of automatically maintained section

architecture behavior of dff is
begin
	
	  	df: process (d, clk)
	begin 
		
		if clk = '1' then 
			qff <= d;
		else 
			null;
			
		end if;
		
		end process df;
	
	
end behavior;
