library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sbox3 is
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
end sbox3;

architecture arch of sbox3 is

  type sbox3_t is array (255 downto 0) of std_logic_vector(31 downto 0);
  signal sbox3 : sbox3_t;

begin

  sbox3(16#00#) <= x"e93d5a68";
  sbox3(16#01#) <= x"948140f7";
  sbox3(16#02#) <= x"f64c261c";
  sbox3(16#03#) <= x"94692934";
  sbox3(16#04#) <= x"411520f7";
  sbox3(16#05#) <= x"7602d4f7";
  sbox3(16#06#) <= x"bcf46b2e";
  sbox3(16#07#) <= x"d4a20068";
  sbox3(16#08#) <= x"d4082471";
  sbox3(16#09#) <= x"3320f46a";
  sbox3(16#0a#) <= x"43b7d4b7";
  sbox3(16#0b#) <= x"500061af";
  sbox3(16#0c#) <= x"1e39f62e";
  sbox3(16#0d#) <= x"97244546";
  sbox3(16#0e#) <= x"14214f74";
  sbox3(16#0f#) <= x"bf8b8840";
  sbox3(16#10#) <= x"4d95fc1d";
  sbox3(16#11#) <= x"96b591af";
  sbox3(16#12#) <= x"70f4ddd3";
  sbox3(16#13#) <= x"66a02f45";
  sbox3(16#14#) <= x"bfbc09ec";
  sbox3(16#15#) <= x"03bd9785";
  sbox3(16#16#) <= x"7fac6dd0";
  sbox3(16#17#) <= x"31cb8504";
  sbox3(16#18#) <= x"96eb27b3";
  sbox3(16#19#) <= x"55fd3941";
  sbox3(16#1a#) <= x"da2547e6";
  sbox3(16#1b#) <= x"abca0a9a";
  sbox3(16#1c#) <= x"28507825";
  sbox3(16#1d#) <= x"530429f4";
  sbox3(16#1e#) <= x"0a2c86da";
  sbox3(16#1f#) <= x"e9b66dfb";
  sbox3(16#20#) <= x"68dc1462";
  sbox3(16#21#) <= x"d7486900";
  sbox3(16#22#) <= x"680ec0a4";
  sbox3(16#23#) <= x"27a18dee";
  sbox3(16#24#) <= x"4f3ffea2";
  sbox3(16#25#) <= x"e887ad8c";
  sbox3(16#26#) <= x"b58ce006";
  sbox3(16#27#) <= x"7af4d6b6";
  sbox3(16#28#) <= x"aace1e7c";
  sbox3(16#29#) <= x"d3375fec";
  sbox3(16#2a#) <= x"ce78a399";
  sbox3(16#2b#) <= x"406b2a42";
  sbox3(16#2c#) <= x"20fe9e35";
  sbox3(16#2d#) <= x"d9f385b9";
  sbox3(16#2e#) <= x"ee39d7ab";
  sbox3(16#2f#) <= x"3b124e8b";
  sbox3(16#30#) <= x"1dc9faf7";
  sbox3(16#31#) <= x"4b6d1856";
  sbox3(16#32#) <= x"26a36631";
  sbox3(16#33#) <= x"eae397b2";
  sbox3(16#34#) <= x"3a6efa74";
  sbox3(16#35#) <= x"dd5b4332";
  sbox3(16#36#) <= x"6841e7f7";
  sbox3(16#37#) <= x"ca7820fb";
  sbox3(16#38#) <= x"fb0af54e";
  sbox3(16#39#) <= x"d8feb397";
  sbox3(16#3a#) <= x"454056ac";
  sbox3(16#3b#) <= x"ba489527";
  sbox3(16#3c#) <= x"55533a3a";
  sbox3(16#3d#) <= x"20838d87";
  sbox3(16#3e#) <= x"fe6ba9b7";
  sbox3(16#3f#) <= x"d096954b";
  sbox3(16#40#) <= x"55a867bc";
  sbox3(16#41#) <= x"a1159a58";
  sbox3(16#42#) <= x"cca92963";
  sbox3(16#43#) <= x"99e1db33";
  sbox3(16#44#) <= x"a62a4a56";
  sbox3(16#45#) <= x"3f3125f9";
  sbox3(16#46#) <= x"5ef47e1c";
  sbox3(16#47#) <= x"9029317c";
  sbox3(16#48#) <= x"fdf8e802";
  sbox3(16#49#) <= x"04272f70";
  sbox3(16#4a#) <= x"80bb155c";
  sbox3(16#4b#) <= x"05282ce3";
  sbox3(16#4c#) <= x"95c11548";
  sbox3(16#4d#) <= x"e4c66d22";
  sbox3(16#4e#) <= x"48c1133f";
  sbox3(16#4f#) <= x"c70f86dc";
  sbox3(16#50#) <= x"07f9c9ee";
  sbox3(16#51#) <= x"41041f0f";
  sbox3(16#52#) <= x"404779a4";
  sbox3(16#53#) <= x"5d886e17";
  sbox3(16#54#) <= x"325f51eb";
  sbox3(16#55#) <= x"d59bc0d1";
  sbox3(16#56#) <= x"f2bcc18f";
  sbox3(16#57#) <= x"41113564";
  sbox3(16#58#) <= x"257b7834";
  sbox3(16#59#) <= x"602a9c60";
  sbox3(16#5a#) <= x"dff8e8a3";
  sbox3(16#5b#) <= x"1f636c1b";
  sbox3(16#5c#) <= x"0e12b4c2";
  sbox3(16#5d#) <= x"02e1329e";
  sbox3(16#5e#) <= x"af664fd1";
  sbox3(16#5f#) <= x"cad18115";
  sbox3(16#60#) <= x"6b2395e0";
  sbox3(16#61#) <= x"333e92e1";
  sbox3(16#62#) <= x"3b240b62";
  sbox3(16#63#) <= x"eebeb922";
  sbox3(16#64#) <= x"85b2a20e";
  sbox3(16#65#) <= x"e6ba0d99";
  sbox3(16#66#) <= x"de720c8c";
  sbox3(16#67#) <= x"2da2f728";
  sbox3(16#68#) <= x"d0127845";
  sbox3(16#69#) <= x"95b794fd";
  sbox3(16#6a#) <= x"647d0862";
  sbox3(16#6b#) <= x"e7ccf5f0";
  sbox3(16#6c#) <= x"5449a36f";
  sbox3(16#6d#) <= x"877d48fa";
  sbox3(16#6e#) <= x"c39dfd27";
  sbox3(16#6f#) <= x"f33e8d1e";
  sbox3(16#70#) <= x"0a476341";
  sbox3(16#71#) <= x"992eff74";
  sbox3(16#72#) <= x"3a6f6eab";
  sbox3(16#73#) <= x"f4f8fd37";
  sbox3(16#74#) <= x"a812dc60";
  sbox3(16#75#) <= x"a1ebddf8";
  sbox3(16#76#) <= x"991be14c";
  sbox3(16#77#) <= x"db6e6b0d";
  sbox3(16#78#) <= x"c67b5510";
  sbox3(16#79#) <= x"6d672c37";
  sbox3(16#7a#) <= x"2765d43b";
  sbox3(16#7b#) <= x"dcd0e804";
  sbox3(16#7c#) <= x"f1290dc7";
  sbox3(16#7d#) <= x"cc00ffa3";
  sbox3(16#7e#) <= x"b5390f92";
  sbox3(16#7f#) <= x"690fed0b";
  sbox3(16#80#) <= x"667b9ffb";
  sbox3(16#81#) <= x"cedb7d9c";
  sbox3(16#82#) <= x"a091cf0b";
  sbox3(16#83#) <= x"d9155ea3";
  sbox3(16#84#) <= x"bb132f88";
  sbox3(16#85#) <= x"515bad24";
  sbox3(16#86#) <= x"7b9479bf";
  sbox3(16#87#) <= x"763bd6eb";
  sbox3(16#88#) <= x"37392eb3";
  sbox3(16#89#) <= x"cc115979";
  sbox3(16#8a#) <= x"8026e297";
  sbox3(16#8b#) <= x"f42e312d";
  sbox3(16#8c#) <= x"6842ada7";
  sbox3(16#8d#) <= x"c66a2b3b";
  sbox3(16#8e#) <= x"12754ccc";
  sbox3(16#8f#) <= x"782ef11c";
  sbox3(16#90#) <= x"6a124237";
  sbox3(16#91#) <= x"b79251e7";
  sbox3(16#92#) <= x"06a1bbe6";
  sbox3(16#93#) <= x"4bfb6350";
  sbox3(16#94#) <= x"1a6b1018";
  sbox3(16#95#) <= x"11caedfa";
  sbox3(16#96#) <= x"3d25bdd8";
  sbox3(16#97#) <= x"e2e1c3c9";
  sbox3(16#98#) <= x"44421659";
  sbox3(16#99#) <= x"0a121386";
  sbox3(16#9a#) <= x"d90cec6e";
  sbox3(16#9b#) <= x"d5abea2a";
  sbox3(16#9c#) <= x"64af674e";
  sbox3(16#9d#) <= x"da86a85f";
  sbox3(16#9e#) <= x"bebfe988";
  sbox3(16#9f#) <= x"64e4c3fe";
  sbox3(16#a0#) <= x"9dbc8057";
  sbox3(16#a1#) <= x"f0f7c086";
  sbox3(16#a2#) <= x"60787bf8";
  sbox3(16#a3#) <= x"6003604d";
  sbox3(16#a4#) <= x"d1fd8346";
  sbox3(16#a5#) <= x"f6381fb0";
  sbox3(16#a6#) <= x"7745ae04";
  sbox3(16#a7#) <= x"d736fccc";
  sbox3(16#a8#) <= x"83426b33";
  sbox3(16#a9#) <= x"f01eab71";
  sbox3(16#aa#) <= x"b0804187";
  sbox3(16#ab#) <= x"3c005e5f";
  sbox3(16#ac#) <= x"77a057be";
  sbox3(16#ad#) <= x"bde8ae24";
  sbox3(16#ae#) <= x"55464299";
  sbox3(16#af#) <= x"bf582e61";
  sbox3(16#b0#) <= x"4e58f48f";
  sbox3(16#b1#) <= x"f2ddfda2";
  sbox3(16#b2#) <= x"f474ef38";
  sbox3(16#b3#) <= x"8789bdc2";
  sbox3(16#b4#) <= x"5366f9c3";
  sbox3(16#b5#) <= x"c8b38e74";
  sbox3(16#b6#) <= x"b475f255";
  sbox3(16#b7#) <= x"46fcd9b9";
  sbox3(16#b8#) <= x"7aeb2661";
  sbox3(16#b9#) <= x"8b1ddf84";
  sbox3(16#ba#) <= x"846a0e79";
  sbox3(16#bb#) <= x"915f95e2";
  sbox3(16#bc#) <= x"466e598e";
  sbox3(16#bd#) <= x"20b45770";
  sbox3(16#be#) <= x"8cd55591";
  sbox3(16#bf#) <= x"c902de4c";
  sbox3(16#c0#) <= x"b90bace1";
  sbox3(16#c1#) <= x"bb8205d0";
  sbox3(16#c2#) <= x"11a86248";
  sbox3(16#c3#) <= x"7574a99e";
  sbox3(16#c4#) <= x"b77f19b6";
  sbox3(16#c5#) <= x"e0a9dc09";
  sbox3(16#c6#) <= x"662d09a1";
  sbox3(16#c7#) <= x"c4324633";
  sbox3(16#c8#) <= x"e85a1f02";
  sbox3(16#c9#) <= x"09f0be8c";
  sbox3(16#ca#) <= x"4a99a025";
  sbox3(16#cb#) <= x"1d6efe10";
  sbox3(16#cc#) <= x"1ab93d1d";
  sbox3(16#cd#) <= x"0ba5a4df";
  sbox3(16#ce#) <= x"a186f20f";
  sbox3(16#cf#) <= x"2868f169";
  sbox3(16#d0#) <= x"dcb7da83";
  sbox3(16#d1#) <= x"573906fe";
  sbox3(16#d2#) <= x"a1e2ce9b";
  sbox3(16#d3#) <= x"4fcd7f52";
  sbox3(16#d4#) <= x"50115e01";
  sbox3(16#d5#) <= x"a70683fa";
  sbox3(16#d6#) <= x"a002b5c4";
  sbox3(16#d7#) <= x"0de6d027";
  sbox3(16#d8#) <= x"9af88c27";
  sbox3(16#d9#) <= x"773f8641";
  sbox3(16#da#) <= x"c3604c06";
  sbox3(16#db#) <= x"61a806b5";
  sbox3(16#dc#) <= x"f0177a28";
  sbox3(16#dd#) <= x"c0f586e0";
  sbox3(16#de#) <= x"006058aa";
  sbox3(16#df#) <= x"30dc7d62";
  sbox3(16#e0#) <= x"11e69ed7";
  sbox3(16#e1#) <= x"2338ea63";
  sbox3(16#e2#) <= x"53c2dd94";
  sbox3(16#e3#) <= x"c2c21634";
  sbox3(16#e4#) <= x"bbcbee56";
  sbox3(16#e5#) <= x"90bcb6de";
  sbox3(16#e6#) <= x"ebfc7da1";
  sbox3(16#e7#) <= x"ce591d76";
  sbox3(16#e8#) <= x"6f05e409";
  sbox3(16#e9#) <= x"4b7c0188";
  sbox3(16#ea#) <= x"39720a3d";
  sbox3(16#eb#) <= x"7c927c24";
  sbox3(16#ec#) <= x"86e3725f";
  sbox3(16#ed#) <= x"724d9db9";
  sbox3(16#ee#) <= x"1ac15bb4";
  sbox3(16#ef#) <= x"d39eb8fc";
  sbox3(16#f0#) <= x"ed545578";
  sbox3(16#f1#) <= x"08fca5b5";
  sbox3(16#f2#) <= x"d83d7cd3";
  sbox3(16#f3#) <= x"4dad0fc4";
  sbox3(16#f4#) <= x"1e50ef5e";
  sbox3(16#f5#) <= x"b161e6f8";
  sbox3(16#f6#) <= x"a28514d9";
  sbox3(16#f7#) <= x"6c51133c";
  sbox3(16#f8#) <= x"6fd5c7e7";
  sbox3(16#f9#) <= x"56e14ec4";
  sbox3(16#fa#) <= x"362abfce";
  sbox3(16#fb#) <= x"ddc6c837";
  sbox3(16#fc#) <= x"d79a3234";
  sbox3(16#fd#) <= x"92638212";
  sbox3(16#fe#) <= x"670efa8e";
  sbox3(16#ff#) <= x"406000e0";

  data_out <= sbox3(to_integer(unsigned(data_in)));

end arch;
