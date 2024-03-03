function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = DemoMediumRunFinal_pop_pension_Kor_Endo.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(63, 1);
lhs = y(47);
rhs = y(32)+T(1)*y(95);
residual(1) = lhs - rhs;
lhs = y(46);
rhs = y(42)+T(1)*y(94);
residual(2) = lhs - rhs;
lhs = y(48);
rhs = y(62)+y(100)*y(96)*params(1)*y(10)/(y(54)*y(30)*y(52));
residual(3) = lhs - rhs;
lhs = y(85);
rhs = 1/params(8)*y(2)*(1-params(16))+(1-1/params(8))*y(24)*y(26)/y(55);
residual(4) = lhs - rhs;
lhs = y(86);
rhs = y(85)*params(6)+params(1)*y(14)/y(55)*y(25);
residual(5) = lhs - rhs;
lhs = y(87);
rhs = y(86)+y(10)*y(100)*params(1)*y(104)/(y(54)*y(30)*y(52));
residual(6) = lhs - rhs;
lhs = y(49);
rhs = y(63)+T(1)*y(97)+T(5)*(y(96)+y(104));
residual(7) = lhs - rhs;
lhs = y(40);
rhs = y(51)*(y(49)+y(47)+y(1)*y(16)/y(55)-y(46));
residual(8) = lhs - rhs;
lhs = y(41);
rhs = y(51)*y(50)*T(6);
residual(9) = lhs - rhs;
lhs = 1-y(51)*y(50);
rhs = T(9)*y(51)*y(50)/(y(98)*y(99));
residual(10) = lhs - rhs;
lhs = 1-y(51);
rhs = T(10)/(y(30)*y(59))*y(51)/y(99);
residual(11) = lhs - rhs;
lhs = y(59);
rhs = params(16)+T(2);
residual(12) = lhs - rhs;
lhs = y(88);
rhs = params(7)*y(10)/(1+y(10)+y(11));
residual(13) = lhs - rhs;
lhs = y(84);
rhs = y(86)+y(88);
residual(14) = lhs - rhs;
lhs = y(83);
rhs = y(32)*y(57);
residual(15) = lhs - rhs;
lhs = y(42);
rhs = y(84)+y(83);
residual(16) = lhs - rhs;
lhs = y(54);
rhs = params(16)+y(11)*(1-y(29));
residual(17) = lhs - rhs;
lhs = y(78);
rhs = y(54)*y(53)/y(11);
residual(18) = lhs - rhs;
lhs = y(54)*y(52);
rhs = 1-params(16)+params(1)*y(10);
residual(19) = lhs - rhs;
lhs = y(79);
rhs = (y(54)*y(52)+y(54)+y(11)*y(78))*T(11);
residual(20) = lhs - rhs;
lhs = y(56);
rhs = (params(16)+y(11)*(1-y(29))*T(12))/y(54);
residual(21) = lhs - rhs;
lhs = y(51)^T(13);
rhs = y(100)*y(57)*params(39)*y(11)*(1-y(29))*T(14)*y(93)/(y(32)*y(54));
residual(22) = lhs - rhs;
lhs = y(81);
rhs = y(78)-y(29);
residual(23) = lhs - rhs;
lhs = y(103)/y(83);
rhs = y(93)/y(32);
residual(24) = lhs - rhs;
lhs = y(93)/y(32);
rhs = 1+0.01*x(it_, 1);
residual(25) = lhs - rhs;
lhs = (1-params(19))*(1-params(20));
rhs = y(32)*y(64);
residual(26) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = y(64)*(y(31)+y(67))*T(15);
residual(27) = lhs - rhs;
lhs = params(19)*(1-params(20));
rhs = T(15)*y(64)*y(68)*y(66);
residual(28) = lhs - rhs;
lhs = y(55);
rhs = y(64)/y(17)*y(69)*T(16);
residual(29) = lhs - rhs;
lhs = y(55);
rhs = T(21)*T(20)*T(19)*T(33);
residual(30) = lhs - rhs;
lhs = (y(64)-1)/y(64)*T(22);
rhs = params(22)*y(70);
residual(31) = lhs - rhs;
lhs = y(64);
rhs = params(30)*(1+params(26)*(y(43)-1));
residual(32) = lhs - rhs;
lhs = y(67);
rhs = params(29)+y(68)*(y(66)-params(32));
residual(33) = lhs - rhs;
lhs = y(68);
rhs = params(28)+(y(66)-params(32))*params(28)*params(15)/params(32);
residual(34) = lhs - rhs;
lhs = y(38);
rhs = y(55)*y(37)/y(7);
residual(35) = lhs - rhs;
lhs = y(73)*y(74)/y(21);
rhs = T(23)*T(24)+params(25);
residual(36) = lhs - rhs;
lhs = y(44);
rhs = y(11)*(1-y(29))*params(5)/(y(10)+1+y(11))+params(16)*(1-params(11))/y(23)*y(9);
residual(37) = lhs - rhs;
lhs = y(73);
rhs = params(25)+params(25)*y(72)*(y(21)-1);
residual(38) = lhs - rhs;
lhs = y(36);
rhs = T(25)*T(26);
residual(39) = lhs - rhs;
lhs = y(70);
rhs = T(27)+T(28)*T(29)*y(101);
residual(40) = lhs - rhs;
lhs = y(35);
rhs = T(29)*T(28)*y(21)*y(72)*params(27)*T(30);
residual(41) = lhs - rhs;
lhs = y(71);
rhs = T(29)*y(21)*T(28)*T(31)-y(35);
residual(42) = lhs - rhs;
lhs = y(72);
rhs = params(31)*(1+params(27)*((y(35)-params(33))/params(33)-(y(21)-params(34))/params(34)-(y(82)-params(12))/params(12)));
residual(43) = lhs - rhs;
lhs = y(75);
rhs = T(27)-params(25)*y(71)*(1-params(25)*y(28)/(y(20)*y(21)))-y(1)*y(5)*(1-1/y(28))/y(55);
residual(44) = lhs - rhs;
lhs = y(76);
rhs = params(25)*y(71)*(1-params(25)*y(28)/(y(20)*y(21)))-y(1)*y(6)/y(55);
residual(45) = lhs - rhs;
lhs = y(82);
rhs = y(70);
residual(46) = lhs - rhs;
lhs = y(30);
rhs = 1+y(92);
residual(47) = lhs - rhs;
lhs = y(62);
rhs = y(15)*y(45)/y(22);
residual(48) = lhs - rhs;
lhs = y(63);
rhs = y(16)*y(45)/y(22)+params(4)*(y(75)+y(76));
residual(49) = lhs - rhs;
lhs = y(33);
rhs = y(36)+y(35)*(1-1/y(21));
residual(50) = lhs - rhs;
lhs = y(45);
rhs = T(15)*(1+y(31))+y(1)*y(3)/y(55)-y(1)*y(22)/y(55)-y(65)-y(33)+y(77)+(y(75)+y(76))*(1-params(4));
residual(51) = lhs - rhs;
lhs = y(65);
rhs = y(37)+T(15)*(1-y(67));
residual(52) = lhs - rhs;
lhs = y(34);
rhs = 1-params(20)/(y(64)*params(21))-y(82)*y(43)*params(22);
residual(53) = lhs - rhs;
lhs = y(34);
rhs = y(88)+y(83)+y(35)*(1-1/y(21))+y(36)+y(37)+y(39);
residual(54) = lhs - rhs;
lhs = y(39);
rhs = y(40)+y(41);
residual(55) = lhs - rhs;
lhs = y(77);
rhs = y(33)+y(65);
residual(56) = lhs - rhs;
lhs = y(60);
rhs = y(86)+y(62)+y(1)*y(15)/y(55)-y(41)+(1-params(16))*(y(63)+y(32)+y(1)*y(16)/y(55)-y(40)-y(42));
residual(57) = lhs - rhs;
lhs = y(77);
rhs = y(60)+y(61);
residual(58) = lhs - rhs;
lhs = y(58);
rhs = y(13)*T(32)/y(23);
residual(59) = lhs - rhs;
lhs = y(80);
rhs = y(55)*T(32);
residual(60) = lhs - rhs;
lhs = y(89);
rhs = y(12);
residual(61) = lhs - rhs;
lhs = y(90);
rhs = y(18);
residual(62) = lhs - rhs;
lhs = y(91);
rhs = y(21);
residual(63) = lhs - rhs;

end
