library ieee;
use ieee.std_logic_1164.all;

Entity Decoder is port
	(B0,B1: in std_logic;
	F0,F1,F2,F3: out std_logic);

end Decoder;

Architecture Deco_der of Decoder is 
Begin
	F0 <= (not B1) and (not B0);
	F1 <= (not B1) and B0;
	F2 <= B1 and (not B0);
	F3 <= B1 and B0;
end architecture;
