library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

	  -----COUNTER
entity counter is
port 
( clk : in std_logic;
reset_bar : in std_logic;
 pos_neg : out std_logic;-- 1 for first half of cycle, 0 for second
 address : out std_logic_vector(6 downto 0)
 );
 
 end entity counter;
	  
architecture Behavioral of counter is
signal state : std_logic := '0';
signal one : std_logic := '1';	   
signal two : std_logic := '0';


begin
  process(clk)
    variable up_down : std_logic := '0';
    variable cnt : integer range 0 to 127 := 0;	  
	
  begin
    if rising_edge(clk) then
     ------POS SECTION
	
		if cnt = 127 then
        up_down := '1';	  

      elsif cnt = 0 then
        up_down := '0';
		  	state <= not state;
			pos_neg <= state;
			one <= '0';
			two <= '1';
		
      end if;

      if up_down = '0' then
        cnt := cnt + 1;
      else
        cnt := cnt - 1;
      end if;  
	  
	 
	
end if;
      address <= std_logic_vector(to_unsigned(cnt, 7));
   	  
	  
	  
  end process;
end Behavioral;


	   

-------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
									 ----SIN
entity lookup_table is
    port (
        addr : in std_logic_vector(6 downto 0);
        sin_val : out std_logic_vector(6 downto 0)
    );
end entity lookup_table;

architecture rtl of lookup_table is
    type mem_type is array (0 to 127) of std_logic_vector(6 downto 0);
    constant lookup : mem_type := ( 
         "0000000", "0000001", "0000011", "0000100", "0000110", "0000111", "0001001", "0001010",
        "0001100", "0001110", "0001111", "0010001", "0010010", "0010100", "0010101", "0010111",	 
		"0011000", "0011010", "0011100", "0011101", "0011111", "0100000", "0100010", "0100011",
        "0100101", "0100110", "0101000", "0101001", "0101011", "0101100", "0101110", "0101111",
		"0110000", "0110010", "0110011", "0110101", "0110110", "0111000", "0111001", "0111010",
        "0111100", "0111101", "0111111", "1000000", "1000001", "1000011", "1000100", "1000101",
		"1000111", "1001000", "1001001", "1001010", "1001100", "1001101", "1001110", "1001111",
        "1010001", "1010010", "1010011", "1010100", "1010101", "1010111", "1011000", "1011001",
		"1011010", "1011011", "1011100", "1011101", "1011110", "1011111", "1100000", "1100001",
        "1100010", "1100011", "1100100", "1100101", "1100110", "1100111", "1101000", "1101001",
		"1101010", "1101011", "1101100", "1101100", "1101101", "1101110", "1101111", "1110000",
        "1110000", "1110001", "1110010", "1110011", "1110011", "1110100", "1110101", "1110101",
		"1110110", "1110110", "1110111", "1110111", "1111000", "1111001", "1111001" , "1111010",
		"1111010", "1111010", "1111011", "1111011", "1111100", "1111100", "1111100" , "1111101",
		"1111101", "1111101", "1111110", "1111110", "1111110", "1111110", "1111111" , "1111111"
		,"1111111", "1111111", "1111111", "1111111", "1111111", "1111111", "1111111" , "1111111"	

	
		
    );
begin
    sin_val <= lookup(to_integer(unsigned(addr)));
end architecture rtl;
------------------------ 



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 -----------------------------------------adder_subtractor

entity adder_subtractor is
    port (
        inputVec : in std_logic_vector(6 downto 0);
        pos : in std_logic;
        outputVec : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of adder_subtractor is
begin
    process(inputVec, pos)
    begin
        if (pos = '0') then
            outputVec <= std_logic_vector("10000000" + Unsigned(inputVec) )	;
        else
             outputVec <= std_logic_vector("10000000" - Unsigned(inputVec) )	;
        end if;
    end process;
end architecture;







--------------dds
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;  	 
use work.all;
  
entity simple_dds is


port(
clk : in std_logic;-- system clock
reset_bar : in std_logic;-- asynchronous reset
dac_sine_value : out std_logic_vector(7 downto 0)-- to DAC
);	

attribute loc : string;
attribute loc of reset_bar : signal is "A13";
attribute loc of clk     : signal is "F8";
attribute loc of dac_sine_value      : signal is " H1,H3,J2,J1,L5,L1,M1,N3"; 

end simple_dds;		

--}} End of automatically maintained section

architecture structural of simple_dds is  

signal pos_neg : std_logic;
signal address : std_logic_vector( 6 downto 0	);	  
signal sin_val : std_logic_vector( 6 downto 0	);
											 

begin	   	 
		
			
	 
counter : entity counter port map ( clk => clk, reset_bar => reset_bar, pos_neg => pos_neg, address => address );  
	 
sin : entity lookup_table port map ( addr => address, sin_val => sin_val );

add_sub : entity adder_subtractor port map ( inputVec =>  sin_val ,  pos => pos_neg ,  outputVec  =>  dac_sine_value);

end structural;		 


		  