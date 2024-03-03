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

assert(length(T) >= 50);

T = DemoMediumRunFinal_pop_ext3.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(37) = y(96)/y(51)*(-(params(12)*y(56)))/(y(28)*y(56)*y(28)*y(56));
T(38) = getPowerDeriv(y(56)*y(28)*params(15),T(6),1);
T(39) = y(1)/y(52);
T(40) = getPowerDeriv(y(34)/y(81),params(21),1);
T(41) = (1-params(12))*getPowerDeriv(y(94),(params(14)-1)/params(14),1);
T(42) = (y(51)*y(49)+y(51)+y(9)*y(75))*getPowerDeriv(y(9)+1+y(8),(-1),1);
T(43) = getPowerDeriv(y(12)*y(10),(1-params(16))*(1-params(17)),1);
T(44) = params(12)/(y(28)*y(56))*(-y(96))/(y(51)*y(51));
T(45) = getPowerDeriv(y(16)*y(63)*y(11)/(y(17)*y(26)),params(16)*(1-params(17)),1);
T(46) = (-y(16))/(y(52)*y(52));
T(47) = params(12)/(y(28)*y(56))*1/y(51);
T(48) = y(96)/y(51)*(-(params(12)*y(28)))/(y(28)*y(56)*y(28)*y(56));
T(49) = (-((-(params(17)*(1-1/params(18))))/(y(61)*y(61))));
T(50) = 1/y(52);

end
