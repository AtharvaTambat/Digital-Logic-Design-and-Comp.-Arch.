library ieee;
use ieee.std_logic_1164.all;

entity NAND_3 is
	port(a, b, c: in std_logic; o: out std_logic);
end entity NAND_3;

architecture simple of NAND_3 is
begin
	o <= not (a and b and c);
end architecture simple;
