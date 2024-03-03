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

T = DemoMediumRun_pop_pension_Kor_SOE.static_resid_tt(T, y, x, params);

T(30) = y(28)/y(27)*(-(params(16)*y(32)))/(y(3)*y(32)*y(3)*y(32));
T(31) = getPowerDeriv(y(32)*y(3)*params(18),T(8),1);
T(32) = y(3)/y(28);
T(33) = getPowerDeriv(y(9)/y(57),params(24),1);
T(34) = (1-params(16))*getPowerDeriv(y(23),(params(17)-1)/params(17),1);
T(35) = getPowerDeriv(y(24),T(1)/params(17),1);
T(36) = (y(27)*y(25)+y(27)+y(26)*y(51))*getPowerDeriv(1+y(25)+y(26),T(1),1);
T(37) = T(1)/((y(25)+1+y(26))*(y(25)+1+y(26)));
T(38) = params(16)/(y(3)*y(32))*(-y(28))/(y(27)*y(27));
T(39) = getPowerDeriv(y(27)*y(29),(1-params(19))*(1-params(20)),1);
T(40) = params(16)/(y(3)*y(32))*1/y(27);
T(41) = (-y(38))/(y(28)*y(28));
T(42) = getPowerDeriv(y(38)*y(28)*y(39)/(y(38)*y(39)),params(19)*(1-params(20)),1);
T(43) = 1/y(28);
T(44) = y(28)/y(27)*(-(params(16)*y(3)))/(y(3)*y(32)*y(3)*y(32));
T(45) = (-((-(params(20)*(1-1/params(21))))/(y(37)*y(37))));
T(46) = (-(params(25)*y(44)*(-((y(46)*y(47)*params(25)-y(46)*y(47)*params(25))/(y(46)*y(47)*y(46)*y(47))))));

end
