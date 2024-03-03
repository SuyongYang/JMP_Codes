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

assert(length(T) >= 28);

T(1) = (-1);
T(2) = params(3)/(y(1)*y(31))*y(27)/y(26);
T(3) = (1-params(3))*y(22)^((params(14)-1)/params(14));
T(4) = T(3)/(y(1)*y(31));
T(5) = y(27)/(y(26)*y(24));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(14));
T(8) = (y(1)*params(15))^T(7);
T(9) = y(53)*T(8);
T(10) = (y(31)*y(1)*params(15))^T(7);
T(11) = (y(25)+1+y(24))^T(1);
T(12) = params(35)+params(36)/2*y(29)^2;
T(13) = y(23)^(T(1)/params(14));
T(14) = y(37)/y(27);
T(15) = y(45)^(1-params(18));
T(16) = y(41)^params(17);
T(17) = (y(26)*y(28))^((1-params(16))*(1-params(17)));
T(18) = y(15)^(-y(36));
T(19) = y(16)^params(7)*params(20);
T(20) = (y(7)/y(57))^params(21);
T(21) = 1-y(46)*params(22)/(y(45)*y(46));
T(22) = params(17)*(1-1/params(18))/y(36);
T(23) = y(27)/y(45);
T(24) = params(22)/y(1);
T(25) = y(42)-y(43)/y(46);
T(26) = y(42)*y(44)+y(43)*(1-y(44))/y(46);
T(27) = 1-1/y(46);
T(28) = (y(37)*y(27)*y(38)/(y(37)*y(38)))^(params(16)*(1-params(17)));

end
