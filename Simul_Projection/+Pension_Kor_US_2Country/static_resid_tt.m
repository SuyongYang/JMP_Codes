function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 77);

T(1) = (-1);
T(2) = params(17)/(y(3)*y(32))*y(28)/y(27);
T(3) = (1-params(17))*y(23)^((params(18)-1)/params(18));
T(4) = T(3)/(y(3)*y(32));
T(5) = y(28)/(y(27)*y(25));
T(6) = T(4)*T(5);
T(7) = y(62)+y(21)+y(3)*y(33)/y(28);
T(8) = 1/(1-params(18));
T(9) = (y(3)*params(19))^T(8);
T(10) = y(54)*T(9);
T(11) = (y(32)*y(3)*params(19))^T(8);
T(12) = (1+y(25)+y(26))^T(1);
T(13) = params(39)+params(40)/2*y(30)^2;
T(14) = y(24)^(T(1)/params(18));
T(15) = y(38)/y(28);
T(16) = y(46)^(1-params(22));
T(17) = y(42)^params(21);
T(18) = (y(27)*y(29))^((1-params(20))*(1-params(21)));
T(19) = y(16)^(-y(37));
T(20) = y(17)^params(11)*params(24);
T(21) = (y(9)/y(57))^params(25);
T(22) = 1-y(47)*params(26)/(y(46)*y(47));
T(23) = params(21)*(1-1/params(22))/y(37);
T(24) = y(28)/y(46);
T(25) = params(26)/y(3);
T(26) = y(43)-y(44)/y(47);
T(27) = y(43)*y(45)+y(44)*(1-y(45))/y(47);
T(28) = 1-1/y(47);
T(29) = params(177)/(y(72)*y(101))*y(97)/y(96);
T(30) = (1-params(177))*y(92)^((params(178)-1)/params(178));
T(31) = T(30)/(y(72)*y(101));
T(32) = y(97)/(y(96)*y(94));
T(33) = T(31)*T(32);
T(34) = y(131)+y(90)+y(72)*y(102)/y(97);
T(35) = 1/(1-params(178));
T(36) = (y(72)*params(179))^T(35);
T(37) = y(123)*T(36);
T(38) = (y(101)*y(72)*params(179))^T(35);
T(39) = (1+y(94)+y(95))^T(1);
T(40) = params(199)+params(200)/2*y(99)^2;
T(41) = y(93)^(T(1)/params(178));
T(42) = y(107)/y(97);
T(43) = y(115)^(1-params(182));
T(44) = y(111)^params(181);
T(45) = (y(96)*y(98))^((1-params(180))*(1-params(181)));
T(46) = y(85)^(-y(106));
T(47) = y(86)^params(171)*params(184);
T(48) = (y(78)/y(126))^params(185);
T(49) = 1-y(116)*params(186)/(y(115)*y(116));
T(50) = params(181)*(1-1/params(182))/y(106);
T(51) = y(97)/y(115);
T(52) = params(186)/y(72);
T(53) = y(112)-y(113)/y(116);
T(54) = y(112)*y(114)+y(113)*(1-y(114))/y(116);
T(55) = 1-1/y(116);
T(56) = y(28)*y(2)*y(1)/y(97);
T(57) = (y(38)*y(28)*y(39)/(y(38)*y(39)))^(params(20)*(1-params(21)));
T(58) = (y(107)*y(97)*y(108)/(y(107)*y(108)))^(params(180)*(1-params(181)));
T(59) = y(28)*y(28)/y(97)/y(97);
T(60) = y(28)*y(28)*T(59)/y(97)/y(97);
T(61) = y(28)*y(28)*T(60)/y(97)/y(97);
T(62) = y(28)*y(28)*T(61)/y(97)/y(97);
T(63) = y(28)*y(28)*T(62)/y(97)/y(97);
T(64) = y(28)*y(28)*T(63)/y(97)/y(97);
T(65) = y(28)*y(28)*T(64)/y(97)/y(97);
T(66) = y(28)*y(28)*T(65)/y(97)/y(97);
T(67) = y(28)*y(28)*T(66)/y(97)/y(97);
T(68) = y(28)*y(28)*T(67)/y(97)/y(97);
T(69) = y(28)*y(28)*T(68)/y(97)/y(97);
T(70) = y(28)*y(28)*T(69)/y(97)/y(97);
T(71) = y(28)*y(28)*T(70)/y(97)/y(97);
T(72) = y(28)*y(28)*T(71)/y(97)/y(97);
T(73) = y(28)*y(28)*T(72)/y(97)/y(97);
T(74) = y(28)*y(28)*T(73)/y(97)/y(97);
T(75) = y(28)*y(28)*T(74)/y(97)/y(97);
T(76) = y(28)*y(28)*T(75)/y(97)/y(97);
T(77) = y(28)*y(28)*T(76)/y(97)/y(97);

end
