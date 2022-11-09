--library declaration
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_2with is
	port(	A, B, C : in std_logic;
			Y_0, Y_1, Y_2, Y_3, Y_4, Y_5, Y_6, Y_7 : out std_logic 
			);
end led_2with;

architecture Behavioral of led_2with is
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
	
	with INPUT select
		OUTPUT <= "10000000" when "000",
					 "01000000" when "001",
					 "00100000" when "010",
					 "00010000" when "011",
					 "00001000" when "100",
					 "00000100" when "101",
					 "00000010" when "110",
					 "00000001" when "111",
					 "00000000" when others;
					 
end Behavioral;

