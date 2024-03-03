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
    T = DemoMediumRun_Canada_SOE.static_resid_tt(T, y, x, params);
end
residual = zeros(125, 1);
lhs = y(21);
rhs = y(5)+y(21)*T(2);
residual(1) = lhs - rhs;
lhs = y(20);
rhs = y(16)+T(2)*y(20);
residual(2) = lhs - rhs;
lhs = y(22);
rhs = y(37)+y(29)*y(22)*y(55)*y(26)/(y(28)*y(3)*y(26));
residual(3) = lhs - rhs;
lhs = y(23);
rhs = y(38)+T(2)*y(23)+y(22)*T(6);
residual(4) = lhs - rhs;
lhs = y(12);
rhs = y(25)*(y(23)+y(21)+y(3)*y(36)/y(29)-y(20));
residual(5) = lhs - rhs;
lhs = y(14);
rhs = y(24)*y(25)*(y(22)+y(3)*y(35)/y(29));
residual(6) = lhs - rhs;
lhs = 1-y(24)*y(25);
rhs = T(9)/y(3);
residual(7) = lhs - rhs;
lhs = 1-y(25);
rhs = T(10)/(y(3)*y(34));
residual(8) = lhs - rhs;
lhs = y(34);
rhs = params(3)+T(3);
residual(9) = lhs - rhs;
lhs = y(13);
rhs = y(12)*(y(26)+1+y(27));
residual(10) = lhs - rhs;
lhs = y(15);
rhs = y(14)*(y(26)+1+y(27))/y(26);
residual(11) = lhs - rhs;
lhs = y(28);
rhs = params(3)+y(27)*(1-y(64));
residual(12) = lhs - rhs;
lhs = y(53);
rhs = y(28);
residual(13) = lhs - rhs;
lhs = y(28)*y(26);
rhs = 1-params(3)+y(55)*y(26);
residual(14) = lhs - rhs;
lhs = y(54);
rhs = (y(28)*y(26)+y(28)+y(27)*y(53))*T(11);
residual(15) = lhs - rhs;
lhs = y(30);
rhs = (params(3)+y(27)*(1-y(64))*T(12))/y(28);
residual(16) = lhs - rhs;
lhs = y(16);
rhs = y(5)*y(31);
residual(17) = lhs - rhs;
lhs = T(13);
rhs = y(29)*y(5)*y(31)*params(36)*y(27)*(1-y(64))*params(15)*T(13)/(y(53)*y(30)*y(5)*y(28));
residual(18) = lhs - rhs;
lhs = y(63);
rhs = y(53)-y(64);
residual(19) = lhs - rhs;
lhs = (1-params(16))*(1-params(17));
rhs = y(5)*y(39);
residual(20) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = y(39)*(y(4)+y(42))*T(14);
residual(21) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = T(14)*y(39)*y(43)*y(41);
residual(22) = lhs - rhs;
lhs = y(29);
rhs = y(44)*T(15);
residual(23) = lhs - rhs;
lhs = y(29);
rhs = T(16)*T(17)*T(28);
residual(24) = lhs - rhs;
lhs = (y(39)-1)/y(39)*T(18);
rhs = params(19)*y(45);
residual(25) = lhs - rhs;
lhs = y(39);
rhs = params(27)*(1+params(23)*(y(17)-1));
residual(26) = lhs - rhs;
lhs = y(42);
rhs = params(26)+y(43)*(y(41)-params(29));
residual(27) = lhs - rhs;
lhs = y(43);
rhs = params(25)+(y(41)-params(29))*params(25)*params(12)/params(29);
residual(28) = lhs - rhs;
lhs = y(48);
rhs = T(19)*T(20)+params(22);
residual(29) = lhs - rhs;
lhs = y(18);
rhs = y(27)*(1-y(64))*params(2)/(y(26)+1+y(27))+y(18)*params(3)*(1-params(8))/y(54);
residual(30) = lhs - rhs;
lhs = y(48);
rhs = params(22)+params(22)*y(47)*(y(49)-1);
residual(31) = lhs - rhs;
lhs = y(9);
rhs = params(22)*y(29)/y(3)*y(46)*T(21);
residual(32) = lhs - rhs;
lhs = y(45);
rhs = T(22)+y(45)*T(23)*T(24);
residual(33) = lhs - rhs;
lhs = y(8);
rhs = T(24)*T(23)*y(49)*y(47)*params(24)*T(25);
residual(34) = lhs - rhs;
lhs = y(46);
rhs = T(24)*y(49)*T(23)*T(26)-y(8);
residual(35) = lhs - rhs;
lhs = y(47);
rhs = params(28)*(1+params(24)*((y(8)-params(30))/params(30)-(y(49)-params(31))/params(31)-(y(59)-params(9))/params(9)));
residual(36) = lhs - rhs;
lhs = y(50);
rhs = T(22)-T(21)*params(22)*y(46)-y(3)*y(8)*T(27)/y(29);
residual(37) = lhs - rhs;
lhs = y(51);
rhs = T(21)*params(22)*y(46)-y(3)*y(9)/y(29);
residual(38) = lhs - rhs;
lhs = y(59);
rhs = y(45);
residual(39) = lhs - rhs;
lhs = y(3);
rhs = 1+y(4);
residual(40) = lhs - rhs;
lhs = y(37);
rhs = y(35)*y(19)/y(52);
residual(41) = lhs - rhs;
lhs = y(38);
rhs = y(36)*y(19)/y(52)+params(1)*(y(50)+y(51));
residual(42) = lhs - rhs;
lhs = y(6);
rhs = y(9)+y(8)*T(27);
residual(43) = lhs - rhs;
lhs = y(19);
rhs = y(52)+T(14)*(1+y(4))+y(3)*y(6)/y(29)+y(1)*y(2)/y(29)-y(3)*y(52)/y(29)-y(40)-y(6)-y(1)+(y(50)+y(51))*(1-params(1));
residual(44) = lhs - rhs;
lhs = y(40);
rhs = T(14)*(1-y(42))+y(10);
residual(45) = lhs - rhs;
lhs = y(7);
rhs = 1-params(17)/(y(39)*params(18))-y(59)*y(17)*params(19);
residual(46) = lhs - rhs;
lhs = y(7);
rhs = y(16)+y(1)+y(8)*T(27)+y(9)+y(10)+y(11);
residual(47) = lhs - rhs;
lhs = y(11);
rhs = y(12)+y(14);
residual(48) = lhs - rhs;
lhs = y(52);
rhs = y(1)+y(40)+y(6);
residual(49) = lhs - rhs;
lhs = y(35);
rhs = y(37)+y(3)*y(35)/y(29)-y(14)+(1-params(3))*(y(38)+y(5)+y(3)*y(36)/y(29)-y(12)-y(16));
residual(50) = lhs - rhs;
lhs = y(52);
rhs = y(36)+y(35);
residual(51) = lhs - rhs;
lhs = y(3)-y(2);
rhs = y(3)-y(2);
residual(52) = lhs - rhs;
lhs = y(2);
rhs = x(1)*params(127)+x(1)*params(128)+x(1)*params(129)+x(1)*params(130)+x(1)*params(131)+x(1)*params(132)+x(1)*params(133)+x(1)*params(134)+x(1)*params(135)+x(1)*params(136)+x(1)*params(137)+x(1)*params(138)+x(1)*params(139)+x(1)*params(140)+x(1)*params(141)+x(1)*params(142)+x(1)*params(143)+x(1)*params(144)+x(1)*params(145)+x(1)*params(146)+x(1)*params(147)+x(1)*params(148)+x(1)*params(149)+x(1)*params(150)+x(1)*params(151)+x(1)*params(152)+x(1)*params(153)+x(1)*params(154)+x(1)*params(155)+x(1)*params(156)+params(157);
residual(53) = lhs - rhs;
lhs = y(32);
rhs = y(29)/y(54);
residual(54) = lhs - rhs;
lhs = y(33);
rhs = y(29);
residual(55) = lhs - rhs;
lhs = y(54);
rhs = params(33)+y(58);
residual(56) = lhs - rhs;
lhs = y(65);
rhs = 1/(y(26)+1+y(27));
residual(57) = lhs - rhs;
lhs = y(66);
rhs = y(26)/(y(26)+1+y(27));
residual(58) = lhs - rhs;
lhs = 1/(y(26)+1+y(27));
rhs = 1/(1+params(4)+params(5))+y(57);
residual(59) = lhs - rhs;
lhs = y(26)/(y(26)+1+y(27));
rhs = params(5)/(1+params(4)+params(5))+y(56);
residual(60) = lhs - rhs;
lhs = y(58);
rhs = y(62)*(params(37)-params(33))+y(62)*(params(38)-params(33))+y(62)*(params(39)-params(33))+y(62)*(params(40)-params(33))+y(62)*(params(41)-params(33))+y(62)*(params(42)-params(33))+y(62)*(params(43)-params(33))+y(62)*(params(44)-params(33))+y(62)*(params(45)-params(33))+y(62)*(params(46)-params(33))+y(62)*(params(47)-params(33))+y(62)*(params(48)-params(33))+y(62)*(params(49)-params(33))+y(62)*(params(50)-params(33))+y(62)*(params(51)-params(33))+y(62)*(params(52)-params(33))+y(62)*(params(53)-params(33))+y(62)*(params(54)-params(33))+y(62)*(params(55)-params(33))+y(62)*(params(56)-params(33))+y(62)*(params(57)-params(33))+y(62)*(params(58)-params(33))+y(62)*(params(59)-params(33))+y(62)*(params(60)-params(33))+y(62)*(params(61)-params(33))+y(62)*(params(62)-params(33))+y(62)*(params(63)-params(33))+y(62)*(params(64)-params(33))+y(62)*(params(65)-params(33))+y(62)*(params(66)-params(33));
residual(61) = lhs - rhs;
lhs = y(56);
rhs = y(60);
residual(62) = lhs - rhs;
lhs = y(57);
rhs = y(61);
residual(63) = lhs - rhs;
lhs = y(61);
rhs = y(61)+x(1)*params(67)+x(1)*params(68)+x(1)*params(69)+x(1)*params(70)+x(1)*params(71)+x(1)*params(72)+x(1)*params(73)+x(1)*params(74)+x(1)*params(75)+x(1)*params(76)+x(1)*params(77)+x(1)*params(78)+x(1)*params(79)+x(1)*params(80)+x(1)*params(81)+x(1)*params(82)+x(1)*params(83)+x(1)*params(84)+x(1)*params(85)+x(1)*params(86)+x(1)*params(87)+x(1)*params(88)+x(1)*params(89)+x(1)*params(90)+x(1)*params(91)+x(1)*params(92)+x(1)*params(93)+x(1)*params(94)+x(1)*params(95)+x(1)*params(96);
residual(64) = lhs - rhs;
lhs = y(60);
rhs = y(60)+x(1)*params(67)+x(1)*params(98)+x(1)*params(99)+x(1)*params(100)+x(1)*params(101)+x(1)*params(102)+x(1)*params(103)+x(1)*params(104)+x(1)*params(105)+x(1)*params(106)+x(1)*params(107)+x(1)*params(108)+x(1)*params(109)+x(1)*params(110)+x(1)*params(111)+x(1)*params(112)+x(1)*params(113)+x(1)*params(114)+x(1)*params(115)+x(1)*params(116)+x(1)*params(117)+x(1)*params(118)+x(1)*params(119)+x(1)*params(120)+x(1)*params(121)+x(1)*params(122)+x(1)*params(123)+x(1)*params(124)+x(1)*params(125)+x(1)*params(126);
residual(65) = lhs - rhs;
lhs = y(62);
rhs = x(1);
residual(66) = lhs - rhs;
lhs = y(67);
rhs = y(40);
residual(67) = lhs - rhs;
lhs = y(68);
rhs = y(49);
residual(68) = lhs - rhs;
lhs = y(69);
rhs = y(62);
residual(69) = lhs - rhs;
lhs = y(70);
rhs = y(62);
residual(70) = lhs - rhs;
lhs = y(71);
rhs = y(62);
residual(71) = lhs - rhs;
lhs = y(72);
rhs = y(62);
residual(72) = lhs - rhs;
lhs = y(73);
rhs = y(62);
residual(73) = lhs - rhs;
lhs = y(74);
rhs = y(62);
residual(74) = lhs - rhs;
lhs = y(75);
rhs = y(62);
residual(75) = lhs - rhs;
lhs = y(76);
rhs = y(62);
residual(76) = lhs - rhs;
lhs = y(77);
rhs = y(62);
residual(77) = lhs - rhs;
lhs = y(78);
rhs = y(62);
residual(78) = lhs - rhs;
lhs = y(79);
rhs = y(62);
residual(79) = lhs - rhs;
lhs = y(80);
rhs = y(62);
residual(80) = lhs - rhs;
lhs = y(81);
rhs = y(62);
residual(81) = lhs - rhs;
lhs = y(82);
rhs = y(62);
residual(82) = lhs - rhs;
lhs = y(83);
rhs = y(62);
residual(83) = lhs - rhs;
lhs = y(84);
rhs = y(62);
residual(84) = lhs - rhs;
lhs = y(85);
rhs = y(62);
residual(85) = lhs - rhs;
lhs = y(86);
rhs = y(62);
residual(86) = lhs - rhs;
lhs = y(87);
rhs = y(62);
residual(87) = lhs - rhs;
lhs = y(88);
rhs = y(62);
residual(88) = lhs - rhs;
lhs = y(89);
rhs = y(62);
residual(89) = lhs - rhs;
lhs = y(90);
rhs = y(62);
residual(90) = lhs - rhs;
lhs = y(91);
rhs = y(62);
residual(91) = lhs - rhs;
lhs = y(92);
rhs = y(62);
residual(92) = lhs - rhs;
lhs = y(93);
rhs = y(62);
residual(93) = lhs - rhs;
lhs = y(94);
rhs = y(62);
residual(94) = lhs - rhs;
lhs = y(95);
rhs = y(62);
residual(95) = lhs - rhs;
lhs = y(96);
rhs = y(62);
residual(96) = lhs - rhs;
lhs = y(97);
rhs = x(1);
residual(97) = lhs - rhs;
lhs = y(98);
rhs = x(1);
residual(98) = lhs - rhs;
lhs = y(99);
rhs = x(1);
residual(99) = lhs - rhs;
lhs = y(100);
rhs = x(1);
residual(100) = lhs - rhs;
lhs = y(101);
rhs = x(1);
residual(101) = lhs - rhs;
lhs = y(102);
rhs = x(1);
residual(102) = lhs - rhs;
lhs = y(103);
rhs = x(1);
residual(103) = lhs - rhs;
lhs = y(104);
rhs = x(1);
residual(104) = lhs - rhs;
lhs = y(105);
rhs = x(1);
residual(105) = lhs - rhs;
lhs = y(106);
rhs = x(1);
residual(106) = lhs - rhs;
lhs = y(107);
rhs = x(1);
residual(107) = lhs - rhs;
lhs = y(108);
rhs = x(1);
residual(108) = lhs - rhs;
lhs = y(109);
rhs = x(1);
residual(109) = lhs - rhs;
lhs = y(110);
rhs = x(1);
residual(110) = lhs - rhs;
lhs = y(111);
rhs = x(1);
residual(111) = lhs - rhs;
lhs = y(112);
rhs = x(1);
residual(112) = lhs - rhs;
lhs = y(113);
rhs = x(1);
residual(113) = lhs - rhs;
lhs = y(114);
rhs = x(1);
residual(114) = lhs - rhs;
lhs = y(115);
rhs = x(1);
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
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
