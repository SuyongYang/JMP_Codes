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
T(2) = params(4)/(y(3)*y(34))*y(29)/y(28);
T(3) = (1-params(4))*y(24)^((params(15)-1)/params(15));
T(4) = T(3)/(y(3)*y(34));
T(5) = y(29)/(y(28)*y(26));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(15));
T(8) = (y(3)*params(16))^T(7);
T(9) = y(55)*T(8);
T(10) = (y(34)*y(3)*params(16))^T(7);
T(11) = (y(27)+1+y(26))^T(1);
T(12) = params(36)+params(37)/2*y(31)^2;
T(13) = y(25)^(T(1)/params(15));
T(14) = y(40)/y(29);
T(15) = y(48)^(1-params(19));
T(16) = y(44)^params(18);
T(17) = (y(28)*y(30))^((1-params(17))*(1-params(18)));
T(18) = y(17)^(-y(39));
T(19) = y(18)^params(8)*params(21);
T(20) = (y(9)/y(59))^params(22);
T(21) = 1-y(49)*params(23)/(y(48)*y(49));
T(22) = params(18)*(1-1/params(19))/y(39);
T(23) = y(29)/y(48);
T(24) = params(23)/y(3);
T(25) = y(45)-y(46)/y(49);
T(26) = y(45)*y(47)+y(46)*(1-y(47))/y(49);
T(27) = 1-1/y(49);
T(28) = x(1)*(y(2)-y(3));
T(29) = (y(40)*y(29)*y(41)/(y(40)*y(41)))^(params(17)*(1-params(18)));

end
