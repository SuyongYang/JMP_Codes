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

assert(length(T) >= 39);

T(1) = (-1);
T(2) = params(16)/(y(117)*y(146))*y(276)/y(141);
T(3) = (1-params(16))*y(274)^((params(17)-1)/params(17));
T(4) = T(3)/(y(117)*y(146));
T(5) = y(276)/(y(141)*y(139));
T(6) = T(4)*T(5);
T(7) = y(176)+y(135)+y(4)*y(18)/y(142);
T(8) = 1/(1-params(17));
T(9) = (y(117)*params(18))^T(8);
T(10) = y(168)*T(9);
T(11) = T(10)/y(117);
T(12) = (y(146)*y(117)*params(18))^T(8);
T(13) = (1+y(13)+y(14))^T(1);
T(14) = params(38)+params(39)/2*y(144)^2;
T(15) = T(1)/params(17);
T(16) = params(18)*y(275)^T(15);
T(17) = (1-y(169))*T(16);
T(18) = y(144)*params(39)*y(14)*T(17);
T(19) = y(276)*T(18)*y(269);
T(20) = y(21)/y(142);
T(21) = y(23)^(1-params(21));
T(22) = y(130)^(y(151)-1);
T(23) = y(11)^(y(20)-1);
T(24) = T(22)/T(23);
T(25) = (y(17)*y(15))^((1-params(19))*(1-params(20)));
T(26) = y(156)^params(20);
T(27) = y(130)^(-y(151));
T(28) = y(131)^params(10)*params(23);
T(29) = (y(123)/y(171))^params(24);
T(30) = params(25)*y(276)/y(117)*y(278);
T(31) = 1-y(24)*params(25)/(y(160)*y(161));
T(32) = params(20)*(1-1/params(21))/y(151);
T(33) = y(276)/y(160);
T(34) = params(25)/y(117);
T(35) = y(277)-y(278)/y(161);
T(36) = y(159)*y(277)+y(278)*(1-y(159))/y(161);
T(37) = y(4)/y(142);
T(38) = y(121)/y(7);
T(39) = (y(21)*y(153)*y(16)/(y(22)*y(34)))^(params(19)*(1-params(20)));

end
