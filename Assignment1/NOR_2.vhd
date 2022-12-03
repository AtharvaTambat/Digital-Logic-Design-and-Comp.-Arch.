entity NOR_2 is
	port(a, b: in bit; o1: out bit);
end entity NOR_2;

architecture simple of NOR_2 is
begin
o1 <= not (a or b);
end architecture simple;
