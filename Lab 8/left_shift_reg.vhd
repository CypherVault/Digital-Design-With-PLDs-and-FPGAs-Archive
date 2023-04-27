-------------------------------------------------------------------------------
--
-- Title       : left_shift_reg
-- Design      : lab_08
-- Author      : Chris
-- Company     : Stonybrook
--
-------------------------------------------------------------------------------
--
-- File        : E:\382\lab_08\lab_08\src\left_shift_reg
-- Generated   : Sun Apr  2 13:48:49 2023
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
   

library IEEE;
use IEEE.std_logic_1164.all;
	 
entity left_shift_reg is
 port(
 		d : in std_logic_vector(3 downto 0); -- parallel input data
 		load : in std_logic; -- synchronous load parallel input 
 		en_shift : in std_logic; -- enable shift if load is unasserted
 		clk : in std_logic; -- clk
 		rst_bar : in std_logic; -- asynchronous reset
 
		serial_out : out std_logic -- serial output
 );
end left_shift_reg;				

			  
architecture behavior of left_shift_reg is


	signal data : std_logic_vector (3 downto 0);
	signal shifted : std_logic_vector (2 downto 0);

begin				  

	
	
	
	process (d, load, en_shift, rst_bar, clk)
	
	begin
		
		if rst_bar = '0' then
			data(3) <= '0';	  
			data(2) <= '0';
			data(1) <= '0';
			data(0) <= '0';
			serial_out <= '0';
		  else 
			 if load = '0' and en_shift = '1' and rising_edge(clk) then
				data <= d;
				data <= data(2 downto 0) & '0'; --SLCING AND CONCATENATION
				serial_out <= data(3);
				
			elsif load = '1' and en_shift = '0' and rising_edge(clk) then	
				data <= d;
				serial_out <= data(3);
			
			elsif load = '0' and en_shift = '0' and rising_edge(clk) then
				   serial_out <= data(3);
			else
				null;
			
			end if;	
		 
	
		end if;
		
		end process;
	
	
end behavior;
