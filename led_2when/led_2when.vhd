--library declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--the ENTITY
entity led_on is 
	port(	A, B, C : in std_logic;
			Y_0, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7 : out std_logic
			);
end led_on;

--the ARCHITECTURE
architecture my_led_on of led_on is
signal INPUT : std_logic_vector(2 downto 0);
signal OUTPUT : std_logic_vector(7 downto 0);

begin
	INPUT <= A&B&C;
	Y_0 <= OUTPUT(0);
	Y_1 <= OUTPUT(1);
	Y_2 <= OUTPUT(2);
	Y_3 <= OUTPUT(3);
	Y_4 <= OUTPUT(4);
	Y_5 <= OUTPUT(5);
	Y_6 <= OUTPUT(6);
	Y_7 <= OUTPUT(7);
	
	OUTPUT <= 	"10000000" when (input = "000") else
					"01000000" when (input = "001") else
					"00100000" when (input = "010") else
					"00010000" when (input = "011") else
					"00001000" when (input = "100") else
					"00000100" when (input = "101") else
					"00000010" when (input = "110") else
					"00000001" when (input = "111") else
					"00000000";
					
	
end my_led_on;