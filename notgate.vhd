library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity notgate is
port(
  notin: in std_logic;
  notout: out std_logic
);
end notgate;


architecture bh of notgate is
begin
  notout <= not notin;
end bh;
