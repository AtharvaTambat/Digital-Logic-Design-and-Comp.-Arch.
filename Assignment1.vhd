entity Assignment1 is
	port(in1, in2, in3, in4:in bit; out1, out2: out bit);
end entity Assignment1;

architecture combined of Assignment1 is

	component NOR_2 
		port(a, b: in bit; o1: out bit);
	end component NOR_2;

	component NAND_2 
		port(c, d: in bit; o2: out bit);
	end component NAND_2;

begin

	NOR_gate: NOR_2 port map(in1 , in2, out1);
	NAND_gate: NAND_2 port map(in3, in4, out2);

end architecture combined;

	