function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 130);

T = DemoMediumRunFinal_newpred_US2019.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(49) = y(13)/y(81);
T(50) = y(55)*y(86)*y(55)*y(86);
T(51) = (-(params(3)*y(86)))/T(50);
T(52) = T(3)*T(51);
T(53) = y(80)*y(55)*y(78)*y(80)*y(55)*y(78);
T(54) = (-(y(86)*T(5)))/T(50);
T(55) = params(15)*getPowerDeriv(y(55)*params(15),T(10),1);
T(56) = y(55)*y(107)*T(55)-T(12);
T(57) = T(56)/(y(55)*y(55));
T(58) = getPowerDeriv(y(86)*y(55)*params(15),T(10),1);
T(59) = (y(55)*y(86)*y(86)*params(15)*T(58)-y(86)*T(15))/T(50);
T(60) = y(159)*params(22)*(-y(157))/(y(55)*y(55));
T(61) = (-params(22))/(y(55)*y(55));
T(62) = T(25)*T(25);
T(63) = y(1)/y(81);
T(64) = (-y(59))/(y(3)*y(3));
T(65) = 1/y(3);
T(66) = 1/y(111);
T(67) = getPowerDeriv(y(61)/y(111),params(21),1);
T(68) = getPowerDeriv(y(6),y(15)-1,1);
T(69) = (-(T(28)*T(68)));
T(70) = T(69)/(T(29)*T(29));
T(71) = getPowerDeriv(y(69),y(91)-1,1);
T(72) = T(71)/T(29);
T(73) = getPowerDeriv(y(69),(-y(91)),1);
T(74) = params(20)*getPowerDeriv(y(70),params(7),1);
T(75) = (1-params(3))*getPowerDeriv(y(155),(params(14)-1)/params(14),1);
T(76) = T(75)/(y(55)*y(86));
T(77) = (-(y(77)*y(76)*y(156)))/(y(155)*y(156)*y(155)*y(156));
T(78) = (-(y(155)*y(77)*y(76)))/(y(155)*y(156)*y(155)*y(156));
T(79) = params(15)*getPowerDeriv(y(156),T(20),1);
T(80) = (1-y(160))*T(79);
T(81) = y(83)*params(36)*y(79)*T(80);
T(82) = y(157)*y(150)*T(81);
T(83) = getPowerDeriv(y(9)+1+y(8),T(1),1);
T(84) = (y(80)*y(78)+y(80)+y(9)*y(105))*T(83);
T(85) = (-(y(157)*y(80)))/(y(80)*y(78)*y(80)*y(78));
T(86) = T(1)/((y(78)+1+y(79))*(y(78)+1+y(79)));
T(87) = getPowerDeriv(y(12)*y(10),(1-params(16))*(1-params(17)),1);
T(88) = T(2)*(-y(157))/(y(80)*y(80));
T(89) = (-(y(157)*y(78)))/(y(80)*y(78)*y(80)*y(78));
T(90) = y(16)*y(93)/(y(17)*y(25));
T(91) = getPowerDeriv(T(46),params(16)*(1-params(17)),1);
T(92) = T(90)*T(91);
T(93) = (-(y(1)*y(14)))/(y(81)*y(81));
T(94) = (-(y(1)*y(13)))/(y(81)*y(81));
T(95) = (-y(16))/(y(81)*y(81));
T(96) = T(2)*1/y(80);
T(97) = 1/(y(80)*y(78));
T(98) = y(159)*params(22)*1/y(55);
T(99) = 1/y(100);
T(100) = (-(params(3)*y(55)))/T(50);
T(101) = T(3)*T(100);
T(102) = (-(y(55)*T(5)))/T(50);
T(103) = (y(55)*y(86)*y(55)*params(15)*T(58)-y(55)*T(15))/T(50);
T(104) = (-(T(28)*T(29)*log(y(6))))/(T(29)*T(29));
T(105) = T(47)*T(104);
T(106) = T(28)*log(y(69))/T(29);
T(107) = T(47)*T(106);
T(108) = (y(91)-(y(91)-1))/(y(91)*y(91));
T(109) = (-((-(params(17)*(1-1/params(18))))/(y(91)*y(91))));
T(110) = 1/y(81);
T(111) = y(93)*y(11)/(y(17)*y(25));
T(112) = T(91)*T(111);
T(113) = (-(y(16)*y(93)*y(11)*y(25)))/(y(17)*y(25)*y(17)*y(25));
T(114) = T(91)*T(113);
T(115) = y(16)*y(11)/(y(17)*y(25));
T(116) = T(91)*T(115);
T(117) = getPowerDeriv(y(96),params(17),1);
T(118) = (-(1/y(101)));
T(119) = (1-y(99))/y(101);
T(120) = y(158)+(-y(159))/y(101);
T(121) = getPowerDeriv(y(18),1-params(18),1);
T(122) = (-((-(y(101)*y(19)*params(22)))/(y(100)*y(101)*y(100)*y(101))));
T(123) = (-y(157))/(y(100)*y(100));
T(124) = (-(params(22)/(y(100)*y(101))));
T(125) = (-((-(y(100)*y(19)*params(22)))/(y(100)*y(101)*y(100)*y(101))));
T(126) = (-((-y(159))/(y(101)*y(101))));
T(127) = (-(y(159)*(1-y(99))))/(y(101)*y(101));
T(128) = T(11)/y(55);
T(129) = (-(y(16)*y(93)*y(11)*y(17)))/(y(17)*y(25)*y(17)*y(25));
T(130) = T(91)*T(129);

end
