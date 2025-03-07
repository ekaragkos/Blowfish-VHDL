library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sbox1 is
  port(
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(31 downto 0)
  );
end sbox1;

architecture arch of sbox1 is

  type sbox1_t is array (255 downto 0) of std_logic_vector(31 downto 0);
  signal sbox1 : sbox1_t;

begin

  sbox1(16#00#) <= x"d1310ba6";
  sbox1(16#01#) <= x"98dfb5ac";
  sbox1(16#02#) <= x"2ffd72db";
  sbox1(16#03#) <= x"d01adfb7";
  sbox1(16#04#) <= x"b8e1afed";
  sbox1(16#05#) <= x"6a267e96";
  sbox1(16#06#) <= x"ba7c9045";
  sbox1(16#07#) <= x"f12c7f99";
  sbox1(16#08#) <= x"24a19947";
  sbox1(16#09#) <= x"b3916cf7";
  sbox1(16#0a#) <= x"0801f2e2";
  sbox1(16#0b#) <= x"858efc16";
  sbox1(16#0c#) <= x"636920d8";
  sbox1(16#0d#) <= x"71574e69";
  sbox1(16#0e#) <= x"a458fea3";
  sbox1(16#0f#) <= x"f4933d7e";
  sbox1(16#10#) <= x"0d95748f";
  sbox1(16#11#) <= x"728eb658";
  sbox1(16#12#) <= x"718bcd58";
  sbox1(16#13#) <= x"82154aee";
  sbox1(16#14#) <= x"7b54a41d";
  sbox1(16#15#) <= x"c25a59b5";
  sbox1(16#16#) <= x"9c30d539";
  sbox1(16#17#) <= x"2af26013";
  sbox1(16#18#) <= x"c5d1b023";
  sbox1(16#19#) <= x"286085f0";
  sbox1(16#1a#) <= x"ca417918";
  sbox1(16#1b#) <= x"b8db38ef";
  sbox1(16#1c#) <= x"8e79dcb0";
  sbox1(16#1d#) <= x"603a180e";
  sbox1(16#1e#) <= x"6c9e0e8b";
  sbox1(16#1f#) <= x"b01e8a3e";
  sbox1(16#20#) <= x"d71577c1";
  sbox1(16#21#) <= x"bd314b27";
  sbox1(16#22#) <= x"78af2fda";
  sbox1(16#23#) <= x"55605c60";
  sbox1(16#24#) <= x"e65525f3";
  sbox1(16#25#) <= x"aa55ab94";
  sbox1(16#26#) <= x"57489862";
  sbox1(16#27#) <= x"63e81440";
  sbox1(16#28#) <= x"55ca396a";
  sbox1(16#29#) <= x"2aab10b6";
  sbox1(16#2a#) <= x"b4cc5c34";
  sbox1(16#2b#) <= x"1141e8ce";
  sbox1(16#2c#) <= x"a15486af";
  sbox1(16#2d#) <= x"7c72e993";
  sbox1(16#2e#) <= x"b3ee1411";
  sbox1(16#2f#) <= x"636fbc2a";
  sbox1(16#30#) <= x"2ba9c55d";
  sbox1(16#31#) <= x"741831f6";
  sbox1(16#32#) <= x"ce5c3e16";
  sbox1(16#33#) <= x"9b87931e";
  sbox1(16#34#) <= x"afd6ba33";
  sbox1(16#35#) <= x"6c24cf5c";
  sbox1(16#36#) <= x"7a325381";
  sbox1(16#37#) <= x"28958677";
  sbox1(16#38#) <= x"3b8f4898";
  sbox1(16#39#) <= x"6b4bb9af";
  sbox1(16#3a#) <= x"c4bfe81b";
  sbox1(16#3b#) <= x"66282193";
  sbox1(16#3c#) <= x"61d809cc";
  sbox1(16#3d#) <= x"fb21a991";
  sbox1(16#3e#) <= x"487cac60";
  sbox1(16#3f#) <= x"5dec8032";
  sbox1(16#40#) <= x"ef845d5d";
  sbox1(16#41#) <= x"e98575b1";
  sbox1(16#42#) <= x"dc262302";
  sbox1(16#43#) <= x"eb651b88";
  sbox1(16#44#) <= x"23893e81";
  sbox1(16#45#) <= x"d396acc5";
  sbox1(16#46#) <= x"0f6d6ff3";
  sbox1(16#47#) <= x"83f44239";
  sbox1(16#48#) <= x"2e0b4482";
  sbox1(16#49#) <= x"a4842004";
  sbox1(16#4a#) <= x"69c8f04a";
  sbox1(16#4b#) <= x"9e1f9b5e";
  sbox1(16#4c#) <= x"21c66842";
  sbox1(16#4d#) <= x"f6e96c9a";
  sbox1(16#4e#) <= x"670c9c61";
  sbox1(16#4f#) <= x"abd388f0";
  sbox1(16#50#) <= x"6a51a0d2";
  sbox1(16#51#) <= x"d8542f68";
  sbox1(16#52#) <= x"960fa728";
  sbox1(16#53#) <= x"ab5133a3";
  sbox1(16#54#) <= x"6eef0b6c";
  sbox1(16#55#) <= x"137a3be4";
  sbox1(16#56#) <= x"ba3bf050";
  sbox1(16#57#) <= x"7efb2a98";
  sbox1(16#58#) <= x"a1f1651d";
  sbox1(16#59#) <= x"39af0176";
  sbox1(16#5a#) <= x"66ca593e";
  sbox1(16#5b#) <= x"82430e88";
  sbox1(16#5c#) <= x"8cee8619";
  sbox1(16#5d#) <= x"456f9fb4";
  sbox1(16#5e#) <= x"7d84a5c3";
  sbox1(16#5f#) <= x"3b8b5ebe";
  sbox1(16#60#) <= x"e06f75d8";
  sbox1(16#61#) <= x"85c12073";
  sbox1(16#62#) <= x"401a449f";
  sbox1(16#63#) <= x"56c16aa6";
  sbox1(16#64#) <= x"4ed3aa62";
  sbox1(16#65#) <= x"363f7706";
  sbox1(16#66#) <= x"1bfedf72";
  sbox1(16#67#) <= x"429b023d";
  sbox1(16#68#) <= x"37d0d724";
  sbox1(16#69#) <= x"d00a1248";
  sbox1(16#6a#) <= x"db0fead3";
  sbox1(16#6b#) <= x"49f1c09b";
  sbox1(16#6c#) <= x"075372c9";
  sbox1(16#6d#) <= x"80991b7b";
  sbox1(16#6e#) <= x"25d479d8";
  sbox1(16#6f#) <= x"f6e8def7";
  sbox1(16#70#) <= x"e3fe501a";
  sbox1(16#71#) <= x"b6794c3b";
  sbox1(16#72#) <= x"976ce0bd";
  sbox1(16#73#) <= x"04c006ba";
  sbox1(16#74#) <= x"c1a94fb6";
  sbox1(16#75#) <= x"409f60c4";
  sbox1(16#76#) <= x"5e5c9ec2";
  sbox1(16#77#) <= x"196a2463";
  sbox1(16#78#) <= x"68fb6faf";
  sbox1(16#79#) <= x"3e6c53b5";
  sbox1(16#7a#) <= x"1339b2eb";
  sbox1(16#7b#) <= x"3b52ec6f";
  sbox1(16#7c#) <= x"6dfc511f";
  sbox1(16#7d#) <= x"9b30952c";
  sbox1(16#7e#) <= x"cc814544";
  sbox1(16#7f#) <= x"af5ebd09";
  sbox1(16#80#) <= x"bee3d004";
  sbox1(16#81#) <= x"de334afd";
  sbox1(16#82#) <= x"660f2807";
  sbox1(16#83#) <= x"192e4bb3";
  sbox1(16#84#) <= x"c0cba857";
  sbox1(16#85#) <= x"45c8740f";
  sbox1(16#86#) <= x"d20b5f39";
  sbox1(16#87#) <= x"b9d3fbdb";
  sbox1(16#88#) <= x"5579c0bd";
  sbox1(16#89#) <= x"1a60320a";
  sbox1(16#8a#) <= x"d6a100c6";
  sbox1(16#8b#) <= x"402c7279";
  sbox1(16#8c#) <= x"679f25fe";
  sbox1(16#8d#) <= x"fb1fa3cc";
  sbox1(16#8e#) <= x"8ea5e9f8";
  sbox1(16#8f#) <= x"db3222f8";
  sbox1(16#90#) <= x"3c7516df";
  sbox1(16#91#) <= x"fd616b15";
  sbox1(16#92#) <= x"2f501ec8";
  sbox1(16#93#) <= x"ad0552ab";
  sbox1(16#94#) <= x"323db5fa";
  sbox1(16#95#) <= x"fd238760";
  sbox1(16#96#) <= x"53317b48";
  sbox1(16#97#) <= x"3e00df82";
  sbox1(16#98#) <= x"9e5c57bb";
  sbox1(16#99#) <= x"ca6f8ca0";
  sbox1(16#9a#) <= x"1a87562e";
  sbox1(16#9b#) <= x"df1769db";
  sbox1(16#9c#) <= x"d542a8f6";
  sbox1(16#9d#) <= x"287effc3";
  sbox1(16#9e#) <= x"ac6732c6";
  sbox1(16#9f#) <= x"8c4f5573";
  sbox1(16#a0#) <= x"695b27b0";
  sbox1(16#a1#) <= x"bbca58c8";
  sbox1(16#a2#) <= x"e1ffa35d";
  sbox1(16#a3#) <= x"b8f011a0";
  sbox1(16#a4#) <= x"10fa3d98";
  sbox1(16#a5#) <= x"fd2183b8";
  sbox1(16#a6#) <= x"4afcb56c";
  sbox1(16#a7#) <= x"2dd1d35b";
  sbox1(16#a8#) <= x"9a53e479";
  sbox1(16#a9#) <= x"b6f84565";
  sbox1(16#aa#) <= x"d28e49bc";
  sbox1(16#ab#) <= x"4bfb9790";
  sbox1(16#ac#) <= x"e1ddf2da";
  sbox1(16#ad#) <= x"a4cb7e33";
  sbox1(16#ae#) <= x"62fb1341";
  sbox1(16#af#) <= x"cee4c6e8";
  sbox1(16#b0#) <= x"ef20cada";
  sbox1(16#b1#) <= x"36774c01";
  sbox1(16#b2#) <= x"d07e9efe";
  sbox1(16#b3#) <= x"2bf11fb4";
  sbox1(16#b4#) <= x"95dbda4d";
  sbox1(16#b5#) <= x"ae909198";
  sbox1(16#b6#) <= x"eaad8e71";
  sbox1(16#b7#) <= x"6b93d5a0";
  sbox1(16#b8#) <= x"d08ed1d0";
  sbox1(16#b9#) <= x"afc725e0";
  sbox1(16#ba#) <= x"8e3c5b2f";
  sbox1(16#bb#) <= x"8e7594b7";
  sbox1(16#bc#) <= x"8ff6e2fb";
  sbox1(16#bd#) <= x"f2122b64";
  sbox1(16#be#) <= x"8888b812";
  sbox1(16#bf#) <= x"900df01c";
  sbox1(16#c0#) <= x"4fad5ea0";
  sbox1(16#c1#) <= x"688fc31c";
  sbox1(16#c2#) <= x"d1cff191";
  sbox1(16#c3#) <= x"b3a8c1ad";
  sbox1(16#c4#) <= x"2f2f2218";
  sbox1(16#c5#) <= x"be0e1777";
  sbox1(16#c6#) <= x"ea752dfe";
  sbox1(16#c7#) <= x"8b021fa1";
  sbox1(16#c8#) <= x"e5a0cc0f";
  sbox1(16#c9#) <= x"b56f74e8";
  sbox1(16#ca#) <= x"18acf3d6";
  sbox1(16#cb#) <= x"ce89e299";
  sbox1(16#cc#) <= x"b4a84fe0";
  sbox1(16#cd#) <= x"fd13e0b7";
  sbox1(16#ce#) <= x"7cc43b81";
  sbox1(16#cf#) <= x"d2ada8d9";
  sbox1(16#d0#) <= x"165fa266";
  sbox1(16#d1#) <= x"80957705";
  sbox1(16#d2#) <= x"93cc7314";
  sbox1(16#d3#) <= x"211a1477";
  sbox1(16#d4#) <= x"e6ad2065";
  sbox1(16#d5#) <= x"77b5fa86";
  sbox1(16#d6#) <= x"c75442f5";
  sbox1(16#d7#) <= x"fb9d35cf";
  sbox1(16#d8#) <= x"ebcdaf0c";
  sbox1(16#d9#) <= x"7b3e89a0";
  sbox1(16#da#) <= x"d6411bd3";
  sbox1(16#db#) <= x"ae1e7e49";
  sbox1(16#dc#) <= x"00250e2d";
  sbox1(16#dd#) <= x"2071b35e";
  sbox1(16#de#) <= x"226800bb";
  sbox1(16#df#) <= x"57b8e0af";
  sbox1(16#e0#) <= x"2464369b";
  sbox1(16#e1#) <= x"f009b91e";
  sbox1(16#e2#) <= x"5563911d";
  sbox1(16#e3#) <= x"59dfa6aa";
  sbox1(16#e4#) <= x"78c14389";
  sbox1(16#e5#) <= x"d95a537f";
  sbox1(16#e6#) <= x"207d5ba2";
  sbox1(16#e7#) <= x"02e5b9c5";
  sbox1(16#e8#) <= x"83260376";
  sbox1(16#e9#) <= x"6295cfa9";
  sbox1(16#ea#) <= x"11c81968";
  sbox1(16#eb#) <= x"4e734a41";
  sbox1(16#ec#) <= x"b3472dca";
  sbox1(16#ed#) <= x"7b14a94a";
  sbox1(16#ee#) <= x"1b510052";
  sbox1(16#ef#) <= x"9a532915";
  sbox1(16#f0#) <= x"d60f573f";
  sbox1(16#f1#) <= x"bc9bc6e4";
  sbox1(16#f2#) <= x"2b60a476";
  sbox1(16#f3#) <= x"81e67400";
  sbox1(16#f4#) <= x"08ba6fb5";
  sbox1(16#f5#) <= x"571be91f";
  sbox1(16#f6#) <= x"f296ec6b";
  sbox1(16#f7#) <= x"2a0dd915";
  sbox1(16#f8#) <= x"b6636521";
  sbox1(16#f9#) <= x"e7b9f9b6";
  sbox1(16#fa#) <= x"ff34052e";
  sbox1(16#fb#) <= x"c5855664";
  sbox1(16#fc#) <= x"53b02d5d";
  sbox1(16#fd#) <= x"a99f8fa1";
  sbox1(16#fe#) <= x"08ba4799";
  sbox1(16#ff#) <= x"6e85076a";

  data_out <= sbox1(to_integer(unsigned(data_in)));

end arch;
