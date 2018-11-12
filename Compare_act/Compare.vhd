library ieee;
use ieee.std_logic_1164.all;

Entity Compare is port
	(a, b: in integer range 0 to 7;
	Comparacion: out std_logic;
	Suma: out integer range 0 to 15);
end entity;

Architecture Comp_Add of Compare is
Begin
	Comparacion <= '1' when a>b else '0';
	Suma <= a + b;
end architecture;
