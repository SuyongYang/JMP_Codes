function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 37);

T(1) = (-1);
T(2) = params(3)/(y(84)*y(114))*y(215)/y(109);
T(3) = (1-params(3))*y(213)^((params(14)-1)/params(14));
T(4) = T(3)/(y(84)*y(114));
T(5) = y(215)/(y(109)*y(107));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(14));
T(8) = (y(84)*params(15))^T(7);
T(9) = y(136)*T(8);
T(10) = T(9)/y(84);
T(11) = (y(114)*y(84)*params(15))^T(7);
T(12) = (y(9)+1+y(8))^T(1);
T(13) = params(35)+params(36)/2*y(112)^2;
T(14) = T(1)/params(14);
T(15) = params(15)*y(214)^T(14);
T(16) = T(15)*(1-y(218));
T(17) = y(112)*params(36)*y(9)*T(16);
T(18) = y(215)*T(17)*y(208);
T(19) = y(16)/y(110);
T(20) = y(18)^(1-params(18));
T(21) = y(98)^(y(119)-1);
T(22) = y(6)^(y(15)-1);
T(23) = T(21)/T(22);
T(24) = (y(12)*y(10))^((1-params(16))*(1-params(17)));
T(25) = y(124)^params(17);
T(26) = y(98)^(-y(119));
T(27) = y(99)^params(7)*params(20);
T(28) = (y(90)/y(140))^params(21);
T(29) = params(22)*y(215)/y(84)*y(217);
T(30) = 1-y(19)*params(22)/(y(128)*y(129));
T(31) = params(17)*(1-1/params(18))/y(119);
T(32) = y(215)/y(128);
T(33) = params(22)/y(84);
T(34) = y(216)-y(217)/y(129);
T(35) = y(127)*y(216)+y(217)*(1-y(127))/y(129);
T(36) = y(88)/y(3);
T(37) = (y(16)*y(121)*y(11)/(y(17)*y(25)))^(params(16)*(1-params(17)));

end
