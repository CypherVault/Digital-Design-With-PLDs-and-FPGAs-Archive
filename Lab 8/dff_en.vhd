-------------------------------------------------------------------------------
--
-- Title       : dff_en
-- Design      : lab_08
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : E:\382\lab_08\lab_08\src\dff_en.vhd
-- Generated   : Sun Apr  2 13:58:12 2023
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
--{entity {dff_en} architecture {behavioral}}

library IEEE;
use IEEE.std_logic_1164.all;

entity dff_en is
	 port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 en : in STD_LOGIC;
		 reset_bar : in STD_LOGIC;
		 q : out STD_LOGIC
	     );
end dff_en;

--}} End of automatically maintained section

architecture behavioral of dff_en is
begin			 
  dff: process (reset_bar, clk, en)
  begin  
	  if reset_bar = '0' then
		  q <= '0';
	  else 	 
		  if rising_edge(clk) and en = '1' then
			  q <= d;
			  
		  else 
			  null;	
		  end if;
		  
		  end if;
		  
	
			   end process dff;
	
end behavioral;
