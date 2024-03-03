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

T = DemoMediumRunFinal_newpred_Canada2019.static_resid_tt(T, y, x, params);

T(29) = y(27)/y(26)*(-(params(3)*y(32)))/(y(1)*y(32)*y(1)*y(32));
T(30) = getPowerDeriv(y(32)*y(1)*params(15),T(7),1);
T(31) = y(1)/y(27);
T(32) = getPowerDeriv(y(7)/y(57),params(21),1);
T(33) = (1-params(3))*getPowerDeriv(y(22),(params(14)-1)/params(14),1);
T(34) = getPowerDeriv(y(23),T(1)/params(14),1);
T(35) = (y(26)*y(24)+y(26)+y(25)*y(51))*getPowerDeriv(y(25)+1+y(24),T(1),1);
T(36) = T(1)/((y(24)+1+y(25))*(y(24)+1+y(25)));
T(37) = params(3)/(y(1)*y(32))*(-y(27))/(y(26)*y(26));
T(38) = getPowerDeriv(y(26)*y(28),(1-params(16))*(1-params(17)),1);
T(39) = params(3)/(y(1)*y(32))*1/y(26);
T(40) = (-y(38))/(y(27)*y(27));
T(41) = getPowerDeriv(y(38)*y(27)*y(39)/(y(38)*y(39)),params(16)*(1-params(17)),1);
T(42) = y(27)/y(26)*(-(params(3)*y(1)))/(y(1)*y(32)*y(1)*y(32));
T(43) = (-((-(params(17)*(1-1/params(18))))/(y(37)*y(37))));
T(44) = 1/y(27);
T(45) = (-(params(22)*y(44)*(-((y(46)*y(47)*params(22)-y(46)*y(47)*params(22))/(y(46)*y(47)*y(46)*y(47))))));

end
