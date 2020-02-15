library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blowfish is
  port(
    x_in: in std_logic_vector(63 downto 0);
    key: in  std_logic_vector(31 downto 0);
    x_out: out std_logic_vector(63 downto 0)
  );
end blowfish;

architecture behavioral of blowfish is

  component parray
  port(
    data_in: in std_logic_vector(4 downto 0);
    key: in  std_logic_vector(31 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  component f
  port(
    data_in: in std_logic_vector(31 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  signal x_left,x_right,x_temp: std_logic_vector(31 downto 0);
  signal p_in: std_logic_vector(4 downto 0);
  signal p_out: std_logic_vector(31 downto 0);
  signal f_out: std_logic_vector(31 downto 0);

begin

  x_left <= x_in(63 downto 32); -- alias xL is x(63 DOWNTO 32);
  x_right <= x_in(31 downto 0); -- alias xR is x(31 DOWNTO 0);

  -- Round1
  p_in <= std_logic_vector(to_unsigned(1, p_in'length));

  -- P1 calculation
  p1: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  -- x_left xor P1
  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  -- F calculation
  f1: f port map(
    data_in => x_left,
    data_out => f_out);

  -- x_right xor F
  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  -- x_left swap x_right
  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round2
  p_in <= std_logic_vector(to_unsigned(2, p_in'length));

  p2: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f2: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round3
  p_in <= std_logic_vector(to_unsigned(3, p_in'length));

  p3: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f3: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round4
  p_in <= std_logic_vector(to_unsigned(4, p_in'length));

  p4: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f4: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round5
  p_in <= std_logic_vector(to_unsigned(5, p_in'length));

  p5: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f5: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round6
  p_in <= std_logic_vector(to_unsigned(6, p_in'length));

  p6: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f6: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round7
  p_in <= std_logic_vector(to_unsigned(7, p_in'length));

  p7: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f7: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round8
  p_in <= std_logic_vector(to_unsigned(8, p_in'length));

  p8: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f8: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round9
  p_in <= std_logic_vector(to_unsigned(9, p_in'length));

  p9: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f9: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round10
  p_in <= std_logic_vector(to_unsigned(10, p_in'length));

  p10: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f10: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round11
  p_in <= std_logic_vector(to_unsigned(11, p_in'length));

  p11: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f11: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round12
  p_in <= std_logic_vector(to_unsigned(12, p_in'length));

  p12: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  f12: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round13
  p_in <= std_logic_vector(to_unsigned(13, p_in'length));

  p13: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f13: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round14
  p_in <= std_logic_vector(to_unsigned(14, p_in'length));

  p14: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f14: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round15
  p_in <= std_logic_vector(to_unsigned(15, p_in'length));

  p15: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f15: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  x_temp <= x_left;
  x_left <= x_right;
  x_right <= x_temp;


  -- Round16
  p_in <= std_logic_vector(to_unsigned(16, p_in'length));

  p16: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  f16: f port map(
    data_in => x_left,
    data_out => f_out);

  x_temp <= x_right xor f_out;
  x_right <= x_temp;

  -- NOT SWAP in round 16


  -- Final
  p_in <= std_logic_vector(to_unsigned(17, p_in'length));

  p17: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_right xor p_out;
  x_right <= x_temp;

  p_in <= std_logic_vector(to_unsigned(18, p_in'length));

  p18: parray port map(
    data_in => p_in,
    key => key,
    data_out => p_out);

  x_temp <= x_left xor p_out;
  x_left <= x_temp;

  x_out <= x_right & x_left;

end behavioral;
