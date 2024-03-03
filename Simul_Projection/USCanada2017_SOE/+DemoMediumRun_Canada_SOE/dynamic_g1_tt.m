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

T = DemoMediumRun_Canada_SOE.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(38) = y(222)/y(116)*(-(params(4)*y(122)))/(y(91)*y(122)*y(91)*y(122));
T(39) = getPowerDeriv(y(122)*y(91)*params(16),T(7),1);
T(40) = y(3)/y(117);
T(41) = getPowerDeriv(y(97)/y(147),params(22),1);
T(42) = (1-params(4))*getPowerDeriv(y(220),(params(15)-1)/params(15),1);
T(43) = (y(116)*y(114)+y(116)+y(11)*y(141))*getPowerDeriv(y(11)+1+y(10),T(1),1);
T(44) = T(1)/((y(114)+1+y(115))*(y(114)+1+y(115)));
T(45) = getPowerDeriv(y(14)*y(12),(1-params(17))*(1-params(18)),1);
T(46) = params(4)/(y(91)*y(122))*(-y(222))/(y(116)*y(116));
T(47) = getPowerDeriv(y(18)*y(129)*y(13)/(y(19)*y(27)),params(17)*(1-params(18)),1);
T(48) = (-y(18))/(y(117)*y(117));
T(49) = params(4)/(y(91)*y(122))*1/y(116);
T(50) = y(222)/y(116)*(-(params(4)*y(91)))/(y(91)*y(122)*y(91)*y(122));
T(51) = (-((-(params(18)*(1-1/params(19))))/(y(127)*y(127))));
T(52) = 1/y(117);

end
