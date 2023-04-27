-------------------------------------------------------------------------------
--
-- Title       : gray_bin
-- Design      : GC2BConverter
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\Lab_03_GreyCode\GC2BConverter\src\gray_bin.vhd
-- Generated   : Sun Feb 12 16:26:19 2023
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
--{entity {gray_bin} architecture {gray_bin}}

library IEEE;
use IEEE.std_logic_1164.all;

entity gray_bin_cpos is
	 port(
		 g0 : in STD_LOGIC;
		 g1 : in STD_LOGIC;
		 g2 : in STD_LOGIC;
		 g3 : in STD_LOGIC;
		 b0 : out STD_LOGIC;
		 b1 : out STD_LOGIC;
		 b2 : out STD_LOGIC;
		 b3 : out STD_LOGIC
	     );				 
		 
		 			 attribute loc : string;
attribute loc of g3 : signal is "P3";
attribute loc of g2 : signal is "P4";
attribute loc of g1 : signal is "P5";
attribute loc of g0 : signal is "P6";
attribute loc of b3 : signal is "P27";
attribute loc of b2 : signal is "P26";
attribute loc of b1 : signal is "P25";
attribute loc of b0 : signal is "P24";

end gray_bin_cpos;

--}} End of automatically maintained section

architecture gray_bin_cpos of gray_bin_cpos is
begin
	
	b3 <= 		   ( G3 or g2 or g1 or g0 ) and ( G3 or g2 or g1 or not g0 ) and ( G3 or g2 or not g1 or not g0 ) and ( G3 or g2 or not g1 or g0 ) and ( G3 or not g2 or not g1 or g0 ) and ( G3 or not g2 or not g1 or not g0 ) and(  G3 or not g2 or g1 or not g0 ) and (  G3 or not g2 or  g1 or  g0 )  ;
	
	
	b2 <= ( G3 or g2 or g1 or g0 ) and ( G3 or g2 or g1 or not g0 ) and ( G3 or g2 or not g1 or not g0 ) and( G3 or g2 or not g1 or g0 ) and ( Not G3 or not g2 or g1 or g0 ) and ( Not G3 or not g2 or g1 or not g0 ) and ( Not G3 or not g2 or not g1 or not g0 ) and ( Not G3 or not g2 or not g1 or g0 );
	
	
	b1 <= ( G3 or  g2 or  g1 or g0 ) and ( G3 or g2 or g1 or not g0 ) and( G3 or not g2 or not g1 or g0 ) and( G3 or not g2 or not g1 or not g0 ) and( Not G3 or not g2 or g1 or g0 ) and( Not G3 or not g2 or g1 or not g0 ) and( Not G3 or g2 or not g1 or g0 ) and ( Not G3 or g2 or not g1 or not g0 ) ;
	
	b0 <= (  G3 or  g2 or  g1 or  g0 ) and(  G3 or  g2 or not g1 or not g0 ) and(  G3 or not g2 or not g1 or  g0 ) and( Not G3 or not g2 or  g1 or  g0 ) and( Not G3 or not g2 or not g1 or not g0 ) and( Not G3 or  g2 or not g1 or g0 ) and( Not G3 or  g2 or  g1 or not g0 );

end gray_bin_cpos;
