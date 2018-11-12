library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Semaforo is
	port( Clk: in std_logic;
			Sensor: in std_logic;
			FIN: in std_logic;
			TimerActivado: out std_logic;
			LuzMajor: out std_logic;
			LuzMinor: out std_logic);

end entity;


architecture Semaforo_Arc of Semaforo is
type Def_states is (red,green);
signal Actual,Siguiente: Def_states;
begin
process(Siguiente) is
begin
	if(rising_edge(Clk))then
		Actual<=Siguiente;
	end if;
end process;
process(Actual,Sensor,Clk,FIN) is
begin
TimerActivado<='0';
case Actual is
	when red =>
		LuzMinor <= '1';
		LuzMajor <= '0';
		if(FIN='0')then
			Siguiente<= red;
			TimerActivado<='1';
		elsif(FIN = '1')then
			Siguiente<=green;
			TimerActivado<='0';
		end if;
	when green =>
		LuzMinor<='0';
		LuzMajor<='1';
		if(Sensor='0')then
			Siguiente<=green;
			TimerActivado<='0';
		elsif(Sensor='1')then
			Siguiente<=red;
			TimerActivado<='1';
		end if;
end case;
end process ;
end architecture;