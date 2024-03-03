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

assert(length(T) >= 38);

T(1) = (-1);
T(2) = params(16)/(y(115)*y(144))*y(273)/y(139);
T(3) = (1-params(16))*y(271)^((params(17)-1)/params(17));
T(4) = T(3)/(y(115)*y(144));
T(5) = y(273)/(y(139)*y(137));
T(6) = T(4)*T(5);
T(7) = y(174)+y(133)+y(3)*y(17)/y(140);
T(8) = 1/(1-params(17));
T(9) = (y(115)*params(18))^T(8);
T(10) = y(166)*T(9);
T(11) = T(10)/y(115);
T(12) = (y(144)*y(115)*params(18))^T(8);
T(13) = (1+y(12)+y(13))^T(1);
T(14) = params(38)+params(39)/2*y(142)^2;
T(15) = T(1)/params(17);
T(16) = params(18)*y(272)^T(15);
T(17) = (1-y(167))*T(16);
T(18) = y(142)*params(39)*y(13)*T(17);
T(19) = y(273)*T(18)*y(266);
T(20) = y(20)/y(140);
T(21) = y(22)^(1-params(21));
T(22) = y(128)^(y(149)-1);
T(23) = y(10)^(y(19)-1);
T(24) = T(22)/T(23);
T(25) = (y(16)*y(14))^((1-params(19))*(1-params(20)));
T(26) = y(154)^params(20);
T(27) = y(128)^(-y(149));
T(28) = y(129)^params(10)*params(23);
T(29) = (y(121)/y(169))^params(24);
T(30) = params(25)*y(273)/y(115)*y(275);
T(31) = 1-y(23)*params(25)/(y(158)*y(159));
T(32) = params(20)*(1-1/params(21))/y(149);
T(33) = y(273)/y(158);
T(34) = params(25)/y(115);
T(35) = y(274)-y(275)/y(159);
T(36) = y(157)*y(274)+y(275)*(1-y(157))/y(159);
T(37) = y(119)/y(6);
T(38) = (y(20)*y(151)*y(15)/(y(21)*y(33)))^(params(19)*(1-params(20)));

end
