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

assert(length(T) >= 48);

T(1) = (-1);
T(2) = params(3)/(y(55)*y(86));
T(3) = y(157)/y(80);
T(4) = T(2)*T(3);
T(5) = (1-params(3))*y(155)^((params(14)-1)/params(14));
T(6) = T(5)/(y(55)*y(86));
T(7) = y(157)/(y(80)*y(78));
T(8) = T(6)*T(7);
T(9) = y(74)+y(1)*y(13)/y(81);
T(10) = 1/(1-params(14));
T(11) = (y(55)*params(15))^T(10);
T(12) = y(107)*T(11);
T(13) = T(12)/y(55);
T(14) = y(77)*y(76)/(y(155)*y(156));
T(15) = (y(86)*y(55)*params(15))^T(10);
T(16) = T(15)/(y(55)*y(86));
T(17) = y(77)/y(156);
T(18) = (y(9)+1+y(8))^T(1);
T(19) = params(35)+params(36)/2*y(83)^2;
T(20) = T(1)/params(14);
T(21) = params(15)*y(156)^T(20);
T(22) = T(21)*(1-y(160));
T(23) = y(83)*params(36)*y(79)*T(22);
T(24) = y(157)*T(23)*y(150);
T(25) = y(105)*y(82)*y(57)*y(80);
T(26) = y(16)/y(81);
T(27) = y(18)^(1-params(18));
T(28) = y(69)^(y(91)-1);
T(29) = y(6)^(y(15)-1);
T(30) = T(28)/T(29);
T(31) = (y(12)*y(10))^((1-params(16))*(1-params(17)));
T(32) = y(96)^params(17);
T(33) = (y(91)-1)/y(91);
T(34) = y(69)^(-y(91));
T(35) = y(70)^params(7)*params(20);
T(36) = (y(61)/y(111))^params(21);
T(37) = params(22)*y(157)/y(55);
T(38) = T(37)*y(159);
T(39) = 1-y(19)*params(22)/(y(100)*y(101));
T(40) = params(17)*(1-1/params(18))/y(91);
T(41) = y(157)/y(100);
T(42) = params(22)/y(55);
T(43) = y(158)-y(159)/y(101);
T(44) = y(99)*y(158)+y(159)*(1-y(99))/y(101);
T(45) = y(59)/y(3);
T(46) = y(16)*y(93)*y(11)/(y(17)*y(25));
T(47) = T(46)^(params(16)*(1-params(17)));
T(48) = 1-1/y(26);

end
