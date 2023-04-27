library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity testbench is
end testbench;	

architecture tb_architecture of testbench is 

---stim signals 

signal clk : std_logic := '0';
signal reset_bar : std_logic;

-- observed

signal dac_sine_value : std_logic_vector(7 downto 0);


constant period : time := 10 ns;

begin
	
	UUT : entity simple_dds
		port map ( clk => clk,
		reset_bar => reset_bar ,
		dac_sine_value => dac_sine_value );
		
		reset_bar <= '0' , '1' after 4 * period;
		
		clock : process			 
		begin 
			for i in 0 to 3064 loop
				wait for period;
				clk <= not clk;
			end loop;
			wait;
		end process;
		end 	 tb_architecture;


