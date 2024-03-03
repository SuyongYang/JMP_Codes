function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 53);

T = Demo_US2019_Pension.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(39) = y(227)/y(114)*(-(params(15)*y(119)))/(y(90)*y(119)*y(90)*y(119));
T(40) = getPowerDeriv(y(119)*y(90)*params(17),T(8),1);
T(41) = y(1)/y(115);
T(42) = getPowerDeriv(y(96)/y(144),params(23),1);
T(43) = (1-params(15))*getPowerDeriv(y(225),(params(16)-1)/params(16),1);
T(44) = (y(114)*y(112)+y(114)+y(11)*y(138))*getPowerDeriv(1+y(10)+y(11),T(1),1);
T(45) = T(1)/((y(112)+1+y(113))*(y(112)+1+y(113)));
T(46) = getPowerDeriv(y(14)*y(12),(1-params(18))*(1-params(19)),1);
T(47) = params(15)/(y(90)*y(119))*(-y(227))/(y(114)*y(114));
T(48) = getPowerDeriv(y(18)*y(126)*y(13)/(y(19)*y(31)),params(18)*(1-params(19)),1);
T(49) = (-y(18))/(y(115)*y(115));
T(50) = params(15)/(y(90)*y(119))*1/y(114);
T(51) = 1/y(115);
T(52) = y(227)/y(114)*(-(params(15)*y(90)))/(y(90)*y(119)*y(90)*y(119));
T(53) = (-((-(params(19)*(1-1/params(20))))/(y(124)*y(124))));

end
