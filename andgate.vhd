library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity andgate is
port(
  andin: in std_logic_vector (1 downto 0);
  andout: out std_logic
);
end andgate;


architecture bh of andgate is
begin
  andout <= andin(0) and andin(1);
end bh;
