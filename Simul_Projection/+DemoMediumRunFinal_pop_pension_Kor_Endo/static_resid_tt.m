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

assert(length(T) >= 27);

T(1) = params(16)/(y(2)*y(31))*y(27)/y(26);
T(2) = (1-params(16))*y(22)^((params(17)-1)/params(17));
T(3) = T(2)/(y(2)*y(31));
T(4) = y(27)/(y(26)*y(24));
T(5) = T(3)*T(4);
T(6) = y(59)+y(20)+y(2)*y(32)/y(27);
T(7) = 1/(1-params(17));
T(8) = params(1)*(y(2)*params(18))^T(7);
T(9) = (y(31)*y(2)*params(18))^T(7);
T(10) = (1+y(24)+y(25))^(-1);
T(11) = params(38)+params(39)/2*y(29)^2;
T(12) = y(23)^((-1)/params(17));
T(13) = y(37)/y(27);
T(14) = y(45)^(1-params(21));
T(15) = y(41)^params(20);
T(16) = (y(26)*y(28))^((1-params(19))*(1-params(20)));
T(17) = y(15)^(-y(36));
T(18) = y(16)^params(10)*params(23);
T(19) = (y(8)/y(54))^params(24);
T(20) = 1-y(46)*params(25)/(y(45)*y(46));
T(21) = params(20)*(1-1/params(21))/y(36);
T(22) = y(27)/y(45);
T(23) = params(25)/y(2);
T(24) = y(42)-y(43)/y(46);
T(25) = y(42)*y(44)+y(43)*(1-y(44))/y(46);
T(26) = 1-1/y(46);
T(27) = (y(37)*y(27)*y(38)/(y(37)*y(38)))^(params(19)*(1-params(20)));

end
