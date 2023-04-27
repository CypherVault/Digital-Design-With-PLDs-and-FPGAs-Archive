-------------------------------------------------------------------------------
--
-- Title       : half_subtractor
-- Design      : Lab01_half_subtractor
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : Z:\ESE Work\382 Design\Lab01_half_subtractor\Lab01_half_subtractor\src\half_subtractor.vhd
-- Generated   : Mon Jan 30 23:48:45 2023
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
--{entity {half_subtractor} architecture {dataflow}}

library IEEE;
use IEEE.std_logic_1164.all;

entity half_subtractor is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 diff : out STD_LOGIC;
		 borrow : out STD_LOGIC
	     );
end half_subtractor;

--}} End of automatically maintained section

architecture dataflow of half_subtractor is
begin

	-- enter your statements here -- 
	
diff <= (not a and b) or (a and not b);
borrow <= not a and b;

end dataflow;
