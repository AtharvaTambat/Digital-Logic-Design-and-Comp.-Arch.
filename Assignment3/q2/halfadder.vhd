library ieee;
use ieee.std_logic_1164.all;

entity halfadder is
	port(a,b:in std_logic; s,c:out std_logic);
end entity halfadder;

architecture simple of halfadder is
begin
	c<=(a and b);
	s<=(a xor b);
end architecture simple;