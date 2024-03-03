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
    T = DemoMediumRunFinal_pop_ext3.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(60, 1);
lhs = y(44);
rhs = y(30)+T(1)*y(91);
residual(1) = lhs - rhs;
lhs = y(43);
rhs = y(39)+T(1)*y(90);
residual(2) = lhs - rhs;
lhs = y(45);
rhs = y(59)+y(96)*y(92)*y(78)*y(8)/(y(51)*y(28)*y(49));
residual(3) = lhs - rhs;
lhs = y(46);
rhs = y(60)+T(1)*y(93)+y(92)*T(5);
residual(4) = lhs - rhs;
lhs = y(37);
rhs = y(48)*(y(46)+y(44)+y(1)*y(14)/y(52)-y(43));
residual(5) = lhs - rhs;
lhs = y(38);
rhs = y(48)*y(47)*(y(45)+y(1)*y(13)/y(52));
residual(6) = lhs - rhs;
lhs = 1-y(48)*y(47);
rhs = T(9)*y(48)*y(47)/(y(94)*y(95));
residual(7) = lhs - rhs;
lhs = 1-y(48);
rhs = T(10)/(y(28)*y(56))*y(48)/y(95);
residual(8) = lhs - rhs;
lhs = y(56);
rhs = params(12)+T(2);
residual(9) = lhs - rhs;
lhs = y(51);
rhs = params(12)+(1-params(13))*y(9);
residual(10) = lhs - rhs;
lhs = y(75);
rhs = y(51)*y(50)/y(9);
residual(11) = lhs - rhs;
lhs = y(51)*y(49);
rhs = 1-params(12)+y(78)*y(8);
residual(12) = lhs - rhs;
lhs = y(76);
rhs = (y(51)*y(49)+y(51)+y(9)*y(75))*T(11);
residual(13) = lhs - rhs;
lhs = y(53);
rhs = (params(12)+(1-params(13))*y(9)*T(12))/y(51);
residual(14) = lhs - rhs;
lhs = y(48)^T(13);
rhs = T(16)/(y(30)*y(51));
residual(15) = lhs - rhs;
lhs = y(80);
rhs = y(75)-params(13);
residual(16) = lhs - rhs;
lhs = y(39);
rhs = y(30)*y(54);
residual(17) = lhs - rhs;
lhs = (1-params(16))*(1-params(17));
rhs = y(30)*y(61);
residual(18) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = y(61)*(y(29)+y(64))*T(17);
residual(19) = lhs - rhs;
lhs = params(16)*(1-params(17));
rhs = T(17)*y(61)*y(65)*y(63);
residual(20) = lhs - rhs;
lhs = y(52);
rhs = y(61)/y(15)*y(66)*T(18);
residual(21) = lhs - rhs;
lhs = y(52);
rhs = T(23)*T(22)*T(21)*T(36);
residual(22) = lhs - rhs;
lhs = (y(61)-1)/y(61)*T(24);
rhs = params(19)*y(67);
residual(23) = lhs - rhs;
lhs = y(61);
rhs = params(27)*(1+params(23)*(y(40)-1));
residual(24) = lhs - rhs;
lhs = y(64);
rhs = params(26)+y(65)*(y(63)-params(29));
residual(25) = lhs - rhs;
lhs = y(65);
rhs = params(25)+(y(63)-params(29))*params(25)*params(11)/params(29);
residual(26) = lhs - rhs;
lhs = y(70)*y(71)/y(19);
rhs = T(26)*T(27)+params(22);
residual(27) = lhs - rhs;
lhs = y(83);
rhs = params(6)+y(85);
residual(28) = lhs - rhs;
lhs = y(41);
rhs = y(9)*(1-params(13))*params(3)/(y(8)+1+y(9))+params(12)*(1-params(7))/y(76)*y(7);
residual(29) = lhs - rhs;
lhs = y(70);
rhs = params(22)+params(22)*y(69)*(y(19)-1);
residual(30) = lhs - rhs;
lhs = y(34);
rhs = T(28)*T(29);
residual(31) = lhs - rhs;
lhs = y(67);
rhs = T(30)+T(31)*T(32)*y(97);
residual(32) = lhs - rhs;
lhs = y(33);
rhs = T(32)*T(31)*y(19)*y(69)*params(24)*T(33);
residual(33) = lhs - rhs;
lhs = y(68);
rhs = T(32)*y(19)*T(31)*T(34)-y(33);
residual(34) = lhs - rhs;
lhs = y(69);
rhs = params(28)*(1+params(24)*((y(33)-params(30))/params(30)-(y(19)-params(31))/params(31)-(y(81)-params(8))/params(8)));
residual(35) = lhs - rhs;
lhs = y(72);
rhs = T(30)-params(22)*y(68)*(1-params(22)*y(27)/(y(18)*y(19)))-y(1)*y(4)*(1-1/y(27))/y(52);
residual(36) = lhs - rhs;
lhs = y(73);
rhs = params(22)*y(68)*(1-params(22)*y(27)/(y(18)*y(19)))-y(1)*y(5)/y(52);
residual(37) = lhs - rhs;
lhs = y(81);
rhs = y(67);
residual(38) = lhs - rhs;
lhs = y(28);
rhs = 1+y(88);
residual(39) = lhs - rhs;
lhs = y(59);
rhs = y(13)*y(42)/y(20);
residual(40) = lhs - rhs;
lhs = y(60);
rhs = y(14)*y(42)/y(20)+params(2)*(y(72)+y(73));
residual(41) = lhs - rhs;
lhs = y(31);
rhs = y(34)+y(33)*(1-1/y(19));
residual(42) = lhs - rhs;
lhs = y(42);
rhs = T(17)*(1+y(29))+y(1)*y(2)/y(52)-y(1)*y(20)/y(52)-y(62)-y(31)+y(74)+(y(72)+y(73))*(1-params(2));
residual(43) = lhs - rhs;
lhs = y(62);
rhs = T(17)*(1-y(64))+y(35);
residual(44) = lhs - rhs;
lhs = y(32);
rhs = 1-params(17)/(y(61)*params(18))-y(81)*y(40)*params(19);
residual(45) = lhs - rhs;
lhs = y(32);
rhs = y(39)+y(33)*(1-1/y(19))+y(34)+y(35)+y(36);
residual(46) = lhs - rhs;
lhs = y(36);
rhs = y(37)+y(38);
residual(47) = lhs - rhs;
lhs = y(74);
rhs = y(31)+y(62);
residual(48) = lhs - rhs;
lhs = y(57);
rhs = y(59)+y(1)*y(13)/y(52)-y(38)+(1-params(12))*(y(60)+y(30)+y(1)*y(14)/y(52)-y(37)-y(39));
residual(49) = lhs - rhs;
lhs = y(74);
rhs = y(57)+y(58);
residual(50) = lhs - rhs;
lhs = y(76);
rhs = params(33);
residual(51) = lhs - rhs;
lhs = y(55);
rhs = y(11)*T(35)/y(21);
residual(52) = lhs - rhs;
lhs = y(77);
rhs = y(52)*T(35);
residual(53) = lhs - rhs;
lhs = y(78);
rhs = params(34)+y(79);
residual(54) = lhs - rhs;
lhs = y(79);
rhs = params(10)*y(22)+y(82);
residual(55) = lhs - rhs;
lhs = y(85);
rhs = params(1)*y(25)+y(84);
residual(56) = lhs - rhs;
lhs = y(84);
rhs = y(24)+params(5)*x(it_, 1)/0.005;
residual(57) = lhs - rhs;
lhs = y(82);
rhs = x(it_, 1)+y(23);
residual(58) = lhs - rhs;
lhs = y(86);
rhs = y(16);
residual(59) = lhs - rhs;
lhs = y(87);
rhs = y(19);
residual(60) = lhs - rhs;

end
