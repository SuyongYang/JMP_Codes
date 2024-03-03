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

T = DemoMediumRunFinal_pop_pension_Kor_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(39) = y(273)/y(139)*(-(params(16)*y(144)))/(y(115)*y(144)*y(115)*y(144));
T(40) = getPowerDeriv(y(144)*y(115)*params(18),T(8),1);
T(41) = y(3)/y(140);
T(42) = getPowerDeriv(y(121)/y(169),params(24),1);
T(43) = (1-params(16))*getPowerDeriv(y(271),(params(17)-1)/params(17),1);
T(44) = (y(139)*y(137)+y(139)+y(13)*y(163))*getPowerDeriv(1+y(12)+y(13),T(1),1);
T(45) = T(1)/((y(137)+1+y(138))*(y(137)+1+y(138)));
T(46) = getPowerDeriv(y(16)*y(14),(1-params(19))*(1-params(20)),1);
T(47) = params(16)/(y(115)*y(144))*(-y(273))/(y(139)*y(139));
T(48) = getPowerDeriv(y(20)*y(151)*y(15)/(y(21)*y(33)),params(19)*(1-params(20)),1);
T(49) = (-y(20))/(y(140)*y(140));
T(50) = params(16)/(y(115)*y(144))*1/y(139);
T(51) = 1/y(140);
T(52) = y(273)/y(139)*(-(params(16)*y(115)))/(y(115)*y(144)*y(115)*y(144));
T(53) = (-((-(params(20)*(1-1/params(21))))/(y(149)*y(149))));

end
