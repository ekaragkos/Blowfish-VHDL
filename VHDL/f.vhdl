library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity f is
  port(
    data_in: in std_logic_vector(31 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
end f;

architecture arch of f is

  component sbox1
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  component sbox2
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  component sbox3
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  component sbox4
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
  end component;

  signal s1_out,s2_out,s3_out,s4_out: std_logic_vector(31 downto 0);

begin

  s1: sbox1 port map(
    data_in => data_in(31 downto 24),
    data_out => s1_out
  );

  s2: sbox2 port map(
    data_in => data_in(23 downto 16),
    data_out => s2_out
  );

  s3: sbox3 port map(
    data_in => data_in(15 downto 8),
    data_out => s3_out
  );

  s4: sbox4 port map(
    data_in => data_in(7 downto 0),
    data_out => s4_out
  );

  -- data_out <= ((s1_out+(s2_out mod (2**32))) xor s3_out)+(s4_out mod (2**32));
  data_out <= std_logic_vector(((unsigned(s1_out) + unsigned(s2_out)) xor unsigned(s3_out)) + unsigned(s4_out));

end arch;
