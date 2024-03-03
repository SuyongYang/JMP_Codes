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
    T = DemoMediumRun_Canada_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(128, 1);
lhs = y(109);
rhs = y(93)+T(2)*y(217);
residual(1) = lhs - rhs;
lhs = y(108);
rhs = y(104)+T(2)*y(216);
residual(2) = lhs - rhs;
lhs = y(110);
rhs = y(125)+y(222)*y(218)*y(143)*y(10)/(y(116)*y(91)*y(114));
residual(3) = lhs - rhs;
lhs = y(111);
rhs = y(126)+T(2)*y(219)+y(218)*T(6);
residual(4) = lhs - rhs;
lhs = y(100);
rhs = y(113)*(y(111)+y(109)+y(3)*y(16)/y(117)-y(108));
residual(5) = lhs - rhs;
lhs = y(102);
rhs = y(113)*y(112)*(y(110)+y(3)*y(15)/y(117));
residual(6) = lhs - rhs;
lhs = 1-y(113)*y(112);
rhs = T(10)*y(113)*y(112)/(y(220)*y(221));
residual(7) = lhs - rhs;
lhs = 1-y(113);
rhs = T(11)/(y(91)*y(122))*y(113)/y(221);
residual(8) = lhs - rhs;
lhs = y(122);
rhs = params(4)+T(3);
residual(9) = lhs - rhs;
lhs = y(101);
rhs = y(100)*(y(114)+1+y(115));
residual(10) = lhs - rhs;
lhs = y(103);
rhs = y(102)*(y(114)+1+y(115))/y(114);
residual(11) = lhs - rhs;
lhs = y(116);
rhs = params(4)+(1-y(152))*y(11);
residual(12) = lhs - rhs;
lhs = y(141);
rhs = y(116)*y(115)/y(11);
residual(13) = lhs - rhs;
lhs = y(116)*y(114);
rhs = 1-params(4)+y(143)*y(10);
residual(14) = lhs - rhs;
lhs = y(142);
rhs = (y(116)*y(114)+y(116)+y(11)*y(141))*T(12);
residual(15) = lhs - rhs;
lhs = y(118);
rhs = (params(4)+(1-y(152))*y(11)*T(13))/y(116);
residual(16) = lhs - rhs;
lhs = y(104);
rhs = y(93)*y(119);
residual(17) = lhs - rhs;
lhs = y(113)^T(14);
rhs = T(18)/(y(141)*y(118)*y(93)*y(116));
residual(18) = lhs - rhs;
lhs = y(151);
rhs = y(141)-y(152);
residual(19) = lhs - rhs;
lhs = (1-params(17))*(1-params(18));
rhs = y(93)*y(127);
residual(20) = lhs - rhs;
lhs = params(17)*(1-params(18));
rhs = y(127)*(y(92)+y(130))*T(19);
residual(21) = lhs - rhs;
lhs = params(17)*(1-params(18));
rhs = T(19)*y(127)*y(131)*y(129);
residual(22) = lhs - rhs;
lhs = y(117);
rhs = y(127)/y(17)*y(132)*T(20);
residual(23) = lhs - rhs;
lhs = y(117);
rhs = T(25)*T(24)*T(23)*T(37);
residual(24) = lhs - rhs;
lhs = (y(127)-1)/y(127)*T(26);
rhs = params(20)*y(133);
residual(25) = lhs - rhs;
lhs = y(127);
rhs = params(28)*(1+params(24)*(y(105)-1));
residual(26) = lhs - rhs;
lhs = y(130);
rhs = params(27)+y(131)*(y(129)-params(30));
residual(27) = lhs - rhs;
lhs = y(131);
rhs = params(26)+(y(129)-params(30))*params(26)*params(13)/params(30);
residual(28) = lhs - rhs;
lhs = y(136)*y(137)/y(21);
rhs = T(27)*T(28)+params(23);
residual(29) = lhs - rhs;
lhs = y(106);
rhs = y(11)*(1-y(152))*params(3)/(y(10)+1+y(11))+params(4)*(1-params(9))/y(142)*y(9);
residual(30) = lhs - rhs;
lhs = y(136);
rhs = params(23)+params(23)*y(135)*(y(21)-1);
residual(31) = lhs - rhs;
lhs = y(97);
rhs = T(29)*T(30);
residual(32) = lhs - rhs;
lhs = y(133);
rhs = T(31)+T(32)*T(33)*y(223);
residual(33) = lhs - rhs;
lhs = y(96);
rhs = T(33)*T(32)*y(21)*y(135)*params(25)*T(34);
residual(34) = lhs - rhs;
lhs = y(134);
rhs = T(33)*y(21)*T(32)*T(35)-y(96);
residual(35) = lhs - rhs;
lhs = y(135);
rhs = params(29)*(1+params(25)*((y(96)-params(31))/params(31)-(y(21)-params(32))/params(32)-(y(147)-params(10))/params(10)));
residual(36) = lhs - rhs;
lhs = y(138);
rhs = T(31)-params(23)*y(134)*(1-params(23)*y(28)/(y(20)*y(21)))-y(3)*y(6)*(1-1/y(28))/y(117);
residual(37) = lhs - rhs;
lhs = y(139);
rhs = params(23)*y(134)*(1-params(23)*y(28)/(y(20)*y(21)))-y(3)*y(7)/y(117);
residual(38) = lhs - rhs;
lhs = y(147);
rhs = y(133);
residual(39) = lhs - rhs;
lhs = y(87);
rhs = y(91)+x(it_, 1)*(y(90)-y(91))+(y(90)-y(91))*y(57)+(y(90)-y(91))*y(58)+(y(90)-y(91))*y(59)+(y(90)-y(91))*y(60)+(y(90)-y(91))*y(61)+(y(90)-y(91))*y(62)+(y(90)-y(91))*y(63)+(y(90)-y(91))*y(64)+(y(90)-y(91))*y(65)+(y(90)-y(91))*y(66);
residual(40) = lhs - rhs;
lhs = 1+y(214);
rhs = y(87);
residual(41) = lhs - rhs;
lhs = y(125);
rhs = y(15)*y(107)/y(22);
residual(42) = lhs - rhs;
lhs = y(126);
rhs = y(16)*y(107)/y(22)+params(2)*(y(138)+y(139));
residual(43) = lhs - rhs;
lhs = y(94);
rhs = y(97)+y(96)*(1-1/y(21));
residual(44) = lhs - rhs;
lhs = y(107);
rhs = T(19)*(1+y(92))+y(3)*y(4)/y(117)+y(1)*y(2)/y(117)-y(3)*y(22)/y(117)-y(128)-y(94)-y(89)+y(140)+(y(138)+y(139))*(1-params(2));
residual(45) = lhs - rhs;
lhs = y(128);
rhs = T(19)*(1-y(130))+y(98);
residual(46) = lhs - rhs;
lhs = y(95);
rhs = 1-params(18)/(y(127)*params(19))-y(147)*y(105)*params(20);
residual(47) = lhs - rhs;
lhs = y(95);
rhs = y(104)+y(89)+y(96)*(1-1/y(21))+y(97)+y(98)+y(99);
residual(48) = lhs - rhs;
lhs = y(99);
rhs = y(100)+y(102);
residual(49) = lhs - rhs;
lhs = y(140);
rhs = y(89)+y(94)+y(128);
residual(50) = lhs - rhs;
lhs = y(123);
rhs = y(125)+y(3)*y(15)/y(117)-y(102)+(1-params(4))*(y(126)+y(93)+y(3)*y(16)/y(117)-y(100)-y(104));
residual(51) = lhs - rhs;
lhs = y(140);
rhs = y(123)+y(124);
residual(52) = lhs - rhs;
lhs = y(88);
rhs = y(91)-y(90);
residual(53) = lhs - rhs;
lhs = 0;
rhs = (1+y(214))*y(128)/y(222)+y(91)*y(94)/y(222)+y(90)*y(89)/y(222)-y(91)*y(140)/y(222);
residual(54) = lhs - rhs;
lhs = y(86);
rhs = x(it_, 1)*params(128)+params(129)*y(57)+params(130)*y(58)+params(131)*y(59)+params(132)*y(60)+params(133)*y(61)+params(134)*y(62)+params(135)*y(63)+params(136)*y(64)+params(137)*y(65)+params(138)*y(66)+params(139)*y(67)+params(140)*y(68)+params(141)*y(69)+params(142)*y(70)+params(143)*y(71)+params(144)*y(72)+params(145)*y(73)+params(146)*y(74)+params(147)*y(75)+params(148)*y(76)+params(149)*y(77)+params(150)*y(78)+params(151)*y(79)+params(152)*y(80)+params(153)*y(81)+params(154)*y(82)+params(155)*y(83)+params(156)*y(84)+params(157)*y(85);
residual(55) = lhs - rhs;
lhs = y(90);
rhs = y(86)+params(158);
residual(56) = lhs - rhs;
lhs = y(120);
rhs = y(13)*T(36)/y(23);
residual(57) = lhs - rhs;
lhs = y(121);
rhs = y(117)*T(36);
residual(58) = lhs - rhs;
lhs = y(142);
rhs = params(34)+y(146);
residual(59) = lhs - rhs;
lhs = y(153);
rhs = 1/(y(114)+1+y(115));
residual(60) = lhs - rhs;
lhs = y(154);
rhs = y(114)/(y(114)+1+y(115));
residual(61) = lhs - rhs;
lhs = 1/(y(114)+1+y(115));
rhs = 1/(1+params(5)+params(6))+y(145);
residual(62) = lhs - rhs;
lhs = y(114)/(y(114)+1+y(115));
rhs = params(6)/(1+params(5)+params(6))+y(144);
residual(63) = lhs - rhs;
lhs = y(146);
rhs = y(150)*(params(38)-params(34))+y(26)*(params(39)-params(34))+(params(40)-params(34))*y(29)+(params(41)-params(34))*y(30)+(params(42)-params(34))*y(31)+(params(43)-params(34))*y(32)+(params(44)-params(34))*y(33)+(params(45)-params(34))*y(34)+(params(46)-params(34))*y(35)+(params(47)-params(34))*y(36)+(params(48)-params(34))*y(37)+(params(49)-params(34))*y(38)+(params(50)-params(34))*y(39)+(params(51)-params(34))*y(40)+(params(52)-params(34))*y(41)+(params(53)-params(34))*y(42)+(params(54)-params(34))*y(43)+(params(55)-params(34))*y(44)+(params(56)-params(34))*y(45)+(params(57)-params(34))*y(46)+(params(58)-params(34))*y(47)+(params(59)-params(34))*y(48)+(params(60)-params(34))*y(49)+(params(61)-params(34))*y(50)+(params(62)-params(34))*y(51)+(params(63)-params(34))*y(52)+(params(64)-params(34))*y(53)+(params(65)-params(34))*y(54)+(params(66)-params(34))*y(55)+(params(67)-params(34))*y(56);
residual(64) = lhs - rhs;
lhs = y(144);
rhs = y(148);
residual(65) = lhs - rhs;
lhs = y(145);
rhs = y(149);
residual(66) = lhs - rhs;
lhs = y(149);
rhs = y(25)+x(it_, 1)*params(68)+params(69)*y(57)+params(70)*y(58)+params(71)*y(59)+params(72)*y(60)+params(73)*y(61)+params(74)*y(62)+params(75)*y(63)+params(76)*y(64)+params(77)*y(65)+params(78)*y(66)+params(79)*y(67)+params(80)*y(68)+params(81)*y(69)+params(82)*y(70)+params(83)*y(71)+params(84)*y(72)+params(85)*y(73)+params(86)*y(74)+params(87)*y(75)+params(88)*y(76)+params(89)*y(77)+params(90)*y(78)+params(91)*y(79)+params(92)*y(80)+params(93)*y(81)+params(94)*y(82)+params(95)*y(83)+params(96)*y(84)+params(97)*y(85);
residual(67) = lhs - rhs;
lhs = y(148);
rhs = x(it_, 1)*params(68)+y(24)+params(99)*y(57)+params(100)*y(58)+params(101)*y(59)+params(102)*y(60)+params(103)*y(61)+params(104)*y(62)+params(105)*y(63)+params(106)*y(64)+params(107)*y(65)+params(108)*y(66)+params(109)*y(67)+params(110)*y(68)+params(111)*y(69)+params(112)*y(70)+params(113)*y(71)+params(114)*y(72)+params(115)*y(73)+params(116)*y(74)+params(117)*y(75)+params(118)*y(76)+params(119)*y(77)+params(120)*y(78)+params(121)*y(79)+params(122)*y(80)+params(123)*y(81)+params(124)*y(82)+params(125)*y(83)+params(126)*y(84)+params(127)*y(85);
residual(68) = lhs - rhs;
lhs = y(150);
rhs = x(it_, 1);
residual(69) = lhs - rhs;
lhs = y(155);
rhs = y(18);
residual(70) = lhs - rhs;
lhs = y(156);
rhs = y(21);
residual(71) = lhs - rhs;
lhs = y(157);
rhs = y(26);
residual(72) = lhs - rhs;
lhs = y(158);
rhs = y(29);
residual(73) = lhs - rhs;
lhs = y(159);
rhs = y(30);
residual(74) = lhs - rhs;
lhs = y(160);
rhs = y(31);
residual(75) = lhs - rhs;
lhs = y(161);
rhs = y(32);
residual(76) = lhs - rhs;
lhs = y(162);
rhs = y(33);
residual(77) = lhs - rhs;
lhs = y(163);
rhs = y(34);
residual(78) = lhs - rhs;
lhs = y(164);
rhs = y(35);
residual(79) = lhs - rhs;
lhs = y(165);
rhs = y(36);
residual(80) = lhs - rhs;
lhs = y(166);
rhs = y(37);
residual(81) = lhs - rhs;
lhs = y(167);
rhs = y(38);
residual(82) = lhs - rhs;
lhs = y(168);
rhs = y(39);
residual(83) = lhs - rhs;
lhs = y(169);
rhs = y(40);
residual(84) = lhs - rhs;
lhs = y(170);
rhs = y(41);
residual(85) = lhs - rhs;
lhs = y(171);
rhs = y(42);
residual(86) = lhs - rhs;
lhs = y(172);
rhs = y(43);
residual(87) = lhs - rhs;
lhs = y(173);
rhs = y(44);
residual(88) = lhs - rhs;
lhs = y(174);
rhs = y(45);
residual(89) = lhs - rhs;
lhs = y(175);
rhs = y(46);
residual(90) = lhs - rhs;
lhs = y(176);
rhs = y(47);
residual(91) = lhs - rhs;
lhs = y(177);
rhs = y(48);
residual(92) = lhs - rhs;
lhs = y(178);
rhs = y(49);
residual(93) = lhs - rhs;
lhs = y(179);
rhs = y(50);
residual(94) = lhs - rhs;
lhs = y(180);
rhs = y(51);
residual(95) = lhs - rhs;
lhs = y(181);
rhs = y(52);
residual(96) = lhs - rhs;
lhs = y(182);
rhs = y(53);
residual(97) = lhs - rhs;
lhs = y(183);
rhs = y(54);
residual(98) = lhs - rhs;
lhs = y(184);
rhs = y(55);
residual(99) = lhs - rhs;
lhs = y(185);
rhs = x(it_, 1);
residual(100) = lhs - rhs;
lhs = y(186);
rhs = y(57);
residual(101) = lhs - rhs;
lhs = y(187);
rhs = y(58);
residual(102) = lhs - rhs;
lhs = y(188);
rhs = y(59);
residual(103) = lhs - rhs;
lhs = y(189);
rhs = y(60);
residual(104) = lhs - rhs;
lhs = y(190);
rhs = y(61);
residual(105) = lhs - rhs;
lhs = y(191);
rhs = y(62);
residual(106) = lhs - rhs;
lhs = y(192);
rhs = y(63);
residual(107) = lhs - rhs;
lhs = y(193);
rhs = y(64);
residual(108) = lhs - rhs;
lhs = y(194);
rhs = y(65);
residual(109) = lhs - rhs;
lhs = y(195);
rhs = y(66);
residual(110) = lhs - rhs;
lhs = y(196);
rhs = y(67);
residual(111) = lhs - rhs;
lhs = y(197);
rhs = y(68);
residual(112) = lhs - rhs;
lhs = y(198);
rhs = y(69);
residual(113) = lhs - rhs;
lhs = y(199);
rhs = y(70);
residual(114) = lhs - rhs;
lhs = y(200);
rhs = y(71);
residual(115) = lhs - rhs;
lhs = y(201);
rhs = y(72);
residual(116) = lhs - rhs;
lhs = y(202);
rhs = y(73);
residual(117) = lhs - rhs;
lhs = y(203);
rhs = y(74);
residual(118) = lhs - rhs;
lhs = y(204);
rhs = y(75);
residual(119) = lhs - rhs;
lhs = y(205);
rhs = y(76);
residual(120) = lhs - rhs;
lhs = y(206);
rhs = y(77);
residual(121) = lhs - rhs;
lhs = y(207);
rhs = y(78);
residual(122) = lhs - rhs;
lhs = y(208);
rhs = y(79);
residual(123) = lhs - rhs;
lhs = y(209);
rhs = y(80);
residual(124) = lhs - rhs;
lhs = y(210);
rhs = y(81);
residual(125) = lhs - rhs;
lhs = y(211);
rhs = y(82);
residual(126) = lhs - rhs;
lhs = y(212);
rhs = y(83);
residual(127) = lhs - rhs;
lhs = y(213);
rhs = y(84);
residual(128) = lhs - rhs;

end
