library ieee;
use ieee.std_logic_1164.all;

Entity Multiplexers is port
	(D0,D1,S: in std_logic;
	F: out std_logic);
	
end Multiplexers;

Architecture Multi of Multiplexers is 
begin
	F <= (D0 and (not S)) or (D1 and S);
	
end Multi;

	
