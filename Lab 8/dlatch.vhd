-------------------------------------------------------------------------------
--
-- Title       : dlatch
-- Design      : lab_08
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : E:\382\lab_08\lab_08\src\dlatch.vhd
-- Generated   : Sun Apr  2 13:48:49 2023
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
--{entity {dlatch} architecture {behavior}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dlatch is
	 port(
		 d : in STD_LOGIC;
		 le_bar : in STD_LOGIC;
		 q1 : out STD_LOGIC
	     );
end dlatch;

--}} End of automatically maintained section

architecture behavior of dlatch is
begin
	
	dl: process (d, le_bar)
	begin 
		
		if le_bar = '0' then 
			q1 <= d;
		else 
			null;
			
		end if;
		
		end process dl;
	
end behavior;
