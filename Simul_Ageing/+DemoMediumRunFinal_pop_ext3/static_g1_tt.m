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

assert(length(T) >= 44);

T = DemoMediumRunFinal_pop_ext3.static_resid_tt(T, y, x, params);

T(29) = y(25)/y(24)*(-(params(12)*y(29)))/(y(1)*y(29)*y(1)*y(29));
T(30) = getPowerDeriv(y(29)*y(1)*params(15),T(6),1);
T(31) = y(1)/y(25);
T(32) = getPowerDeriv(y(7)/y(54),params(21),1);
T(33) = (1-params(12))*getPowerDeriv(y(20),(params(14)-1)/params(14),1);
T(34) = getPowerDeriv(y(21),(-1)/params(14),1);
T(35) = (y(24)*y(22)+y(24)+y(23)*y(48))*getPowerDeriv(y(23)+1+y(22),(-1),1);
T(36) = params(12)/(y(1)*y(29))*(-y(25))/(y(24)*y(24));
T(37) = getPowerDeriv(y(24)*y(26),(1-params(16))*(1-params(17)),1);
T(38) = params(12)/(y(1)*y(29))*1/y(24);
T(39) = (-y(35))/(y(25)*y(25));
T(40) = getPowerDeriv(y(35)*y(25)*y(36)/(y(35)*y(36)),params(16)*(1-params(17)),1);
T(41) = y(25)/y(24)*(-(params(12)*y(1)))/(y(1)*y(29)*y(1)*y(29));
T(42) = (-((-(params(17)*(1-1/params(18))))/(y(34)*y(34))));
T(43) = 1/y(25);
T(44) = (-(params(22)*y(41)*(-((y(43)*y(44)*params(22)-y(43)*y(44)*params(22))/(y(43)*y(44)*y(43)*y(44))))));

end
