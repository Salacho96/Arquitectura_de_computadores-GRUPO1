library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;


Entity Semaforo is port(
		Fin_timer,Carro,Clk,Verde_AV,Verde_CM: in std_logic;
		Activar_Temp: inout std_logic  
);
end Semaforo;

Architecture Sem of Semaforo is
type Estados_Posibles is (Rojo,Verde);
begin
process(Clk)
begin
	if rising_edge(Clk) then
	case  is 
	when Carro => '1';
	when Fin_timer => '0' then
		Activar_Temp <= '1';
		
end process;

process()
begin

end process;
end Sem;