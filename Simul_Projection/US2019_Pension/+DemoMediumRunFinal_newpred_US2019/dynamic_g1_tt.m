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

T = DemoMediumRunFinal_newpred_US2019.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(38) = y(215)/y(109)*(-(params(3)*y(115)))/(y(84)*y(115)*y(84)*y(115));
T(39) = getPowerDeriv(y(115)*y(84)*params(15),T(7),1);
T(40) = y(1)/y(110);
T(41) = getPowerDeriv(y(90)/y(140),params(21),1);
T(42) = (1-params(3))*getPowerDeriv(y(213),(params(14)-1)/params(14),1);
T(43) = (y(109)*y(107)+y(109)+y(9)*y(134))*getPowerDeriv(y(9)+1+y(8),T(1),1);
T(44) = T(1)/((y(107)+1+y(108))*(y(107)+1+y(108)));
T(45) = getPowerDeriv(y(12)*y(10),(1-params(16))*(1-params(17)),1);
T(46) = params(3)/(y(84)*y(115))*(-y(215))/(y(109)*y(109));
T(47) = getPowerDeriv(y(16)*y(122)*y(11)/(y(17)*y(25)),params(16)*(1-params(17)),1);
T(48) = (-y(16))/(y(110)*y(110));
T(49) = params(3)/(y(84)*y(115))*1/y(109);
T(50) = y(215)/y(109)*(-(params(3)*y(84)))/(y(84)*y(115)*y(84)*y(115));
T(51) = (-((-(params(17)*(1-1/params(18))))/(y(120)*y(120))));
T(52) = 1/y(110);

end
