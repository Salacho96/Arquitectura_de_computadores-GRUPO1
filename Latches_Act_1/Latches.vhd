library ieee;
use ieee.std_logic_1164.all;

Entity Latches is port(
                R,Temp,Reset,Set: in std_logic;
                S,Q: inout std_logic


);

end Latches;

Architecture FlipFlop of Latches is
signal EntryV: std_logic_vector(3 downto 0):="0011";
signal OutV: std_logic_vector(3 downto 0);
signal notQ : STD_LOGIC;
begin
process(Reset)
begin
			if(rising_edge(RESET))then
				OutV<="0000";
				end if;
			if(rising_edge(SET))then
				S <= EntryV(0) and Temp;             
            Q <= R nor notQ;
            notQ <= S nor Q; 
            OutV(0)<= Q;
            S <= EntryV(1) and Temp;  
            Q <= R nor notQ;
            notQ <= S nor Q; 
            OutV(1)<= Q;
            S <= EntryV(2) and Temp; 
            Q <= R nor notQ;
            notQ <= S nor Q;  
            OutV(2)<= Q;
            S <= EntryV(3) and Temp; 
            Q <= R nor notQ;
            notQ <= S nor Q; 
            OutV(3)<= Q ;          
            end if;
end process;
end FlipFlop;