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

assert(length(T) >= 46);

T = DemoMediumRun_pop_pension_Kor_SOE01.static_resid_tt(T, y, x, params);

T(31) = y(30)/y(29)*(-(params(16)*y(34)))/(y(5)*y(34)*y(5)*y(34));
T(32) = getPowerDeriv(y(34)*y(5)*params(18),T(8),1);
T(33) = 1/y(30);
T(34) = getPowerDeriv(y(11)/y(59),params(24),1);
T(35) = (1-params(16))*getPowerDeriv(y(25),(params(17)-1)/params(17),1);
T(36) = getPowerDeriv(y(26),T(1)/params(17),1);
T(37) = (y(29)*y(27)+y(29)+y(28)*y(53))*getPowerDeriv(1+y(27)+y(28),T(1),1);
T(38) = T(1)/((y(27)+1+y(28))*(y(27)+1+y(28)));
T(39) = params(16)/(y(5)*y(34))*(-y(30))/(y(29)*y(29));
T(40) = getPowerDeriv(y(29)*y(31),(1-params(19))*(1-params(20)),1);
T(41) = params(16)/(y(5)*y(34))*1/y(29);
T(42) = (-y(40))/(y(30)*y(30));
T(43) = getPowerDeriv(y(40)*y(30)*y(41)/(y(40)*y(41)),params(19)*(1-params(20)),1);
T(44) = y(30)/y(29)*(-(params(16)*y(5)))/(y(5)*y(34)*y(5)*y(34));
T(45) = (-((-(params(20)*(1-1/params(21))))/(y(39)*y(39))));
T(46) = (-(params(25)*y(46)*(-((y(48)*y(49)*params(25)-y(48)*y(49)*params(25))/(y(48)*y(49)*y(48)*y(49))))));

end
