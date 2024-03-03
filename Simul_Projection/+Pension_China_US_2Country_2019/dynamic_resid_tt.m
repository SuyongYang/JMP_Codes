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
T(2) = params(17)/(y(261)*y(290))*y(607)/y(285);
T(3) = (1-params(17))*y(605)^((params(18)-1)/params(18));
T(4) = T(3)/(y(261)*y(290));
T(5) = y(607)/(y(285)*y(283));
T(6) = T(4)*T(5);
T(7) = y(320)+y(279)+y(2)*y(16)/y(286);
T(8) = 1/(1-params(18));
T(9) = (y(261)*params(19))^T(8);
T(10) = y(312)*T(9);
T(11) = T(10)/y(261);
T(12) = (y(290)*y(261)*params(19))^T(8);
T(13) = (1+y(11)+y(12))^T(1);
T(14) = params(39)+params(40)/2*y(288)^2;
T(15) = T(1)/params(18);
T(16) = params(19)*y(606)^T(15);
T(17) = (1-y(313))*T(16);
T(18) = y(288)*params(40)*y(12)*T(17);
T(19) = y(607)*T(18)*y(600);
T(20) = y(19)/y(286);
T(21) = y(21)^(1-params(22));
T(22) = y(274)^(y(295)-1);
T(23) = y(9)^(y(18)-1);
T(24) = T(22)/T(23);
T(25) = (y(15)*y(13))^((1-params(20))*(1-params(21)));
T(26) = y(300)^params(21);
T(27) = y(274)^(-y(295));
T(28) = y(275)^params(11)*params(24);
T(29) = (y(267)/y(315))^params(25);
T(30) = params(26)*y(607)/y(261)*y(609);
T(31) = 1-y(22)*params(26)/(y(304)*y(305));
T(32) = params(21)*(1-1/params(22))/y(295);
T(33) = y(607)/y(304);
T(34) = params(26)/y(261);
T(35) = y(608)-y(609)/y(305);
T(36) = y(303)*y(608)+y(609)*(1-y(303))/y(305);
T(37) = params(176)/(y(330)*y(359))*y(620)/y(354);
T(38) = (1-params(176))*y(618)^((params(177)-1)/params(177));
T(39) = T(38)/(y(330)*y(359));
T(40) = y(620)/(y(354)*y(352));
T(41) = T(39)*T(40);
T(42) = y(389)+y(348)+y(31)*y(45)/y(355);
T(43) = 1/(1-params(177));
T(44) = (y(330)*params(178))^T(43);
T(45) = y(381)*T(44);
T(46) = T(45)/y(330);
T(47) = (y(359)*y(330)*params(178))^T(43);
T(48) = (1+y(40)+y(41))^T(1);
T(49) = params(198)+params(199)/2*y(357)^2;
T(50) = T(1)/params(177);
T(51) = params(178)*y(619)^T(50);
T(52) = (1-y(382))*T(51);
T(53) = y(357)*params(199)*y(41)*T(52);
T(54) = y(620)*T(53)*y(613);
T(55) = y(48)/y(355);
T(56) = y(50)^(1-params(181));
T(57) = y(343)^(y(364)-1);
T(58) = y(38)^(y(47)-1);
T(59) = T(57)/T(58);
T(60) = (y(44)*y(42))^((1-params(179))*(1-params(180)));
T(61) = y(369)^params(180);
T(62) = y(343)^(-y(364));
T(63) = y(344)^params(170)*params(183);
T(64) = (y(336)/y(384))^params(184);
T(65) = params(185)*y(620)/y(330)*y(622);
T(66) = 1-y(51)*params(185)/(y(373)*y(374));
T(67) = params(180)*(1-1/params(181))/y(364);
T(68) = y(620)/y(373);
T(69) = params(185)/y(330);
T(70) = y(621)-y(622)/y(374);
T(71) = y(372)*y(621)+y(622)*(1-y(372))/y(374);
T(72) = y(14)/y(43);
T(73) = y(334)/y(34);
T(74) = (y(19)*y(297)*y(14)/(y(20)*y(61)))^(params(20)*(1-params(21)));
T(75) = (y(48)*y(366)*y(43)/(y(49)*y(104)))^(params(179)*(1-params(180)));
T(76) = T(72)*y(106)/y(107);
T(77) = T(76)*y(108)/y(109);
T(78) = T(77)*y(110)/y(111);
T(79) = T(78)*y(112)/y(113);
T(80) = T(79)*y(114)/y(115);
T(81) = T(80)*y(116)/y(117);
T(82) = T(81)*y(118)/y(119);
T(83) = T(82)*y(120)/y(121);
T(84) = T(83)*y(122)/y(123);
T(85) = T(84)*y(124)/y(125);
T(86) = T(85)*y(126)/y(127);
T(87) = T(86)*y(128)/y(129);
T(88) = T(87)*y(130)/y(131);
T(89) = T(88)*y(132)/y(133);
T(90) = T(89)*y(134)/y(135);
T(91) = T(90)*y(136)/y(137);
T(92) = T(91)*y(138)/y(139);
T(93) = T(92)*y(140)/y(141);
T(94) = T(93)*y(142)/y(143);
T(95) = T(94)*y(144)/y(145);
T(96) = T(95)*y(146)/y(147);
T(97) = T(96)*y(148)/y(149);
T(98) = T(97)*y(150)/y(151);
T(99) = T(98)*y(152)/y(153);
T(100) = T(99)*y(154)/y(155);
T(101) = T(100)*y(156)/y(157);
T(102) = T(101)*y(158)/y(159);
T(103) = T(102)*y(160)/y(161);
T(104) = T(103)*y(162)/y(163);
T(105) = T(104)*y(164)/y(165);
T(106) = T(105)*y(166)/y(167);
T(107) = T(106)*y(168)/y(169);
T(108) = T(107)*y(170)/y(171);
T(109) = T(108)*y(172)/y(173);
T(110) = T(109)*y(174)/y(175);
T(111) = T(110)*y(176)/y(177);
T(112) = T(111)*y(178)/y(179);

end
