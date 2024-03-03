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
    T = DemoMediumRunFinal_newpred_Canada2019.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(123, 1);
lhs = y(102);
rhs = y(86)+T(2)*y(210);
residual(1) = lhs - rhs;
lhs = y(101);
rhs = y(97)+T(2)*y(209);
residual(2) = lhs - rhs;
lhs = y(103);
rhs = y(118)+y(215)*y(211)*y(136)*y(8)/(y(109)*y(84)*y(107));
residual(3) = lhs - rhs;
lhs = y(104);
rhs = y(119)+T(2)*y(212)+y(211)*T(6);
residual(4) = lhs - rhs;
lhs = y(93);
rhs = y(106)*(y(104)+y(102)+y(1)*y(14)/y(110)-y(101));
residual(5) = lhs - rhs;
lhs = y(95);
rhs = y(106)*y(105)*(y(103)+y(1)*y(13)/y(110));
residual(6) = lhs - rhs;
lhs = 1-y(106)*y(105);
rhs = T(10)*y(106)*y(105)/(y(213)*y(214));
residual(7) = lhs - rhs;
lhs = 1-y(106);
rhs = T(11)/(y(84)*y(115))*y(106)/y(214);
residual(8) = lhs - rhs;
lhs = y(115);
rhs = params(3)+T(3);
residual(9) = lhs - rhs;
lhs = y(94);
rhs = y(93)*(y(107)+1+y(108));
residual(10) = lhs - rhs;
lhs = y(96);
rhs = y(95)*(y(107)+1+y(108))/y(107);
residual(11) = lhs - rhs;
lhs = y(109);
rhs = params(3)+(1-y(145))*y(9);
residual(12) = lhs - rhs;
lhs = y(134);
rhs = y(109)*y(108)/y(9);
residual(13) = lhs - rhs;
lhs = y(109)*y(107);
rhs = 1-params(3)+y(136)*y(8);
residual(14) = lhs - rhs;
lhs = y(135);
rhs = (y(109)*y(107)+y(109)+y(9)*y(134))*T(12);
residual(15) = lhs - rhs;
lhs = y(111);
rhs = (params(3)+(1-y(145))*y(9)*T(13))/y(109);
residual(16) = lhs - rhs;
lhs = y(97);
rhs = y(86)*y(112);
residual(17) = lhs - rhs;
lhs = y(106)^T(14);
rhs = T(18)/(y(134)*y(111)*y(86)*y(109));
residual(18) = lhs - rhs;
lhs = y(144);
rhs = y(134)-y(145);
residual(19) = lhs - rhs;
lhs = (1-params(16))*(1-params(17));
rhs = y(86)*y(120);
residual(20) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = y(120)*(y(85)+y(123))*T(19);
residual(21) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = T(19)*y(120)*y(124)*y(122);
residual(22) = lhs - rhs;
lhs = y(110);
rhs = y(120)/y(15)*y(125)*T(20);
residual(23) = lhs - rhs;
lhs = y(110);
rhs = T(25)*T(24)*T(23)*T(37);
residual(24) = lhs - rhs;
lhs = (y(120)-1)/y(120)*T(26);
rhs = params(19)*y(126);
residual(25) = lhs - rhs;
lhs = y(120);
rhs = params(27)*(1+params(23)*(y(98)-1));
residual(26) = lhs - rhs;
lhs = y(123);
rhs = params(26)+y(124)*(y(122)-params(29));
residual(27) = lhs - rhs;
lhs = y(124);
rhs = params(25)+(y(122)-params(29))*params(25)*params(12)/params(29);
residual(28) = lhs - rhs;
lhs = y(129)*y(130)/y(19);
rhs = T(27)*T(28)+params(22);
residual(29) = lhs - rhs;
lhs = y(99);
rhs = y(9)*(1-y(145))*params(2)/(y(8)+1+y(9))+params(3)*(1-params(8))/y(135)*y(7);
residual(30) = lhs - rhs;
lhs = y(129);
rhs = params(22)+params(22)*y(128)*(y(19)-1);
residual(31) = lhs - rhs;
lhs = y(90);
rhs = T(29)*T(30);
residual(32) = lhs - rhs;
lhs = y(126);
rhs = T(31)+T(32)*T(33)*y(216);
residual(33) = lhs - rhs;
lhs = y(89);
rhs = T(33)*T(32)*y(19)*y(128)*params(24)*T(34);
residual(34) = lhs - rhs;
lhs = y(127);
rhs = T(33)*y(19)*T(32)*T(35)-y(89);
residual(35) = lhs - rhs;
lhs = y(128);
rhs = params(28)*(1+params(24)*((y(89)-params(30))/params(30)-(y(19)-params(31))/params(31)-(y(140)-params(9))/params(9)));
residual(36) = lhs - rhs;
lhs = y(131);
rhs = T(31)-params(22)*y(127)*(1-params(22)*y(26)/(y(18)*y(19)))-y(1)*y(4)*(1-1/y(26))/y(110);
residual(37) = lhs - rhs;
lhs = y(132);
rhs = params(22)*y(127)*(1-params(22)*y(26)/(y(18)*y(19)))-y(1)*y(5)/y(110);
residual(38) = lhs - rhs;
lhs = y(140);
rhs = y(126);
residual(39) = lhs - rhs;
lhs = y(84);
rhs = 1+y(207);
residual(40) = lhs - rhs;
lhs = y(118);
rhs = y(13)*y(100)/y(20);
residual(41) = lhs - rhs;
lhs = y(119);
rhs = y(14)*y(100)/y(20)+params(1)*(y(131)+y(132));
residual(42) = lhs - rhs;
lhs = y(87);
rhs = y(90)+y(89)*(1-1/y(19));
residual(43) = lhs - rhs;
lhs = y(100);
rhs = T(19)*(1+y(85))+y(1)*y(2)/y(110)-y(1)*y(20)/y(110)-y(121)-y(87)+y(133)+(y(131)+y(132))*(1-params(1));
residual(44) = lhs - rhs;
lhs = y(121);
rhs = T(19)*(1-y(123))+y(91);
residual(45) = lhs - rhs;
lhs = y(88);
rhs = 1-params(17)/(y(120)*params(18))-y(140)*y(98)*params(19);
residual(46) = lhs - rhs;
lhs = y(88);
rhs = y(97)+y(89)*(1-1/y(19))+y(90)+y(91)+y(92);
residual(47) = lhs - rhs;
lhs = y(92);
rhs = y(93)+y(95);
residual(48) = lhs - rhs;
lhs = y(133);
rhs = y(87)+y(121);
residual(49) = lhs - rhs;
lhs = y(116);
rhs = y(118)+y(1)*y(13)/y(110)-y(95)+(1-params(3))*(y(119)+y(86)+y(1)*y(14)/y(110)-y(93)-y(97));
residual(50) = lhs - rhs;
lhs = y(133);
rhs = y(116)+y(117);
residual(51) = lhs - rhs;
lhs = y(113);
rhs = y(11)*T(36)/y(21);
residual(52) = lhs - rhs;
lhs = y(114);
rhs = y(110)*T(36);
residual(53) = lhs - rhs;
lhs = y(135);
rhs = params(33)+y(139);
residual(54) = lhs - rhs;
lhs = y(146);
rhs = 1/(y(107)+1+y(108));
residual(55) = lhs - rhs;
lhs = y(147);
rhs = y(107)/(y(107)+1+y(108));
residual(56) = lhs - rhs;
lhs = 1/(y(107)+1+y(108));
rhs = 1/(1+params(4)+params(5))+y(138);
residual(57) = lhs - rhs;
lhs = y(107)/(y(107)+1+y(108));
rhs = params(5)/(1+params(4)+params(5))+y(137);
residual(58) = lhs - rhs;
lhs = y(139);
rhs = y(143)*(params(37)-params(33))+y(24)*(params(38)-params(33))+(params(39)-params(33))*y(27)+(params(40)-params(33))*y(28)+(params(41)-params(33))*y(29)+(params(42)-params(33))*y(30)+(params(43)-params(33))*y(31)+(params(44)-params(33))*y(32)+(params(45)-params(33))*y(33)+(params(46)-params(33))*y(34)+(params(47)-params(33))*y(35)+(params(48)-params(33))*y(36)+(params(49)-params(33))*y(37)+(params(50)-params(33))*y(38)+(params(51)-params(33))*y(39)+(params(52)-params(33))*y(40)+(params(53)-params(33))*y(41)+(params(54)-params(33))*y(42)+(params(55)-params(33))*y(43)+(params(56)-params(33))*y(44)+(params(57)-params(33))*y(45)+(params(58)-params(33))*y(46)+(params(59)-params(33))*y(47)+(params(60)-params(33))*y(48)+(params(61)-params(33))*y(49)+(params(62)-params(33))*y(50)+(params(63)-params(33))*y(51)+(params(64)-params(33))*y(52)+(params(65)-params(33))*y(53)+(params(66)-params(33))*y(54);
residual(59) = lhs - rhs;
lhs = y(137);
rhs = y(141);
residual(60) = lhs - rhs;
lhs = y(138);
rhs = y(142);
residual(61) = lhs - rhs;
lhs = y(142);
rhs = y(23)+x(it_, 1)*params(67)+params(68)*y(55)+params(69)*y(56)+params(70)*y(57)+params(71)*y(58)+params(72)*y(59)+params(73)*y(60)+params(74)*y(61)+params(75)*y(62)+params(76)*y(63)+params(77)*y(64)+params(78)*y(65)+params(79)*y(66)+params(80)*y(67)+params(81)*y(68)+params(82)*y(69)+params(83)*y(70)+params(84)*y(71)+params(85)*y(72)+params(86)*y(73)+params(87)*y(74)+params(88)*y(75)+params(89)*y(76)+params(90)*y(77)+params(91)*y(78)+params(92)*y(79)+params(93)*y(80)+params(94)*y(81)+params(95)*y(82)+params(96)*y(83);
residual(62) = lhs - rhs;
lhs = y(141);
rhs = x(it_, 1)*params(67)+y(22)+params(98)*y(55)+params(99)*y(56)+params(100)*y(57)+params(101)*y(58)+params(102)*y(59)+params(103)*y(60)+params(104)*y(61)+params(105)*y(62)+params(106)*y(63)+params(107)*y(64)+params(108)*y(65)+params(109)*y(66)+params(110)*y(67)+params(111)*y(68)+params(112)*y(69)+params(113)*y(70)+params(114)*y(71)+params(115)*y(72)+params(116)*y(73)+params(117)*y(74)+params(118)*y(75)+params(119)*y(76)+params(120)*y(77)+params(121)*y(78)+params(122)*y(79)+params(123)*y(80)+params(124)*y(81)+params(125)*y(82)+params(126)*y(83);
residual(63) = lhs - rhs;
lhs = y(143);
rhs = x(it_, 1);
residual(64) = lhs - rhs;
lhs = y(148);
rhs = y(16);
residual(65) = lhs - rhs;
lhs = y(149);
rhs = y(19);
residual(66) = lhs - rhs;
lhs = y(150);
rhs = y(24);
residual(67) = lhs - rhs;
lhs = y(151);
rhs = y(27);
residual(68) = lhs - rhs;
lhs = y(152);
rhs = y(28);
residual(69) = lhs - rhs;
lhs = y(153);
rhs = y(29);
residual(70) = lhs - rhs;
lhs = y(154);
rhs = y(30);
residual(71) = lhs - rhs;
lhs = y(155);
rhs = y(31);
residual(72) = lhs - rhs;
lhs = y(156);
rhs = y(32);
residual(73) = lhs - rhs;
lhs = y(157);
rhs = y(33);
residual(74) = lhs - rhs;
lhs = y(158);
rhs = y(34);
residual(75) = lhs - rhs;
lhs = y(159);
rhs = y(35);
residual(76) = lhs - rhs;
lhs = y(160);
rhs = y(36);
residual(77) = lhs - rhs;
lhs = y(161);
rhs = y(37);
residual(78) = lhs - rhs;
lhs = y(162);
rhs = y(38);
residual(79) = lhs - rhs;
lhs = y(163);
rhs = y(39);
residual(80) = lhs - rhs;
lhs = y(164);
rhs = y(40);
residual(81) = lhs - rhs;
lhs = y(165);
rhs = y(41);
residual(82) = lhs - rhs;
lhs = y(166);
rhs = y(42);
residual(83) = lhs - rhs;
lhs = y(167);
rhs = y(43);
residual(84) = lhs - rhs;
lhs = y(168);
rhs = y(44);
residual(85) = lhs - rhs;
lhs = y(169);
rhs = y(45);
residual(86) = lhs - rhs;
lhs = y(170);
rhs = y(46);
residual(87) = lhs - rhs;
lhs = y(171);
rhs = y(47);
residual(88) = lhs - rhs;
lhs = y(172);
rhs = y(48);
residual(89) = lhs - rhs;
lhs = y(173);
rhs = y(49);
residual(90) = lhs - rhs;
lhs = y(174);
rhs = y(50);
residual(91) = lhs - rhs;
lhs = y(175);
rhs = y(51);
residual(92) = lhs - rhs;
lhs = y(176);
rhs = y(52);
residual(93) = lhs - rhs;
lhs = y(177);
rhs = y(53);
residual(94) = lhs - rhs;
lhs = y(178);
rhs = x(it_, 1);
residual(95) = lhs - rhs;
lhs = y(179);
rhs = y(55);
residual(96) = lhs - rhs;
lhs = y(180);
rhs = y(56);
residual(97) = lhs - rhs;
lhs = y(181);
rhs = y(57);
residual(98) = lhs - rhs;
lhs = y(182);
rhs = y(58);
residual(99) = lhs - rhs;
lhs = y(183);
rhs = y(59);
residual(100) = lhs - rhs;
lhs = y(184);
rhs = y(60);
residual(101) = lhs - rhs;
lhs = y(185);
rhs = y(61);
residual(102) = lhs - rhs;
lhs = y(186);
rhs = y(62);
residual(103) = lhs - rhs;
lhs = y(187);
rhs = y(63);
residual(104) = lhs - rhs;
lhs = y(188);
rhs = y(64);
residual(105) = lhs - rhs;
lhs = y(189);
rhs = y(65);
residual(106) = lhs - rhs;
lhs = y(190);
rhs = y(66);
residual(107) = lhs - rhs;
lhs = y(191);
rhs = y(67);
residual(108) = lhs - rhs;
lhs = y(192);
rhs = y(68);
residual(109) = lhs - rhs;
lhs = y(193);
rhs = y(69);
residual(110) = lhs - rhs;
lhs = y(194);
rhs = y(70);
residual(111) = lhs - rhs;
lhs = y(195);
rhs = y(71);
residual(112) = lhs - rhs;
lhs = y(196);
rhs = y(72);
residual(113) = lhs - rhs;
lhs = y(197);
rhs = y(73);
residual(114) = lhs - rhs;
lhs = y(198);
rhs = y(74);
residual(115) = lhs - rhs;
lhs = y(199);
rhs = y(75);
residual(116) = lhs - rhs;
lhs = y(200);
rhs = y(76);
residual(117) = lhs - rhs;
lhs = y(201);
rhs = y(77);
residual(118) = lhs - rhs;
lhs = y(202);
rhs = y(78);
residual(119) = lhs - rhs;
lhs = y(203);
rhs = y(79);
residual(120) = lhs - rhs;
lhs = y(204);
rhs = y(80);
residual(121) = lhs - rhs;
lhs = y(205);
rhs = y(81);
residual(122) = lhs - rhs;
lhs = y(206);
rhs = y(82);
residual(123) = lhs - rhs;

end