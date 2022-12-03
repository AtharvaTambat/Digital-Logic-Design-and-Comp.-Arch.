library ieee;
use ieee.std_logic_1164.all;

entity ThreebyEightDecode is
	port ( i : in std_logic_vector(0 to 2);
	en: in std_logic;
	z : out std_logic_vector(7 downto 0));
end entity ThreebyEightDecode;

architecture simple of ThreebyEightDecode is

	component NAND_3
		port(a, b, c: in std_logic; o: out std_logic);
	end component NAND_3;
	
	signal not_o : std_logic_vector(2 downto 0);
	signal nand_o : std_logic_vector(7 downto 0);
	
begin
	
	NOT_11: NAND_3 port map(i(2),i(2),'1',not_o(2));
	NOT_12: NAND_3 port map(i(1),i(1),'1',not_o(1));
	NOT_13: NAND_3 port map(i(0),i(0),'1',not_o(0));

	NAND_01: NAND_3 port map(not_o(0), not_o(1),not_o(2),nand_o(0));
	NAND_02: NAND_3 port map(not_o(0), not_o(1),i(2),nand_o(1));
	NAND_03: NAND_3 port map(not_o(0), i(1),not_o(2),nand_o(2));
	NAND_04: NAND_3 port map(not_o(0), i(1),i(2),nand_o(3));
	NAND_05: NAND_3 port map(i(0), not_o(1),not_o(2),nand_o(4));
	NAND_06: NAND_3 port map(i(0), not_o(1),i(2),nand_o(5));
	NAND_07: NAND_3 port map(i(0), i(1),not_o(2),nand_o(6));
	NAND_08: NAND_3 port map(i(0), i(1),i(2),nand_o(7));

	NOT_21: NAND_3 port map(nand_o(0), nand_o(0), '1', z(0));
	NOT_22: NAND_3 port map(nand_o(1), nand_o(1), '1', z(1));
	NOT_23: NAND_3 port map(nand_o(2), nand_o(2), '1', z(2));
	NOT_24: NAND_3 port map(nand_o(3), nand_o(3), '1', z(3));
	NOT_25: NAND_3 port map(nand_o(4), nand_o(4), '1', z(4));
	NOT_26: NAND_3 port map(nand_o(5), nand_o(5), '1', z(5));
	NOT_27: NAND_3 port map(nand_o(6), nand_o(6), '1', z(6));
	NOT_28: NAND_3 port map(nand_o(7), nand_o(7), '1', z(7));

end architecture simple;

