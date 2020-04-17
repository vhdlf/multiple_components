library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity top is
port (
  input: in std_logic_vector (3 downto 0);
  output: out std_logic
);
end top;


architecture bh of top is
  component norgate is
  port(
    norin: in std_logic_vector (1 downto 0);
    norout: out std_logic
  );
  end component;
  
  component andgate is
  port(
    andin: in std_logic_vector (1 downto 0);
	 andout: out std_logic
  );
  end component;
  
  signal temp: std_logic_vector (1 downto 0);
begin
  norgate1: norgate port map (norin(0) => input(0), norin(1) => input(1), norout => temp(0));
  norgate2: norgate port map (norin(0) => input(2), norin(1) => input(3), norout => temp(1));
  andgate1: andgate port map (andin(0) => temp(0), andin(1) => temp(1), andout => output);
end bh;
