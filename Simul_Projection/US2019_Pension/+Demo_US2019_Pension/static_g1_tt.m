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

T = Demo_US2019_Pension.static_resid_tt(T, y, x, params);

T(30) = y(26)/y(25)*(-(params(15)*y(30)))/(y(1)*y(30)*y(1)*y(30));
T(31) = getPowerDeriv(y(30)*y(1)*params(17),T(8),1);
T(32) = y(1)/y(26);
T(33) = getPowerDeriv(y(7)/y(55),params(23),1);
T(34) = (1-params(15))*getPowerDeriv(y(21),(params(16)-1)/params(16),1);
T(35) = getPowerDeriv(y(22),T(1)/params(16),1);
T(36) = (y(25)*y(23)+y(25)+y(24)*y(49))*getPowerDeriv(1+y(23)+y(24),T(1),1);
T(37) = T(1)/((y(23)+1+y(24))*(y(23)+1+y(24)));
T(38) = params(15)/(y(1)*y(30))*(-y(26))/(y(25)*y(25));
T(39) = getPowerDeriv(y(25)*y(27),(1-params(18))*(1-params(19)),1);
T(40) = params(15)/(y(1)*y(30))*1/y(25);
T(41) = (-y(36))/(y(26)*y(26));
T(42) = getPowerDeriv(y(36)*y(26)*y(37)/(y(36)*y(37)),params(18)*(1-params(19)),1);
T(43) = 1/y(26);
T(44) = y(26)/y(25)*(-(params(15)*y(1)))/(y(1)*y(30)*y(1)*y(30));
T(45) = (-((-(params(19)*(1-1/params(20))))/(y(35)*y(35))));
T(46) = (-(params(24)*y(42)*(-((y(44)*y(45)*params(24)-y(44)*y(45)*params(24))/(y(44)*y(45)*y(44)*y(45))))));

end
