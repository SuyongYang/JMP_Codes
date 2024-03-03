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

assert(length(T) >= 43);

T = DemoMediumRunFinal_pop_pension_Kor_Endo.static_resid_tt(T, y, x, params);

T(28) = y(27)/y(26)*(-(params(16)*y(31)))/(y(2)*y(31)*y(2)*y(31));
T(29) = getPowerDeriv(y(31)*y(2)*params(18),T(7),1);
T(30) = y(2)/y(27);
T(31) = getPowerDeriv(y(8)/y(54),params(24),1);
T(32) = (1-params(16))*getPowerDeriv(y(22),(params(17)-1)/params(17),1);
T(33) = getPowerDeriv(y(23),(-1)/params(17),1);
T(34) = (y(26)*y(24)+y(26)+y(25)*y(50))*getPowerDeriv(1+y(24)+y(25),(-1),1);
T(35) = params(16)/(y(2)*y(31))*(-y(27))/(y(26)*y(26));
T(36) = getPowerDeriv(y(26)*y(28),(1-params(19))*(1-params(20)),1);
T(37) = params(16)/(y(2)*y(31))*1/y(26);
T(38) = (-y(37))/(y(27)*y(27));
T(39) = getPowerDeriv(y(37)*y(27)*y(38)/(y(37)*y(38)),params(19)*(1-params(20)),1);
T(40) = 1/y(27);
T(41) = y(27)/y(26)*(-(params(16)*y(2)))/(y(2)*y(31)*y(2)*y(31));
T(42) = (-((-(params(20)*(1-1/params(21))))/(y(36)*y(36))));
T(43) = (-(params(25)*y(43)*(-((y(45)*y(46)*params(25)-y(45)*y(46)*params(25))/(y(45)*y(46)*y(45)*y(46))))));

end
