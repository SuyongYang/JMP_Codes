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

T = DemoMediumRun_Canada_SOE.static_resid_tt(T, y, x, params);

T(29) = y(29)/y(28)*(-(params(3)*y(34)))/(y(3)*y(34)*y(3)*y(34));
T(30) = getPowerDeriv(y(34)*y(3)*params(15),T(7),1);
T(31) = y(3)/y(29);
T(32) = getPowerDeriv(y(9)/y(59),params(21),1);
T(33) = (1-params(3))*getPowerDeriv(y(24),(params(14)-1)/params(14),1);
T(34) = getPowerDeriv(y(25),T(1)/params(14),1);
T(35) = (y(28)*y(26)+y(28)+y(27)*y(53))*getPowerDeriv(y(27)+1+y(26),T(1),1);
T(36) = T(1)/((y(26)+1+y(27))*(y(26)+1+y(27)));
T(37) = params(3)/(y(3)*y(34))*(-y(29))/(y(28)*y(28));
T(38) = getPowerDeriv(y(28)*y(30),(1-params(16))*(1-params(17)),1);
T(39) = params(3)/(y(3)*y(34))*1/y(28);
T(40) = (-y(40))/(y(29)*y(29));
T(41) = getPowerDeriv(y(40)*y(29)*y(41)/(y(40)*y(41)),params(16)*(1-params(17)),1);
T(42) = y(29)/y(28)*(-(params(3)*y(3)))/(y(3)*y(34)*y(3)*y(34));
T(43) = (-((-(params(17)*(1-1/params(18))))/(y(39)*y(39))));
T(44) = 1/y(29);
T(45) = (-(params(22)*y(46)*(-((y(48)*y(49)*params(22)-y(48)*y(49)*params(22))/(y(48)*y(49)*y(48)*y(49))))));

end
