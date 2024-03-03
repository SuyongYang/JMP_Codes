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
T(2) = params(3)/(y(88)*y(119))*y(221)/y(113);
T(3) = (1-params(3))*y(219)^((params(14)-1)/params(14));
T(4) = T(3)/(y(88)*y(119));
T(5) = y(221)/(y(113)*y(111));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(14));
T(8) = (y(88)*params(15))^T(7);
T(9) = y(140)*T(8);
T(10) = T(9)/y(88);
T(11) = (y(119)*y(88)*params(15))^T(7);
T(12) = (y(11)+1+y(10))^T(1);
T(13) = params(35)+params(36)/2*y(116)^2;
T(14) = T(1)/params(14);
T(15) = params(15)*y(220)^T(14);
T(16) = T(15)*(1-y(224));
T(17) = y(116)*params(36)*y(112)*T(16);
T(18) = y(221)*T(17)*y(214);
T(19) = y(18)/y(114);
T(20) = y(20)^(1-params(18));
T(21) = y(102)^(y(124)-1);
T(22) = y(8)^(y(17)-1);
T(23) = T(21)/T(22);
T(24) = (y(14)*y(12))^((1-params(16))*(1-params(17)));
T(25) = y(129)^params(17);
T(26) = y(102)^(-y(124));
T(27) = y(103)^params(7)*params(20);
T(28) = (y(94)/y(144))^params(21);
T(29) = params(22)*y(221)/y(88)*y(223);
T(30) = 1-y(21)*params(22)/(y(133)*y(134));
T(31) = params(17)*(1-1/params(18))/y(124);
T(32) = y(221)/y(133);
T(33) = params(22)/y(88);
T(34) = y(222)-y(223)/y(134);
T(35) = y(132)*y(222)+y(223)*(1-y(132))/y(134);
T(36) = y(92)/y(5);
T(37) = (y(18)*y(126)*y(13)/(y(19)*y(27)))^(params(16)*(1-params(17)));

end
