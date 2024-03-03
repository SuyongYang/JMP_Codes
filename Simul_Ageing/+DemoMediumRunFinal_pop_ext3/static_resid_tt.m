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

T(1) = params(12)/(y(1)*y(29))*y(25)/y(24);
T(2) = (1-params(12))*y(20)^((params(14)-1)/params(14));
T(3) = T(2)/(y(1)*y(29));
T(4) = y(25)/(y(24)*y(22));
T(5) = T(3)*T(4);
T(6) = 1/(1-params(14));
T(7) = (y(1)*params(15))^T(6);
T(8) = y(51)*T(7);
T(9) = (y(29)*y(1)*params(15))^T(6);
T(10) = (y(23)+1+y(22))^(-1);
T(11) = params(35)+params(36)/2*y(27)^2;
T(12) = y(21)^((-1)/params(14));
T(13) = y(35)/y(25);
T(14) = y(43)^(1-params(18));
T(15) = y(39)^params(17);
T(16) = (y(24)*y(26))^((1-params(16))*(1-params(17)));
T(17) = y(13)^(-y(34));
T(18) = y(14)^y(56);
T(19) = T(18)*params(20);
T(20) = (y(7)/y(54))^params(21);
T(21) = 1-y(44)*params(22)/(y(43)*y(44));
T(22) = params(17)*(1-1/params(18))/y(34);
T(23) = y(25)/y(43);
T(24) = params(22)/y(1);
T(25) = y(40)-y(41)/y(44);
T(26) = y(40)*y(42)+y(41)*(1-y(42))/y(44);
T(27) = 1-1/y(44);
T(28) = (y(35)*y(25)*y(36)/(y(35)*y(36)))^(params(16)*(1-params(17)));

end
