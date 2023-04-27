 library IEEE;
use IEEE.std_logic_1164.all;

entity gray_bin_if_vect is
	
	port ( g: in std_logic_vector(3 downto 0); b: out std_logic_vector(3 downto 0));
	
end gray_bin_if_vect;		   


architecture if_statement of gray_bin_if_vect is
begin 
	process (g(3),g(2),g(1),g(0))
	begin 
		
		if ( g = "1100" ) then 
			b(3) <= '1';   
			elsif(	g = "1101" ) then
			b(3)   <= '1'	 ;	   
			elsif(	g = "1111" ) then
			b(3)   <= '1'		;	 
			elsif(	g = "1110" ) then
			b(3)   <= '1'	   	 ;
			elsif(	g = "1010" ) then
			b(3)   <= '-'		  ;
			elsif(	g = "1011" ) then
			b(3)   <= '-'		   ;
			elsif(	g = "1001" ) then
			b(3)   <= '-'		  	;
			elsif(	g = "1000" ) then
			b(3)   <= '-'			 ;
			else
			b(3) <= '0'  			  ;
		end if;		  
			if ( g = "0110" ) then 
			b(2) <= '1';   
			elsif(	g = "0111" ) then
			b (2)   <= '1';		 
			elsif(	g = "0101" ) then
			b (2)   <= '1';
			elsif(	g = "0100" ) then
			b (2)   <= '1';
			elsif(	g = "1010" ) then
			b (2)   <= '-';
			elsif(	g = "1011" ) then
			b (2)   <= '-';		   
			elsif(	g = "1001" ) then
			b (2)   <= '-';
			elsif(	g = "1000" ) then
			b (2)   <= '-';
		else
			b(2) <= '0';
					   end if;
			if ( g = "0011" ) then 
			b(1) <= '1';   
			elsif(	g = "0010" ) then
			b (1)   <= '1';		 
			elsif(	g = "0101" ) then
			b (1)   <= '1';
			elsif(	g = "0100" ) then
			b (1)   <= '1';
			elsif(	g = "1111" ) then
			b (1)   <= '1';	
			elsif(	g = "1110" ) then
			b (1)   <= '1';
			elsif(	g = "1011" ) then
			b (1)   <= '-';	  
			elsif(	g = "1010" ) then
			b (1)   <= '-';
			elsif(	g = "1001" ) then
			b (1)   <= '-';
			elsif(	g = "1000" ) then
			b (1)   <= '-';
		else
			b(1) <= '0';		
			end if;
			if ( g = "1110" ) then 
			b(0) <= '1';   
			elsif(	g = "1101" ) then
			b (0)   <= '1';		 
			elsif(	g = "0001" ) then
			b (0)   <= '1';
			elsif(	g = "0010" ) then
			b (0)   <= '1';	
			elsif(	g = "0111" ) then
			b (0)   <= '1';
			elsif(	g = "0100" ) then
			b (0)   <= '1';	
			
			
			elsif(	g = "1001" ) then
			b (0)   <= '-';
			elsif(	g = "1010" ) then
			b (0)   <= '-';		   
			elsif(	g = "1011" ) then
			b (0)   <= '-';
			elsif(	g = "1000" ) then
			b (0)   <= '-';
		else
			b(0) <= '0';
					   end if;
					   
	end process;
	end if_statement;