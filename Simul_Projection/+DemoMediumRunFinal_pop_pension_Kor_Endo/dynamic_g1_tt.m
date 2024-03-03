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

assert(length(T) >= 47);

T = DemoMediumRunFinal_pop_pension_Kor_Endo.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(34) = y(100)/y(54)*(-(params(16)*y(59)))/(y(30)*y(59)*y(30)*y(59));
T(35) = getPowerDeriv(y(59)*y(30)*params(18),T(7),1);
T(36) = y(1)/y(55);
T(37) = getPowerDeriv(y(36)/y(82),params(24),1);
T(38) = (1-params(16))*getPowerDeriv(y(98),(params(17)-1)/params(17),1);
T(39) = (y(54)*y(52)+y(54)+y(11)*y(78))*getPowerDeriv(1+y(10)+y(11),(-1),1);
T(40) = getPowerDeriv(y(14)*y(12),(1-params(19))*(1-params(20)),1);
T(41) = params(16)/(y(30)*y(59))*(-y(100))/(y(54)*y(54));
T(42) = getPowerDeriv(y(18)*y(66)*y(13)/(y(19)*y(27)),params(19)*(1-params(20)),1);
T(43) = (-y(18))/(y(55)*y(55));
T(44) = params(16)/(y(30)*y(59))*1/y(54);
T(45) = 1/y(55);
T(46) = y(100)/y(54)*(-(params(16)*y(30)))/(y(30)*y(59)*y(30)*y(59));
T(47) = (-((-(params(20)*(1-1/params(21))))/(y(64)*y(64))));

end
