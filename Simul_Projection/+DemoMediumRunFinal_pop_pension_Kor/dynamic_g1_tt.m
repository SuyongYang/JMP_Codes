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

T = DemoMediumRunFinal_pop_pension_Kor.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(39) = y(267)/y(134)*(-(params(15)*y(139)))/(y(110)*y(139)*y(110)*y(139));
T(40) = getPowerDeriv(y(139)*y(110)*params(17),T(8),1);
T(41) = y(1)/y(135);
T(42) = getPowerDeriv(y(116)/y(164),params(23),1);
T(43) = (1-params(15))*getPowerDeriv(y(265),(params(16)-1)/params(16),1);
T(44) = (y(134)*y(132)+y(134)+y(11)*y(158))*getPowerDeriv(1+y(10)+y(11),T(1),1);
T(45) = T(1)/((y(132)+1+y(133))*(y(132)+1+y(133)));
T(46) = getPowerDeriv(y(14)*y(12),(1-params(18))*(1-params(19)),1);
T(47) = params(15)/(y(110)*y(139))*(-y(267))/(y(134)*y(134));
T(48) = getPowerDeriv(y(18)*y(146)*y(13)/(y(19)*y(31)),params(18)*(1-params(19)),1);
T(49) = (-y(18))/(y(135)*y(135));
T(50) = params(15)/(y(110)*y(139))*1/y(134);
T(51) = 1/y(135);
T(52) = y(267)/y(134)*(-(params(15)*y(110)))/(y(110)*y(139)*y(110)*y(139));
T(53) = (-((-(params(19)*(1-1/params(20))))/(y(144)*y(144))));

end
