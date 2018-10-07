library ieee;
use ieee.std_logic_1164.all;

Entity Latches is port(
	R,Temp,Reset: in std_logic;
	S,Q: inout std_logic

);

end Latches;

Architecture FlipFlop of Latches is
signal EntryV: std_logic_vector(3 downto 0):="0011";
signal notQ : STD_LOGIC;
begin
process(Reset)
begin
	for i in 0 to 3 loop
		S <= EntryV(i) and Temp;
		if Reset='0' then	
			Q <= R nor notQ;
			notQ <= S nor Q; 	
			end if;
	end loop;
end process;
end FlipFlop;