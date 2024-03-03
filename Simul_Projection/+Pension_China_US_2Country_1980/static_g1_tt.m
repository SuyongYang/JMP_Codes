function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 151);

T = Pension_China_US_2Country_1980.static_resid_tt(T, y, x, params);

T(78) = y(28)/y(27)*(-(params(17)*y(32)))/(y(3)*y(32)*y(3)*y(32));
T(79) = getPowerDeriv(y(32)*y(3)*params(19),T(8),1);
T(80) = y(3)/y(28);
T(81) = getPowerDeriv(y(9)/y(57),params(25),1);
T(82) = (1-params(17))*getPowerDeriv(y(23),(params(18)-1)/params(18),1);
T(83) = getPowerDeriv(y(24),T(1)/params(18),1);
T(84) = (y(27)*y(25)+y(27)+y(26)*y(51))*getPowerDeriv(1+y(25)+y(26),T(1),1);
T(85) = T(1)/((y(25)+1+y(26))*(y(25)+1+y(26)));
T(86) = params(17)/(y(3)*y(32))*(-y(28))/(y(27)*y(27));
T(87) = getPowerDeriv(y(27)*y(29),(1-params(20))*(1-params(21)),1);
T(88) = params(17)/(y(3)*y(32))*1/y(27);
T(89) = (-y(38))/(y(28)*y(28));
T(90) = getPowerDeriv(y(38)*y(28)*y(39)/(y(38)*y(39)),params(20)*(1-params(21)),1);
T(91) = 1/y(97);
T(92) = (y(28)/y(97)+y(28)*T(91))/y(97);
T(93) = (y(28)*T(59)/y(97)+y(28)*(T(59)+y(28)*T(92))/y(97))/y(97);
T(94) = (y(28)*T(60)/y(97)+y(28)*(T(60)+y(28)*T(93))/y(97))/y(97);
T(95) = (y(28)*T(61)/y(97)+y(28)*(T(61)+y(28)*T(94))/y(97))/y(97);
T(96) = (y(28)*T(62)/y(97)+y(28)*(T(62)+y(28)*T(95))/y(97))/y(97);
T(97) = (y(28)*T(63)/y(97)+y(28)*(T(63)+y(28)*T(96))/y(97))/y(97);
T(98) = (y(28)*T(64)/y(97)+y(28)*(T(64)+y(28)*T(97))/y(97))/y(97);
T(99) = (y(28)*T(65)/y(97)+y(28)*(T(65)+y(28)*T(98))/y(97))/y(97);
T(100) = (y(28)*T(66)/y(97)+y(28)*(T(66)+y(28)*T(99))/y(97))/y(97);
T(101) = (y(28)*T(67)/y(97)+y(28)*(T(67)+y(28)*T(100))/y(97))/y(97);
T(102) = (y(28)*T(68)/y(97)+y(28)*(T(68)+y(28)*T(101))/y(97))/y(97);
T(103) = (y(28)*T(69)/y(97)+y(28)*(T(69)+y(28)*T(102))/y(97))/y(97);
T(104) = (y(28)*T(70)/y(97)+y(28)*(T(70)+y(28)*T(103))/y(97))/y(97);
T(105) = (y(28)*T(71)/y(97)+y(28)*(T(71)+y(28)*T(104))/y(97))/y(97);
T(106) = (y(28)*T(72)/y(97)+y(28)*(T(72)+y(28)*T(105))/y(97))/y(97);
T(107) = (y(28)*T(73)/y(97)+y(28)*(T(73)+y(28)*T(106))/y(97))/y(97);
T(108) = (y(28)*T(74)/y(97)+y(28)*(T(74)+y(28)*T(107))/y(97))/y(97);
T(109) = (y(28)*T(75)/y(97)+y(28)*(T(75)+y(28)*T(108))/y(97))/y(97);
T(110) = (y(28)*T(76)/y(97)+y(28)*(T(76)+y(28)*T(109))/y(97))/y(97);
T(111) = 1/y(28);
T(112) = y(28)/y(27)*(-(params(17)*y(3)))/(y(3)*y(32)*y(3)*y(32));
T(113) = (-((-(params(21)*(1-1/params(22))))/(y(37)*y(37))));
T(114) = (-(params(26)*y(44)*(-((y(46)*y(47)*params(26)-y(46)*y(47)*params(26))/(y(46)*y(47)*y(46)*y(47))))));
T(115) = y(97)/y(96)*(-(params(176)*y(101)))/(y(72)*y(101)*y(72)*y(101));
T(116) = getPowerDeriv(y(101)*y(72)*params(178),T(35),1);
T(117) = y(72)/y(97);
T(118) = getPowerDeriv(y(78)/y(126),params(184),1);
T(119) = (1-params(176))*getPowerDeriv(y(92),(params(177)-1)/params(177),1);
T(120) = getPowerDeriv(y(93),T(1)/params(177),1);
T(121) = (y(96)*y(94)+y(96)+y(95)*y(120))*getPowerDeriv(1+y(94)+y(95),T(1),1);
T(122) = T(1)/((y(94)+1+y(95))*(y(94)+1+y(95)));
T(123) = params(176)/(y(72)*y(101))*(-y(97))/(y(96)*y(96));
T(124) = getPowerDeriv(y(96)*y(98),(1-params(179))*(1-params(180)),1);
T(125) = params(176)/(y(72)*y(101))*1/y(96);
T(126) = y(97)*y(97);
T(127) = (-y(107))/T(126);
T(128) = getPowerDeriv(y(107)*y(97)*y(108)/(y(107)*y(108)),params(179)*(1-params(180)),1);
T(129) = (-(y(28)*y(2)*y(1)))/T(126);
T(130) = (y(97)*y(28)*(-y(28))/T(126)-y(28)*y(28)/y(97))/T(126);
T(131) = (y(97)*y(28)*(y(97)*y(28)*T(130)-y(28)*T(59))/T(126)-y(28)*y(28)*T(59)/y(97))/T(126);
T(132) = (y(97)*y(28)*(y(97)*y(28)*T(131)-y(28)*T(60))/T(126)-y(28)*y(28)*T(60)/y(97))/T(126);
T(133) = (y(97)*y(28)*(y(97)*y(28)*T(132)-y(28)*T(61))/T(126)-y(28)*y(28)*T(61)/y(97))/T(126);
T(134) = (y(97)*y(28)*(y(97)*y(28)*T(133)-y(28)*T(62))/T(126)-y(28)*y(28)*T(62)/y(97))/T(126);
T(135) = (y(97)*y(28)*(y(97)*y(28)*T(134)-y(28)*T(63))/T(126)-y(28)*y(28)*T(63)/y(97))/T(126);
T(136) = (y(97)*y(28)*(y(97)*y(28)*T(135)-y(28)*T(64))/T(126)-y(28)*y(28)*T(64)/y(97))/T(126);
T(137) = (y(97)*y(28)*(y(97)*y(28)*T(136)-y(28)*T(65))/T(126)-y(28)*y(28)*T(65)/y(97))/T(126);
T(138) = (y(97)*y(28)*(y(97)*y(28)*T(137)-y(28)*T(66))/T(126)-y(28)*y(28)*T(66)/y(97))/T(126);
T(139) = (y(97)*y(28)*(y(97)*y(28)*T(138)-y(28)*T(67))/T(126)-y(28)*y(28)*T(67)/y(97))/T(126);
T(140) = (y(97)*y(28)*(y(97)*y(28)*T(139)-y(28)*T(68))/T(126)-y(28)*y(28)*T(68)/y(97))/T(126);
T(141) = (y(97)*y(28)*(y(97)*y(28)*T(140)-y(28)*T(69))/T(126)-y(28)*y(28)*T(69)/y(97))/T(126);
T(142) = (y(97)*y(28)*(y(97)*y(28)*T(141)-y(28)*T(70))/T(126)-y(28)*y(28)*T(70)/y(97))/T(126);
T(143) = (y(97)*y(28)*(y(97)*y(28)*T(142)-y(28)*T(71))/T(126)-y(28)*y(28)*T(71)/y(97))/T(126);
T(144) = (y(97)*y(28)*(y(97)*y(28)*T(143)-y(28)*T(72))/T(126)-y(28)*y(28)*T(72)/y(97))/T(126);
T(145) = (y(97)*y(28)*(y(97)*y(28)*T(144)-y(28)*T(73))/T(126)-y(28)*y(28)*T(73)/y(97))/T(126);
T(146) = (y(97)*y(28)*(y(97)*y(28)*T(145)-y(28)*T(74))/T(126)-y(28)*y(28)*T(74)/y(97))/T(126);
T(147) = (y(97)*y(28)*(y(97)*y(28)*T(146)-y(28)*T(75))/T(126)-y(28)*y(28)*T(75)/y(97))/T(126);
T(148) = (y(97)*y(28)*(y(97)*y(28)*T(147)-y(28)*T(76))/T(126)-y(28)*y(28)*T(76)/y(97))/T(126);
T(149) = y(97)/y(96)*(-(y(72)*params(176)))/(y(72)*y(101)*y(72)*y(101));
T(150) = (-((-(params(180)*(1-1/params(181))))/(y(106)*y(106))));
T(151) = (-(params(185)*y(113)*(-((y(115)*y(116)*params(185)-y(115)*y(116)*params(185))/(y(115)*y(116)*y(115)*y(116))))));

end
