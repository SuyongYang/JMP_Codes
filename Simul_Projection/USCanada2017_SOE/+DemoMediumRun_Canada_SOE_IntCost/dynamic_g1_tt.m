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

assert(length(T) >= 52);

T = DemoMediumRun_Canada_SOE_IntCost.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(38) = y(225)/y(117)*(-(params(5)*y(123)))/(y(92)*y(123)*y(92)*y(123));
T(39) = getPowerDeriv(y(123)*y(92)*params(17),T(7),1);
T(40) = y(4)/y(118);
T(41) = getPowerDeriv(y(98)/y(148),params(23),1);
T(42) = (1-params(5))*getPowerDeriv(y(223),(params(16)-1)/params(16),1);
T(43) = (y(117)*y(115)+y(117)+y(12)*y(142))*getPowerDeriv(y(12)+1+y(11),T(1),1);
T(44) = T(1)/((y(115)+1+y(116))*(y(115)+1+y(116)));
T(45) = getPowerDeriv(y(15)*y(13),(1-params(18))*(1-params(19)),1);
T(46) = params(5)/(y(92)*y(123))*(-y(225))/(y(117)*y(117));
T(47) = getPowerDeriv(y(19)*y(130)*y(14)/(y(20)*y(28)),params(18)*(1-params(19)),1);
T(48) = (-y(19))/(y(118)*y(118));
T(49) = params(5)/(y(92)*y(123))*1/y(117);
T(50) = y(225)/y(117)*(-(params(5)*y(92)))/(y(92)*y(123)*y(92)*y(123));
T(51) = (-((-(params(19)*(1-1/params(20))))/(y(128)*y(128))));
T(52) = 1/y(118);

end
