library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parray is
  port (
    data_in: in  std_logic_vector(4 downto 0);
    key: in  std_logic_vector(31 downto 0);
    data_out: out std_logic_vector(31 downto 0)
    );
end parray;

architecture arch of parray is

  type   parray_t is array (17 downto 0) of std_logic_vector(31 downto 0);
  signal parray : parray_t;

begin

  parray(0)  <= x"243f6a88"; --P1
  parray(1)  <= x"85a308d3"; --P2
  parray(2)  <= x"13198a2e"; --P3
  parray(3)  <= x"03707344"; --P4
  parray(4)  <= x"a4093822"; --P5
  parray(5)  <= x"299f31d0"; --P6
  parray(6)  <= x"082efa98"; --P7
  parray(7)  <= x"ec4e6c89"; --P8
  parray(8)  <= x"452821e6"; --P9
  parray(9)  <= x"38d01377"; --P10
  parray(10) <= x"be5466cf"; --P11
  parray(11) <= x"34e90c6c"; --P12
  parray(12) <= x"c0ac29b7"; --P13
  parray(13) <= x"c97c50dd"; --P14
  parray(14) <= x"3f84d5b5"; --P15
  parray(15) <= x"b5470917"; --P16
  parray(16) <= x"9216d5d9"; --P17
  parray(17) <= x"8979fb1b"; --P18

  key_init: for i in 0 to 17 generate
    parray(i) <= parray(i) xor key;
  end generate;

  data_out <= parray(to_integer(unsigned(data_in)));

end architecture;
