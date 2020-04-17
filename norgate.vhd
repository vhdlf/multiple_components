library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity norgate is
port(
  norin: in std_logic_vector (1 downto 0);
  norout: out std_logic
);
end norgate;


architecture bh of norgate is
  component notgate
  port(
	 notin: in std_logic;
    notout: out std_logic
  );
  end component;
  
  component andgate
  port(
    andin: in std_logic_vector (1 downto 0);
	 andout: out std_logic
  );
  end component;
  
  signal temp: std_logic_vector (1 downto 0);
begin
  notgate1: notgate port map (notin => norin(0), notout => temp(0));
  notgate2: notgate port map (notin => norin(1), notout => temp(1));
  andgate1: andgate port map (andin => temp, andout => norout);
end bh;
