library ieee;
use ieee.std_logic_1164.all;

entity EightbyThreeEncode is
	port ( i : in std_logic_vector(7 downto 0);
	en: in std_logic;
	z : out std_logic_vector(2 downto 0));
end entity;

architecture combined of EightbyThreeEncode is

	component MUX2x1
		port(i0, i1, s: in std_logic; y: out std_logic);
	end component MUX2x1;
	signal s: std_logic_vector(0 to 5);
begin

M11: MUX2x1 port map(i(1),'1',i(3),s(0));
M12: MUX2x1 port map(s(0),'1', i(5), s(1));
M13: MUX2x1 port map(s(1),'1', i(7), z(0));

M21: MUX2x1 port map(i(2),'1',i(3),s(2) );
M22: MUX2x1 port map(s(2),'1', i(6), s(3));
M23: MUX2x1 port map(s(3),'1', i(7), z(1));

M31: MUX2x1 port map(i(4),'1',i(5),s(4) );
M32: MUX2x1 port map(s(4),'1', i(6), s(5));
M33: MUX2x1 port map(s(5),'1', i(7), z(2));

end architecture combined;

