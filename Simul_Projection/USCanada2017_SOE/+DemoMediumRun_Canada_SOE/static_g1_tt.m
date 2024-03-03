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

assert(length(T) >= 48);

T = DemoMediumRun_Canada_SOE.static_resid_tt(T, y, x, params);

T(30) = y(32)/y(31)*(-(params(4)*y(37)))/(y(6)*y(37)*y(6)*y(37));
T(31) = getPowerDeriv(y(37)*y(6)*params(16),T(7),1);
T(32) = (-(y(9)/y(32)-y(55)/y(32)));
T(33) = y(6)/y(32);
T(34) = getPowerDeriv(y(12)/y(62),params(22),1);
T(35) = (1-params(4))*getPowerDeriv(y(27),(params(15)-1)/params(15),1);
T(36) = getPowerDeriv(y(28),T(1)/params(15),1);
T(37) = (y(31)*y(29)+y(31)+y(30)*y(56))*getPowerDeriv(y(30)+1+y(29),T(1),1);
T(38) = T(1)/((y(29)+1+y(30))*(y(29)+1+y(30)));
T(39) = params(4)/(y(6)*y(37))*(-y(32))/(y(31)*y(31));
T(40) = getPowerDeriv(y(31)*y(33),(1-params(17))*(1-params(18)),1);
T(41) = params(4)/(y(6)*y(37))*1/y(31);
T(42) = (-y(43))/(y(32)*y(32));
T(43) = getPowerDeriv(y(43)*y(32)*y(44)/(y(43)*y(44)),params(17)*(1-params(18)),1);
T(44) = (-((1+y(7))*T(42)+(-(y(6)*y(9)))/(y(32)*y(32))+(-(y(5)*y(4)))/(y(32)*y(32))-(-(y(6)*y(55)))/(y(32)*y(32))));
T(45) = y(32)/y(31)*(-(params(4)*y(6)))/(y(6)*y(37)*y(6)*y(37));
T(46) = (-((-(params(18)*(1-1/params(19))))/(y(42)*y(42))));
T(47) = 1/y(32);
T(48) = (-(params(23)*y(49)*(-((y(51)*y(52)*params(23)-y(51)*y(52)*params(23))/(y(51)*y(52)*y(51)*y(52))))));

end
