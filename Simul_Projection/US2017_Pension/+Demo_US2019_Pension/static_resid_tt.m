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
T(2) = params(15)/(y(1)*y(30))*y(26)/y(25);
T(3) = (1-params(15))*y(21)^((params(16)-1)/params(16));
T(4) = T(3)/(y(1)*y(30));
T(5) = y(26)/(y(25)*y(23));
T(6) = T(4)*T(5);
T(7) = y(60)+y(19)+y(1)*y(31)/y(26);
T(8) = 1/(1-params(16));
T(9) = (y(1)*params(17))^T(8);
T(10) = y(52)*T(9);
T(11) = (y(30)*y(1)*params(17))^T(8);
T(12) = (1+y(23)+y(24))^T(1);
T(13) = params(37)+params(38)/2*y(28)^2;
T(14) = y(22)^(T(1)/params(16));
T(15) = y(36)/y(26);
T(16) = y(44)^(1-params(20));
T(17) = y(40)^params(19);
T(18) = (y(25)*y(27))^((1-params(18))*(1-params(19)));
T(19) = y(14)^(-y(35));
T(20) = y(15)^params(9)*params(22);
T(21) = (y(7)/y(55))^params(23);
T(22) = 1-y(45)*params(24)/(y(44)*y(45));
T(23) = params(19)*(1-1/params(20))/y(35);
T(24) = y(26)/y(44);
T(25) = params(24)/y(1);
T(26) = y(41)-y(42)/y(45);
T(27) = y(41)*y(43)+y(42)*(1-y(43))/y(45);
T(28) = 1-1/y(45);
T(29) = (y(36)*y(26)*y(37)/(y(36)*y(37)))^(params(18)*(1-params(19)));

end
