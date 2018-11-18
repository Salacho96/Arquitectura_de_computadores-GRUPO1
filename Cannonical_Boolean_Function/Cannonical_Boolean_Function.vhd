Library ieee;
use ieee.std_logic_1164.all;

Entity Cannonical_Boolean_Function is
port(a,b,c: in std_logic;
		f:		out std_logic);
end Cannonical_Boolean_Function ;

Architecture Cannonical_Boolean_Function_arc of Cannonical_Boolean_Function is
Begin
	f <=(not a and b and c) or (a and not b and c) or (a and b and not c);
end Cannonical_Boolean_Function_arc;