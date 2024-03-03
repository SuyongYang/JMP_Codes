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

assert(length(T) >= 37);

T(1) = (-1);
T(2) = params(5)/(y(92)*y(123))*y(225)/y(117);
T(3) = (1-params(5))*y(223)^((params(16)-1)/params(16));
T(4) = T(3)/(y(92)*y(123));
T(5) = y(225)/(y(117)*y(115));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(16));
T(8) = (y(92)*params(17))^T(7);
T(9) = y(144)*T(8);
T(10) = T(9)/y(92);
T(11) = (y(123)*y(92)*params(17))^T(7);
T(12) = (y(12)+1+y(11))^T(1);
T(13) = params(37)+params(38)/2*y(120)^2;
T(14) = T(1)/params(16);
T(15) = params(17)*y(224)^T(14);
T(16) = T(15)*(1-y(228));
T(17) = y(120)*params(38)*y(116)*T(16);
T(18) = y(225)*T(17)*y(218);
T(19) = y(19)/y(118);
T(20) = y(21)^(1-params(20));
T(21) = y(106)^(y(128)-1);
T(22) = y(9)^(y(18)-1);
T(23) = T(21)/T(22);
T(24) = (y(15)*y(13))^((1-params(18))*(1-params(19)));
T(25) = y(133)^params(19);
T(26) = y(106)^(-y(128));
T(27) = y(107)^params(9)*params(22);
T(28) = (y(98)/y(148))^params(23);
T(29) = params(24)*y(225)/y(92)*y(227);
T(30) = 1-y(22)*params(24)/(y(137)*y(138));
T(31) = params(19)*(1-1/params(20))/y(128);
T(32) = y(225)/y(137);
T(33) = params(24)/y(92);
T(34) = y(226)-y(227)/y(138);
T(35) = y(136)*y(226)+y(227)*(1-y(136))/y(138);
T(36) = y(96)/y(6);
T(37) = (y(19)*y(130)*y(14)/(y(20)*y(28)))^(params(18)*(1-params(19)));

end
