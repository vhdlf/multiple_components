library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity tb_andgate is
end tb_andgate;


architecture bh of tb_andgate is
  component andgate is
  port(
    andin: in std_logic_vector (1 downto 0);
    andout: out std_logic
  );
  end component;

  signal input: std_logic_vector (1 downto 0);
  signal output: std_logic;
begin
  and1: andgate port map (input, output);
  init: process
  begin
    input <= "00";
    wait for 10 ns;
    input <= "01";
    wait for 10 ns;
    input <= "10";
    wait for 10 ns;
    input <= "11";
    wait for 10 ns;
  end process;
end bh;
