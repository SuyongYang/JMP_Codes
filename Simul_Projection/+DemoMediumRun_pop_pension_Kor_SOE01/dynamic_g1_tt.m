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

T = DemoMediumRun_pop_pension_Kor_SOE01.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(40) = 1/y(142);
T(41) = y(276)/y(141)*(-(params(16)*y(146)))/(y(117)*y(146)*y(117)*y(146));
T(42) = getPowerDeriv(y(146)*y(117)*params(18),T(8),1);
T(43) = getPowerDeriv(y(123)/y(171),params(24),1);
T(44) = (1-params(16))*getPowerDeriv(y(274),(params(17)-1)/params(17),1);
T(45) = (y(141)*y(139)+y(141)+y(14)*y(165))*getPowerDeriv(1+y(13)+y(14),T(1),1);
T(46) = T(1)/((y(139)+1+y(140))*(y(139)+1+y(140)));
T(47) = getPowerDeriv(y(17)*y(15),(1-params(19))*(1-params(20)),1);
T(48) = params(16)/(y(117)*y(146))*(-y(276))/(y(141)*y(141));
T(49) = getPowerDeriv(y(21)*y(153)*y(16)/(y(22)*y(34)),params(19)*(1-params(20)),1);
T(50) = (-y(21))/(y(142)*y(142));
T(51) = params(16)/(y(117)*y(146))*1/y(141);
T(52) = y(276)/y(141)*(-(params(16)*y(117)))/(y(117)*y(146)*y(117)*y(146));
T(53) = (-((-(params(20)*(1-1/params(21))))/(y(151)*y(151))));

end
