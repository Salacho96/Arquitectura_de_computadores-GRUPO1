library ieee;
use ieee.std_logic_1164.all;

Entity FLIP_FLOP is port(
	D,CLK: in std_logic;
	Q: out std_logic
);

end FLIP_FLOP;

Architecture FLOP of FLIP_FLOP is
begin	
 process(CLK)
 begin 
    if(rising_edge(CLK)) then
   Q <= D; 
    end if;       
 end process; 
end FLOP;

	