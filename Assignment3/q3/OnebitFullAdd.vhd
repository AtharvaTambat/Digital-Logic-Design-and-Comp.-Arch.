library ieee;
use ieee.std_logic_1164.all;

entity OnebitFullAdd is
	port (a, b, cin : in std_logic;
	sum, cout: out std_logic);
end entity OnebitFullAdd;

architecture combined of OnebitFullAdd is

	component halfadder
		port(a,b:in std_logic; s, c:out std_logic);
	end component halfadder;
	
	signal s1, s2, s3:std_logic;

begin
	h1: halfadder port map(a,b,s1,s2);
	h2: halfadder port map(cin,s1,sum,s3);
	cout<=(s2 or s3);
end architecture combined;
