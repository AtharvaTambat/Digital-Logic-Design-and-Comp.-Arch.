library ieee;
use ieee.std_logic_1164.all;

entity MUX2x1 is
	port(i0, i1, s: in std_logic;
			y: out std_logic);
end entity MUX2x1;

architecture simple of MUX2x1 is
begin
	y <= (i0 and (not s)) or (i1 and s);
end architecture simple;