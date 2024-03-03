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

T = DemoMediumRun_pop_pension_Kor_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(39) = y(274)/y(138)*(-(params(16)*y(143)))/(y(114)*y(143)*y(114)*y(143));
T(40) = getPowerDeriv(y(143)*y(114)*params(18),T(8),1);
T(41) = y(3)/y(139);
T(42) = getPowerDeriv(y(120)/y(168),params(24),1);
T(43) = (1-params(16))*getPowerDeriv(y(272),(params(17)-1)/params(17),1);
T(44) = (y(138)*y(136)+y(138)+y(13)*y(162))*getPowerDeriv(1+y(12)+y(13),T(1),1);
T(45) = T(1)/((y(136)+1+y(137))*(y(136)+1+y(137)));
T(46) = getPowerDeriv(y(16)*y(14),(1-params(19))*(1-params(20)),1);
T(47) = params(16)/(y(114)*y(143))*(-y(274))/(y(138)*y(138));
T(48) = getPowerDeriv(y(20)*y(150)*y(15)/(y(21)*y(33)),params(19)*(1-params(20)),1);
T(49) = (-y(20))/(y(139)*y(139));
T(50) = params(16)/(y(114)*y(143))*1/y(138);
T(51) = 1/y(139);
T(52) = y(274)/y(138)*(-(params(16)*y(114)))/(y(114)*y(143)*y(114)*y(143));
T(53) = (-((-(params(20)*(1-1/params(21))))/(y(148)*y(148))));

end
