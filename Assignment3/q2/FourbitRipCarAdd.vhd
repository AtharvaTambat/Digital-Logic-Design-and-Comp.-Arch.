library ieee;
use ieee.std_logic_1164.all;

entity FourbitRipCarAdd is
	port ( a, b : in std_logic_vector (3 downto 0);
	cin: in std_logic;
	sum : out std_logic_vector (3 downto 0);
	cout: out std_logic);
end entity FourbitRipCarAdd;

architecture combined of FourbitRipCarAdd is

	component OnebitFullAdd
		port(a,b,cin: in std_logic; sum, cout: out std_logic);
	end component OnebitFullAdd;
	signal s1, s2, s3: std_logic;
	
begin
	f1: OnebitFullAdd port map(a(0),b(0),cin, sum(0), s1);
	f2: OnebitFullAdd port map(a(1),b(1),s1, sum(1), s2);
	f3: OnebitFullAdd port map(a(2), b(2),s2, sum(2), s3);
	f4: OnebitFullAdd port map(a(3), b(3),s3, sum(3), cout);
end architecture combined;