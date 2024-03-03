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
T(2) = params(4)/(y(91)*y(122))*y(222)/y(116);
T(3) = (1-params(4))*y(220)^((params(15)-1)/params(15));
T(4) = T(3)/(y(91)*y(122));
T(5) = y(222)/(y(116)*y(114));
T(6) = T(4)*T(5);
T(7) = 1/(1-params(15));
T(8) = (y(91)*params(16))^T(7);
T(9) = y(143)*T(8);
T(10) = T(9)/y(91);
T(11) = (y(122)*y(91)*params(16))^T(7);
T(12) = (y(11)+1+y(10))^T(1);
T(13) = params(36)+params(37)/2*y(119)^2;
T(14) = T(1)/params(15);
T(15) = params(16)*y(221)^T(14);
T(16) = T(15)*(1-y(225));
T(17) = y(119)*params(37)*y(115)*T(16);
T(18) = y(222)*T(17)*y(215);
T(19) = y(18)/y(117);
T(20) = y(20)^(1-params(19));
T(21) = y(105)^(y(127)-1);
T(22) = y(8)^(y(17)-1);
T(23) = T(21)/T(22);
T(24) = (y(14)*y(12))^((1-params(17))*(1-params(18)));
T(25) = y(132)^params(18);
T(26) = y(105)^(-y(127));
T(27) = y(106)^params(8)*params(21);
T(28) = (y(97)/y(147))^params(22);
T(29) = params(23)*y(222)/y(91)*y(224);
T(30) = 1-y(21)*params(23)/(y(136)*y(137));
T(31) = params(18)*(1-1/params(19))/y(127);
T(32) = y(222)/y(136);
T(33) = params(23)/y(91);
T(34) = y(223)-y(224)/y(137);
T(35) = y(135)*y(223)+y(224)*(1-y(135))/y(137);
T(36) = y(95)/y(5);
T(37) = (y(18)*y(129)*y(13)/(y(19)*y(27)))^(params(17)*(1-params(18)));

end
