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

assert(length(T) >= 33);

T(1) = params(16)/(y(30)*y(59))*y(100)/y(54);
T(2) = (1-params(16))*y(98)^((params(17)-1)/params(17));
T(3) = T(2)/(y(30)*y(59));
T(4) = y(100)/(y(54)*y(52));
T(5) = T(3)*T(4);
T(6) = y(87)+y(48)+y(1)*y(15)/y(55);
T(7) = 1/(1-params(17));
T(8) = params(1)*(y(30)*params(18))^T(7);
T(9) = T(8)/y(30);
T(10) = (y(59)*y(30)*params(18))^T(7);
T(11) = (1+y(10)+y(11))^(-1);
T(12) = params(38)+params(39)/2*y(57)^2;
T(13) = (-1)/params(17);
T(14) = params(18)*y(99)^T(13);
T(15) = y(18)/y(55);
T(16) = y(20)^(1-params(21));
T(17) = y(43)^(y(64)-1);
T(18) = y(8)^(y(17)-1);
T(19) = T(17)/T(18);
T(20) = (y(14)*y(12))^((1-params(19))*(1-params(20)));
T(21) = y(69)^params(20);
T(22) = y(43)^(-y(64));
T(23) = y(44)^params(10)*params(23);
T(24) = (y(36)/y(82))^params(24);
T(25) = params(25)*y(100)/y(30)*y(102);
T(26) = 1-y(21)*params(25)/(y(73)*y(74));
T(27) = params(20)*(1-1/params(21))/y(64);
T(28) = y(100)/y(73);
T(29) = params(25)/y(30);
T(30) = y(101)-y(102)/y(74);
T(31) = y(72)*y(101)+y(102)*(1-y(72))/y(74);
T(32) = y(34)/y(4);
T(33) = (y(18)*y(66)*y(13)/(y(19)*y(27)))^(params(19)*(1-params(20)));

end
