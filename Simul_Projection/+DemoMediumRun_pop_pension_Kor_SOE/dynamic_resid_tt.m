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
T(2) = params(16)/(y(114)*y(143))*y(274)/y(138);
T(3) = (1-params(16))*y(272)^((params(17)-1)/params(17));
T(4) = T(3)/(y(114)*y(143));
T(5) = y(274)/(y(138)*y(136));
T(6) = T(4)*T(5);
T(7) = y(173)+y(132)+y(3)*y(17)/y(139);
T(8) = 1/(1-params(17));
T(9) = (y(114)*params(18))^T(8);
T(10) = y(165)*T(9);
T(11) = T(10)/y(114);
T(12) = (y(143)*y(114)*params(18))^T(8);
T(13) = (1+y(12)+y(13))^T(1);
T(14) = params(38)+params(39)/2*y(141)^2;
T(15) = T(1)/params(17);
T(16) = params(18)*y(273)^T(15);
T(17) = (1-y(166))*T(16);
T(18) = y(141)*params(39)*y(13)*T(17);
T(19) = y(274)*T(18)*y(267);
T(20) = y(20)/y(139);
T(21) = y(22)^(1-params(21));
T(22) = y(127)^(y(148)-1);
T(23) = y(10)^(y(19)-1);
T(24) = T(22)/T(23);
T(25) = (y(16)*y(14))^((1-params(19))*(1-params(20)));
T(26) = y(153)^params(20);
T(27) = y(127)^(-y(148));
T(28) = y(128)^params(10)*params(23);
T(29) = (y(120)/y(168))^params(24);
T(30) = params(25)*y(274)/y(114)*y(276);
T(31) = 1-y(23)*params(25)/(y(157)*y(158));
T(32) = params(20)*(1-1/params(21))/y(148);
T(33) = y(274)/y(157);
T(34) = params(25)/y(114);
T(35) = y(275)-y(276)/y(158);
T(36) = y(156)*y(275)+y(276)*(1-y(156))/y(158);
T(37) = y(118)/y(6);
T(38) = (y(20)*y(150)*y(15)/(y(21)*y(33)))^(params(19)*(1-params(20)));

end
