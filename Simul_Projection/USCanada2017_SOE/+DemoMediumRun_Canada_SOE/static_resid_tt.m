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
T(2) = params(4)/(y(6)*y(37))*y(32)/y(31);
T(3) = (1-params(4))*y(27)^((params(15)-1)/params(15));
T(4) = T(3)/(y(6)*y(37));
T(5) = y(32)/(y(31)*y(29));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(15));
T(8) = (y(6)*params(16))^T(7);
T(9) = y(58)*T(8);
T(10) = (y(37)*y(6)*params(16))^T(7);
T(11) = (y(30)+1+y(29))^T(1);
T(12) = params(36)+params(37)/2*y(34)^2;
T(13) = y(28)^(T(1)/params(15));
T(14) = y(43)/y(32);
T(15) = y(51)^(1-params(19));
T(16) = y(47)^params(18);
T(17) = (y(31)*y(33))^((1-params(17))*(1-params(18)));
T(18) = y(20)^(-y(42));
T(19) = y(21)^params(8)*params(21);
T(20) = (y(12)/y(62))^params(22);
T(21) = 1-y(52)*params(23)/(y(51)*y(52));
T(22) = params(18)*(1-1/params(19))/y(42);
T(23) = y(32)/y(51);
T(24) = params(23)/y(6);
T(25) = y(48)-y(49)/y(52);
T(26) = y(48)*y(50)+y(49)*(1-y(50))/y(52);
T(27) = 1-1/y(52);
T(28) = T(14)*(1+y(7))+y(6)*y(9)/y(32)+y(5)*y(4)/y(32)-y(6)*y(55)/y(32);
T(29) = (y(43)*y(32)*y(44)/(y(43)*y(44)))^(params(17)*(1-params(18)));

end
