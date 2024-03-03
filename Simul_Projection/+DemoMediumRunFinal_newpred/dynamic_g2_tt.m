function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 161);

T = DemoMediumRunFinal_newpred.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(131) = T(50)*T(50);
T(132) = T(3)*(-((-(params(3)*y(86)))*(y(86)*y(55)*y(86)+y(86)*y(55)*y(86))))/T(131);
T(133) = T(51)*(-y(157))/(y(80)*y(80));
T(134) = T(3)*(T(50)*(-params(3))-(-(params(3)*y(86)))*(y(55)*y(55)*y(86)+y(55)*y(55)*y(86)))/T(131);
T(135) = T(2)*(-((-y(157))*(y(80)+y(80))))/(y(80)*y(80)*y(80)*y(80));
T(136) = (-y(157))/(y(80)*y(80))*T(100);
T(137) = T(3)*(-((-(params(3)*y(55)))*(y(55)*y(55)*y(86)+y(55)*y(55)*y(86))))/T(131);
T(138) = (1-params(3))*getPowerDeriv(y(155),(params(14)-1)/params(14),2);
T(139) = (-y(1))/(y(81)*y(81));
T(140) = getPowerDeriv(y(86)*y(55)*params(15),T(10),2);
T(141) = (y(80)*y(78)+y(80)+y(9)*y(105))*getPowerDeriv(y(9)+1+y(8),T(1),2);
T(142) = (-((-y(16))*(y(81)+y(81))))/(y(81)*y(81)*y(81)*y(81));
T(143) = T(1)/(y(81)*y(81));
T(144) = y(6)^(y(15)-1-1);
T(145) = y(69)^(y(91)-1-1);
T(146) = getPowerDeriv(y(12)*y(10),(1-params(16))*(1-params(17)),2);
T(147) = getPowerDeriv(T(46),params(16)*(1-params(17)),2);
T(148) = T(115)*T(147);
T(149) = T(129)*T(147);
T(150) = y(69)^((-y(91))-1);
T(151) = getPowerDeriv(y(61)/y(111),params(21),2);
T(152) = (-((-params(22))*(y(55)+y(55))))/(y(55)*y(55)*y(55)*y(55));
T(153) = (-((-((-(params(17)*(1-1/params(18))))*(y(91)+y(91))))/(y(91)*y(91)*y(91)*y(91))));
T(154) = (-((-y(157))*(y(100)+y(100))))/(y(100)*y(100)*y(100)*y(100));
T(155) = params(22)*y(98)*(-((-((-(y(19)*params(22)*y(26)))*(y(19)*y(18)*y(19)+y(19)*y(18)*y(19))))/(y(18)*y(19)*y(18)*y(19)*y(18)*y(19)*y(18)*y(19))));
T(156) = params(22)*y(98)*(-((y(18)*y(19)*y(18)*y(19)*(-(params(22)*y(26)))-(-(y(19)*params(22)*y(26)))*(y(18)*y(18)*y(19)+y(18)*y(18)*y(19)))/(y(18)*y(19)*y(18)*y(19)*y(18)*y(19)*y(18)*y(19))));
T(157) = params(22)*y(98)*(-((-((-(y(18)*params(22)*y(26)))*(y(18)*y(18)*y(19)+y(18)*y(18)*y(19))))/(y(18)*y(19)*y(18)*y(19)*y(18)*y(19)*y(18)*y(19))));
T(158) = (y(78)+1+y(79))*(y(78)+1+y(79))*(y(78)+1+y(79))*(y(78)+1+y(79));
T(159) = (y(78)+1+y(79)+y(78)+1+y(79))/T(158);
T(160) = (-T(159));
T(161) = ((y(78)+1+y(79))*(y(78)+1+y(79))-(1+y(79))*(y(78)+1+y(79)+y(78)+1+y(79)))/T(158);

end
