library ieee;
use ieee.std_logic_1164.all;

entity FourbitRipCarAddSub is
	port ( a, b : in std_logic_vector (3 downto 0);
	cin: in std_logic;
	sum : out std_logic_vector (3 downto 0);
	cout: out std_logic);
end entity FourbitRipCarAddSub;

architecture combined of FourbitRipCarAddSub is

	component FourbitRipCarAdd
		port ( a, b : in std_logic_vector (3 downto 0);
		cin: in std_logic;
		sum : out std_logic_vector (3 downto 0);
		cout: out std_logic);
	end component FourbitRipCarAdd;
	signal s: std_logic_vector(3 downto 0);
	
begin
	s(0) <= (b(0) xor cin);
	s(1) <= (b(1) xor cin);
	s(2) <= (b(2) xor cin);
	s(3) <= (b(3) xor cin);
	
	f1: FourbitRipCarAdd port map(a,s,cin,sum,cout);
end architecture combined;