library IEEE;
use IEEE.std_logic_1164.all;

entity gray_bin_case_vect is
	
	port ( g: in std_logic_vector(3 downto 0); b: out std_logic_vector(3 downto 0));
	
end gray_bin_case_vect;		   


architecture case_statement of gray_bin_case_vect is
begin 
	process (g(0),g(1),g(2),g(3))
	begin 
		case std_logic_vector'(g(0),g(1),g(2),g(3)) is	 
			
			when "0011" | "1011" | "1111" | "0111" => b(3)<= '1';
			when "0101" |"1101" |"1001" | "0001" => b(3) <= '-';
			when others => b(3) <= '0';   
					   end case;
		
					   
			case std_logic_vector'(g(0),g(1),g(2),g(3)) is	 
			when "0110" | "1110" | "0010"| "1010"    => b(2)<= '1';  
			when "0101" |"1101" |"1001" |"0001" => b(2) <= '-';
			when others => b(2) <= '0';   
			end case;		  
			
			
			case std_logic_vector'(g(0),g(1),g(2),g(3)) is	 
			
			when "1100" | "0100" |"0010" | "1111" |"0111" | "1010" => b(1)<= '1';
			
			when "1101" |"0101"|"1001"|"0001" => b(1) <= '-';
			when others => b(1) <= '0';   						 
			end case;			
			
			case std_logic_vector'(g(0),g(1),g(2),g(3)) is	 
			
			when "1000"  |"0100" |"1110" |"0010"|"1011" => b(0)<= '1';	 
			when "1001" |"0101" |"1101" | "0001" =>  b(0)  <= '-';
			
			
			when others => b(0) <= '0';   
			
		end case;
	end process;
	end case_statement;