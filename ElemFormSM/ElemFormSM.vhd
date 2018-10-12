library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;


Entity ElemFormSm is port(
		Clk,Reset: in std_logic;								
		Q: inout std_logic_vector(1 downto 0)   
);
end ElemFormSm;

Architecture SM of ElemFormSm is
begin
process(Reset,Clk)
begin
		if Reset='1' then
			Q <= "00";
		elsif (rising_edge(Clk)) then
			Q <= Q +1;
		end if;
end process;
end SM;
