entity NAND_2 is
	port(c, d: in bit; o2: out bit);
end entity NAND_2;

architecture simple of NAND_2 is
begin
o2 <= not (c and d);
end architecture simple;
