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

assert(length(T) >= 45);

T = DemoMediumRun_Canada_SOE_IntCost.static_resid_tt(T, y, x, params);

T(29) = y(32)/y(31)*(-(params(5)*y(37)))/(y(6)*y(37)*y(6)*y(37));
T(30) = getPowerDeriv(y(37)*y(6)*params(17),T(7),1);
T(31) = y(6)/y(32);
T(32) = getPowerDeriv(y(12)/y(62),params(23),1);
T(33) = (1-params(5))*getPowerDeriv(y(27),(params(16)-1)/params(16),1);
T(34) = getPowerDeriv(y(28),T(1)/params(16),1);
T(35) = (y(31)*y(29)+y(31)+y(30)*y(56))*getPowerDeriv(y(30)+1+y(29),T(1),1);
T(36) = T(1)/((y(29)+1+y(30))*(y(29)+1+y(30)));
T(37) = params(5)/(y(6)*y(37))*(-y(32))/(y(31)*y(31));
T(38) = getPowerDeriv(y(31)*y(33),(1-params(18))*(1-params(19)),1);
T(39) = params(5)/(y(6)*y(37))*1/y(31);
T(40) = (-y(43))/(y(32)*y(32));
T(41) = getPowerDeriv(y(43)*y(32)*y(44)/(y(43)*y(44)),params(18)*(1-params(19)),1);
T(42) = y(32)/y(31)*(-(params(5)*y(6)))/(y(6)*y(37)*y(6)*y(37));
T(43) = (-((-(params(19)*(1-1/params(20))))/(y(42)*y(42))));
T(44) = 1/y(32);
T(45) = (-(params(24)*y(49)*(-((y(51)*y(52)*params(24)-y(51)*y(52)*params(24))/(y(51)*y(52)*y(51)*y(52))))));

end
