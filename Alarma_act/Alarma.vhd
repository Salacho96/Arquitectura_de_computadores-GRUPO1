library ieee;
use ieee.std_logic_1164.all;

Entity Alarma is port
	(L,S,D: in std_logic;
	A: out std_logic);
end Alarma;

Architecture Alar_ma of Alarma is
begin
	A <= (L or S) and D;
	
end architecture;
