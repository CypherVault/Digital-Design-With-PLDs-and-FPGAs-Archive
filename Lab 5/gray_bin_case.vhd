library IEEE;
use IEEE.std_logic_1164.all;

entity gray_bin_case is
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
end gray_bin_case;		   


architecture case_statement of gray_bin_case is
begin 
	process (g0,g1,g2,g3,b0,b1,b2,b3)
	begin 
		case std_logic_vector'(g3,g2,g1,g0) is	 
			
			when "1100" | "1101" | "1111" | "1110" |"1010" |"1011" |"1001" | "1000"  => b3 <= '1';
			when others => b3 <= '0';   
			
			end case;
					case std_logic_vector'(g0,g1,g2,g3) is	 
			when "0110" | "1110" | "1010" | "0010" |"0101" |"1101" |"1001" |"0001" => b2 <= '1';
			when others => b2 <= '0'; 	   
						   end case;
			
			case std_logic_vector'(g0,g1,g2,g3) is	 
			when "1100" | "0100" | "1010" |"0010" |"1111" |"0111" |"1001" |"0001" => b1 <= '1';
			when others => b1 <= '0';  
			
			end case;
			case std_logic_vector'(g0,g1,g2,g3) is	 
				when "1000" |"0100" |"1110" |"0010" |"1011" |"0001"|"1101"|"0111" => b0 <= '1';
			when others => b0 <= '0'; 
			
		end case;
	end process;
	end case_statement;