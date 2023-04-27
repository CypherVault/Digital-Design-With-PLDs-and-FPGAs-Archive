-------------------------------------------------------------------------------
--
-- Title       : latch_vs_ff
-- Design      : lab_08
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : E:\382\lab_08\lab_08\src\latch_vs_ff.vhd
-- Generated   : Sun Apr  2 13:51:17 2023
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
--{entity {latch_vs_ff} architecture {structural}}
	
	
------------------------------------------------------------DLATCH
library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

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
	
	
	   
library IEEE;
use IEEE.std_logic_1164.all;
use work.all;

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
		
		if rising_edge(clk) then 
			qff <= d;
		else 
			null;
			
		end if;
		
		end process df;
	
	
end behavior;


--------------latchvsflipfop
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;  	 
use work.all;
  entity latch_vs_flip_flop is
port(
		d : in std_logic; -- data input
		clk : in std_logic; -- clock input
		ql : out std_logic; -- latch output
		qff : out std_logic -- flip-flop output
);
end latch_vs_flip_flop;

--}} End of automatically maintained section

architecture structural of latch_vs_flip_flop is
begin	   	 
	
	
												   	
 dl : entity dlatch  port map (	d => d , le_bar => clk, q1 => ql);  	
	 

												   	
 df : entity dff  port map ( d => d , clk => clk, qff => qff);  	
	 		
				   	


end structural;		 


		  