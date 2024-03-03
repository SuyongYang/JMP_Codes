function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = DemoMediumRunFinal_pop_pension_Kor_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(153, 1);
lhs = y(132);
rhs = y(117)+T(2)*y(268);
residual(1) = lhs - rhs;
lhs = y(131);
rhs = y(127)+T(2)*y(267);
residual(2) = lhs - rhs;
lhs = y(133);
rhs = y(147)+y(273)*y(269)*y(166)*y(12)/(y(139)*y(115)*y(137));
residual(3) = lhs - rhs;
lhs = y(172);
rhs = 1/params(8)*y(4)*(1-params(16))+(1-1/params(8))*y(27)*y(32)/y(140);
residual(4) = lhs - rhs;
lhs = y(173);
rhs = y(172)*params(6)+y(26)*y(16)/y(140)*y(28);
residual(5) = lhs - rhs;
lhs = y(174);
rhs = y(173)+y(12)*y(273)*y(166)*y(276)/(y(139)*y(115)*y(137));
residual(6) = lhs - rhs;
lhs = y(134);
rhs = y(148)+T(2)*y(270)+T(6)*(y(269)+y(276));
residual(7) = lhs - rhs;
lhs = y(125);
rhs = y(136)*(y(134)+y(132)+y(3)*y(18)/y(140)-y(131));
residual(8) = lhs - rhs;
lhs = y(126);
rhs = y(136)*y(135)*T(7);
residual(9) = lhs - rhs;
lhs = 1-y(136)*y(135);
rhs = T(11)*y(136)*y(135)/(y(271)*y(272));
residual(10) = lhs - rhs;
lhs = 1-y(136);
rhs = T(12)/(y(115)*y(144))*y(136)/y(272);
residual(11) = lhs - rhs;
lhs = y(144);
rhs = params(16)+T(3);
residual(12) = lhs - rhs;
lhs = y(175);
rhs = params(7)*y(12)/(1+y(12)+y(13));
residual(13) = lhs - rhs;
lhs = y(171);
rhs = y(173)+y(175);
residual(14) = lhs - rhs;
lhs = y(170);
rhs = y(117)*y(142);
residual(15) = lhs - rhs;
lhs = y(127);
rhs = y(171)+y(170);
residual(16) = lhs - rhs;
lhs = y(139);
rhs = params(16)+y(13)*(1-y(167));
residual(17) = lhs - rhs;
lhs = y(163);
rhs = y(139)*y(138)/y(13);
residual(18) = lhs - rhs;
lhs = y(139)*y(137);
rhs = 1-params(16)+y(166)*y(12);
residual(19) = lhs - rhs;
lhs = y(164);
rhs = (y(139)*y(137)+y(139)+y(13)*y(163))*T(13);
residual(20) = lhs - rhs;
lhs = y(141);
rhs = (params(16)+y(13)*(1-y(167))*T(14))/y(139);
residual(21) = lhs - rhs;
lhs = y(136)^T(15);
rhs = T(19)/(y(117)*y(139));
residual(22) = lhs - rhs;
lhs = y(168);
rhs = y(163)-y(167);
residual(23) = lhs - rhs;
lhs = (1-params(19))*(1-params(20));
rhs = y(117)*y(149);
residual(24) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = y(149)*(y(116)+y(152))*T(20);
residual(25) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = T(20)*y(149)*y(153)*y(151);
residual(26) = lhs - rhs;
lhs = y(140);
rhs = y(149)/y(19)*y(154)*T(21);
residual(27) = lhs - rhs;
lhs = y(140);
rhs = T(26)*T(25)*T(24)*T(38);
residual(28) = lhs - rhs;
lhs = (y(149)-1)/y(149)*T(27);
rhs = params(22)*y(155);
residual(29) = lhs - rhs;
lhs = y(149);
rhs = params(30)*(1+params(26)*(y(128)-1));
residual(30) = lhs - rhs;
lhs = y(152);
rhs = params(29)+y(153)*(y(151)-params(32));
residual(31) = lhs - rhs;
lhs = y(153);
rhs = params(28)+(y(151)-params(32))*params(28)*params(15)/params(32);
residual(32) = lhs - rhs;
lhs = y(123);
rhs = y(140)*y(122)/y(9);
residual(33) = lhs - rhs;
lhs = y(158)*y(159)/y(23);
rhs = T(28)*T(29)+params(25);
residual(34) = lhs - rhs;
lhs = y(129);
rhs = y(13)*(1-y(167))*params(5)/(y(12)+1+y(13))+params(16)*(1-params(11))/y(25)*y(11);
residual(35) = lhs - rhs;
lhs = y(158);
rhs = params(25)+params(25)*y(157)*(y(23)-1);
residual(36) = lhs - rhs;
lhs = y(121);
rhs = T(30)*T(31);
residual(37) = lhs - rhs;
lhs = y(155);
rhs = T(32)+T(33)*T(34)*y(274);
residual(38) = lhs - rhs;
lhs = y(120);
rhs = T(34)*T(33)*y(23)*y(157)*params(27)*T(35);
residual(39) = lhs - rhs;
lhs = y(156);
rhs = T(34)*y(23)*T(33)*T(36)-y(120);
residual(40) = lhs - rhs;
lhs = y(157);
rhs = params(31)*(1+params(27)*((y(120)-params(33))/params(33)-(y(23)-params(34))/params(34)-(y(169)-params(12))/params(12)));
residual(41) = lhs - rhs;
lhs = y(160);
rhs = T(32)-params(25)*y(156)*(1-params(25)*y(34)/(y(22)*y(23)))-y(3)*y(7)*(1-1/y(34))/y(140);
residual(42) = lhs - rhs;
lhs = y(161);
rhs = params(25)*y(156)*(1-params(25)*y(34)/(y(22)*y(23)))-y(3)*y(8)/y(140);
residual(43) = lhs - rhs;
lhs = y(169);
rhs = y(155);
residual(44) = lhs - rhs;
lhs = y(115);
rhs = 1+y(265);
residual(45) = lhs - rhs;
lhs = y(147);
rhs = y(17)*y(130)/y(24);
residual(46) = lhs - rhs;
lhs = y(148);
rhs = y(18)*y(130)/y(24)+params(4)*(y(160)+y(161));
residual(47) = lhs - rhs;
lhs = y(118);
rhs = y(121)+y(120)*(1-1/y(23));
residual(48) = lhs - rhs;
lhs = y(130);
rhs = T(20)*(1+y(116))+(y(3)*y(5)+y(1)*y(2))/y(140)-y(3)*y(24)/y(140)-y(150)-y(112)+y(162)+(y(160)+y(161))*(1-params(4));
residual(49) = lhs - rhs;
lhs = y(115);
rhs = y(114);
residual(50) = lhs - rhs;
lhs = y(150);
rhs = y(122)+T(20)*(1-y(152));
residual(51) = lhs - rhs;
lhs = y(119);
rhs = 1-params(20)/(y(149)*params(21))-y(169)*y(128)*params(22);
residual(52) = lhs - rhs;
lhs = y(113);
rhs = y(119)-(y(175)+y(170)+y(120)*(1-1/y(23))+y(121)+y(122)+y(124));
residual(53) = lhs - rhs;
lhs = y(124);
rhs = y(125)+y(126);
residual(54) = lhs - rhs;
lhs = y(112);
rhs = y(118)+y(113);
residual(55) = lhs - rhs;
lhs = y(162);
rhs = y(150)+y(112);
residual(56) = lhs - rhs;
lhs = y(145);
rhs = y(173)+y(147)+y(3)*y(17)/y(140)-y(126)+(1-params(16))*(y(148)+y(117)+y(3)*y(18)/y(140)-y(125)-y(127));
residual(57) = lhs - rhs;
lhs = y(162);
rhs = y(145)+y(146);
residual(58) = lhs - rhs;
lhs = y(143);
rhs = y(15)*T(37)/y(25);
residual(59) = lhs - rhs;
lhs = y(165);
rhs = y(140)*T(37);
residual(60) = lhs - rhs;
lhs = y(164);
rhs = params(36)+y(176);
residual(61) = lhs - rhs;
lhs = y(182);
rhs = 1/(y(137)+1+y(138));
residual(62) = lhs - rhs;
lhs = y(183);
rhs = y(137)/(y(137)+1+y(138));
residual(63) = lhs - rhs;
lhs = 1/(y(137)+1+y(138));
rhs = 1/(1+params(2)+params(3))+y(177);
residual(64) = lhs - rhs;
lhs = y(137)/(y(137)+1+y(138));
rhs = params(3)/(1+params(2)+params(3))+y(178);
residual(65) = lhs - rhs;
lhs = y(114);
rhs = params(1)+y(184);
residual(66) = lhs - rhs;
lhs = y(184);
rhs = x(it_, 1)*params(160)+params(161)*y(73)+params(162)*y(74)+params(163)*y(75)+params(164)*y(76)+params(165)*y(77)+params(166)*y(78)+params(167)*y(79)+params(168)*y(80)+params(169)*y(81)+params(170)*y(82)+params(171)*y(83)+params(172)*y(84)+params(173)*y(85)+params(174)*y(86)+params(175)*y(87)+params(176)*y(88)+params(177)*y(89)+params(178)*y(90)+params(179)*y(91)+params(180)*y(92)+params(181)*y(93)+params(182)*y(94)+params(183)*y(95)+params(184)*y(96)+params(185)*y(97)+params(186)*y(98)+params(187)*y(99)+params(188)*y(100)+params(189)*y(101)+params(190)*y(102)+params(191)*y(103)+params(192)*y(104)+params(193)*y(105)+params(194)*y(106)+params(195)*y(107)+params(196)*y(108)+params(197)*y(109)+params(198)*y(110)+params(199)*y(111);
residual(67) = lhs - rhs;
lhs = y(176);
rhs = y(179)*(params(120)-params(36))+y(29)*(params(121)-params(36))+(params(122)-params(36))*y(35)+(params(123)-params(36))*y(36)+(params(124)-params(36))*y(37)+(params(125)-params(36))*y(38)+(params(126)-params(36))*y(39)+(params(127)-params(36))*y(40)+(params(128)-params(36))*y(41)+(params(129)-params(36))*y(42)+(params(130)-params(36))*y(43)+(params(131)-params(36))*y(44)+(params(132)-params(36))*y(45)+(params(133)-params(36))*y(46)+(params(134)-params(36))*y(47)+(params(135)-params(36))*y(48)+(params(136)-params(36))*y(49)+(params(137)-params(36))*y(50)+(params(138)-params(36))*y(51)+(params(139)-params(36))*y(52)+(params(140)-params(36))*y(53)+(params(141)-params(36))*y(54)+(params(142)-params(36))*y(55)+(params(143)-params(36))*y(56)+(params(144)-params(36))*y(57)+(params(145)-params(36))*y(58)+(params(146)-params(36))*y(59)+(params(147)-params(36))*y(60)+(params(148)-params(36))*y(61)+(params(149)-params(36))*y(62)+(params(150)-params(36))*y(63)+(params(151)-params(36))*y(64)+(params(152)-params(36))*y(65)+(params(153)-params(36))*y(66)+(params(154)-params(36))*y(67)+(params(155)-params(36))*y(68)+(params(156)-params(36))*y(69)+(params(157)-params(36))*y(70)+(params(158)-params(36))*y(71)+(params(159)-params(36))*y(72);
residual(68) = lhs - rhs;
lhs = y(178);
rhs = y(181);
residual(69) = lhs - rhs;
lhs = y(177);
rhs = y(180);
residual(70) = lhs - rhs;
lhs = y(180);
rhs = y(30)+x(it_, 1)*params(80)+params(81)*y(73)+params(82)*y(74)+params(83)*y(75)+params(84)*y(76)+params(85)*y(77)+params(86)*y(78)+params(87)*y(79)+params(88)*y(80)+params(89)*y(81)+params(90)*y(82)+params(91)*y(83)+params(92)*y(84)+params(93)*y(85)+params(94)*y(86)+params(95)*y(87)+params(96)*y(88)+params(97)*y(89)+params(98)*y(90)+params(99)*y(91)+params(100)*y(92)+params(101)*y(93)+params(102)*y(94)+params(103)*y(95)+params(104)*y(96)+params(105)*y(97)+params(106)*y(98)+params(107)*y(99)+params(108)*y(100)+params(109)*y(101)+params(110)*y(102)+params(111)*y(103)+params(112)*y(104)+params(113)*y(105)+params(114)*y(106)+params(115)*y(107)+params(116)*y(108)+params(117)*y(109)+params(118)*y(110)+params(119)*y(111);
residual(71) = lhs - rhs;
lhs = y(181);
rhs = x(it_, 1)*params(80)+y(31)+params(41)*y(73)+params(42)*y(74)+params(43)*y(75)+params(44)*y(76)+params(45)*y(77)+params(46)*y(78)+params(47)*y(79)+params(48)*y(80)+params(49)*y(81)+params(50)*y(82)+params(51)*y(83)+params(52)*y(84)+params(53)*y(85)+params(54)*y(86)+params(55)*y(87)+params(56)*y(88)+params(57)*y(89)+params(58)*y(90)+params(59)*y(91)+params(60)*y(92)+params(61)*y(93)+params(62)*y(94)+params(63)*y(95)+params(64)*y(96)+params(65)*y(97)+params(66)*y(98)+params(67)*y(99)+params(68)*y(100)+params(69)*y(101)+params(70)*y(102)+params(71)*y(103)+params(72)*y(104)+params(73)*y(105)+params(74)*y(106)+params(75)*y(107)+params(76)*y(108)+params(77)*y(109)+params(78)*y(110)+params(79)*y(111);
residual(72) = lhs - rhs;
lhs = y(179);
rhs = x(it_, 1);
residual(73) = lhs - rhs;
lhs = y(185);
rhs = y(14);
residual(74) = lhs - rhs;
lhs = y(186);
rhs = y(20);
residual(75) = lhs - rhs;
lhs = y(187);
rhs = y(23);
residual(76) = lhs - rhs;
lhs = y(188);
rhs = y(29);
residual(77) = lhs - rhs;
lhs = y(189);
rhs = y(35);
residual(78) = lhs - rhs;
lhs = y(190);
rhs = y(36);
residual(79) = lhs - rhs;
lhs = y(191);
rhs = y(37);
residual(80) = lhs - rhs;
lhs = y(192);
rhs = y(38);
residual(81) = lhs - rhs;
lhs = y(193);
rhs = y(39);
residual(82) = lhs - rhs;
lhs = y(194);
rhs = y(40);
residual(83) = lhs - rhs;
lhs = y(195);
rhs = y(41);
residual(84) = lhs - rhs;
lhs = y(196);
rhs = y(42);
residual(85) = lhs - rhs;
lhs = y(197);
rhs = y(43);
residual(86) = lhs - rhs;
lhs = y(198);
rhs = y(44);
residual(87) = lhs - rhs;
lhs = y(199);
rhs = y(45);
residual(88) = lhs - rhs;
lhs = y(200);
rhs = y(46);
residual(89) = lhs - rhs;
lhs = y(201);
rhs = y(47);
residual(90) = lhs - rhs;
lhs = y(202);
rhs = y(48);
residual(91) = lhs - rhs;
lhs = y(203);
rhs = y(49);
residual(92) = lhs - rhs;
lhs = y(204);
rhs = y(50);
residual(93) = lhs - rhs;
lhs = y(205);
rhs = y(51);
residual(94) = lhs - rhs;
lhs = y(206);
rhs = y(52);
residual(95) = lhs - rhs;
lhs = y(207);
rhs = y(53);
residual(96) = lhs - rhs;
lhs = y(208);
rhs = y(54);
residual(97) = lhs - rhs;
lhs = y(209);
rhs = y(55);
residual(98) = lhs - rhs;
lhs = y(210);
rhs = y(56);
residual(99) = lhs - rhs;
lhs = y(211);
rhs = y(57);
residual(100) = lhs - rhs;
lhs = y(212);
rhs = y(58);
residual(101) = lhs - rhs;
lhs = y(213);
rhs = y(59);
residual(102) = lhs - rhs;
lhs = y(214);
rhs = y(60);
residual(103) = lhs - rhs;
lhs = y(215);
rhs = y(61);
residual(104) = lhs - rhs;
lhs = y(216);
rhs = y(62);
residual(105) = lhs - rhs;
lhs = y(217);
rhs = y(63);
residual(106) = lhs - rhs;
lhs = y(218);
rhs = y(64);
residual(107) = lhs - rhs;
lhs = y(219);
rhs = y(65);
residual(108) = lhs - rhs;
lhs = y(220);
rhs = y(66);
residual(109) = lhs - rhs;
lhs = y(221);
rhs = y(67);
residual(110) = lhs - rhs;
lhs = y(222);
rhs = y(68);
residual(111) = lhs - rhs;
lhs = y(223);
rhs = y(69);
residual(112) = lhs - rhs;
lhs = y(224);
rhs = y(70);
residual(113) = lhs - rhs;
lhs = y(225);
rhs = y(71);
residual(114) = lhs - rhs;
lhs = y(226);
rhs = x(it_, 1);
residual(115) = lhs - rhs;
lhs = y(227);
rhs = y(73);
residual(116) = lhs - rhs;
lhs = y(228);
rhs = y(74);
residual(117) = lhs - rhs;
lhs = y(229);
rhs = y(75);
residual(118) = lhs - rhs;
lhs = y(230);
rhs = y(76);
residual(119) = lhs - rhs;
lhs = y(231);
rhs = y(77);
residual(120) = lhs - rhs;
lhs = y(232);
rhs = y(78);
residual(121) = lhs - rhs;
lhs = y(233);
rhs = y(79);
residual(122) = lhs - rhs;
lhs = y(234);
rhs = y(80);
residual(123) = lhs - rhs;
lhs = y(235);
rhs = y(81);
residual(124) = lhs - rhs;
lhs = y(236);
rhs = y(82);
residual(125) = lhs - rhs;
lhs = y(237);
rhs = y(83);
residual(126) = lhs - rhs;
lhs = y(238);
rhs = y(84);
residual(127) = lhs - rhs;
lhs = y(239);
rhs = y(85);
residual(128) = lhs - rhs;
lhs = y(240);
rhs = y(86);
residual(129) = lhs - rhs;
lhs = y(241);
rhs = y(87);
residual(130) = lhs - rhs;
lhs = y(242);
rhs = y(88);
residual(131) = lhs - rhs;
lhs = y(243);
rhs = y(89);
residual(132) = lhs - rhs;
lhs = y(244);
rhs = y(90);
residual(133) = lhs - rhs;
lhs = y(245);
rhs = y(91);
residual(134) = lhs - rhs;
lhs = y(246);
rhs = y(92);
residual(135) = lhs - rhs;
lhs = y(247);
rhs = y(93);
residual(136) = lhs - rhs;
lhs = y(248);
rhs = y(94);
residual(137) = lhs - rhs;
lhs = y(249);
rhs = y(95);
residual(138) = lhs - rhs;
lhs = y(250);
rhs = y(96);
residual(139) = lhs - rhs;
lhs = y(251);
rhs = y(97);
residual(140) = lhs - rhs;
lhs = y(252);
rhs = y(98);
residual(141) = lhs - rhs;
lhs = y(253);
rhs = y(99);
residual(142) = lhs - rhs;
lhs = y(254);
rhs = y(100);
residual(143) = lhs - rhs;
lhs = y(255);
rhs = y(101);
residual(144) = lhs - rhs;
lhs = y(256);
rhs = y(102);
residual(145) = lhs - rhs;
lhs = y(257);
rhs = y(103);
residual(146) = lhs - rhs;
lhs = y(258);
rhs = y(104);
residual(147) = lhs - rhs;
lhs = y(259);
rhs = y(105);
residual(148) = lhs - rhs;
lhs = y(260);
rhs = y(106);
residual(149) = lhs - rhs;
lhs = y(261);
rhs = y(107);
residual(150) = lhs - rhs;
lhs = y(262);
rhs = y(108);
residual(151) = lhs - rhs;
lhs = y(263);
rhs = y(109);
residual(152) = lhs - rhs;
lhs = y(264);
rhs = y(110);
residual(153) = lhs - rhs;

end
