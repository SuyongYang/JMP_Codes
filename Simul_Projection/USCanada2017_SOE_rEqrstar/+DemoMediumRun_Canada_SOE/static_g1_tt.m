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

T = DemoMediumRun_Canada_SOE.static_resid_tt(T, y, x, params);

T(30) = y(29)/y(28)*(-(params(4)*y(34)))/(y(3)*y(34)*y(3)*y(34));
T(31) = getPowerDeriv(y(34)*y(3)*params(16),T(7),1);
T(32) = y(3)/y(29);
T(33) = getPowerDeriv(y(9)/y(59),params(22),1);
T(34) = (1-params(4))*getPowerDeriv(y(24),(params(15)-1)/params(15),1);
T(35) = getPowerDeriv(y(25),T(1)/params(15),1);
T(36) = (y(28)*y(26)+y(28)+y(27)*y(53))*getPowerDeriv(y(27)+1+y(26),T(1),1);
T(37) = T(1)/((y(26)+1+y(27))*(y(26)+1+y(27)));
T(38) = params(4)/(y(3)*y(34))*(-y(29))/(y(28)*y(28));
T(39) = getPowerDeriv(y(28)*y(30),(1-params(17))*(1-params(18)),1);
T(40) = params(4)/(y(3)*y(34))*1/y(28);
T(41) = (-y(40))/(y(29)*y(29));
T(42) = getPowerDeriv(y(40)*y(29)*y(41)/(y(40)*y(41)),params(17)*(1-params(18)),1);
T(43) = y(29)/y(28)*(-(params(4)*y(3)))/(y(3)*y(34)*y(3)*y(34));
T(44) = (-((-(params(18)*(1-1/params(19))))/(y(39)*y(39))));
T(45) = 1/y(29);
T(46) = (-(params(23)*y(46)*(-((y(48)*y(49)*params(23)-y(48)*y(49)*params(23))/(y(48)*y(49)*y(48)*y(49))))));

end
