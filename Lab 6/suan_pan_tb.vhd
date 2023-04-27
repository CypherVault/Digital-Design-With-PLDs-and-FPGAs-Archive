-- d:\Bkvhdl_progs\Chap01\half_adder\src\half_adder_tb.vhd

library	ieee;
use ieee.std_logic_1164.all;
--library lab01_half_adder;	--either these two statements
--use lab01_half_adder.all;	-- or use work.all will work
use work.all;


entity testbench is
end testbench;

architecture behavior of testbench is

signal d, c, b, a :  std_logic; 
signal sp: std_logic_vector(8 downto 0);


type input2output is record  
	sp :std_logic_vector( 8 downto 0  );
	d : std_logic;
	c : std_logic;
    b : std_logic;	
	a : std_logic;
end record;


   type input2output_array is array (natural range <>)
of input2output;

constant in2out : input2output_array := (

( "110011111" , '0', '0', '0', '0' ),
( "110101111" , '0', '0', '0', '1' ),  
( "110110111" , '0', '0', '1', '0' ),
( "110111011" , '0', '0', '1', '1' ),
( "110111101" , '0', '1', '0', '0' ),	 
( "101011111" , '0', '1', '0', '1' ),
( "101101111" , '0', '1', '1', '0' ), 
( "101110111" , '0', '1', '1', '1' ),
( "101111011" , '1', '0', '0', '0' ), 
( "101111101" , '0', '0', '0', '1' ));



begin
	
		
		
		
		
		uut: entity suan_pan port map( a => a, c => c, b => b, d => d, sp=>sp );
			

		
	
	verify : process
	begin
		for i in in2out'range loop
			sp <= in2out(i).sp;
			
			wait for 20 ns;
			-- assert reports on false
			assert (( d = in2out(i).d ) and
			( c = in2out(i).c) and ( b = in2out(i).b ) and ( a = in2out(i).a ) )
			report "test vector " & integer'image(i)& " failed" &
			" for input d = " & std_logic'image(d) & " and c = " & std_logic'image(c) & " for input b = " & std_logic'image(b) & " and a = " & std_logic'image(a)
			severity error;
		end loop;
		std.env.finish;
	end process;  
	
	
end behavior; 