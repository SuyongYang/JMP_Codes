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

assert(length(T) >= 29);

T(1) = (-1);
T(2) = params(16)/(y(3)*y(32))*y(28)/y(27);
T(3) = (1-params(16))*y(23)^((params(17)-1)/params(17));
T(4) = T(3)/(y(3)*y(32));
T(5) = y(28)/(y(27)*y(25));
T(6) = T(4)*T(5);
T(7) = y(62)+y(21)+y(3)*y(33)/y(28);
T(8) = 1/(1-params(17));
T(9) = (y(3)*params(18))^T(8);
T(10) = y(54)*T(9);
T(11) = (y(32)*y(3)*params(18))^T(8);
T(12) = (1+y(25)+y(26))^T(1);
T(13) = params(38)+params(39)/2*y(30)^2;
T(14) = y(24)^(T(1)/params(17));
T(15) = y(38)/y(28);
T(16) = y(46)^(1-params(21));
T(17) = y(42)^params(20);
T(18) = (y(27)*y(29))^((1-params(19))*(1-params(20)));
T(19) = y(16)^(-y(37));
T(20) = y(17)^params(10)*params(23);
T(21) = (y(9)/y(57))^params(24);
T(22) = 1-y(47)*params(25)/(y(46)*y(47));
T(23) = params(20)*(1-1/params(21))/y(37);
T(24) = y(28)/y(46);
T(25) = params(25)/y(3);
T(26) = y(43)-y(44)/y(47);
T(27) = y(43)*y(45)+y(44)*(1-y(45))/y(47);
T(28) = 1-1/y(47);
T(29) = (y(38)*y(28)*y(39)/(y(38)*y(39)))^(params(19)*(1-params(20)));

end
