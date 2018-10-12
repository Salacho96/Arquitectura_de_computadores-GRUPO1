library ieee;
use ieee.std_logic_1164.all;

Entity Latches is port(
					 Temp,Reset: in std_logic;					--Entradas Temperatura y Reset.
                S: in std_logic_vector(3 downto 0);				--Vector de entrada Set.
					 Q,notQ: out std_logic_vector(3 downto 0)   --Vectores de salida Q y negación de Q.
);
end Latches;

Architecture FlipFlop of Latches is
begin
process (Reset,Temp) is				--Proceso dependiente del Reset y la Temperatura.
begin
			if Reset='1' then		--Si el Reset es '1' sin importar el valor de Temp la salida del vector será "0000"
				Q<="0000";
				notQ<= "1111";		--Por ende, la negación de Q será "1111"
			elsif Temp ='1' then    --De lo contrario, sólo nos interesará que el switch de Temperatura se encuentre en '1'
					Q <= S; 		--Con esto, todos los valores que se encuentran en el vector S (Set), será pasados uno a uno al vector Q
					notQ <= not S;  --Asi mismo, la negación de Q será la negación de cada posición del vector Q
         end if;
end process;
end FlipFlop;