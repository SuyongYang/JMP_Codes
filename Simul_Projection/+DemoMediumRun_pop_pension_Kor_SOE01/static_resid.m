function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = DemoMediumRun_pop_pension_Kor_SOE01.static_resid_tt(T, y, x, params);
end
residual = zeros(154, 1);
lhs = y(22);
rhs = y(7)+y(22)*T(2);
residual(1) = lhs - rhs;
lhs = y(21);
rhs = y(17)+T(2)*y(21);
residual(2) = lhs - rhs;
lhs = y(23);
rhs = y(37)+y(30)*y(23)*y(56)*y(27)/(y(29)*y(5)*y(27));
residual(3) = lhs - rhs;
lhs = y(62);
rhs = 1/params(8)*y(7)*(1-params(16))+y(29)*y(62)*(1-1/params(8))/y(30);
residual(4) = lhs - rhs;
lhs = y(63);
rhs = y(62)*params(6)+y(63)*y(56)*y(31)/y(30);
residual(5) = lhs - rhs;
lhs = y(64);
rhs = y(63)+y(27)*y(30)*y(56)*y(64)/(y(29)*y(5)*y(27));
residual(6) = lhs - rhs;
lhs = y(24);
rhs = y(38)+T(2)*y(24)+T(6)*(y(23)+y(64));
residual(7) = lhs - rhs;
lhs = y(15);
rhs = y(26)*(y(24)+y(22)+y(5)*y(36)/y(30)-y(21));
residual(8) = lhs - rhs;
lhs = y(16);
rhs = y(25)*y(26)*T(7);
residual(9) = lhs - rhs;
lhs = 1-y(25)*y(26);
rhs = T(10)/y(5);
residual(10) = lhs - rhs;
lhs = 1-y(26);
rhs = T(11)/(y(5)*y(34));
residual(11) = lhs - rhs;
lhs = y(34);
rhs = params(16)+T(3);
residual(12) = lhs - rhs;
lhs = y(65);
rhs = params(7)*y(27)/(1+y(27)+y(28));
residual(13) = lhs - rhs;
lhs = y(61);
rhs = y(63)+y(65);
residual(14) = lhs - rhs;
lhs = y(60);
rhs = y(7)*y(32);
residual(15) = lhs - rhs;
lhs = y(17);
rhs = y(61)+y(60);
residual(16) = lhs - rhs;
lhs = y(29);
rhs = params(16)+y(28)*(1-y(57));
residual(17) = lhs - rhs;
lhs = y(53);
rhs = y(29);
residual(18) = lhs - rhs;
lhs = y(29)*y(27);
rhs = 1-params(16)+y(56)*y(27);
residual(19) = lhs - rhs;
lhs = y(54);
rhs = (y(29)*y(27)+y(29)+y(28)*y(53))*T(12);
residual(20) = lhs - rhs;
lhs = y(31);
rhs = (params(16)+y(28)*(1-y(57))*T(13))/y(29);
residual(21) = lhs - rhs;
lhs = T(14);
rhs = y(30)*y(7)*y(32)*params(39)*y(28)*(1-y(57))*params(18)*T(14)/(y(7)*y(29));
residual(22) = lhs - rhs;
lhs = y(58);
rhs = y(53)-y(57);
residual(23) = lhs - rhs;
lhs = (1-params(19))*(1-params(20));
rhs = y(7)*y(39);
residual(24) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = y(39)*(y(6)+y(42))*T(15);
residual(25) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = T(15)*y(39)*y(43)*y(41);
residual(26) = lhs - rhs;
lhs = y(30);
rhs = y(44)*T(16);
residual(27) = lhs - rhs;
lhs = y(30);
rhs = T(17)*T(18)*T(30);
residual(28) = lhs - rhs;
lhs = (y(39)-1)/y(39)*T(19);
rhs = params(22)*y(45);
residual(29) = lhs - rhs;
lhs = y(39);
rhs = params(30)*(1+params(26)*(y(18)-1));
residual(30) = lhs - rhs;
lhs = y(42);
rhs = params(29)+y(43)*(y(41)-params(32));
residual(31) = lhs - rhs;
lhs = y(43);
rhs = params(28)+(y(41)-params(32))*params(28)*params(15)/params(32);
residual(32) = lhs - rhs;
lhs = y(13);
rhs = y(30);
residual(33) = lhs - rhs;
lhs = y(48);
rhs = T(20)*T(21)+params(25);
residual(34) = lhs - rhs;
lhs = y(19);
rhs = y(28)*(1-y(57))*params(5)/(y(27)+1+y(28))+y(19)*params(16)*(1-params(11))/y(54);
residual(35) = lhs - rhs;
lhs = y(48);
rhs = params(25)+params(25)*y(47)*(y(49)-1);
residual(36) = lhs - rhs;
lhs = y(11);
rhs = params(25)*y(30)/y(5)*y(46)*T(22);
residual(37) = lhs - rhs;
lhs = y(45);
rhs = T(23)+y(45)*T(24)*T(25);
residual(38) = lhs - rhs;
lhs = y(10);
rhs = T(25)*T(24)*y(49)*y(47)*params(27)*T(26);
residual(39) = lhs - rhs;
lhs = y(46);
rhs = T(25)*y(49)*T(24)*T(27)-y(10);
residual(40) = lhs - rhs;
lhs = y(47);
rhs = params(31)*(1+params(27)*((y(10)-params(33))/params(33)-(y(49)-params(34))/params(34)-(y(59)-params(12))/params(12)));
residual(41) = lhs - rhs;
lhs = y(50);
rhs = T(23)-T(22)*params(25)*y(46)-y(5)*y(10)*T(28)/y(30);
residual(42) = lhs - rhs;
lhs = y(51);
rhs = T(22)*params(25)*y(46)-y(5)*y(11)/y(30);
residual(43) = lhs - rhs;
lhs = y(59);
rhs = y(45);
residual(44) = lhs - rhs;
lhs = y(5);
rhs = 1+y(6);
residual(45) = lhs - rhs;
lhs = y(37);
rhs = y(35)*y(20)/(y(52)+y(2));
residual(46) = lhs - rhs;
lhs = y(38);
rhs = y(36)*y(20)/(y(52)+y(2))+params(4)*(y(50)+y(51));
residual(47) = lhs - rhs;
lhs = y(8);
rhs = y(11)+y(10)*T(28);
residual(48) = lhs - rhs;
lhs = y(20);
rhs = y(52)+y(2)+T(15)*(1+y(6))+y(5)*y(8)/y(30)+y(1)*y(4)/y(30)-(y(52)+y(2))*T(29)-y(40)-y(8)-y(1)+(y(50)+y(51))*(1-params(4));
residual(49) = lhs - rhs;
lhs = y(1);
rhs = y(4)-y(5);
residual(50) = lhs - rhs;
lhs = y(5)-params(1);
rhs = y(4)-params(1);
residual(51) = lhs - rhs;
lhs = y(40);
rhs = y(12)+T(15)*(1-y(42));
residual(52) = lhs - rhs;
lhs = y(9);
rhs = 1-params(20)/(y(39)*params(21))-y(59)*y(18)*params(22);
residual(53) = lhs - rhs;
lhs = y(3);
rhs = y(1)-y(2);
residual(54) = lhs - rhs;
lhs = y(3);
rhs = y(9)-(y(65)+y(60)+y(10)*T(28)+y(11)+y(12)+y(14));
residual(55) = lhs - rhs;
lhs = y(14);
rhs = y(15)+y(16);
residual(56) = lhs - rhs;
lhs = y(52);
rhs = y(3)+y(40)+y(8);
residual(57) = lhs - rhs;
lhs = y(35);
rhs = y(63)+y(37)+y(5)*y(35)/y(30)-y(16)+(1-params(16))*(y(38)+y(7)+y(5)*y(36)/y(30)-y(15)-y(17));
residual(58) = lhs - rhs;
lhs = y(52);
rhs = y(36)+y(35);
residual(59) = lhs - rhs;
lhs = y(33);
rhs = y(30)/y(54);
residual(60) = lhs - rhs;
lhs = y(55);
rhs = y(30);
residual(61) = lhs - rhs;
lhs = y(54);
rhs = params(36)+y(66);
residual(62) = lhs - rhs;
lhs = y(72);
rhs = 1/(y(27)+1+y(28));
residual(63) = lhs - rhs;
lhs = y(73);
rhs = y(27)/(y(27)+1+y(28));
residual(64) = lhs - rhs;
lhs = 1/(y(27)+1+y(28));
rhs = 1/(1+params(2)+params(3))+y(67);
residual(65) = lhs - rhs;
lhs = y(27)/(y(27)+1+y(28));
rhs = params(3)/(1+params(2)+params(3))+y(68);
residual(66) = lhs - rhs;
lhs = y(4);
rhs = params(1)+y(74);
residual(67) = lhs - rhs;
lhs = y(74);
rhs = x(1)*params(160)+x(1)*params(161)+x(1)*params(162)+x(1)*params(163)+x(1)*params(164)+x(1)*params(165)+x(1)*params(166)+x(1)*params(167)+x(1)*params(168)+x(1)*params(169)+x(1)*params(170)+x(1)*params(171)+x(1)*params(172)+x(1)*params(173)+x(1)*params(174)+x(1)*params(175)+x(1)*params(176)+x(1)*params(177)+x(1)*params(178)+x(1)*params(179)+x(1)*params(180)+x(1)*params(181)+x(1)*params(182)+x(1)*params(183)+x(1)*params(184)+x(1)*params(185)+x(1)*params(186)+x(1)*params(187)+x(1)*params(188)+x(1)*params(189)+x(1)*params(190)+x(1)*params(191)+x(1)*params(192)+x(1)*params(193)+x(1)*params(194)+x(1)*params(195)+x(1)*params(196)+x(1)*params(197)+x(1)*params(198)+x(1)*params(199);
residual(68) = lhs - rhs;
lhs = y(66);
rhs = y(69)*(params(120)-params(36))+y(69)*(params(121)-params(36))+y(69)*(params(122)-params(36))+y(69)*(params(123)-params(36))+y(69)*(params(124)-params(36))+y(69)*(params(125)-params(36))+y(69)*(params(126)-params(36))+y(69)*(params(127)-params(36))+y(69)*(params(128)-params(36))+y(69)*(params(129)-params(36))+y(69)*(params(130)-params(36))+y(69)*(params(131)-params(36))+y(69)*(params(132)-params(36))+y(69)*(params(133)-params(36))+y(69)*(params(134)-params(36))+y(69)*(params(135)-params(36))+y(69)*(params(136)-params(36))+y(69)*(params(137)-params(36))+y(69)*(params(138)-params(36))+y(69)*(params(139)-params(36))+y(69)*(params(140)-params(36))+y(69)*(params(141)-params(36))+y(69)*(params(142)-params(36))+y(69)*(params(143)-params(36))+y(69)*(params(144)-params(36))+y(69)*(params(145)-params(36))+y(69)*(params(146)-params(36))+y(69)*(params(147)-params(36))+y(69)*(params(148)-params(36))+y(69)*(params(149)-params(36))+y(69)*(params(150)-params(36))+y(69)*(params(151)-params(36))+y(69)*(params(152)-params(36))+y(69)*(params(153)-params(36))+y(69)*(params(154)-params(36))+y(69)*(params(155)-params(36))+y(69)*(params(156)-params(36))+y(69)*(params(157)-params(36))+y(69)*(params(158)-params(36))+y(69)*(params(159)-params(36));
residual(69) = lhs - rhs;
lhs = y(68);
rhs = y(71);
residual(70) = lhs - rhs;
lhs = y(67);
rhs = y(70);
residual(71) = lhs - rhs;
lhs = y(70);
rhs = y(70)+x(1)*params(80)+x(1)*params(81)+x(1)*params(82)+x(1)*params(83)+x(1)*params(84)+x(1)*params(85)+x(1)*params(86)+x(1)*params(87)+x(1)*params(88)+x(1)*params(89)+x(1)*params(90)+x(1)*params(91)+x(1)*params(92)+x(1)*params(93)+x(1)*params(94)+x(1)*params(95)+x(1)*params(96)+x(1)*params(97)+x(1)*params(98)+x(1)*params(99)+x(1)*params(100)+x(1)*params(101)+x(1)*params(102)+x(1)*params(103)+x(1)*params(104)+x(1)*params(105)+x(1)*params(106)+x(1)*params(107)+x(1)*params(108)+x(1)*params(109)+x(1)*params(110)+x(1)*params(111)+x(1)*params(112)+x(1)*params(113)+x(1)*params(114)+x(1)*params(115)+x(1)*params(116)+x(1)*params(117)+x(1)*params(118)+x(1)*params(119);
residual(72) = lhs - rhs;
lhs = y(71);
rhs = y(71)+x(1)*params(80)+x(1)*params(41)+x(1)*params(42)+x(1)*params(43)+x(1)*params(44)+x(1)*params(45)+x(1)*params(46)+x(1)*params(47)+x(1)*params(48)+x(1)*params(49)+x(1)*params(50)+x(1)*params(51)+x(1)*params(52)+x(1)*params(53)+x(1)*params(54)+x(1)*params(55)+x(1)*params(56)+x(1)*params(57)+x(1)*params(58)+x(1)*params(59)+x(1)*params(60)+x(1)*params(61)+x(1)*params(62)+x(1)*params(63)+x(1)*params(64)+x(1)*params(65)+x(1)*params(66)+x(1)*params(67)+x(1)*params(68)+x(1)*params(69)+x(1)*params(70)+x(1)*params(71)+x(1)*params(72)+x(1)*params(73)+x(1)*params(74)+x(1)*params(75)+x(1)*params(76)+x(1)*params(77)+x(1)*params(78)+x(1)*params(79);
residual(73) = lhs - rhs;
lhs = y(69);
rhs = x(1);
residual(74) = lhs - rhs;
lhs = y(75);
rhs = y(29);
residual(75) = lhs - rhs;
lhs = y(76);
rhs = y(40);
residual(76) = lhs - rhs;
lhs = y(77);
rhs = y(49);
residual(77) = lhs - rhs;
lhs = y(78);
rhs = y(69);
residual(78) = lhs - rhs;
lhs = y(79);
rhs = y(69);
residual(79) = lhs - rhs;
lhs = y(80);
rhs = y(69);
residual(80) = lhs - rhs;
lhs = y(81);
rhs = y(69);
residual(81) = lhs - rhs;
lhs = y(82);
rhs = y(69);
residual(82) = lhs - rhs;
lhs = y(83);
rhs = y(69);
residual(83) = lhs - rhs;
lhs = y(84);
rhs = y(69);
residual(84) = lhs - rhs;
lhs = y(85);
rhs = y(69);
residual(85) = lhs - rhs;
lhs = y(86);
rhs = y(69);
residual(86) = lhs - rhs;
lhs = y(87);
rhs = y(69);
residual(87) = lhs - rhs;
lhs = y(88);
rhs = y(69);
residual(88) = lhs - rhs;
lhs = y(89);
rhs = y(69);
residual(89) = lhs - rhs;
lhs = y(90);
rhs = y(69);
residual(90) = lhs - rhs;
lhs = y(91);
rhs = y(69);
residual(91) = lhs - rhs;
lhs = y(92);
rhs = y(69);
residual(92) = lhs - rhs;
lhs = y(93);
rhs = y(69);
residual(93) = lhs - rhs;
lhs = y(94);
rhs = y(69);
residual(94) = lhs - rhs;
lhs = y(95);
rhs = y(69);
residual(95) = lhs - rhs;
lhs = y(96);
rhs = y(69);
residual(96) = lhs - rhs;
lhs = y(97);
rhs = y(69);
residual(97) = lhs - rhs;
lhs = y(98);
rhs = y(69);
residual(98) = lhs - rhs;
lhs = y(99);
rhs = y(69);
residual(99) = lhs - rhs;
lhs = y(100);
rhs = y(69);
residual(100) = lhs - rhs;
lhs = y(101);
rhs = y(69);
residual(101) = lhs - rhs;
lhs = y(102);
rhs = y(69);
residual(102) = lhs - rhs;
lhs = y(103);
rhs = y(69);
residual(103) = lhs - rhs;
lhs = y(104);
rhs = y(69);
residual(104) = lhs - rhs;
lhs = y(105);
rhs = y(69);
residual(105) = lhs - rhs;
lhs = y(106);
rhs = y(69);
residual(106) = lhs - rhs;
lhs = y(107);
rhs = y(69);
residual(107) = lhs - rhs;
lhs = y(108);
rhs = y(69);
residual(108) = lhs - rhs;
lhs = y(109);
rhs = y(69);
residual(109) = lhs - rhs;
lhs = y(110);
rhs = y(69);
residual(110) = lhs - rhs;
lhs = y(111);
rhs = y(69);
residual(111) = lhs - rhs;
lhs = y(112);
rhs = y(69);
residual(112) = lhs - rhs;
lhs = y(113);
rhs = y(69);
residual(113) = lhs - rhs;
lhs = y(114);
rhs = y(69);
residual(114) = lhs - rhs;
lhs = y(115);
rhs = y(69);
residual(115) = lhs - rhs;
lhs = y(116);
rhs = x(1);
residual(116) = lhs - rhs;
lhs = y(117);
rhs = x(1);
residual(117) = lhs - rhs;
lhs = y(118);
rhs = x(1);
residual(118) = lhs - rhs;
lhs = y(119);
rhs = x(1);
residual(119) = lhs - rhs;
lhs = y(120);
rhs = x(1);
residual(120) = lhs - rhs;
lhs = y(121);
rhs = x(1);
residual(121) = lhs - rhs;
lhs = y(122);
rhs = x(1);
residual(122) = lhs - rhs;
lhs = y(123);
rhs = x(1);
residual(123) = lhs - rhs;
lhs = y(124);
rhs = x(1);
residual(124) = lhs - rhs;
lhs = y(125);
rhs = x(1);
residual(125) = lhs - rhs;
lhs = y(126);
rhs = x(1);
residual(126) = lhs - rhs;
lhs = y(127);
rhs = x(1);
residual(127) = lhs - rhs;
lhs = y(128);
rhs = x(1);
residual(128) = lhs - rhs;
lhs = y(129);
rhs = x(1);
residual(129) = lhs - rhs;
lhs = y(130);
rhs = x(1);
residual(130) = lhs - rhs;
lhs = y(131);
rhs = x(1);
residual(131) = lhs - rhs;
lhs = y(132);
rhs = x(1);
residual(132) = lhs - rhs;
lhs = y(133);
rhs = x(1);
residual(133) = lhs - rhs;
lhs = y(134);
rhs = x(1);
residual(134) = lhs - rhs;
lhs = y(135);
rhs = x(1);
residual(135) = lhs - rhs;
lhs = y(136);
rhs = x(1);
residual(136) = lhs - rhs;
lhs = y(137);
rhs = x(1);
residual(137) = lhs - rhs;
lhs = y(138);
rhs = x(1);
residual(138) = lhs - rhs;
lhs = y(139);
rhs = x(1);
residual(139) = lhs - rhs;
lhs = y(140);
rhs = x(1);
residual(140) = lhs - rhs;
lhs = y(141);
rhs = x(1);
residual(141) = lhs - rhs;
lhs = y(142);
rhs = x(1);
residual(142) = lhs - rhs;
lhs = y(143);
rhs = x(1);
residual(143) = lhs - rhs;
lhs = y(144);
rhs = x(1);
residual(144) = lhs - rhs;
lhs = y(145);
rhs = x(1);
residual(145) = lhs - rhs;
lhs = y(146);
rhs = x(1);
residual(146) = lhs - rhs;
lhs = y(147);
rhs = x(1);
residual(147) = lhs - rhs;
lhs = y(148);
rhs = x(1);
residual(148) = lhs - rhs;
lhs = y(149);
rhs = x(1);
residual(149) = lhs - rhs;
lhs = y(150);
rhs = x(1);
residual(150) = lhs - rhs;
lhs = y(151);
rhs = x(1);
residual(151) = lhs - rhs;
lhs = y(152);
rhs = x(1);
residual(152) = lhs - rhs;
lhs = y(153);
rhs = x(1);
residual(153) = lhs - rhs;
lhs = y(154);
rhs = x(1);
residual(154) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
