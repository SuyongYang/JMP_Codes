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
T(2) = params(15)/(y(90)*y(119))*y(227)/y(114);
T(3) = (1-params(15))*y(225)^((params(16)-1)/params(16));
T(4) = T(3)/(y(90)*y(119));
T(5) = y(227)/(y(114)*y(112));
T(6) = T(4)*T(5);
T(7) = y(149)+y(108)+y(1)*y(15)/y(115);
T(8) = 1/(1-params(16));
T(9) = (y(90)*params(17))^T(8);
T(10) = y(141)*T(9);
T(11) = T(10)/y(90);
T(12) = (y(119)*y(90)*params(17))^T(8);
T(13) = (1+y(10)+y(11))^T(1);
T(14) = params(37)+params(38)/2*y(117)^2;
T(15) = T(1)/params(16);
T(16) = params(17)*y(226)^T(15);
T(17) = (1-y(142))*T(16);
T(18) = y(117)*params(38)*y(11)*T(17);
T(19) = y(227)*T(18)*y(220);
T(20) = y(18)/y(115);
T(21) = y(20)^(1-params(20));
T(22) = y(103)^(y(124)-1);
T(23) = y(8)^(y(17)-1);
T(24) = T(22)/T(23);
T(25) = (y(14)*y(12))^((1-params(18))*(1-params(19)));
T(26) = y(129)^params(19);
T(27) = y(103)^(-y(124));
T(28) = y(104)^params(9)*params(22);
T(29) = (y(96)/y(144))^params(23);
T(30) = params(24)*y(227)/y(90)*y(229);
T(31) = 1-y(21)*params(24)/(y(133)*y(134));
T(32) = params(19)*(1-1/params(20))/y(124);
T(33) = y(227)/y(133);
T(34) = params(24)/y(90);
T(35) = y(228)-y(229)/y(134);
T(36) = y(132)*y(228)+y(229)*(1-y(132))/y(134);
T(37) = y(94)/y(4);
T(38) = (y(18)*y(126)*y(13)/(y(19)*y(31)))^(params(18)*(1-params(19)));

end
