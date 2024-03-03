function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = DemoMediumRunFinal_pop_pension_Kor_SOE.static_g1_tt(T, y, x, params);
end
g1 = zeros(153, 153);
g1(1,4)=(-(y(21)*T(30)));
g1(1,6)=T(1);
g1(1,21)=1-T(2);
g1(1,28)=(-(y(21)*T(38)));
g1(1,29)=(-(y(21)*T(40)));
g1(1,33)=(-(y(21)*T(44)));
g1(2,4)=(-(y(20)*T(30)));
g1(2,16)=T(1);
g1(2,20)=1-T(2);
g1(2,28)=(-(y(20)*T(38)));
g1(2,29)=(-(y(20)*T(40)));
g1(2,33)=(-(y(20)*T(44)));
g1(3,4)=(-((-(y(29)*y(22)*y(55)*y(26)*y(28)*y(26)))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(3,22)=1-y(26)*y(29)*y(55)/(y(28)*y(4)*y(26));
g1(3,26)=(-((y(29)*y(22)*y(55)*y(28)*y(4)*y(26)-y(29)*y(22)*y(55)*y(26)*y(4)*y(28))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(3,28)=(-((-(y(29)*y(22)*y(55)*y(26)*y(4)*y(26)))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(3,29)=(-(y(22)*y(55)*y(26)/(y(28)*y(4)*y(26))));
g1(3,36)=T(1);
g1(3,55)=(-(y(26)*y(29)*y(22)/(y(28)*y(4)*y(26))));
g1(4,6)=(-(1/params(8)*(1-params(16))));
g1(4,28)=(-(y(61)*(1-1/params(8))/y(29)));
g1(4,29)=(-((-(y(28)*y(61)*(1-1/params(8))))/(y(29)*y(29))));
g1(4,61)=1-y(28)*(1-1/params(8))/y(29);
g1(5,29)=(-(y(62)*y(55)*(-y(30))/(y(29)*y(29))));
g1(5,30)=(-(y(62)*y(55)*T(43)));
g1(5,55)=(-(y(62)*y(30)/y(29)));
g1(5,61)=(-params(6));
g1(5,62)=1-y(55)*y(30)/y(29);
g1(6,4)=(-((-(y(26)*y(29)*y(55)*y(63)*y(28)*y(26)))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(6,26)=(-((y(28)*y(4)*y(26)*y(29)*y(55)*y(63)-y(26)*y(29)*y(55)*y(63)*y(4)*y(28))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(6,28)=(-((-(y(4)*y(26)*y(26)*y(29)*y(55)*y(63)))/(y(28)*y(4)*y(26)*y(28)*y(4)*y(26))));
g1(6,29)=(-(y(26)*y(55)*y(63)/(y(28)*y(4)*y(26))));
g1(6,55)=(-(y(26)*y(29)*y(63)/(y(28)*y(4)*y(26))));
g1(6,62)=T(1);
g1(6,63)=1-y(26)*y(29)*y(55)/(y(28)*y(4)*y(26));
g1(7,4)=(-(y(23)*T(30)+(y(22)+y(63))*T(5)*(-(y(33)*T(3)))/(y(4)*y(33)*y(4)*y(33))));
g1(7,22)=(-T(6));
g1(7,23)=1-T(2);
g1(7,24)=(-((y(22)+y(63))*T(5)*T(34)/(y(4)*y(33))));
g1(7,26)=(-((y(22)+y(63))*T(4)*(-(y(29)*y(28)))/(y(28)*y(26)*y(28)*y(26))));
g1(7,28)=(-(y(23)*T(38)+(y(22)+y(63))*T(4)*(-(y(29)*y(26)))/(y(28)*y(26)*y(28)*y(26))));
g1(7,29)=(-(y(23)*T(40)+(y(22)+y(63))*T(4)*1/(y(28)*y(26))));
g1(7,33)=(-(y(23)*T(44)+(y(22)+y(63))*T(5)*(-(y(4)*T(3)))/(y(4)*y(33)*y(4)*y(33))));
g1(7,37)=T(1);
g1(7,63)=(-T(6));
g1(8,4)=(-(y(25)*y(35)/y(29)));
g1(8,14)=1;
g1(8,20)=y(25);
g1(8,21)=(-y(25));
g1(8,23)=(-y(25));
g1(8,25)=(-(y(23)+y(21)+y(4)*y(35)/y(29)-y(20)));
g1(8,29)=(-(y(25)*(-(y(4)*y(35)))/(y(29)*y(29))));
g1(8,35)=(-(y(25)*T(32)));
g1(9,4)=(-(y(24)*y(25)*y(34)/y(29)));
g1(9,15)=1;
g1(9,22)=(-(y(24)*y(25)));
g1(9,24)=(-(y(25)*T(7)));
g1(9,25)=(-(y(24)*T(7)));
g1(9,29)=(-(y(24)*y(25)*(-(y(4)*y(34)))/(y(29)*y(29))));
g1(9,34)=(-(y(24)*y(25)*T(32)));
g1(9,63)=(-(y(24)*y(25)));
g1(10,4)=(-((y(4)*y(55)*params(18)*getPowerDeriv(y(4)*params(18),T(8),1)-T(10))/(y(4)*y(4))));
g1(10,24)=(-y(25));
g1(10,25)=(-y(24));
g1(10,55)=(-(T(9)/y(4)));
g1(11,4)=(-((y(4)*y(33)*y(33)*params(18)*T(31)-y(33)*T(11))/(y(4)*y(33)*y(4)*y(33))));
g1(11,25)=T(1);
g1(11,33)=(-((y(4)*y(33)*y(4)*params(18)*T(31)-y(4)*T(11))/(y(4)*y(33)*y(4)*y(33))));
g1(12,24)=(-T(34));
g1(12,33)=1;
g1(13,26)=(-(params(7)*(1+y(26)+y(27)-y(26))/((1+y(26)+y(27))*(1+y(26)+y(27)))));
g1(13,27)=(-(params(7)*(-y(26))/((1+y(26)+y(27))*(1+y(26)+y(27)))));
g1(13,64)=1;
g1(14,60)=1;
g1(14,62)=T(1);
g1(14,64)=T(1);
g1(15,6)=(-y(31));
g1(15,31)=(-y(6));
g1(15,59)=1;
g1(16,16)=1;
g1(16,59)=T(1);
g1(16,60)=T(1);
g1(17,27)=(-(1-y(56)));
g1(17,28)=1;
g1(17,56)=y(27);
g1(18,28)=T(1);
g1(18,52)=1;
g1(19,26)=y(28)-y(55);
g1(19,28)=y(26);
g1(19,55)=(-y(26));
g1(20,26)=(-(y(28)*T(12)+T(36)));
g1(20,27)=(-(T(36)+y(52)*T(12)));
g1(20,28)=(-((1+y(26))*T(12)));
g1(20,52)=(-(y(27)*T(12)));
g1(20,53)=1;
g1(21,27)=(-((1-y(56))*T(13)/y(28)));
g1(21,28)=(-((-(params(16)+y(27)*(1-y(56))*T(13)))/(y(28)*y(28))));
g1(21,30)=1;
g1(21,31)=(-(y(27)*(1-y(56))*params(39)/2*2*y(31)/y(28)));
g1(21,56)=(-(T(13)*(-y(27))/y(28)));
g1(22,6)=(-((y(6)*y(28)*y(29)*y(31)*params(39)*y(27)*(1-y(56))*params(18)*T(14)-y(28)*y(29)*y(6)*y(31)*params(39)*y(27)*(1-y(56))*params(18)*T(14))/(y(6)*y(28)*y(6)*y(28))));
g1(22,25)=T(35)-y(29)*y(6)*y(31)*params(39)*y(27)*(1-y(56))*params(18)*T(35)/(y(6)*y(28));
g1(22,27)=(-(y(29)*y(6)*y(31)*params(39)*(1-y(56))*params(18)*T(14)/(y(6)*y(28))));
g1(22,28)=(-((-(y(6)*y(29)*y(6)*y(31)*params(39)*y(27)*(1-y(56))*params(18)*T(14)))/(y(6)*y(28)*y(6)*y(28))));
g1(22,29)=(-(y(6)*y(31)*params(39)*y(27)*(1-y(56))*params(18)*T(14)/(y(6)*y(28))));
g1(22,31)=(-(y(29)*y(6)*params(39)*y(27)*(1-y(56))*params(18)*T(14)/(y(6)*y(28))));
g1(22,56)=(-(y(29)*y(6)*y(31)*params(39)*y(27)*(-(params(18)*T(14)))/(y(6)*y(28))));
g1(23,52)=T(1);
g1(23,56)=1;
g1(23,57)=1;
g1(24,6)=(-y(38));
g1(24,38)=(-y(6));
g1(25,5)=(-(y(38)*T(15)));
g1(25,29)=(-(y(38)*(y(5)+y(41))*T(41)));
g1(25,38)=(-((y(5)+y(41))*T(15)));
g1(25,39)=(-(y(38)*(y(5)+y(41))*T(43)));
g1(25,41)=(-(y(38)*T(15)));
g1(26,29)=(-(y(40)*y(38)*y(42)*T(41)));
g1(26,38)=(-(y(40)*T(15)*y(42)));
g1(26,39)=(-(y(40)*y(38)*y(42)*T(43)));
g1(26,40)=(-(T(15)*y(38)*y(42)));
g1(26,42)=(-(y(40)*y(38)*T(15)));
g1(27,29)=1;
g1(27,43)=(-T(16));
g1(27,47)=(-(y(43)*getPowerDeriv(y(47),1-params(21),1)));
g1(28,28)=(-(T(17)*T(29)*y(30)*T(39)));
g1(28,29)=1-T(17)*T(18)*T(42);
g1(28,30)=(-(T(17)*T(29)*y(28)*T(39)));
g1(28,39)=(-(T(17)*T(18)*T(42)*(y(29)*y(40)*y(39)*y(40)-y(40)*y(39)*y(29)*y(40))/(y(39)*y(40)*y(39)*y(40))));
g1(28,40)=(-(T(17)*T(18)*T(42)*(y(39)*y(40)*y(29)*y(39)-y(39)*y(39)*y(29)*y(40))/(y(39)*y(40)*y(39)*y(40))));
g1(28,43)=(-(T(18)*T(29)*getPowerDeriv(y(43),params(20),1)));
g1(29,17)=(y(38)-1)/y(38)*getPowerDeriv(y(17),(-y(38)),1);
g1(29,38)=T(19)*(y(38)-(y(38)-1))/(y(38)*y(38))+(y(38)-1)/y(38)*T(19)*(-log(y(17)));
g1(29,44)=(-params(22));
g1(30,17)=(-(params(30)*params(26)));
g1(30,38)=1;
g1(31,40)=(-y(42));
g1(31,41)=1;
g1(31,42)=(-(y(40)-params(32)));
g1(32,40)=(-(params(28)*params(15)/params(32)));
g1(32,42)=1;
g1(33,12)=1;
g1(33,29)=T(1);
g1(34,10)=(-(T(20)*1/y(58)*T(33)));
g1(34,18)=(-(T(21)*params(23)*getPowerDeriv(y(18),params(10),1)));
g1(34,47)=1;
g1(34,58)=(-(T(20)*T(33)*(-y(10))/(y(58)*y(58))));
g1(35,18)=1-params(16)*(1-params(11))/y(53);
g1(35,26)=(-((-(y(27)*(1-y(56))*params(5)))/((y(26)+1+y(27))*(y(26)+1+y(27)))));
g1(35,27)=(-(((1-y(56))*params(5)*(y(26)+1+y(27))-y(27)*(1-y(56))*params(5))/((y(26)+1+y(27))*(y(26)+1+y(27)))));
g1(35,53)=(-(y(18)*(-(params(16)*(1-params(11))))/(y(53)*y(53))));
g1(35,56)=(-(y(27)*(-params(5))/(y(26)+1+y(27))));
g1(36,46)=(-(params(25)*(y(48)-1)));
g1(36,47)=1;
g1(36,48)=(-(params(25)*y(46)));
g1(37,4)=(-(T(22)*y(45)*params(25)*(-y(29))/(y(4)*y(4))));
g1(37,10)=1;
g1(37,29)=(-(T(22)*y(45)*params(25)*1/y(4)));
g1(37,45)=(-(params(25)*y(29)/y(4)*T(22)));
g1(37,47)=(-(params(25)*y(29)/y(4)*y(45)*(-((-(y(48)*y(48)*params(25)))/(y(47)*y(48)*y(47)*y(48))))));
g1(37,48)=(-(params(25)*y(29)/y(4)*y(45)*(-((y(47)*y(48)*params(25)-y(47)*y(48)*params(25))/(y(47)*y(48)*y(47)*y(48))))));
g1(38,4)=(-(y(44)*T(24)*(-params(25))/(y(4)*y(4))));
g1(38,29)=(-(y(44)*T(25)*1/y(47)));
g1(38,38)=T(45);
g1(38,44)=1-T(24)*T(25);
g1(38,47)=(-(y(44)*T(25)*(-y(29))/(y(47)*y(47))));
g1(39,4)=(-(T(26)*T(24)*y(48)*y(46)*params(27)*(-params(25))/(y(4)*y(4))));
g1(39,9)=1;
g1(39,29)=(-(T(26)*T(25)*y(48)*y(46)*params(27)*1/y(47)));
g1(39,44)=(-(T(25)*T(24)*y(48)*y(46)*params(27)));
g1(39,45)=(-(T(25)*T(24)*y(48)*y(46)*params(27)*(-(1/y(48)))));
g1(39,46)=(-(T(26)*T(25)*T(24)*y(48)*params(27)));
g1(39,47)=(-(T(26)*T(25)*y(48)*y(46)*params(27)*(-y(29))/(y(47)*y(47))));
g1(39,48)=(-(T(26)*T(25)*T(24)*y(46)*params(27)+T(25)*T(24)*y(48)*y(46)*params(27)*(-((-y(45))/(y(48)*y(48))))));
g1(40,4)=(-(T(27)*y(48)*T(24)*(-params(25))/(y(4)*y(4))));
g1(40,9)=1;
g1(40,29)=(-(T(27)*T(25)*y(48)*1/y(47)));
g1(40,44)=(-(y(46)*T(25)*y(48)*T(24)));
g1(40,45)=1-T(25)*y(48)*T(24)*(1-y(46))/y(48);
g1(40,46)=(-(T(25)*y(48)*T(24)*(y(44)+(-y(45))/y(48))));
g1(40,47)=(-(T(27)*T(25)*y(48)*(-y(29))/(y(47)*y(47))));
g1(40,48)=(-(T(24)*T(25)*T(27)+T(25)*y(48)*T(24)*(-(y(45)*(1-y(46))))/(y(48)*y(48))));
g1(41,9)=(-(params(31)*params(27)*1/params(33)));
g1(41,46)=1;
g1(41,48)=(-(params(31)*params(27)*(-(1/params(34)))));
g1(41,58)=(-(params(31)*params(27)*(-(1/params(12)))));
g1(42,4)=y(9)*T(28)/y(29);
g1(42,9)=y(4)*T(28)/y(29);
g1(42,29)=(-(y(4)*y(9)*T(28)))/(y(29)*y(29));
g1(42,38)=T(45);
g1(42,45)=params(25)*T(22);
g1(42,47)=params(25)*y(45)*(-((-(y(48)*y(48)*params(25)))/(y(47)*y(48)*y(47)*y(48))));
g1(42,48)=(-(T(46)-y(4)*y(9)*(-(T(1)/(y(48)*y(48))))/y(29)));
g1(42,49)=1;
g1(43,4)=y(10)/y(29);
g1(43,10)=T(32);
g1(43,29)=(-(y(4)*y(10)))/(y(29)*y(29));
g1(43,45)=(-(params(25)*T(22)));
g1(43,47)=(-(params(25)*y(45)*(-((-(y(48)*y(48)*params(25)))/(y(47)*y(48)*y(47)*y(48))))));
g1(43,48)=T(46);
g1(43,50)=1;
g1(44,44)=T(1);
g1(44,58)=1;
g1(45,4)=1;
g1(45,5)=T(1);
g1(46,19)=(-(y(34)/y(51)));
g1(46,34)=(-(y(19)/y(51)));
g1(46,36)=1;
g1(46,51)=(-((-(y(34)*y(19)))/(y(51)*y(51))));
g1(47,19)=(-(y(35)/y(51)));
g1(47,35)=(-(y(19)/y(51)));
g1(47,37)=1;
g1(47,49)=(-params(4));
g1(47,50)=(-params(4));
g1(47,51)=(-((-(y(35)*y(19)))/(y(51)*y(51))));
g1(48,7)=1;
g1(48,9)=(-T(28));
g1(48,10)=T(1);
g1(48,48)=(-(y(9)*(-(T(1)/(y(48)*y(48))))));
g1(49,1)=1;
g1(49,2)=(-(y(3)/y(29)));
g1(49,3)=(-(y(2)/y(29)));
g1(49,4)=(-(y(7)/y(29)-y(51)/y(29)));
g1(49,5)=(-T(15));
g1(49,7)=(-T(32));
g1(49,19)=1;
g1(49,29)=(-((1+y(5))*T(41)+(-(y(4)*y(7)+y(2)*y(3)))/(y(29)*y(29))-(-(y(4)*y(51)))/(y(29)*y(29))));
g1(49,39)=(-((1+y(5))*T(43)-1));
g1(49,49)=(-(1-params(4)));
g1(49,50)=(-(1-params(4)));
g1(49,51)=(-(1-T(32)));
g1(50,3)=T(1);
g1(50,4)=1;
g1(51,11)=T(1);
g1(51,29)=(-((1-y(41))*T(41)));
g1(51,39)=1-(1-y(41))*T(43);
g1(51,41)=T(15);
g1(52,8)=1;
g1(52,17)=params(22)*y(58);
g1(52,38)=(-(params(20)*params(21)))/(y(38)*params(21)*y(38)*params(21));
g1(52,58)=y(17)*params(22);
g1(53,2)=1;
g1(53,8)=T(1);
g1(53,9)=T(28);
g1(53,10)=1;
g1(53,11)=1;
g1(53,13)=1;
g1(53,48)=y(9)*(-(T(1)/(y(48)*y(48))));
g1(53,59)=1;
g1(53,64)=1;
g1(54,13)=1;
g1(54,14)=T(1);
g1(54,15)=T(1);
g1(55,1)=1;
g1(55,2)=T(1);
g1(55,7)=T(1);
g1(56,1)=T(1);
g1(56,39)=T(1);
g1(56,51)=1;
g1(57,4)=(-(y(34)/y(29)+(1-params(16))*y(35)/y(29)));
g1(57,6)=(-(1-params(16)));
g1(57,14)=1-params(16);
g1(57,15)=1;
g1(57,16)=1-params(16);
g1(57,29)=(-((-(y(4)*y(34)))/(y(29)*y(29))+(1-params(16))*(-(y(4)*y(35)))/(y(29)*y(29))));
g1(57,34)=1-T(32);
g1(57,35)=(-((1-params(16))*T(32)));
g1(57,36)=T(1);
g1(57,37)=(-(1-params(16)));
g1(57,62)=T(1);
g1(58,34)=T(1);
g1(58,35)=T(1);
g1(58,51)=1;
g1(59,29)=(-(1/y(53)));
g1(59,32)=1;
g1(59,53)=(-((-y(29))/(y(53)*y(53))));
g1(60,29)=T(1);
g1(60,54)=1;
g1(61,53)=1;
g1(61,65)=T(1);
g1(62,26)=(-T(37));
g1(62,27)=(-T(37));
g1(62,71)=1;
g1(63,26)=(-((1+y(27))/((y(26)+1+y(27))*(y(26)+1+y(27)))));
g1(63,27)=(-((-y(26))/((y(26)+1+y(27))*(y(26)+1+y(27)))));
g1(63,72)=1;
g1(64,26)=T(37);
g1(64,27)=T(37);
g1(64,66)=T(1);
g1(65,26)=(1+y(27))/((y(26)+1+y(27))*(y(26)+1+y(27)));
g1(65,27)=(-y(26))/((y(26)+1+y(27))*(y(26)+1+y(27)));
g1(65,67)=T(1);
g1(66,3)=1;
g1(66,73)=T(1);
g1(67,73)=1;
g1(68,65)=1;
g1(68,68)=(-(params(159)-params(36)+params(158)-params(36)+params(157)-params(36)+params(156)-params(36)+params(155)-params(36)+params(154)-params(36)+params(153)-params(36)+params(152)-params(36)+params(151)-params(36)+params(150)-params(36)+params(149)-params(36)+params(148)-params(36)+params(147)-params(36)+params(146)-params(36)+params(145)-params(36)+params(144)-params(36)+params(143)-params(36)+params(142)-params(36)+params(141)-params(36)+params(140)-params(36)+params(139)-params(36)+params(138)-params(36)+params(137)-params(36)+params(136)-params(36)+params(135)-params(36)+params(134)-params(36)+params(133)-params(36)+params(132)-params(36)+params(131)-params(36)+params(130)-params(36)+params(129)-params(36)+params(128)-params(36)+params(127)-params(36)+params(126)-params(36)+params(125)-params(36)+params(124)-params(36)+params(123)-params(36)+params(122)-params(36)+params(120)-params(36)+params(121)-params(36)));
g1(69,67)=1;
g1(69,70)=T(1);
g1(70,66)=1;
g1(70,69)=T(1);
g1(73,68)=1;
g1(74,28)=T(1);
g1(74,74)=1;
g1(75,39)=T(1);
g1(75,75)=1;
g1(76,48)=T(1);
g1(76,76)=1;
g1(77,68)=T(1);
g1(77,77)=1;
g1(78,68)=T(1);
g1(78,78)=1;
g1(79,68)=T(1);
g1(79,79)=1;
g1(80,68)=T(1);
g1(80,80)=1;
g1(81,68)=T(1);
g1(81,81)=1;
g1(82,68)=T(1);
g1(82,82)=1;
g1(83,68)=T(1);
g1(83,83)=1;
g1(84,68)=T(1);
g1(84,84)=1;
g1(85,68)=T(1);
g1(85,85)=1;
g1(86,68)=T(1);
g1(86,86)=1;
g1(87,68)=T(1);
g1(87,87)=1;
g1(88,68)=T(1);
g1(88,88)=1;
g1(89,68)=T(1);
g1(89,89)=1;
g1(90,68)=T(1);
g1(90,90)=1;
g1(91,68)=T(1);
g1(91,91)=1;
g1(92,68)=T(1);
g1(92,92)=1;
g1(93,68)=T(1);
g1(93,93)=1;
g1(94,68)=T(1);
g1(94,94)=1;
g1(95,68)=T(1);
g1(95,95)=1;
g1(96,68)=T(1);
g1(96,96)=1;
g1(97,68)=T(1);
g1(97,97)=1;
g1(98,68)=T(1);
g1(98,98)=1;
g1(99,68)=T(1);
g1(99,99)=1;
g1(100,68)=T(1);
g1(100,100)=1;
g1(101,68)=T(1);
g1(101,101)=1;
g1(102,68)=T(1);
g1(102,102)=1;
g1(103,68)=T(1);
g1(103,103)=1;
g1(104,68)=T(1);
g1(104,104)=1;
g1(105,68)=T(1);
g1(105,105)=1;
g1(106,68)=T(1);
g1(106,106)=1;
g1(107,68)=T(1);
g1(107,107)=1;
g1(108,68)=T(1);
g1(108,108)=1;
g1(109,68)=T(1);
g1(109,109)=1;
g1(110,68)=T(1);
g1(110,110)=1;
g1(111,68)=T(1);
g1(111,111)=1;
g1(112,68)=T(1);
g1(112,112)=1;
g1(113,68)=T(1);
g1(113,113)=1;
g1(114,68)=T(1);
g1(114,114)=1;
g1(115,115)=1;
g1(116,116)=1;
g1(117,117)=1;
g1(118,118)=1;
g1(119,119)=1;
g1(120,120)=1;
g1(121,121)=1;
g1(122,122)=1;
g1(123,123)=1;
g1(124,124)=1;
g1(125,125)=1;
g1(126,126)=1;
g1(127,127)=1;
g1(128,128)=1;
g1(129,129)=1;
g1(130,130)=1;
g1(131,131)=1;
g1(132,132)=1;
g1(133,133)=1;
g1(134,134)=1;
g1(135,135)=1;
g1(136,136)=1;
g1(137,137)=1;
g1(138,138)=1;
g1(139,139)=1;
g1(140,140)=1;
g1(141,141)=1;
g1(142,142)=1;
g1(143,143)=1;
g1(144,144)=1;
g1(145,145)=1;
g1(146,146)=1;
g1(147,147)=1;
g1(148,148)=1;
g1(149,149)=1;
g1(150,150)=1;
g1(151,151)=1;
g1(152,152)=1;
g1(153,153)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
