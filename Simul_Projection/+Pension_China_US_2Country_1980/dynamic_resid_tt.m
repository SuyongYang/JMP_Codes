function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 112);

T(1) = (-1);
T(2) = params(17)/(y(259)*y(288))*y(603)/y(283);
T(3) = (1-params(17))*y(601)^((params(18)-1)/params(18));
T(4) = T(3)/(y(259)*y(288));
T(5) = y(603)/(y(283)*y(281));
T(6) = T(4)*T(5);
T(7) = y(318)+y(277)+y(2)*y(16)/y(284);
T(8) = 1/(1-params(18));
T(9) = (y(259)*params(19))^T(8);
T(10) = y(310)*T(9);
T(11) = T(10)/y(259);
T(12) = (y(288)*y(259)*params(19))^T(8);
T(13) = (1+y(11)+y(12))^T(1);
T(14) = params(39)+params(40)/2*y(286)^2;
T(15) = T(1)/params(18);
T(16) = params(19)*y(602)^T(15);
T(17) = (1-y(311))*T(16);
T(18) = y(286)*params(40)*y(12)*T(17);
T(19) = y(603)*T(18)*y(596);
T(20) = y(19)/y(284);
T(21) = y(21)^(1-params(22));
T(22) = y(272)^(y(293)-1);
T(23) = y(9)^(y(18)-1);
T(24) = T(22)/T(23);
T(25) = (y(15)*y(13))^((1-params(20))*(1-params(21)));
T(26) = y(298)^params(21);
T(27) = y(272)^(-y(293));
T(28) = y(273)^params(11)*params(24);
T(29) = (y(265)/y(313))^params(25);
T(30) = params(26)*y(603)/y(259)*y(605);
T(31) = 1-y(22)*params(26)/(y(302)*y(303));
T(32) = params(21)*(1-1/params(22))/y(293);
T(33) = y(603)/y(302);
T(34) = params(26)/y(259);
T(35) = y(604)-y(605)/y(303);
T(36) = y(301)*y(604)+y(605)*(1-y(301))/y(303);
T(37) = params(176)/(y(328)*y(357))*y(616)/y(352);
T(38) = (1-params(176))*y(614)^((params(177)-1)/params(177));
T(39) = T(38)/(y(328)*y(357));
T(40) = y(616)/(y(352)*y(350));
T(41) = T(39)*T(40);
T(42) = y(387)+y(346)+y(31)*y(45)/y(353);
T(43) = 1/(1-params(177));
T(44) = (y(328)*params(178))^T(43);
T(45) = y(379)*T(44);
T(46) = T(45)/y(328);
T(47) = (y(357)*y(328)*params(178))^T(43);
T(48) = (1+y(40)+y(41))^T(1);
T(49) = params(198)+params(199)/2*y(355)^2;
T(50) = T(1)/params(177);
T(51) = params(178)*y(615)^T(50);
T(52) = (1-y(380))*T(51);
T(53) = y(355)*params(199)*y(41)*T(52);
T(54) = y(616)*T(53)*y(609);
T(55) = y(48)/y(353);
T(56) = y(50)^(1-params(181));
T(57) = y(341)^(y(362)-1);
T(58) = y(38)^(y(47)-1);
T(59) = T(57)/T(58);
T(60) = (y(44)*y(42))^((1-params(179))*(1-params(180)));
T(61) = y(367)^params(180);
T(62) = y(341)^(-y(362));
T(63) = y(342)^params(170)*params(183);
T(64) = (y(334)/y(382))^params(184);
T(65) = params(185)*y(616)/y(328)*y(618);
T(66) = 1-y(51)*params(185)/(y(371)*y(372));
T(67) = params(180)*(1-1/params(181))/y(362);
T(68) = y(616)/y(371);
T(69) = params(185)/y(328);
T(70) = y(617)-y(618)/y(372);
T(71) = y(370)*y(617)+y(618)*(1-y(370))/y(372);
T(72) = y(14)/y(43);
T(73) = y(332)/y(34);
T(74) = (y(19)*y(295)*y(14)/(y(20)*y(61)))^(params(20)*(1-params(21)));
T(75) = (y(48)*y(364)*y(43)/(y(49)*y(102)))^(params(179)*(1-params(180)));
T(76) = T(72)*y(104)/y(105);
T(77) = T(76)*y(106)/y(107);
T(78) = T(77)*y(108)/y(109);
T(79) = T(78)*y(110)/y(111);
T(80) = T(79)*y(112)/y(113);
T(81) = T(80)*y(114)/y(115);
T(82) = T(81)*y(116)/y(117);
T(83) = T(82)*y(118)/y(119);
T(84) = T(83)*y(120)/y(121);
T(85) = T(84)*y(122)/y(123);
T(86) = T(85)*y(124)/y(125);
T(87) = T(86)*y(126)/y(127);
T(88) = T(87)*y(128)/y(129);
T(89) = T(88)*y(130)/y(131);
T(90) = T(89)*y(132)/y(133);
T(91) = T(90)*y(134)/y(135);
T(92) = T(91)*y(136)/y(137);
T(93) = T(92)*y(138)/y(139);
T(94) = T(93)*y(140)/y(141);
T(95) = T(94)*y(142)/y(143);
T(96) = T(95)*y(144)/y(145);
T(97) = T(96)*y(146)/y(147);
T(98) = T(97)*y(148)/y(149);
T(99) = T(98)*y(150)/y(151);
T(100) = T(99)*y(152)/y(153);
T(101) = T(100)*y(154)/y(155);
T(102) = T(101)*y(156)/y(157);
T(103) = T(102)*y(158)/y(159);
T(104) = T(103)*y(160)/y(161);
T(105) = T(104)*y(162)/y(163);
T(106) = T(105)*y(164)/y(165);
T(107) = T(106)*y(166)/y(167);
T(108) = T(107)*y(168)/y(169);
T(109) = T(108)*y(170)/y(171);
T(110) = T(109)*y(172)/y(173);
T(111) = T(110)*y(174)/y(175);
T(112) = T(111)*y(176)/y(177);

end
