library IEEE;
use ieee.std_logic_1164.all;

--DEFINICIÓN DE LA ENTIDAD
Entity LogComp is port(
	x: in std_logic;
	y: in std_logic;
	znot: out std_logic;
	zor: out std_logic;
	zxor: out std_logic;
	zand: out std_logic
);
end LogComp;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture Hmw_LogComp of LogComp is
begin
	znot <= not x;
	zor <= x or y;
	zxor <= x xor y;
	zand <= x and y;
end Hmw_LogComp;