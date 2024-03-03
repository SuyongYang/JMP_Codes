function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = DemoMediumRunFinal_pop_ext3.static_resid_tt(T, y, x, params);
end
residual = zeros(60, 1);
lhs = y(17);
rhs = y(3)+y(17)*T(1);
residual(1) = lhs - rhs;
lhs = y(16);
rhs = y(12)+T(1)*y(16);
residual(2) = lhs - rhs;
lhs = y(18);
rhs = y(32)+y(25)*y(18)*y(51)*y(22)/(y(24)*y(1)*y(22));
residual(3) = lhs - rhs;
lhs = y(19);
rhs = y(33)+T(1)*y(19)+y(18)*T(5);
residual(4) = lhs - rhs;
lhs = y(10);
rhs = y(21)*(y(19)+y(17)+y(1)*y(31)/y(25)-y(16));
residual(5) = lhs - rhs;
lhs = y(11);
rhs = y(20)*y(21)*(y(18)+y(1)*y(30)/y(25));
residual(6) = lhs - rhs;
lhs = 1-y(20)*y(21);
rhs = T(8)/y(1);
residual(7) = lhs - rhs;
lhs = 1-y(21);
rhs = T(9)/(y(1)*y(29));
residual(8) = lhs - rhs;
lhs = y(29);
rhs = params(12)+T(2);
residual(9) = lhs - rhs;
lhs = y(24);
rhs = params(12)+(1-params(13))*y(23);
residual(10) = lhs - rhs;
lhs = y(48);
rhs = y(24);
residual(11) = lhs - rhs;
lhs = y(24)*y(22);
rhs = 1-params(12)+y(51)*y(22);
residual(12) = lhs - rhs;
lhs = y(49);
rhs = (y(24)*y(22)+y(24)+y(23)*y(48))*T(10);
residual(13) = lhs - rhs;
lhs = y(26);
rhs = (params(12)+(1-params(13))*y(23)*T(11))/y(24);
residual(14) = lhs - rhs;
lhs = T(12);
rhs = y(25)*y(3)*y(27)*params(36)*y(23)*(1-params(13))*params(15)*T(12)/(y(3)*y(24));
residual(15) = lhs - rhs;
lhs = y(53);
rhs = y(48)-params(13);
residual(16) = lhs - rhs;
lhs = y(12);
rhs = y(3)*y(27);
residual(17) = lhs - rhs;
lhs = (1-params(16))*(1-params(17));
rhs = y(3)*y(34);
residual(18) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = y(34)*(y(2)+y(37))*T(13);
residual(19) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = T(13)*y(34)*y(38)*y(36);
residual(20) = lhs - rhs;
lhs = y(25);
rhs = y(39)*T(14);
residual(21) = lhs - rhs;
lhs = y(25);
rhs = T(15)*T(16)*T(28);
residual(22) = lhs - rhs;
lhs = (y(34)-1)/y(34)*T(17);
rhs = params(19)*y(40);
residual(23) = lhs - rhs;
lhs = y(34);
rhs = params(27)*(1+params(23)*(y(13)-1));
residual(24) = lhs - rhs;
lhs = y(37);
rhs = params(26)+y(38)*(y(36)-params(29));
residual(25) = lhs - rhs;
lhs = y(38);
rhs = params(25)+(y(36)-params(29))*params(25)*params(11)/params(29);
residual(26) = lhs - rhs;
lhs = y(43);
rhs = T(19)*T(20)+params(22);
residual(27) = lhs - rhs;
lhs = y(56);
rhs = params(6)+y(58);
residual(28) = lhs - rhs;
lhs = y(14);
rhs = y(23)*(1-params(13))*params(3)/(y(22)+1+y(23))+y(14)*params(12)*(1-params(7))/y(49);
residual(29) = lhs - rhs;
lhs = y(43);
rhs = params(22)+params(22)*y(42)*(y(44)-1);
residual(30) = lhs - rhs;
lhs = y(7);
rhs = params(22)*y(25)/y(1)*y(41)*T(21);
residual(31) = lhs - rhs;
lhs = y(40);
rhs = T(22)+y(40)*T(23)*T(24);
residual(32) = lhs - rhs;
lhs = y(6);
rhs = T(24)*T(23)*y(44)*y(42)*params(24)*T(25);
residual(33) = lhs - rhs;
lhs = y(41);
rhs = T(24)*y(44)*T(23)*T(26)-y(6);
residual(34) = lhs - rhs;
lhs = y(42);
rhs = params(28)*(1+params(24)*((y(6)-params(30))/params(30)-(y(44)-params(31))/params(31)-(y(54)-params(8))/params(8)));
residual(35) = lhs - rhs;
lhs = y(45);
rhs = T(22)-T(21)*params(22)*y(41)-y(1)*y(6)*T(27)/y(25);
residual(36) = lhs - rhs;
lhs = y(46);
rhs = T(21)*params(22)*y(41)-y(1)*y(7)/y(25);
residual(37) = lhs - rhs;
lhs = y(54);
rhs = y(40);
residual(38) = lhs - rhs;
lhs = y(1);
rhs = 1+y(2);
residual(39) = lhs - rhs;
lhs = y(32);
rhs = y(30)*y(15)/y(47);
residual(40) = lhs - rhs;
lhs = y(33);
rhs = y(31)*y(15)/y(47)+params(2)*(y(45)+y(46));
residual(41) = lhs - rhs;
lhs = y(4);
rhs = y(7)+y(6)*T(27);
residual(42) = lhs - rhs;
lhs = y(15);
rhs = y(47)+T(13)*(1+y(2))+y(1)*y(4)/y(25)-y(1)*y(47)/y(25)-y(35)-y(4)+(y(45)+y(46))*(1-params(2));
residual(43) = lhs - rhs;
lhs = y(35);
rhs = T(13)*(1-y(37))+y(8);
residual(44) = lhs - rhs;
lhs = y(5);
rhs = 1-params(17)/(y(34)*params(18))-y(54)*y(13)*params(19);
residual(45) = lhs - rhs;
lhs = y(5);
rhs = y(12)+y(6)*T(27)+y(7)+y(8)+y(9);
residual(46) = lhs - rhs;
lhs = y(9);
rhs = y(10)+y(11);
residual(47) = lhs - rhs;
lhs = y(47);
rhs = y(35)+y(4);
residual(48) = lhs - rhs;
lhs = y(30);
rhs = y(32)+y(1)*y(30)/y(25)-y(11)+(1-params(12))*(y(33)+y(3)+y(1)*y(31)/y(25)-y(10)-y(12));
residual(49) = lhs - rhs;
lhs = y(47);
rhs = y(31)+y(30);
residual(50) = lhs - rhs;
lhs = y(49);
rhs = params(33);
residual(51) = lhs - rhs;
lhs = y(28);
rhs = y(25)/y(49);
residual(52) = lhs - rhs;
lhs = y(50);
rhs = y(25);
residual(53) = lhs - rhs;
lhs = y(51);
rhs = params(34)+y(52);
residual(54) = lhs - rhs;
lhs = y(52);
rhs = y(52)*params(10)+y(55);
residual(55) = lhs - rhs;
lhs = y(58);
rhs = y(58)*params(1)+y(57);
residual(56) = lhs - rhs;
lhs = y(57);
rhs = y(57)+params(5)*x(1)/0.005;
residual(57) = lhs - rhs;
lhs = y(55);
rhs = y(55)+x(1);
residual(58) = lhs - rhs;
lhs = y(59);
rhs = y(35);
residual(59) = lhs - rhs;
lhs = y(60);
rhs = y(44);
residual(60) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
