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

assert(length(T) >= 36);

T(1) = params(12)/(y(28)*y(56))*y(96)/y(51);
T(2) = (1-params(12))*y(94)^((params(14)-1)/params(14));
T(3) = T(2)/(y(28)*y(56));
T(4) = y(96)/(y(51)*y(49));
T(5) = T(3)*T(4);
T(6) = 1/(1-params(14));
T(7) = (y(28)*params(15))^T(6);
T(8) = y(78)*T(7);
T(9) = T(8)/y(28);
T(10) = (y(56)*y(28)*params(15))^T(6);
T(11) = (y(9)+1+y(8))^(-1);
T(12) = params(35)+params(36)/2*y(54)^2;
T(13) = (-1)/params(14);
T(14) = (1-params(13))*params(15)*y(95)^T(13);
T(15) = y(54)*params(36)*y(9)*T(14);
T(16) = y(96)*T(15)*y(89);
T(17) = y(16)/y(52);
T(18) = y(18)^(1-params(18));
T(19) = y(40)^(y(61)-1);
T(20) = y(6)^(y(15)-1);
T(21) = T(19)/T(20);
T(22) = (y(12)*y(10))^((1-params(16))*(1-params(17)));
T(23) = y(66)^params(17);
T(24) = y(40)^(-y(61));
T(25) = y(41)^y(83);
T(26) = T(25)*params(20);
T(27) = (y(34)/y(81))^params(21);
T(28) = params(22)*y(96)/y(28)*y(98);
T(29) = 1-y(19)*params(22)/(y(70)*y(71));
T(30) = params(17)*(1-1/params(18))/y(61);
T(31) = y(96)/y(70);
T(32) = params(22)/y(28);
T(33) = y(97)-y(98)/y(71);
T(34) = y(69)*y(97)+y(98)*(1-y(69))/y(71);
T(35) = y(32)/y(3);
T(36) = (y(16)*y(63)*y(11)/(y(17)*y(26)))^(params(16)*(1-params(17)));

end
