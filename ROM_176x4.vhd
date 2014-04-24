library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ROM_176x4 is
  port (--Clock : in std_logic;
  		CS_L : in std_logic;
        R_W  : in std_logic;
        Addr   : in std_logic_vector(7 downto 0);
        Data  : out std_logic_vector(3 downto 0));
end ROM_176x4;

architecture ROM_176x4_Arch of ROM_176x4 is
  type rom_type is array (0 to 175)
        of std_logic_vector (3 downto 0);
  signal ROM : rom_type;
  signal Read_Enable : std_logic;
begin

ROM(0) <= X"7";
ROM(1) <= X"0";
ROM(2) <= X"4";
ROM(3) <= X"1";
ROM(4) <= X"D";
ROM(5) <= X"1";
ROM(6) <= X"B";
ROM(7) <= X"7";
ROM(8) <= X"2";
ROM(9) <= X"4";
ROM(10) <= X"2";
ROM(11) <= X"D";
ROM(12) <= X"0";
ROM(13) <= X"B";
ROM(14) <= X"7";
ROM(15) <= X"1";
ROM(16) <= X"D";
ROM(17) <= X"2";
ROM(18) <= X"B";
ROM(19) <= X"5";
ROM(20) <= X"0";
ROM(21) <= X"B";
ROM(22) <= X"D";
ROM(23) <= X"2";
ROM(24) <= X"F";
ROM(25) <= X"1";
ROM(26) <= X"B";
ROM(27) <= X"4";
ROM(28) <= X"1";
ROM(29) <= X"F";
ROM(30) <= X"0";
ROM(31) <= X"B";
ROM(32) <= X"6";
ROM(33) <= X"1";
ROM(34) <= X"D";
ROM(35) <= X"0";
ROM(36) <= X"B";
ROM(37) <= X"4";
ROM(38) <= X"2";
ROM(39) <= X"B";
ROM(40) <= X"2";
ROM(41) <= X"4";
ROM(42) <= X"9";
ROM(43) <= X"3";
ROM(44) <= X"1";
ROM(45) <= X"F";
ROM(46) <= X"1";
ROM(47) <= X"B";
ROM(48) <= X"4";
ROM(49) <= X"1";
ROM(50) <= X"F";
ROM(51) <= X"0";
ROM(52) <= X"B";
ROM(53) <= X"6";
ROM(54) <= X"F";
ROM(55) <= X"D";
ROM(56) <= X"0";
ROM(57) <= X"B";
ROM(58) <= X"4";
ROM(59) <= X"2";
ROM(60) <= X"A";
ROM(61) <= X"C";
ROM(62) <= X"5";
ROM(63) <= X"9";
ROM(64) <= X"3";
ROM(65) <= X"1";
ROM(66) <= X"F";
ROM(67) <= X"0";
ROM(68) <= X"B";
ROM(69) <= X"6";
ROM(70) <= X"1";
ROM(71) <= X"4";
ROM(72) <= X"2";
ROM(73) <= X"7";
ROM(74) <= X"F";
ROM(75) <= X"D";
ROM(76) <= X"0";
ROM(77) <= X"B";
ROM(78) <= X"F";
ROM(79) <= X"1";
ROM(80) <= X"B";
ROM(81) <= X"B";
ROM(82) <= X"0";
ROM(83) <= X"7";
ROM(84) <= X"6";
ROM(85) <= X"1";
ROM(86) <= X"D";
ROM(87) <= X"1";
ROM(88) <= X"B";
ROM(89) <= X"9";
ROM(90) <= X"3";
ROM(91) <= X"1";
ROM(92) <= X"7";
ROM(93) <= X"9";
ROM(94) <= X"D";
ROM(95) <= X"0";
ROM(96) <= X"B";
ROM(97) <= X"4";
ROM(98) <= X"2";
ROM(99) <= X"F";
ROM(100) <= X"1";
ROM(101) <= X"B";
ROM(102) <= X"A";
ROM(103) <= X"F";
ROM(104) <= X"7";
ROM(105) <= X"6";
ROM(106) <= X"F";
ROM(107) <= X"D";
ROM(108) <= X"1";
ROM(109) <= X"B";
ROM(110) <= X"9";
ROM(111) <= X"D";
ROM(112) <= X"2";
ROM(113) <= X"F";
ROM(114) <= X"1";
ROM(115) <= X"B";
ROM(116) <= X"6";
ROM(117) <= X"1";
ROM(118) <= X"4";
ROM(119) <= X"1";
ROM(120) <= X"7";
ROM(121) <= X"0";
ROM(122) <= X"D";
ROM(123) <= X"1";
ROM(124) <= X"B";
ROM(125) <= X"9";
ROM(126) <= X"3";
ROM(127) <= X"1";
ROM(128) <= X"7";
ROM(129) <= X"9";
ROM(130) <= X"D";
ROM(131) <= X"1";
ROM(132) <= X"B";
ROM(133) <= X"9";
ROM(134) <= X"D";
ROM(135) <= X"2";
ROM(136) <= X"0";
ROM(137) <= X"0";
ROM(138) <= X"0";
ROM(139) <= X"0";
ROM(140) <= X"0";
ROM(141) <= X"0";
ROM(142) <= X"0";
ROM(143) <= X"0";
ROM(144) <= X"0";
ROM(145) <= X"0";
ROM(146) <= X"0";
ROM(147) <= X"0";
ROM(148) <= X"0";
ROM(149) <= X"0";
ROM(150) <= X"0";
ROM(151) <= X"0";
ROM(152) <= X"0";
ROM(153) <= X"0";
ROM(154) <= X"0";
ROM(155) <= X"0";
ROM(156) <= X"0";
ROM(157) <= X"0";
ROM(158) <= X"0";
ROM(159) <= X"0";
ROM(160) <= X"0";
ROM(161) <= X"0";
ROM(162) <= X"0";
ROM(163) <= X"0";
ROM(164) <= X"0";
ROM(165) <= X"0";
ROM(166) <= X"0";
ROM(167) <= X"0";
ROM(168) <= X"0";
ROM(169) <= X"0";
ROM(170) <= X"0";
ROM(171) <= X"0";
ROM(172) <= X"0";
ROM(173) <= X"0";
ROM(174) <= X"0";
ROM(175) <= X"0";
	Read_Enable <=  '0' when(CS_L='0' and R_W = '1') else '1';

	process (Read_Enable)
	begin
		--if(Clock='0') then
			if(Read_Enable = '0') then
			  Data  <= ROM(conv_integer(Addr));
		  	else
			  Data <= "ZZZZ";
	      	end if;
		--else Data <= "ZZZZ";
		--end if;

	end process;

	end ROM_176x4_Arch;