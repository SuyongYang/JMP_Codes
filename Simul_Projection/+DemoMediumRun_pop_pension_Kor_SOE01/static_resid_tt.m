function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 30);

T(1) = (-1);
T(2) = params(16)/(y(5)*y(34))*y(30)/y(29);
T(3) = (1-params(16))*y(25)^((params(17)-1)/params(17));
T(4) = T(3)/(y(5)*y(34));
T(5) = y(30)/(y(29)*y(27));
T(6) = T(4)*T(5);
T(7) = y(64)+y(23)+y(5)*y(35)/y(30);
T(8) = 1/(1-params(17));
T(9) = (y(5)*params(18))^T(8);
T(10) = y(56)*T(9);
T(11) = (y(34)*y(5)*params(18))^T(8);
T(12) = (1+y(27)+y(28))^T(1);
T(13) = params(38)+params(39)/2*y(32)^2;
T(14) = y(26)^(T(1)/params(17));
T(15) = y(40)/y(30);
T(16) = y(48)^(1-params(21));
T(17) = y(44)^params(20);
T(18) = (y(29)*y(31))^((1-params(19))*(1-params(20)));
T(19) = y(18)^(-y(39));
T(20) = y(19)^params(10)*params(23);
T(21) = (y(11)/y(59))^params(24);
T(22) = 1-y(49)*params(25)/(y(48)*y(49));
T(23) = params(20)*(1-1/params(21))/y(39);
T(24) = y(30)/y(48);
T(25) = params(25)/y(5);
T(26) = y(45)-y(46)/y(49);
T(27) = y(45)*y(47)+y(46)*(1-y(47))/y(49);
T(28) = 1-1/y(49);
T(29) = y(5)/y(30);
T(30) = (y(40)*y(30)*y(41)/(y(40)*y(41)))^(params(19)*(1-params(20)));

end
