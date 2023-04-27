-------------------------------------------------------------------------------
--
-- Title       : half_adder
-- Design      : Lab01_half_adder
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : Z:\ESE Work\382 Design\Lab01_half_adder\Lab01_half_adder\src\half_adder.vhd
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
--{entity {half_adder} architecture {dataflow}}

library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 sum : out STD_LOGIC;
		 carry : out STD_LOGIC
	     );
end half_adder;

--}} End of automatically maintained section

architecture dataflow of half_adder is
begin

	-- enter your statements here -- 
	
sum <= (not a and b) or (a and not b);
carry <= a and b;

end dataflow;
