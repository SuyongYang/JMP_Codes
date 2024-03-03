%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'DemoMediumRun_Canada_SOE';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('DemoMediumRun_Canada_SOE.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'delall'};
M_.exo_names_tex(1) = {'delall'};
M_.exo_names_long(1) = {'delall'};
M_.endo_names = cell(125,1);
M_.endo_names_tex = cell(125,1);
M_.endo_names_long = cell(125,1);
M_.endo_names(1) = {'ca'};
M_.endo_names_tex(1) = {'ca'};
M_.endo_names_long(1) = {'ca'};
M_.endo_names(2) = {'rstar'};
M_.endo_names_tex(2) = {'rstar'};
M_.endo_names_long(2) = {'rstar'};
M_.endo_names(3) = {'r'};
M_.endo_names_tex(3) = {'r'};
M_.endo_names_long(3) = {'r'};
M_.endo_names(4) = {'rk'};
M_.endo_names_tex(4) = {'rk'};
M_.endo_names_long(4) = {'rk'};
M_.endo_names(5) = {'w'};
M_.endo_names_tex(5) = {'w'};
M_.endo_names_long(5) = {'w'};
M_.endo_names(6) = {'b'};
M_.endo_names_tex(6) = {'b'};
M_.endo_names_long(6) = {'b'};
M_.endo_names(7) = {'y'};
M_.endo_names_tex(7) = {'y'};
M_.endo_names_long(7) = {'y'};
M_.endo_names(8) = {'varpi'};
M_.endo_names_tex(8) = {'varpi'};
M_.endo_names_long(8) = {'varpi'};
M_.endo_names(9) = {'s'};
M_.endo_names_tex(9) = {'s'};
M_.endo_names_long(9) = {'s'};
M_.endo_names(10) = {'inv'};
M_.endo_names_tex(10) = {'inv'};
M_.endo_names_long(10) = {'inv'};
M_.endo_names(11) = {'c'};
M_.endo_names_tex(11) = {'c'};
M_.endo_names_long(11) = {'c'};
M_.endo_names(12) = {'cw'};
M_.endo_names_tex(12) = {'cw'};
M_.endo_names_long(12) = {'cw'};
M_.endo_names(13) = {'cwper'};
M_.endo_names_tex(13) = {'cwper'};
M_.endo_names_long(13) = {'cwper'};
M_.endo_names(14) = {'cr'};
M_.endo_names_tex(14) = {'cr'};
M_.endo_names_long(14) = {'cr'};
M_.endo_names(15) = {'crper'};
M_.endo_names_tex(15) = {'crper'};
M_.endo_names_long(15) = {'crper'};
M_.endo_names(16) = {'tauw'};
M_.endo_names_tex(16) = {'tauw'};
M_.endo_names_long(16) = {'tauw'};
M_.endo_names(17) = {'N'};
M_.endo_names_tex(17) = {'N'};
M_.endo_names_long(17) = {'N'};
M_.endo_names(18) = {'stoyw'};
M_.endo_names_tex(18) = {'stoyw'};
M_.endo_names_long(18) = {'stoyw'};
M_.endo_names(19) = {'PiF'};
M_.endo_names_tex(19) = {'PiF'};
M_.endo_names_long(19) = {'PiF'};
M_.endo_names(20) = {'Tw'};
M_.endo_names_tex(20) = {'Tw'};
M_.endo_names_long(20) = {'Tw'};
M_.endo_names(21) = {'hw'};
M_.endo_names_tex(21) = {'hw'};
M_.endo_names_long(21) = {'hw'};
M_.endo_names(22) = {'Dr'};
M_.endo_names_tex(22) = {'Dr'};
M_.endo_names_long(22) = {'Dr'};
M_.endo_names(23) = {'Dw'};
M_.endo_names_tex(23) = {'Dw'};
M_.endo_names_long(23) = {'Dw'};
M_.endo_names(24) = {'ep'};
M_.endo_names_tex(24) = {'ep'};
M_.endo_names_long(24) = {'ep'};
M_.endo_names(25) = {'varsig'};
M_.endo_names_tex(25) = {'varsig'};
M_.endo_names_long(25) = {'varsig'};
M_.endo_names(26) = {'zetar'};
M_.endo_names_tex(26) = {'zetar'};
M_.endo_names_long(26) = {'zetar'};
M_.endo_names(27) = {'zetay'};
M_.endo_names_tex(27) = {'zetay'};
M_.endo_names_long(27) = {'zetay'};
M_.endo_names(28) = {'gw'};
M_.endo_names_tex(28) = {'gw'};
M_.endo_names_long(28) = {'gw'};
M_.endo_names(29) = {'g'};
M_.endo_names_tex(29) = {'g'};
M_.endo_names_long(29) = {'g'};
M_.endo_names(30) = {'gE'};
M_.endo_names_tex(30) = {'gE'};
M_.endo_names_long(30) = {'gE'};
M_.endo_names(31) = {'iy'};
M_.endo_names_tex(31) = {'iy'};
M_.endo_names_long(31) = {'iy'};
M_.endo_names(32) = {'gpc'};
M_.endo_names_tex(32) = {'gpc'};
M_.endo_names_long(32) = {'gpc'};
M_.endo_names(33) = {'gy'};
M_.endo_names_tex(33) = {'gy'};
M_.endo_names_long(33) = {'gy'};
M_.endo_names(34) = {'zz'};
M_.endo_names_tex(34) = {'zz'};
M_.endo_names_long(34) = {'zz'};
M_.endo_names(35) = {'far'};
M_.endo_names_tex(35) = {'far'};
M_.endo_names_long(35) = {'far'};
M_.endo_names(36) = {'faw'};
M_.endo_names_tex(36) = {'faw'};
M_.endo_names_long(36) = {'faw'};
M_.endo_names(37) = {'dr'};
M_.endo_names_tex(37) = {'dr'};
M_.endo_names_long(37) = {'dr'};
M_.endo_names(38) = {'dw'};
M_.endo_names_tex(38) = {'dw'};
M_.endo_names_long(38) = {'dw'};
M_.endo_names(39) = {'mu'};
M_.endo_names_tex(39) = {'mu'};
M_.endo_names_long(39) = {'mu'};
M_.endo_names(40) = {'k'};
M_.endo_names_tex(40) = {'k'};
M_.endo_names_long(40) = {'k'};
M_.endo_names(41) = {'u'};
M_.endo_names_tex(41) = {'u'};
M_.endo_names_long(41) = {'u'};
M_.endo_names(42) = {'del'};
M_.endo_names_tex(42) = {'del'};
M_.endo_names_long(42) = {'del'};
M_.endo_names(43) = {'delprime'};
M_.endo_names_tex(43) = {'delprime'};
M_.endo_names_long(43) = {'delprime'};
M_.endo_names(44) = {'gM'};
M_.endo_names_tex(44) = {'gM'};
M_.endo_names_long(44) = {'gM'};
M_.endo_names(45) = {'v'};
M_.endo_names_tex(45) = {'v'};
M_.endo_names_long(45) = {'v'};
M_.endo_names(46) = {'j'};
M_.endo_names_tex(46) = {'j'};
M_.endo_names_long(46) = {'j'};
M_.endo_names(47) = {'lam'};
M_.endo_names_tex(47) = {'lam'};
M_.endo_names_long(47) = {'lam'};
M_.endo_names(48) = {'gA'};
M_.endo_names_tex(48) = {'gA'};
M_.endo_names_long(48) = {'gA'};
M_.endo_names(49) = {'za'};
M_.endo_names_tex(49) = {'za'};
M_.endo_names_long(49) = {'za'};
M_.endo_names(50) = {'PiA'};
M_.endo_names_tex(50) = {'PiA'};
M_.endo_names_long(50) = {'PiA'};
M_.endo_names(51) = {'PiRD'};
M_.endo_names_tex(51) = {'PiRD'};
M_.endo_names_long(51) = {'PiRD'};
M_.endo_names(52) = {'fa'};
M_.endo_names_tex(52) = {'fa'};
M_.endo_names_long(52) = {'fa'};
M_.endo_names(53) = {'n'};
M_.endo_names_tex(53) = {'n'};
M_.endo_names_long(53) = {'n'};
M_.endo_names(54) = {'gn'};
M_.endo_names_tex(54) = {'gn'};
M_.endo_names_long(54) = {'gn'};
M_.endo_names(55) = {'gamma'};
M_.endo_names_tex(55) = {'gamma'};
M_.endo_names_long(55) = {'gamma'};
M_.endo_names(56) = {'er'};
M_.endo_names_tex(56) = {'er'};
M_.endo_names_long(56) = {'er'};
M_.endo_names(57) = {'ey'};
M_.endo_names_tex(57) = {'ey'};
M_.endo_names_long(57) = {'ey'};
M_.endo_names(58) = {'en'};
M_.endo_names_tex(58) = {'en'};
M_.endo_names_long(58) = {'en'};
M_.endo_names(59) = {'psi'};
M_.endo_names_tex(59) = {'psi'};
M_.endo_names_long(59) = {'psi'};
M_.endo_names(60) = {'shockr'};
M_.endo_names_tex(60) = {'shockr'};
M_.endo_names_long(60) = {'shockr'};
M_.endo_names(61) = {'shocky'};
M_.endo_names_tex(61) = {'shocky'};
M_.endo_names_long(61) = {'shocky'};
M_.endo_names(62) = {'shockn'};
M_.endo_names_tex(62) = {'shockn'};
M_.endo_names_long(62) = {'shockn'};
M_.endo_names(63) = {'fert'};
M_.endo_names_tex(63) = {'fert'};
M_.endo_names_long(63) = {'fert'};
M_.endo_names(64) = {'omegay'};
M_.endo_names_tex(64) = {'omegay'};
M_.endo_names_long(64) = {'omegay'};
M_.endo_names(65) = {'shareW'};
M_.endo_names_tex(65) = {'shareW'};
M_.endo_names_long(65) = {'shareW'};
M_.endo_names(66) = {'shareR'};
M_.endo_names_tex(66) = {'shareR'};
M_.endo_names_long(66) = {'shareR'};
M_.endo_names(67) = {'AUX_ENDO_LAG_39_1'};
M_.endo_names_tex(67) = {'AUX\_ENDO\_LAG\_39\_1'};
M_.endo_names_long(67) = {'AUX_ENDO_LAG_39_1'};
M_.endo_names(68) = {'AUX_ENDO_LAG_48_1'};
M_.endo_names_tex(68) = {'AUX\_ENDO\_LAG\_48\_1'};
M_.endo_names_long(68) = {'AUX_ENDO_LAG_48_1'};
M_.endo_names(69) = {'AUX_ENDO_LAG_61_1'};
M_.endo_names_tex(69) = {'AUX\_ENDO\_LAG\_61\_1'};
M_.endo_names_long(69) = {'AUX_ENDO_LAG_61_1'};
M_.endo_names(70) = {'AUX_ENDO_LAG_61_2'};
M_.endo_names_tex(70) = {'AUX\_ENDO\_LAG\_61\_2'};
M_.endo_names_long(70) = {'AUX_ENDO_LAG_61_2'};
M_.endo_names(71) = {'AUX_ENDO_LAG_61_3'};
M_.endo_names_tex(71) = {'AUX\_ENDO\_LAG\_61\_3'};
M_.endo_names_long(71) = {'AUX_ENDO_LAG_61_3'};
M_.endo_names(72) = {'AUX_ENDO_LAG_61_4'};
M_.endo_names_tex(72) = {'AUX\_ENDO\_LAG\_61\_4'};
M_.endo_names_long(72) = {'AUX_ENDO_LAG_61_4'};
M_.endo_names(73) = {'AUX_ENDO_LAG_61_5'};
M_.endo_names_tex(73) = {'AUX\_ENDO\_LAG\_61\_5'};
M_.endo_names_long(73) = {'AUX_ENDO_LAG_61_5'};
M_.endo_names(74) = {'AUX_ENDO_LAG_61_6'};
M_.endo_names_tex(74) = {'AUX\_ENDO\_LAG\_61\_6'};
M_.endo_names_long(74) = {'AUX_ENDO_LAG_61_6'};
M_.endo_names(75) = {'AUX_ENDO_LAG_61_7'};
M_.endo_names_tex(75) = {'AUX\_ENDO\_LAG\_61\_7'};
M_.endo_names_long(75) = {'AUX_ENDO_LAG_61_7'};
M_.endo_names(76) = {'AUX_ENDO_LAG_61_8'};
M_.endo_names_tex(76) = {'AUX\_ENDO\_LAG\_61\_8'};
M_.endo_names_long(76) = {'AUX_ENDO_LAG_61_8'};
M_.endo_names(77) = {'AUX_ENDO_LAG_61_9'};
M_.endo_names_tex(77) = {'AUX\_ENDO\_LAG\_61\_9'};
M_.endo_names_long(77) = {'AUX_ENDO_LAG_61_9'};
M_.endo_names(78) = {'AUX_ENDO_LAG_61_10'};
M_.endo_names_tex(78) = {'AUX\_ENDO\_LAG\_61\_10'};
M_.endo_names_long(78) = {'AUX_ENDO_LAG_61_10'};
M_.endo_names(79) = {'AUX_ENDO_LAG_61_11'};
M_.endo_names_tex(79) = {'AUX\_ENDO\_LAG\_61\_11'};
M_.endo_names_long(79) = {'AUX_ENDO_LAG_61_11'};
M_.endo_names(80) = {'AUX_ENDO_LAG_61_12'};
M_.endo_names_tex(80) = {'AUX\_ENDO\_LAG\_61\_12'};
M_.endo_names_long(80) = {'AUX_ENDO_LAG_61_12'};
M_.endo_names(81) = {'AUX_ENDO_LAG_61_13'};
M_.endo_names_tex(81) = {'AUX\_ENDO\_LAG\_61\_13'};
M_.endo_names_long(81) = {'AUX_ENDO_LAG_61_13'};
M_.endo_names(82) = {'AUX_ENDO_LAG_61_14'};
M_.endo_names_tex(82) = {'AUX\_ENDO\_LAG\_61\_14'};
M_.endo_names_long(82) = {'AUX_ENDO_LAG_61_14'};
M_.endo_names(83) = {'AUX_ENDO_LAG_61_15'};
M_.endo_names_tex(83) = {'AUX\_ENDO\_LAG\_61\_15'};
M_.endo_names_long(83) = {'AUX_ENDO_LAG_61_15'};
M_.endo_names(84) = {'AUX_ENDO_LAG_61_16'};
M_.endo_names_tex(84) = {'AUX\_ENDO\_LAG\_61\_16'};
M_.endo_names_long(84) = {'AUX_ENDO_LAG_61_16'};
M_.endo_names(85) = {'AUX_ENDO_LAG_61_17'};
M_.endo_names_tex(85) = {'AUX\_ENDO\_LAG\_61\_17'};
M_.endo_names_long(85) = {'AUX_ENDO_LAG_61_17'};
M_.endo_names(86) = {'AUX_ENDO_LAG_61_18'};
M_.endo_names_tex(86) = {'AUX\_ENDO\_LAG\_61\_18'};
M_.endo_names_long(86) = {'AUX_ENDO_LAG_61_18'};
M_.endo_names(87) = {'AUX_ENDO_LAG_61_19'};
M_.endo_names_tex(87) = {'AUX\_ENDO\_LAG\_61\_19'};
M_.endo_names_long(87) = {'AUX_ENDO_LAG_61_19'};
M_.endo_names(88) = {'AUX_ENDO_LAG_61_20'};
M_.endo_names_tex(88) = {'AUX\_ENDO\_LAG\_61\_20'};
M_.endo_names_long(88) = {'AUX_ENDO_LAG_61_20'};
M_.endo_names(89) = {'AUX_ENDO_LAG_61_21'};
M_.endo_names_tex(89) = {'AUX\_ENDO\_LAG\_61\_21'};
M_.endo_names_long(89) = {'AUX_ENDO_LAG_61_21'};
M_.endo_names(90) = {'AUX_ENDO_LAG_61_22'};
M_.endo_names_tex(90) = {'AUX\_ENDO\_LAG\_61\_22'};
M_.endo_names_long(90) = {'AUX_ENDO_LAG_61_22'};
M_.endo_names(91) = {'AUX_ENDO_LAG_61_23'};
M_.endo_names_tex(91) = {'AUX\_ENDO\_LAG\_61\_23'};
M_.endo_names_long(91) = {'AUX_ENDO_LAG_61_23'};
M_.endo_names(92) = {'AUX_ENDO_LAG_61_24'};
M_.endo_names_tex(92) = {'AUX\_ENDO\_LAG\_61\_24'};
M_.endo_names_long(92) = {'AUX_ENDO_LAG_61_24'};
M_.endo_names(93) = {'AUX_ENDO_LAG_61_25'};
M_.endo_names_tex(93) = {'AUX\_ENDO\_LAG\_61\_25'};
M_.endo_names_long(93) = {'AUX_ENDO_LAG_61_25'};
M_.endo_names(94) = {'AUX_ENDO_LAG_61_26'};
M_.endo_names_tex(94) = {'AUX\_ENDO\_LAG\_61\_26'};
M_.endo_names_long(94) = {'AUX_ENDO_LAG_61_26'};
M_.endo_names(95) = {'AUX_ENDO_LAG_61_27'};
M_.endo_names_tex(95) = {'AUX\_ENDO\_LAG\_61\_27'};
M_.endo_names_long(95) = {'AUX_ENDO_LAG_61_27'};
M_.endo_names(96) = {'AUX_ENDO_LAG_61_28'};
M_.endo_names_tex(96) = {'AUX\_ENDO\_LAG\_61\_28'};
M_.endo_names_long(96) = {'AUX_ENDO_LAG_61_28'};
M_.endo_names(97) = {'AUX_EXO_LAG_66_0'};
M_.endo_names_tex(97) = {'AUX\_EXO\_LAG\_66\_0'};
M_.endo_names_long(97) = {'AUX_EXO_LAG_66_0'};
M_.endo_names(98) = {'AUX_EXO_LAG_66_1'};
M_.endo_names_tex(98) = {'AUX\_EXO\_LAG\_66\_1'};
M_.endo_names_long(98) = {'AUX_EXO_LAG_66_1'};
M_.endo_names(99) = {'AUX_EXO_LAG_66_2'};
M_.endo_names_tex(99) = {'AUX\_EXO\_LAG\_66\_2'};
M_.endo_names_long(99) = {'AUX_EXO_LAG_66_2'};
M_.endo_names(100) = {'AUX_EXO_LAG_66_3'};
M_.endo_names_tex(100) = {'AUX\_EXO\_LAG\_66\_3'};
M_.endo_names_long(100) = {'AUX_EXO_LAG_66_3'};
M_.endo_names(101) = {'AUX_EXO_LAG_66_4'};
M_.endo_names_tex(101) = {'AUX\_EXO\_LAG\_66\_4'};
M_.endo_names_long(101) = {'AUX_EXO_LAG_66_4'};
M_.endo_names(102) = {'AUX_EXO_LAG_66_5'};
M_.endo_names_tex(102) = {'AUX\_EXO\_LAG\_66\_5'};
M_.endo_names_long(102) = {'AUX_EXO_LAG_66_5'};
M_.endo_names(103) = {'AUX_EXO_LAG_66_6'};
M_.endo_names_tex(103) = {'AUX\_EXO\_LAG\_66\_6'};
M_.endo_names_long(103) = {'AUX_EXO_LAG_66_6'};
M_.endo_names(104) = {'AUX_EXO_LAG_66_7'};
M_.endo_names_tex(104) = {'AUX\_EXO\_LAG\_66\_7'};
M_.endo_names_long(104) = {'AUX_EXO_LAG_66_7'};
M_.endo_names(105) = {'AUX_EXO_LAG_66_8'};
M_.endo_names_tex(105) = {'AUX\_EXO\_LAG\_66\_8'};
M_.endo_names_long(105) = {'AUX_EXO_LAG_66_8'};
M_.endo_names(106) = {'AUX_EXO_LAG_66_9'};
M_.endo_names_tex(106) = {'AUX\_EXO\_LAG\_66\_9'};
M_.endo_names_long(106) = {'AUX_EXO_LAG_66_9'};
M_.endo_names(107) = {'AUX_EXO_LAG_66_10'};
M_.endo_names_tex(107) = {'AUX\_EXO\_LAG\_66\_10'};
M_.endo_names_long(107) = {'AUX_EXO_LAG_66_10'};
M_.endo_names(108) = {'AUX_EXO_LAG_66_11'};
M_.endo_names_tex(108) = {'AUX\_EXO\_LAG\_66\_11'};
M_.endo_names_long(108) = {'AUX_EXO_LAG_66_11'};
M_.endo_names(109) = {'AUX_EXO_LAG_66_12'};
M_.endo_names_tex(109) = {'AUX\_EXO\_LAG\_66\_12'};
M_.endo_names_long(109) = {'AUX_EXO_LAG_66_12'};
M_.endo_names(110) = {'AUX_EXO_LAG_66_13'};
M_.endo_names_tex(110) = {'AUX\_EXO\_LAG\_66\_13'};
M_.endo_names_long(110) = {'AUX_EXO_LAG_66_13'};
M_.endo_names(111) = {'AUX_EXO_LAG_66_14'};
M_.endo_names_tex(111) = {'AUX\_EXO\_LAG\_66\_14'};
M_.endo_names_long(111) = {'AUX_EXO_LAG_66_14'};
M_.endo_names(112) = {'AUX_EXO_LAG_66_15'};
M_.endo_names_tex(112) = {'AUX\_EXO\_LAG\_66\_15'};
M_.endo_names_long(112) = {'AUX_EXO_LAG_66_15'};
M_.endo_names(113) = {'AUX_EXO_LAG_66_16'};
M_.endo_names_tex(113) = {'AUX\_EXO\_LAG\_66\_16'};
M_.endo_names_long(113) = {'AUX_EXO_LAG_66_16'};
M_.endo_names(114) = {'AUX_EXO_LAG_66_17'};
M_.endo_names_tex(114) = {'AUX\_EXO\_LAG\_66\_17'};
M_.endo_names_long(114) = {'AUX_EXO_LAG_66_17'};
M_.endo_names(115) = {'AUX_EXO_LAG_66_18'};
M_.endo_names_tex(115) = {'AUX\_EXO\_LAG\_66\_18'};
M_.endo_names_long(115) = {'AUX_EXO_LAG_66_18'};
M_.endo_names(116) = {'AUX_EXO_LAG_66_19'};
M_.endo_names_tex(116) = {'AUX\_EXO\_LAG\_66\_19'};
M_.endo_names_long(116) = {'AUX_EXO_LAG_66_19'};
M_.endo_names(117) = {'AUX_EXO_LAG_66_20'};
M_.endo_names_tex(117) = {'AUX\_EXO\_LAG\_66\_20'};
M_.endo_names_long(117) = {'AUX_EXO_LAG_66_20'};
M_.endo_names(118) = {'AUX_EXO_LAG_66_21'};
M_.endo_names_tex(118) = {'AUX\_EXO\_LAG\_66\_21'};
M_.endo_names_long(118) = {'AUX_EXO_LAG_66_21'};
M_.endo_names(119) = {'AUX_EXO_LAG_66_22'};
M_.endo_names_tex(119) = {'AUX\_EXO\_LAG\_66\_22'};
M_.endo_names_long(119) = {'AUX_EXO_LAG_66_22'};
M_.endo_names(120) = {'AUX_EXO_LAG_66_23'};
M_.endo_names_tex(120) = {'AUX\_EXO\_LAG\_66\_23'};
M_.endo_names_long(120) = {'AUX_EXO_LAG_66_23'};
M_.endo_names(121) = {'AUX_EXO_LAG_66_24'};
M_.endo_names_tex(121) = {'AUX\_EXO\_LAG\_66\_24'};
M_.endo_names_long(121) = {'AUX_EXO_LAG_66_24'};
M_.endo_names(122) = {'AUX_EXO_LAG_66_25'};
M_.endo_names_tex(122) = {'AUX\_EXO\_LAG\_66\_25'};
M_.endo_names_long(122) = {'AUX_EXO_LAG_66_25'};
M_.endo_names(123) = {'AUX_EXO_LAG_66_26'};
M_.endo_names_tex(123) = {'AUX\_EXO\_LAG\_66\_26'};
M_.endo_names_long(123) = {'AUX_EXO_LAG_66_26'};
M_.endo_names(124) = {'AUX_EXO_LAG_66_27'};
M_.endo_names_tex(124) = {'AUX\_EXO\_LAG\_66\_27'};
M_.endo_names_long(124) = {'AUX_EXO_LAG_66_27'};
M_.endo_names(125) = {'AUX_EXO_LAG_66_28'};
M_.endo_names_tex(125) = {'AUX\_EXO\_LAG\_66\_28'};
M_.endo_names_long(125) = {'AUX_EXO_LAG_66_28'};
M_.endo_partitions = struct();
M_.param_names = cell(157,1);
M_.param_names_tex = cell(157,1);
M_.param_names_long = cell(157,1);
M_.param_names(1) = {'SHINNOVW'};
M_.param_names_tex(1) = {'SHINNOVW'};
M_.param_names_long(1) = {'SHINNOVW'};
M_.param_names(2) = {'YINNOVSH'};
M_.param_names_tex(2) = {'YINNOVSH'};
M_.param_names_long(2) = {'YINNOVSH'};
M_.param_names(3) = {'OMEGAR'};
M_.param_names_tex(3) = {'OMEGAR'};
M_.param_names_long(3) = {'OMEGAR'};
M_.param_names(4) = {'ZETAYSS'};
M_.param_names_tex(4) = {'ZETAYSS'};
M_.param_names_long(4) = {'ZETAYSS'};
M_.param_names(5) = {'ZETARSS'};
M_.param_names_tex(5) = {'ZETARSS'};
M_.param_names_long(5) = {'ZETARSS'};
M_.param_names(6) = {'REPLACSS'};
M_.param_names_tex(6) = {'REPLACSS'};
M_.param_names_long(6) = {'REPLACSS'};
M_.param_names(7) = {'RHOYW'};
M_.param_names_tex(7) = {'RHOYW'};
M_.param_names_long(7) = {'RHOYW'};
M_.param_names(8) = {'LAMY'};
M_.param_names_tex(8) = {'LAMY'};
M_.param_names_long(8) = {'LAMY'};
M_.param_names(9) = {'PSISS'};
M_.param_names_tex(9) = {'PSISS'};
M_.param_names_long(9) = {'PSISS'};
M_.param_names(10) = {'GSS'};
M_.param_names_tex(10) = {'GSS'};
M_.param_names_long(10) = {'GSS'};
M_.param_names(11) = {'PERS'};
M_.param_names_tex(11) = {'PERS'};
M_.param_names_long(11) = {'PERS'};
M_.param_names(12) = {'RATIODEL'};
M_.param_names_tex(12) = {'RATIODEL'};
M_.param_names_long(12) = {'RATIODEL'};
M_.param_names(13) = {'OMEGAYSS'};
M_.param_names_tex(13) = {'OMEGAYSS'};
M_.param_names_long(13) = {'OMEGAYSS'};
M_.param_names(14) = {'RHOU'};
M_.param_names_tex(14) = {'RHOU'};
M_.param_names_long(14) = {'RHOU'};
M_.param_names(15) = {'BBETA'};
M_.param_names_tex(15) = {'BBETA'};
M_.param_names_long(15) = {'BBETA'};
M_.param_names(16) = {'ALPHA'};
M_.param_names_tex(16) = {'ALPHA'};
M_.param_names_long(16) = {'ALPHA'};
M_.param_names(17) = {'GAMMAI'};
M_.param_names_tex(17) = {'GAMMAI'};
M_.param_names_long(17) = {'GAMMAI'};
M_.param_names(18) = {'VARNU'};
M_.param_names_tex(18) = {'VARNU'};
M_.param_names_long(18) = {'VARNU'};
M_.param_names(19) = {'BMEGA'};
M_.param_names_tex(19) = {'BMEGA'};
M_.param_names_long(19) = {'BMEGA'};
M_.param_names(20) = {'CHI'};
M_.param_names_tex(20) = {'CHI'};
M_.param_names_long(20) = {'CHI'};
M_.param_names(21) = {'RHO'};
M_.param_names_tex(21) = {'RHO'};
M_.param_names_long(21) = {'RHO'};
M_.param_names(22) = {'PHI'};
M_.param_names_tex(22) = {'PHI'};
M_.param_names_long(22) = {'PHI'};
M_.param_names(23) = {'ELASMU'};
M_.param_names_tex(23) = {'ELASMU'};
M_.param_names_long(23) = {'ELASMU'};
M_.param_names(24) = {'ELASLAM'};
M_.param_names_tex(24) = {'ELASLAM'};
M_.param_names_long(24) = {'ELASLAM'};
M_.param_names(25) = {'DELPRIMESS'};
M_.param_names_tex(25) = {'DELPRIMESS'};
M_.param_names_long(25) = {'DELPRIMESS'};
M_.param_names(26) = {'DELSS'};
M_.param_names_tex(26) = {'DELSS'};
M_.param_names_long(26) = {'DELSS'};
M_.param_names(27) = {'MUSS'};
M_.param_names_tex(27) = {'MUSS'};
M_.param_names_long(27) = {'MUSS'};
M_.param_names(28) = {'LAMSS'};
M_.param_names_tex(28) = {'LAMSS'};
M_.param_names_long(28) = {'LAMSS'};
M_.param_names(29) = {'USS'};
M_.param_names_tex(29) = {'USS'};
M_.param_names_long(29) = {'USS'};
M_.param_names(30) = {'VARPISS'};
M_.param_names_tex(30) = {'VARPISS'};
M_.param_names_long(30) = {'VARPISS'};
M_.param_names(31) = {'ZASS'};
M_.param_names_tex(31) = {'ZASS'};
M_.param_names_long(31) = {'ZASS'};
M_.param_names(32) = {'KSS'};
M_.param_names_tex(32) = {'KSS'};
M_.param_names_long(32) = {'KSS'};
M_.param_names(33) = {'NSS'};
M_.param_names_tex(33) = {'NSS'};
M_.param_names_long(33) = {'NSS'};
M_.param_names(34) = {'GAMMASS'};
M_.param_names_tex(34) = {'GAMMASS'};
M_.param_names_long(34) = {'GAMMASS'};
M_.param_names(35) = {'RHOE'};
M_.param_names_tex(35) = {'RHOE'};
M_.param_names_long(35) = {'RHOE'};
M_.param_names(36) = {'CHIE'};
M_.param_names_tex(36) = {'CHIE'};
M_.param_names_long(36) = {'CHIE'};
M_.param_names(37) = {'gn_1'};
M_.param_names_tex(37) = {'gn\_1'};
M_.param_names_long(37) = {'gn_1'};
M_.param_names(38) = {'gn_2'};
M_.param_names_tex(38) = {'gn\_2'};
M_.param_names_long(38) = {'gn_2'};
M_.param_names(39) = {'gn_3'};
M_.param_names_tex(39) = {'gn\_3'};
M_.param_names_long(39) = {'gn_3'};
M_.param_names(40) = {'gn_4'};
M_.param_names_tex(40) = {'gn\_4'};
M_.param_names_long(40) = {'gn_4'};
M_.param_names(41) = {'gn_5'};
M_.param_names_tex(41) = {'gn\_5'};
M_.param_names_long(41) = {'gn_5'};
M_.param_names(42) = {'gn_6'};
M_.param_names_tex(42) = {'gn\_6'};
M_.param_names_long(42) = {'gn_6'};
M_.param_names(43) = {'gn_7'};
M_.param_names_tex(43) = {'gn\_7'};
M_.param_names_long(43) = {'gn_7'};
M_.param_names(44) = {'gn_8'};
M_.param_names_tex(44) = {'gn\_8'};
M_.param_names_long(44) = {'gn_8'};
M_.param_names(45) = {'gn_9'};
M_.param_names_tex(45) = {'gn\_9'};
M_.param_names_long(45) = {'gn_9'};
M_.param_names(46) = {'gn_10'};
M_.param_names_tex(46) = {'gn\_10'};
M_.param_names_long(46) = {'gn_10'};
M_.param_names(47) = {'gn_11'};
M_.param_names_tex(47) = {'gn\_11'};
M_.param_names_long(47) = {'gn_11'};
M_.param_names(48) = {'gn_12'};
M_.param_names_tex(48) = {'gn\_12'};
M_.param_names_long(48) = {'gn_12'};
M_.param_names(49) = {'gn_13'};
M_.param_names_tex(49) = {'gn\_13'};
M_.param_names_long(49) = {'gn_13'};
M_.param_names(50) = {'gn_14'};
M_.param_names_tex(50) = {'gn\_14'};
M_.param_names_long(50) = {'gn_14'};
M_.param_names(51) = {'gn_15'};
M_.param_names_tex(51) = {'gn\_15'};
M_.param_names_long(51) = {'gn_15'};
M_.param_names(52) = {'gn_16'};
M_.param_names_tex(52) = {'gn\_16'};
M_.param_names_long(52) = {'gn_16'};
M_.param_names(53) = {'gn_17'};
M_.param_names_tex(53) = {'gn\_17'};
M_.param_names_long(53) = {'gn_17'};
M_.param_names(54) = {'gn_18'};
M_.param_names_tex(54) = {'gn\_18'};
M_.param_names_long(54) = {'gn_18'};
M_.param_names(55) = {'gn_19'};
M_.param_names_tex(55) = {'gn\_19'};
M_.param_names_long(55) = {'gn_19'};
M_.param_names(56) = {'gn_20'};
M_.param_names_tex(56) = {'gn\_20'};
M_.param_names_long(56) = {'gn_20'};
M_.param_names(57) = {'gn_21'};
M_.param_names_tex(57) = {'gn\_21'};
M_.param_names_long(57) = {'gn_21'};
M_.param_names(58) = {'gn_22'};
M_.param_names_tex(58) = {'gn\_22'};
M_.param_names_long(58) = {'gn_22'};
M_.param_names(59) = {'gn_23'};
M_.param_names_tex(59) = {'gn\_23'};
M_.param_names_long(59) = {'gn_23'};
M_.param_names(60) = {'gn_24'};
M_.param_names_tex(60) = {'gn\_24'};
M_.param_names_long(60) = {'gn_24'};
M_.param_names(61) = {'gn_25'};
M_.param_names_tex(61) = {'gn\_25'};
M_.param_names_long(61) = {'gn_25'};
M_.param_names(62) = {'gn_26'};
M_.param_names_tex(62) = {'gn\_26'};
M_.param_names_long(62) = {'gn_26'};
M_.param_names(63) = {'gn_27'};
M_.param_names_tex(63) = {'gn\_27'};
M_.param_names_long(63) = {'gn_27'};
M_.param_names(64) = {'gn_28'};
M_.param_names_tex(64) = {'gn\_28'};
M_.param_names_long(64) = {'gn_28'};
M_.param_names(65) = {'gn_29'};
M_.param_names_tex(65) = {'gn\_29'};
M_.param_names_long(65) = {'gn_29'};
M_.param_names(66) = {'gn_30'};
M_.param_names_tex(66) = {'gn\_30'};
M_.param_names_long(66) = {'gn_30'};
M_.param_names(67) = {'dws_1'};
M_.param_names_tex(67) = {'dws\_1'};
M_.param_names_long(67) = {'dws_1'};
M_.param_names(68) = {'dws_2'};
M_.param_names_tex(68) = {'dws\_2'};
M_.param_names_long(68) = {'dws_2'};
M_.param_names(69) = {'dws_3'};
M_.param_names_tex(69) = {'dws\_3'};
M_.param_names_long(69) = {'dws_3'};
M_.param_names(70) = {'dws_4'};
M_.param_names_tex(70) = {'dws\_4'};
M_.param_names_long(70) = {'dws_4'};
M_.param_names(71) = {'dws_5'};
M_.param_names_tex(71) = {'dws\_5'};
M_.param_names_long(71) = {'dws_5'};
M_.param_names(72) = {'dws_6'};
M_.param_names_tex(72) = {'dws\_6'};
M_.param_names_long(72) = {'dws_6'};
M_.param_names(73) = {'dws_7'};
M_.param_names_tex(73) = {'dws\_7'};
M_.param_names_long(73) = {'dws_7'};
M_.param_names(74) = {'dws_8'};
M_.param_names_tex(74) = {'dws\_8'};
M_.param_names_long(74) = {'dws_8'};
M_.param_names(75) = {'dws_9'};
M_.param_names_tex(75) = {'dws\_9'};
M_.param_names_long(75) = {'dws_9'};
M_.param_names(76) = {'dws_10'};
M_.param_names_tex(76) = {'dws\_10'};
M_.param_names_long(76) = {'dws_10'};
M_.param_names(77) = {'dws_11'};
M_.param_names_tex(77) = {'dws\_11'};
M_.param_names_long(77) = {'dws_11'};
M_.param_names(78) = {'dws_12'};
M_.param_names_tex(78) = {'dws\_12'};
M_.param_names_long(78) = {'dws_12'};
M_.param_names(79) = {'dws_13'};
M_.param_names_tex(79) = {'dws\_13'};
M_.param_names_long(79) = {'dws_13'};
M_.param_names(80) = {'dws_14'};
M_.param_names_tex(80) = {'dws\_14'};
M_.param_names_long(80) = {'dws_14'};
M_.param_names(81) = {'dws_15'};
M_.param_names_tex(81) = {'dws\_15'};
M_.param_names_long(81) = {'dws_15'};
M_.param_names(82) = {'dws_16'};
M_.param_names_tex(82) = {'dws\_16'};
M_.param_names_long(82) = {'dws_16'};
M_.param_names(83) = {'dws_17'};
M_.param_names_tex(83) = {'dws\_17'};
M_.param_names_long(83) = {'dws_17'};
M_.param_names(84) = {'dws_18'};
M_.param_names_tex(84) = {'dws\_18'};
M_.param_names_long(84) = {'dws_18'};
M_.param_names(85) = {'dws_19'};
M_.param_names_tex(85) = {'dws\_19'};
M_.param_names_long(85) = {'dws_19'};
M_.param_names(86) = {'dws_20'};
M_.param_names_tex(86) = {'dws\_20'};
M_.param_names_long(86) = {'dws_20'};
M_.param_names(87) = {'dws_21'};
M_.param_names_tex(87) = {'dws\_21'};
M_.param_names_long(87) = {'dws_21'};
M_.param_names(88) = {'dws_22'};
M_.param_names_tex(88) = {'dws\_22'};
M_.param_names_long(88) = {'dws_22'};
M_.param_names(89) = {'dws_23'};
M_.param_names_tex(89) = {'dws\_23'};
M_.param_names_long(89) = {'dws_23'};
M_.param_names(90) = {'dws_24'};
M_.param_names_tex(90) = {'dws\_24'};
M_.param_names_long(90) = {'dws_24'};
M_.param_names(91) = {'dws_25'};
M_.param_names_tex(91) = {'dws\_25'};
M_.param_names_long(91) = {'dws_25'};
M_.param_names(92) = {'dws_26'};
M_.param_names_tex(92) = {'dws\_26'};
M_.param_names_long(92) = {'dws_26'};
M_.param_names(93) = {'dws_27'};
M_.param_names_tex(93) = {'dws\_27'};
M_.param_names_long(93) = {'dws_27'};
M_.param_names(94) = {'dws_28'};
M_.param_names_tex(94) = {'dws\_28'};
M_.param_names_long(94) = {'dws_28'};
M_.param_names(95) = {'dws_29'};
M_.param_names_tex(95) = {'dws\_29'};
M_.param_names_long(95) = {'dws_29'};
M_.param_names(96) = {'dws_30'};
M_.param_names_tex(96) = {'dws\_30'};
M_.param_names_long(96) = {'dws_30'};
M_.param_names(97) = {'drs_1'};
M_.param_names_tex(97) = {'drs\_1'};
M_.param_names_long(97) = {'drs_1'};
M_.param_names(98) = {'drs_2'};
M_.param_names_tex(98) = {'drs\_2'};
M_.param_names_long(98) = {'drs_2'};
M_.param_names(99) = {'drs_3'};
M_.param_names_tex(99) = {'drs\_3'};
M_.param_names_long(99) = {'drs_3'};
M_.param_names(100) = {'drs_4'};
M_.param_names_tex(100) = {'drs\_4'};
M_.param_names_long(100) = {'drs_4'};
M_.param_names(101) = {'drs_5'};
M_.param_names_tex(101) = {'drs\_5'};
M_.param_names_long(101) = {'drs_5'};
M_.param_names(102) = {'drs_6'};
M_.param_names_tex(102) = {'drs\_6'};
M_.param_names_long(102) = {'drs_6'};
M_.param_names(103) = {'drs_7'};
M_.param_names_tex(103) = {'drs\_7'};
M_.param_names_long(103) = {'drs_7'};
M_.param_names(104) = {'drs_8'};
M_.param_names_tex(104) = {'drs\_8'};
M_.param_names_long(104) = {'drs_8'};
M_.param_names(105) = {'drs_9'};
M_.param_names_tex(105) = {'drs\_9'};
M_.param_names_long(105) = {'drs_9'};
M_.param_names(106) = {'drs_10'};
M_.param_names_tex(106) = {'drs\_10'};
M_.param_names_long(106) = {'drs_10'};
M_.param_names(107) = {'drs_11'};
M_.param_names_tex(107) = {'drs\_11'};
M_.param_names_long(107) = {'drs_11'};
M_.param_names(108) = {'drs_12'};
M_.param_names_tex(108) = {'drs\_12'};
M_.param_names_long(108) = {'drs_12'};
M_.param_names(109) = {'drs_13'};
M_.param_names_tex(109) = {'drs\_13'};
M_.param_names_long(109) = {'drs_13'};
M_.param_names(110) = {'drs_14'};
M_.param_names_tex(110) = {'drs\_14'};
M_.param_names_long(110) = {'drs_14'};
M_.param_names(111) = {'drs_15'};
M_.param_names_tex(111) = {'drs\_15'};
M_.param_names_long(111) = {'drs_15'};
M_.param_names(112) = {'drs_16'};
M_.param_names_tex(112) = {'drs\_16'};
M_.param_names_long(112) = {'drs_16'};
M_.param_names(113) = {'drs_17'};
M_.param_names_tex(113) = {'drs\_17'};
M_.param_names_long(113) = {'drs_17'};
M_.param_names(114) = {'drs_18'};
M_.param_names_tex(114) = {'drs\_18'};
M_.param_names_long(114) = {'drs_18'};
M_.param_names(115) = {'drs_19'};
M_.param_names_tex(115) = {'drs\_19'};
M_.param_names_long(115) = {'drs_19'};
M_.param_names(116) = {'drs_20'};
M_.param_names_tex(116) = {'drs\_20'};
M_.param_names_long(116) = {'drs_20'};
M_.param_names(117) = {'drs_21'};
M_.param_names_tex(117) = {'drs\_21'};
M_.param_names_long(117) = {'drs_21'};
M_.param_names(118) = {'drs_22'};
M_.param_names_tex(118) = {'drs\_22'};
M_.param_names_long(118) = {'drs_22'};
M_.param_names(119) = {'drs_23'};
M_.param_names_tex(119) = {'drs\_23'};
M_.param_names_long(119) = {'drs_23'};
M_.param_names(120) = {'drs_24'};
M_.param_names_tex(120) = {'drs\_24'};
M_.param_names_long(120) = {'drs_24'};
M_.param_names(121) = {'drs_25'};
M_.param_names_tex(121) = {'drs\_25'};
M_.param_names_long(121) = {'drs_25'};
M_.param_names(122) = {'drs_26'};
M_.param_names_tex(122) = {'drs\_26'};
M_.param_names_long(122) = {'drs_26'};
M_.param_names(123) = {'drs_27'};
M_.param_names_tex(123) = {'drs\_27'};
M_.param_names_long(123) = {'drs_27'};
M_.param_names(124) = {'drs_28'};
M_.param_names_tex(124) = {'drs\_28'};
M_.param_names_long(124) = {'drs_28'};
M_.param_names(125) = {'drs_29'};
M_.param_names_tex(125) = {'drs\_29'};
M_.param_names_long(125) = {'drs_29'};
M_.param_names(126) = {'drs_30'};
M_.param_names_tex(126) = {'drs\_30'};
M_.param_names_long(126) = {'drs_30'};
M_.param_names(127) = {'Rh_1'};
M_.param_names_tex(127) = {'Rh\_1'};
M_.param_names_long(127) = {'Rh_1'};
M_.param_names(128) = {'Rh_2'};
M_.param_names_tex(128) = {'Rh\_2'};
M_.param_names_long(128) = {'Rh_2'};
M_.param_names(129) = {'Rh_3'};
M_.param_names_tex(129) = {'Rh\_3'};
M_.param_names_long(129) = {'Rh_3'};
M_.param_names(130) = {'Rh_4'};
M_.param_names_tex(130) = {'Rh\_4'};
M_.param_names_long(130) = {'Rh_4'};
M_.param_names(131) = {'Rh_5'};
M_.param_names_tex(131) = {'Rh\_5'};
M_.param_names_long(131) = {'Rh_5'};
M_.param_names(132) = {'Rh_6'};
M_.param_names_tex(132) = {'Rh\_6'};
M_.param_names_long(132) = {'Rh_6'};
M_.param_names(133) = {'Rh_7'};
M_.param_names_tex(133) = {'Rh\_7'};
M_.param_names_long(133) = {'Rh_7'};
M_.param_names(134) = {'Rh_8'};
M_.param_names_tex(134) = {'Rh\_8'};
M_.param_names_long(134) = {'Rh_8'};
M_.param_names(135) = {'Rh_9'};
M_.param_names_tex(135) = {'Rh\_9'};
M_.param_names_long(135) = {'Rh_9'};
M_.param_names(136) = {'Rh_10'};
M_.param_names_tex(136) = {'Rh\_10'};
M_.param_names_long(136) = {'Rh_10'};
M_.param_names(137) = {'Rh_11'};
M_.param_names_tex(137) = {'Rh\_11'};
M_.param_names_long(137) = {'Rh_11'};
M_.param_names(138) = {'Rh_12'};
M_.param_names_tex(138) = {'Rh\_12'};
M_.param_names_long(138) = {'Rh_12'};
M_.param_names(139) = {'Rh_13'};
M_.param_names_tex(139) = {'Rh\_13'};
M_.param_names_long(139) = {'Rh_13'};
M_.param_names(140) = {'Rh_14'};
M_.param_names_tex(140) = {'Rh\_14'};
M_.param_names_long(140) = {'Rh_14'};
M_.param_names(141) = {'Rh_15'};
M_.param_names_tex(141) = {'Rh\_15'};
M_.param_names_long(141) = {'Rh_15'};
M_.param_names(142) = {'Rh_16'};
M_.param_names_tex(142) = {'Rh\_16'};
M_.param_names_long(142) = {'Rh_16'};
M_.param_names(143) = {'Rh_17'};
M_.param_names_tex(143) = {'Rh\_17'};
M_.param_names_long(143) = {'Rh_17'};
M_.param_names(144) = {'Rh_18'};
M_.param_names_tex(144) = {'Rh\_18'};
M_.param_names_long(144) = {'Rh_18'};
M_.param_names(145) = {'Rh_19'};
M_.param_names_tex(145) = {'Rh\_19'};
M_.param_names_long(145) = {'Rh_19'};
M_.param_names(146) = {'Rh_20'};
M_.param_names_tex(146) = {'Rh\_20'};
M_.param_names_long(146) = {'Rh_20'};
M_.param_names(147) = {'Rh_21'};
M_.param_names_tex(147) = {'Rh\_21'};
M_.param_names_long(147) = {'Rh_21'};
M_.param_names(148) = {'Rh_22'};
M_.param_names_tex(148) = {'Rh\_22'};
M_.param_names_long(148) = {'Rh_22'};
M_.param_names(149) = {'Rh_23'};
M_.param_names_tex(149) = {'Rh\_23'};
M_.param_names_long(149) = {'Rh_23'};
M_.param_names(150) = {'Rh_24'};
M_.param_names_tex(150) = {'Rh\_24'};
M_.param_names_long(150) = {'Rh_24'};
M_.param_names(151) = {'Rh_25'};
M_.param_names_tex(151) = {'Rh\_25'};
M_.param_names_long(151) = {'Rh_25'};
M_.param_names(152) = {'Rh_26'};
M_.param_names_tex(152) = {'Rh\_26'};
M_.param_names_long(152) = {'Rh_26'};
M_.param_names(153) = {'Rh_27'};
M_.param_names_tex(153) = {'Rh\_27'};
M_.param_names_long(153) = {'Rh_27'};
M_.param_names(154) = {'Rh_28'};
M_.param_names_tex(154) = {'Rh\_28'};
M_.param_names_long(154) = {'Rh_28'};
M_.param_names(155) = {'Rh_29'};
M_.param_names_tex(155) = {'Rh\_29'};
M_.param_names_long(155) = {'Rh_29'};
M_.param_names(156) = {'Rh_30'};
M_.param_names_tex(156) = {'Rh\_30'};
M_.param_names_long(156) = {'Rh_30'};
M_.param_names(157) = {'Rstar_SS'};
M_.param_names_tex(157) = {'Rstar\_SS'};
M_.param_names_long(157) = {'Rstar_SS'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 125;
M_.param_nbr = 157;
M_.orig_endo_nbr = 66;
M_.aux_vars(1).endo_index = 67;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 40;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'k(-1)';
M_.aux_vars(2).endo_index = 68;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 49;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'za(-1)';
M_.aux_vars(3).endo_index = 69;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 62;
M_.aux_vars(3).orig_lead_lag = -1;
M_.aux_vars(3).orig_expr = 'shockn(-1)';
M_.aux_vars(4).endo_index = 70;
M_.aux_vars(4).type = 1;
M_.aux_vars(4).orig_index = 62;
M_.aux_vars(4).orig_lead_lag = -2;
M_.aux_vars(4).orig_expr = 'AUX_ENDO_LAG_61_1(-1)';
M_.aux_vars(5).endo_index = 71;
M_.aux_vars(5).type = 1;
M_.aux_vars(5).orig_index = 62;
M_.aux_vars(5).orig_lead_lag = -3;
M_.aux_vars(5).orig_expr = 'AUX_ENDO_LAG_61_2(-1)';
M_.aux_vars(6).endo_index = 72;
M_.aux_vars(6).type = 1;
M_.aux_vars(6).orig_index = 62;
M_.aux_vars(6).orig_lead_lag = -4;
M_.aux_vars(6).orig_expr = 'AUX_ENDO_LAG_61_3(-1)';
M_.aux_vars(7).endo_index = 73;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 62;
M_.aux_vars(7).orig_lead_lag = -5;
M_.aux_vars(7).orig_expr = 'AUX_ENDO_LAG_61_4(-1)';
M_.aux_vars(8).endo_index = 74;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 62;
M_.aux_vars(8).orig_lead_lag = -6;
M_.aux_vars(8).orig_expr = 'AUX_ENDO_LAG_61_5(-1)';
M_.aux_vars(9).endo_index = 75;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 62;
M_.aux_vars(9).orig_lead_lag = -7;
M_.aux_vars(9).orig_expr = 'AUX_ENDO_LAG_61_6(-1)';
M_.aux_vars(10).endo_index = 76;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 62;
M_.aux_vars(10).orig_lead_lag = -8;
M_.aux_vars(10).orig_expr = 'AUX_ENDO_LAG_61_7(-1)';
M_.aux_vars(11).endo_index = 77;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 62;
M_.aux_vars(11).orig_lead_lag = -9;
M_.aux_vars(11).orig_expr = 'AUX_ENDO_LAG_61_8(-1)';
M_.aux_vars(12).endo_index = 78;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 62;
M_.aux_vars(12).orig_lead_lag = -10;
M_.aux_vars(12).orig_expr = 'AUX_ENDO_LAG_61_9(-1)';
M_.aux_vars(13).endo_index = 79;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 62;
M_.aux_vars(13).orig_lead_lag = -11;
M_.aux_vars(13).orig_expr = 'AUX_ENDO_LAG_61_10(-1)';
M_.aux_vars(14).endo_index = 80;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 62;
M_.aux_vars(14).orig_lead_lag = -12;
M_.aux_vars(14).orig_expr = 'AUX_ENDO_LAG_61_11(-1)';
M_.aux_vars(15).endo_index = 81;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 62;
M_.aux_vars(15).orig_lead_lag = -13;
M_.aux_vars(15).orig_expr = 'AUX_ENDO_LAG_61_12(-1)';
M_.aux_vars(16).endo_index = 82;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 62;
M_.aux_vars(16).orig_lead_lag = -14;
M_.aux_vars(16).orig_expr = 'AUX_ENDO_LAG_61_13(-1)';
M_.aux_vars(17).endo_index = 83;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 62;
M_.aux_vars(17).orig_lead_lag = -15;
M_.aux_vars(17).orig_expr = 'AUX_ENDO_LAG_61_14(-1)';
M_.aux_vars(18).endo_index = 84;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 62;
M_.aux_vars(18).orig_lead_lag = -16;
M_.aux_vars(18).orig_expr = 'AUX_ENDO_LAG_61_15(-1)';
M_.aux_vars(19).endo_index = 85;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 62;
M_.aux_vars(19).orig_lead_lag = -17;
M_.aux_vars(19).orig_expr = 'AUX_ENDO_LAG_61_16(-1)';
M_.aux_vars(20).endo_index = 86;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 62;
M_.aux_vars(20).orig_lead_lag = -18;
M_.aux_vars(20).orig_expr = 'AUX_ENDO_LAG_61_17(-1)';
M_.aux_vars(21).endo_index = 87;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 62;
M_.aux_vars(21).orig_lead_lag = -19;
M_.aux_vars(21).orig_expr = 'AUX_ENDO_LAG_61_18(-1)';
M_.aux_vars(22).endo_index = 88;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 62;
M_.aux_vars(22).orig_lead_lag = -20;
M_.aux_vars(22).orig_expr = 'AUX_ENDO_LAG_61_19(-1)';
M_.aux_vars(23).endo_index = 89;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 62;
M_.aux_vars(23).orig_lead_lag = -21;
M_.aux_vars(23).orig_expr = 'AUX_ENDO_LAG_61_20(-1)';
M_.aux_vars(24).endo_index = 90;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 62;
M_.aux_vars(24).orig_lead_lag = -22;
M_.aux_vars(24).orig_expr = 'AUX_ENDO_LAG_61_21(-1)';
M_.aux_vars(25).endo_index = 91;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 62;
M_.aux_vars(25).orig_lead_lag = -23;
M_.aux_vars(25).orig_expr = 'AUX_ENDO_LAG_61_22(-1)';
M_.aux_vars(26).endo_index = 92;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 62;
M_.aux_vars(26).orig_lead_lag = -24;
M_.aux_vars(26).orig_expr = 'AUX_ENDO_LAG_61_23(-1)';
M_.aux_vars(27).endo_index = 93;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 62;
M_.aux_vars(27).orig_lead_lag = -25;
M_.aux_vars(27).orig_expr = 'AUX_ENDO_LAG_61_24(-1)';
M_.aux_vars(28).endo_index = 94;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 62;
M_.aux_vars(28).orig_lead_lag = -26;
M_.aux_vars(28).orig_expr = 'AUX_ENDO_LAG_61_25(-1)';
M_.aux_vars(29).endo_index = 95;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 62;
M_.aux_vars(29).orig_lead_lag = -27;
M_.aux_vars(29).orig_expr = 'AUX_ENDO_LAG_61_26(-1)';
M_.aux_vars(30).endo_index = 96;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 62;
M_.aux_vars(30).orig_lead_lag = -28;
M_.aux_vars(30).orig_expr = 'AUX_ENDO_LAG_61_27(-1)';
M_.aux_vars(31).endo_index = 97;
M_.aux_vars(31).type = 3;
M_.aux_vars(31).orig_index = 1;
M_.aux_vars(31).orig_lead_lag = 0;
M_.aux_vars(31).orig_expr = 'delall';
M_.aux_vars(32).endo_index = 98;
M_.aux_vars(32).type = 3;
M_.aux_vars(32).orig_index = 1;
M_.aux_vars(32).orig_lead_lag = -1;
M_.aux_vars(32).orig_expr = 'AUX_EXO_LAG_66_0(-1)';
M_.aux_vars(33).endo_index = 99;
M_.aux_vars(33).type = 3;
M_.aux_vars(33).orig_index = 1;
M_.aux_vars(33).orig_lead_lag = -2;
M_.aux_vars(33).orig_expr = 'AUX_EXO_LAG_66_1(-1)';
M_.aux_vars(34).endo_index = 100;
M_.aux_vars(34).type = 3;
M_.aux_vars(34).orig_index = 1;
M_.aux_vars(34).orig_lead_lag = -3;
M_.aux_vars(34).orig_expr = 'AUX_EXO_LAG_66_2(-1)';
M_.aux_vars(35).endo_index = 101;
M_.aux_vars(35).type = 3;
M_.aux_vars(35).orig_index = 1;
M_.aux_vars(35).orig_lead_lag = -4;
M_.aux_vars(35).orig_expr = 'AUX_EXO_LAG_66_3(-1)';
M_.aux_vars(36).endo_index = 102;
M_.aux_vars(36).type = 3;
M_.aux_vars(36).orig_index = 1;
M_.aux_vars(36).orig_lead_lag = -5;
M_.aux_vars(36).orig_expr = 'AUX_EXO_LAG_66_4(-1)';
M_.aux_vars(37).endo_index = 103;
M_.aux_vars(37).type = 3;
M_.aux_vars(37).orig_index = 1;
M_.aux_vars(37).orig_lead_lag = -6;
M_.aux_vars(37).orig_expr = 'AUX_EXO_LAG_66_5(-1)';
M_.aux_vars(38).endo_index = 104;
M_.aux_vars(38).type = 3;
M_.aux_vars(38).orig_index = 1;
M_.aux_vars(38).orig_lead_lag = -7;
M_.aux_vars(38).orig_expr = 'AUX_EXO_LAG_66_6(-1)';
M_.aux_vars(39).endo_index = 105;
M_.aux_vars(39).type = 3;
M_.aux_vars(39).orig_index = 1;
M_.aux_vars(39).orig_lead_lag = -8;
M_.aux_vars(39).orig_expr = 'AUX_EXO_LAG_66_7(-1)';
M_.aux_vars(40).endo_index = 106;
M_.aux_vars(40).type = 3;
M_.aux_vars(40).orig_index = 1;
M_.aux_vars(40).orig_lead_lag = -9;
M_.aux_vars(40).orig_expr = 'AUX_EXO_LAG_66_8(-1)';
M_.aux_vars(41).endo_index = 107;
M_.aux_vars(41).type = 3;
M_.aux_vars(41).orig_index = 1;
M_.aux_vars(41).orig_lead_lag = -10;
M_.aux_vars(41).orig_expr = 'AUX_EXO_LAG_66_9(-1)';
M_.aux_vars(42).endo_index = 108;
M_.aux_vars(42).type = 3;
M_.aux_vars(42).orig_index = 1;
M_.aux_vars(42).orig_lead_lag = -11;
M_.aux_vars(42).orig_expr = 'AUX_EXO_LAG_66_10(-1)';
M_.aux_vars(43).endo_index = 109;
M_.aux_vars(43).type = 3;
M_.aux_vars(43).orig_index = 1;
M_.aux_vars(43).orig_lead_lag = -12;
M_.aux_vars(43).orig_expr = 'AUX_EXO_LAG_66_11(-1)';
M_.aux_vars(44).endo_index = 110;
M_.aux_vars(44).type = 3;
M_.aux_vars(44).orig_index = 1;
M_.aux_vars(44).orig_lead_lag = -13;
M_.aux_vars(44).orig_expr = 'AUX_EXO_LAG_66_12(-1)';
M_.aux_vars(45).endo_index = 111;
M_.aux_vars(45).type = 3;
M_.aux_vars(45).orig_index = 1;
M_.aux_vars(45).orig_lead_lag = -14;
M_.aux_vars(45).orig_expr = 'AUX_EXO_LAG_66_13(-1)';
M_.aux_vars(46).endo_index = 112;
M_.aux_vars(46).type = 3;
M_.aux_vars(46).orig_index = 1;
M_.aux_vars(46).orig_lead_lag = -15;
M_.aux_vars(46).orig_expr = 'AUX_EXO_LAG_66_14(-1)';
M_.aux_vars(47).endo_index = 113;
M_.aux_vars(47).type = 3;
M_.aux_vars(47).orig_index = 1;
M_.aux_vars(47).orig_lead_lag = -16;
M_.aux_vars(47).orig_expr = 'AUX_EXO_LAG_66_15(-1)';
M_.aux_vars(48).endo_index = 114;
M_.aux_vars(48).type = 3;
M_.aux_vars(48).orig_index = 1;
M_.aux_vars(48).orig_lead_lag = -17;
M_.aux_vars(48).orig_expr = 'AUX_EXO_LAG_66_16(-1)';
M_.aux_vars(49).endo_index = 115;
M_.aux_vars(49).type = 3;
M_.aux_vars(49).orig_index = 1;
M_.aux_vars(49).orig_lead_lag = -18;
M_.aux_vars(49).orig_expr = 'AUX_EXO_LAG_66_17(-1)';
M_.aux_vars(50).endo_index = 116;
M_.aux_vars(50).type = 3;
M_.aux_vars(50).orig_index = 1;
M_.aux_vars(50).orig_lead_lag = -19;
M_.aux_vars(50).orig_expr = 'AUX_EXO_LAG_66_18(-1)';
M_.aux_vars(51).endo_index = 117;
M_.aux_vars(51).type = 3;
M_.aux_vars(51).orig_index = 1;
M_.aux_vars(51).orig_lead_lag = -20;
M_.aux_vars(51).orig_expr = 'AUX_EXO_LAG_66_19(-1)';
M_.aux_vars(52).endo_index = 118;
M_.aux_vars(52).type = 3;
M_.aux_vars(52).orig_index = 1;
M_.aux_vars(52).orig_lead_lag = -21;
M_.aux_vars(52).orig_expr = 'AUX_EXO_LAG_66_20(-1)';
M_.aux_vars(53).endo_index = 119;
M_.aux_vars(53).type = 3;
M_.aux_vars(53).orig_index = 1;
M_.aux_vars(53).orig_lead_lag = -22;
M_.aux_vars(53).orig_expr = 'AUX_EXO_LAG_66_21(-1)';
M_.aux_vars(54).endo_index = 120;
M_.aux_vars(54).type = 3;
M_.aux_vars(54).orig_index = 1;
M_.aux_vars(54).orig_lead_lag = -23;
M_.aux_vars(54).orig_expr = 'AUX_EXO_LAG_66_22(-1)';
M_.aux_vars(55).endo_index = 121;
M_.aux_vars(55).type = 3;
M_.aux_vars(55).orig_index = 1;
M_.aux_vars(55).orig_lead_lag = -24;
M_.aux_vars(55).orig_expr = 'AUX_EXO_LAG_66_23(-1)';
M_.aux_vars(56).endo_index = 122;
M_.aux_vars(56).type = 3;
M_.aux_vars(56).orig_index = 1;
M_.aux_vars(56).orig_lead_lag = -25;
M_.aux_vars(56).orig_expr = 'AUX_EXO_LAG_66_24(-1)';
M_.aux_vars(57).endo_index = 123;
M_.aux_vars(57).type = 3;
M_.aux_vars(57).orig_index = 1;
M_.aux_vars(57).orig_lead_lag = -26;
M_.aux_vars(57).orig_expr = 'AUX_EXO_LAG_66_25(-1)';
M_.aux_vars(58).endo_index = 124;
M_.aux_vars(58).type = 3;
M_.aux_vars(58).orig_index = 1;
M_.aux_vars(58).orig_lead_lag = -27;
M_.aux_vars(58).orig_expr = 'AUX_EXO_LAG_66_26(-1)';
M_.aux_vars(59).endo_index = 125;
M_.aux_vars(59).type = 3;
M_.aux_vars(59).orig_index = 1;
M_.aux_vars(59).orig_lead_lag = -28;
M_.aux_vars(59).orig_expr = 'AUX_EXO_LAG_66_27(-1)';
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 66;
M_.eq_nbr = 125;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 29;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 29;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 29;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 29;
M_.lead_lag_incidence = [
 1 86 0;
 2 87 211;
 3 88 212;
 0 89 213;
 0 90 214;
 4 91 0;
 5 92 0;
 6 93 0;
 7 94 0;
 0 95 0;
 0 96 0;
 0 97 0;
 0 98 0;
 0 99 0;
 0 100 0;
 0 101 0;
 8 102 0;
 9 103 0;
 0 104 0;
 0 105 215;
 0 106 216;
 0 107 217;
 0 108 218;
 0 109 219;
 0 110 220;
 10 111 0;
 11 112 0;
 12 113 0;
 13 114 221;
 14 115 0;
 0 116 0;
 0 117 0;
 0 118 0;
 0 119 0;
 15 120 0;
 16 121 0;
 0 122 0;
 0 123 0;
 17 124 0;
 18 125 0;
 19 126 0;
 0 127 0;
 0 128 0;
 0 129 0;
 0 130 222;
 0 131 223;
 0 132 0;
 20 133 0;
 21 134 0;
 0 135 0;
 0 136 0;
 22 137 0;
 0 138 0;
 23 139 0;
 0 140 0;
 0 141 0;
 0 142 0;
 0 143 0;
 0 144 0;
 24 145 0;
 25 146 0;
 26 147 0;
 0 148 0;
 0 149 224;
 0 150 0;
 0 151 0;
 27 152 0;
 28 153 0;
 29 154 0;
 30 155 0;
 31 156 0;
 32 157 0;
 33 158 0;
 34 159 0;
 35 160 0;
 36 161 0;
 37 162 0;
 38 163 0;
 39 164 0;
 40 165 0;
 41 166 0;
 42 167 0;
 43 168 0;
 44 169 0;
 45 170 0;
 46 171 0;
 47 172 0;
 48 173 0;
 49 174 0;
 50 175 0;
 51 176 0;
 52 177 0;
 53 178 0;
 54 179 0;
 55 180 0;
 56 181 0;
 57 182 0;
 58 183 0;
 59 184 0;
 60 185 0;
 61 186 0;
 62 187 0;
 63 188 0;
 64 189 0;
 65 190 0;
 66 191 0;
 67 192 0;
 68 193 0;
 69 194 0;
 70 195 0;
 71 196 0;
 72 197 0;
 73 198 0;
 74 199 0;
 75 200 0;
 76 201 0;
 77 202 0;
 78 203 0;
 79 204 0;
 80 205 0;
 81 206 0;
 82 207 0;
 83 208 0;
 84 209 0;
 85 210 0;]';
M_.nstatic = 29;
M_.nfwrd   = 11;
M_.npred   = 82;
M_.nboth   = 3;
M_.nsfwrd   = 14;
M_.nspred   = 85;
M_.ndynamic   = 96;
M_.dynamic_tmp_nbr = [37; 15; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'hw' ;
  2 , 'name' , 'Tw' ;
  3 , 'name' , 'Dr' ;
  4 , 'name' , 'Dw' ;
  5 , 'name' , 'cw' ;
  6 , 'name' , 'cr' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'zz' ;
  10 , 'name' , 'cwper' ;
  11 , 'name' , 'crper' ;
  12 , 'name' , 'gw' ;
  13 , 'name' , 'n' ;
  14 , 'name' , '14' ;
  15 , 'name' , 'gn' ;
  16 , 'name' , 'gE' ;
  17 , 'name' , 'tauw' ;
  18 , 'name' , '18' ;
  19 , 'name' , 'fert' ;
  20 , 'name' , '20' ;
  21 , 'name' , '21' ;
  22 , 'name' , '22' ;
  23 , 'name' , 'g' ;
  24 , 'name' , '24' ;
  25 , 'name' , '25' ;
  26 , 'name' , 'mu' ;
  27 , 'name' , 'del' ;
  28 , 'name' , 'delprime' ;
  29 , 'name' , '29' ;
  30 , 'name' , 'stoyw' ;
  31 , 'name' , 'gA' ;
  32 , 'name' , 's' ;
  33 , 'name' , 'v' ;
  34 , 'name' , 'varpi' ;
  35 , 'name' , 'j' ;
  36 , 'name' , 'lam' ;
  37 , 'name' , 'PiA' ;
  38 , 'name' , 'PiRD' ;
  39 , 'name' , 'psi' ;
  40 , 'name' , 'r' ;
  41 , 'name' , 'dr' ;
  42 , 'name' , 'dw' ;
  43 , 'name' , 'b' ;
  44 , 'name' , 'PiF' ;
  45 , 'name' , 'k' ;
  46 , 'name' , 'y' ;
  47 , 'name' , '47' ;
  48 , 'name' , 'c' ;
  49 , 'name' , 'fa' ;
  50 , 'name' , 'far' ;
  51 , 'name' , '51' ;
  52 , 'name' , '52' ;
  53 , 'name' , 'rstar' ;
  54 , 'name' , 'gpc' ;
  55 , 'name' , 'gy' ;
  56 , 'name' , '56' ;
  57 , 'name' , 'shareW' ;
  58 , 'name' , 'shareR' ;
  59 , 'name' , '59' ;
  60 , 'name' , '60' ;
  61 , 'name' , 'en' ;
  62 , 'name' , 'er' ;
  63 , 'name' , 'ey' ;
  64 , 'name' , 'shocky' ;
  65 , 'name' , 'shockr' ;
  66 , 'name' , 'shockn' ;
};
M_.mapping.ca.eqidx = [44 47 49 ];
M_.mapping.rstar.eqidx = [44 52 53 ];
M_.mapping.r.eqidx = [1 2 3 4 5 6 7 8 32 33 34 35 37 38 40 44 50 52 ];
M_.mapping.rk.eqidx = [21 40 44 ];
M_.mapping.w.eqidx = [1 17 18 20 50 ];
M_.mapping.b.eqidx = [43 44 49 ];
M_.mapping.y.eqidx = [46 47 54 55 ];
M_.mapping.varpi.eqidx = [34 35 36 37 43 47 ];
M_.mapping.s.eqidx = [29 32 38 43 47 ];
M_.mapping.inv.eqidx = [45 47 ];
M_.mapping.c.eqidx = [47 48 ];
M_.mapping.cw.eqidx = [5 10 48 50 ];
M_.mapping.cwper.eqidx = [10 ];
M_.mapping.cr.eqidx = [6 11 48 50 ];
M_.mapping.crper.eqidx = [11 ];
M_.mapping.tauw.eqidx = [2 17 47 50 ];
M_.mapping.N.eqidx = [24 25 26 46 ];
M_.mapping.stoyw.eqidx = [29 30 ];
M_.mapping.PiF.eqidx = [41 42 44 ];
M_.mapping.Tw.eqidx = [2 5 ];
M_.mapping.hw.eqidx = [1 5 ];
M_.mapping.Dr.eqidx = [3 4 6 ];
M_.mapping.Dw.eqidx = [4 5 ];
M_.mapping.ep.eqidx = [4 6 7 9 ];
M_.mapping.varsig.eqidx = [5 6 7 8 18 ];
M_.mapping.zetar.eqidx = [3 4 10 11 14 15 30 57 58 59 60 ];
M_.mapping.zetay.eqidx = [10 11 12 13 15 16 18 30 57 58 59 60 ];
M_.mapping.gw.eqidx = [1 2 3 4 12 13 14 15 16 18 24 ];
M_.mapping.g.eqidx = [1 2 3 4 5 6 18 21 22 23 24 32 33 34 35 37 38 44 45 50 54 55 ];
M_.mapping.gE.eqidx = [16 18 24 ];
M_.mapping.iy.eqidx = [16 17 18 ];
M_.mapping.gpc.eqidx = [54 ];
M_.mapping.gy.eqidx = [55 ];
M_.mapping.zz.eqidx = [1 2 4 8 9 ];
M_.mapping.far.eqidx = [6 41 50 51 ];
M_.mapping.faw.eqidx = [5 42 50 51 ];
M_.mapping.dr.eqidx = [3 41 50 ];
M_.mapping.dw.eqidx = [4 42 50 ];
M_.mapping.mu.eqidx = [20 21 22 23 24 25 26 33 37 46 ];
M_.mapping.k.eqidx = [21 22 24 44 45 49 ];
M_.mapping.u.eqidx = [22 24 27 28 ];
M_.mapping.del.eqidx = [21 27 45 ];
M_.mapping.delprime.eqidx = [22 27 28 ];
M_.mapping.gM.eqidx = [23 24 ];
M_.mapping.v.eqidx = [25 33 34 35 39 ];
M_.mapping.j.eqidx = [32 34 35 37 38 ];
M_.mapping.lam.eqidx = [31 34 35 36 ];
M_.mapping.gA.eqidx = [23 29 31 32 33 34 35 37 38 ];
M_.mapping.za.eqidx = [29 31 32 34 35 36 37 38 43 47 ];
M_.mapping.PiA.eqidx = [37 42 44 ];
M_.mapping.PiRD.eqidx = [38 42 44 ];
M_.mapping.fa.eqidx = [41 42 44 49 51 ];
M_.mapping.n.eqidx = [13 15 18 19 ];
M_.mapping.gn.eqidx = [15 30 54 56 ];
M_.mapping.gamma.eqidx = [3 7 14 ];
M_.mapping.er.eqidx = [60 62 ];
M_.mapping.ey.eqidx = [59 63 ];
M_.mapping.en.eqidx = [56 61 ];
M_.mapping.psi.eqidx = [29 36 39 46 ];
M_.mapping.shockr.eqidx = [62 65 ];
M_.mapping.shocky.eqidx = [63 64 ];
M_.mapping.shockn.eqidx = [61 66 ];
M_.mapping.fert.eqidx = [19 ];
M_.mapping.omegay.eqidx = [12 16 18 19 30 ];
M_.mapping.shareW.eqidx = [57 ];
M_.mapping.shareR.eqidx = [58 ];
M_.mapping.delall.eqidx = [53 64 65 66 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 6 7 8 9 17 18 26 27 28 29 30 35 36 39 40 41 48 49 52 54 60 61 62 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(125, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(157, 1);
M_.endo_trends = struct('deflator', cell(125, 1), 'log_deflator', cell(125, 1), 'growth_factor', cell(125, 1), 'log_growth_factor', cell(125, 1));
M_.NNZDerivatives = [563; -1; -1; ];
M_.static_tmp_nbr = [28; 17; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinalPred_Canada2019SOE;
load vecSSFinalPred_Canada2019SOE;
load endpoint;
load pred_param_Canada2019;
load RstarShocks;
set_param_value('Rstar_SS',Rstar_SS)
set_param_value('BBETA',bbeta)
set_param_value('DELPRIMESS',delprime)
set_param_value('RATIODEL',ratiodel)
set_param_value('ALPHA',alpha)
set_param_value('PHI',phi)
set_param_value('RHO',rho)
set_param_value('RHOU',rhoU)
set_param_value('CHI',chi)
set_param_value('CHIE',chiE)
set_param_value('RHOE',rhoE)
set_param_value('RHOYW',rhoyw)
set_param_value('BMEGA',Bmega)
set_param_value('VARNU',varnu)
set_param_value('OMEGAYSS',omegay)
set_param_value('GAMMAI',gammaI)
set_param_value('LAMY',lamy)
set_param_value('YINNOVSH',yinnovsh)
set_param_value('ELASMU',elasmu)
set_param_value('ELASLAM',el_SS)
set_param_value('DELSS',delta)
set_param_value('MUSS',mu_SS)
set_param_value('LAMSS',lambda_SS)
set_param_value('USS',U_SS)
set_param_value('VARPISS',varpi_SS)
set_param_value('ZASS',za_SS)
set_param_value('KSS',k_SS)
set_param_value('GSS',g_SS)
set_param_value('GAMMASS',gamma_SS)
set_param_value('NSS',n_SS)
set_param_value('REPLACSS',replac_SS)
set_param_value('PSISS',psi_SS)
set_param_value('PERS',rho)
set_param_value('ZETAYSS',zetay_SS)
set_param_value('ZETARSS',zetar_SS)
set_param_value('OMEGAR',omegarr)
set_param_value('SHINNOVW',shinnovw)
set_param_value('gn_1',gn_1)
set_param_value('gn_2',gn_2)
set_param_value('gn_3',gn_3)
set_param_value('gn_4',gn_4)
set_param_value('gn_5',gn_5)
set_param_value('gn_6',gn_6)
set_param_value('gn_7',gn_7)
set_param_value('gn_8',gn_8)
set_param_value('gn_9',gn_9)
set_param_value('gn_10',gn_10)
set_param_value('gn_11',gn_11)
set_param_value('gn_12',gn_12)
set_param_value('gn_13',gn_13)
set_param_value('gn_14',gn_14)
set_param_value('gn_15',gn_15)
set_param_value('gn_16',gn_16)
set_param_value('gn_17',gn_17)
set_param_value('gn_18',gn_18)
set_param_value('gn_19',gn_19)
set_param_value('gn_20',gn_20)
set_param_value('gn_21',gn_21)
set_param_value('gn_22',gn_22)
set_param_value('gn_23',gn_23)
set_param_value('gn_24',gn_24)
set_param_value('gn_25',gn_25)
set_param_value('gn_26',gn_26)
set_param_value('gn_27',gn_27)
set_param_value('gn_28',gn_28)
set_param_value('gn_29',gn_29)
set_param_value('gn_30',gn_30)
set_param_value('dws_1',dws_1)
set_param_value('dws_2',dws_2)
set_param_value('dws_3',dws_3)
set_param_value('dws_4',dws_4)
set_param_value('dws_5',dws_5)
set_param_value('dws_6',dws_6)
set_param_value('dws_7',dws_7)
set_param_value('dws_8',dws_8)
set_param_value('dws_9',dws_9)
set_param_value('dws_10',dws_10)
set_param_value('dws_11',dws_11)
set_param_value('dws_12',dws_12)
set_param_value('dws_13',dws_13)
set_param_value('dws_14',dws_14)
set_param_value('dws_15',dws_15)
set_param_value('dws_16',dws_16)
set_param_value('dws_17',dws_17)
set_param_value('dws_18',dws_18)
set_param_value('dws_19',dws_19)
set_param_value('dws_20',dws_20)
set_param_value('dws_21',dws_21)
set_param_value('dws_22',dws_22)
set_param_value('dws_23',dws_23)
set_param_value('dws_24',dws_24)
set_param_value('dws_25',dws_25)
set_param_value('dws_26',dws_26)
set_param_value('dws_27',dws_27)
set_param_value('dws_28',dws_28)
set_param_value('dws_29',dws_29)
set_param_value('dws_30',dws_30)
set_param_value('drs_1',drs_1)
set_param_value('drs_2',drs_2)
set_param_value('drs_3',drs_3)
set_param_value('drs_4',drs_4)
set_param_value('drs_5',drs_5)
set_param_value('drs_6',drs_6)
set_param_value('drs_7',drs_7)
set_param_value('drs_8',drs_8)
set_param_value('drs_9',drs_9)
set_param_value('drs_10',drs_10)
set_param_value('drs_11',drs_11)
set_param_value('drs_12',drs_12)
set_param_value('drs_13',drs_13)
set_param_value('drs_14',drs_14)
set_param_value('drs_15',drs_15)
set_param_value('drs_16',drs_16)
set_param_value('drs_17',drs_17)
set_param_value('drs_18',drs_18)
set_param_value('drs_19',drs_19)
set_param_value('drs_20',drs_20)
set_param_value('drs_21',drs_21)
set_param_value('drs_22',drs_22)
set_param_value('drs_23',drs_23)
set_param_value('drs_24',drs_24)
set_param_value('drs_25',drs_25)
set_param_value('drs_26',drs_26)
set_param_value('drs_27',drs_27)
set_param_value('drs_28',drs_28)
set_param_value('drs_29',drs_29)
set_param_value('drs_30',drs_30)
set_param_value('Rh_1',Rh_1)
set_param_value('Rh_2',Rh_2)
set_param_value('Rh_3',Rh_3)
set_param_value('Rh_4',Rh_4)
set_param_value('Rh_5',Rh_5)
set_param_value('Rh_6',Rh_6)
set_param_value('Rh_7',Rh_7)
set_param_value('Rh_8',Rh_8)
set_param_value('Rh_9',Rh_9)
set_param_value('Rh_10',Rh_10)
set_param_value('Rh_11',Rh_11)
set_param_value('Rh_12',Rh_12)
set_param_value('Rh_13',Rh_13)
set_param_value('Rh_14',Rh_14)
set_param_value('Rh_15',Rh_15)
set_param_value('Rh_16',Rh_16)
set_param_value('Rh_17',Rh_17)
set_param_value('Rh_18',Rh_18)
set_param_value('Rh_19',Rh_19)
set_param_value('Rh_20',Rh_20)
set_param_value('Rh_21',Rh_21)
set_param_value('Rh_22',Rh_22)
set_param_value('Rh_23',Rh_23)
set_param_value('Rh_24',Rh_24)
set_param_value('Rh_25',Rh_25)
set_param_value('Rh_26',Rh_26)
set_param_value('Rh_27',Rh_27)
set_param_value('Rh_28',Rh_28)
set_param_value('Rh_29',Rh_29)
set_param_value('Rh_30',Rh_30)
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(2) = M_.params(157);
oo_.steady_state(1) = 0;
oo_.steady_state(64) = M_.params(13);
oo_.steady_state(20) = Tw_SS;
oo_.steady_state(16) = tauw_SS;
oo_.steady_state(21) = hw_SS;
oo_.steady_state(22) = Dr_SS;
oo_.steady_state(23) = Dw_SS;
oo_.steady_state(12) = cw_SS;
oo_.steady_state(14) = cr_SS;
oo_.steady_state(24) = Ep_SS;
oo_.steady_state(25) = varsig_SS;
oo_.steady_state(26) = zetar_SS;
oo_.steady_state(27) = zetay_SS;
oo_.steady_state(65) = shareW_SS;
oo_.steady_state(66) = shareR_SS;
oo_.steady_state(29) = g_SS;
oo_.steady_state(28) = gw_SS;
oo_.steady_state(34) = Z_SS;
oo_.steady_state(35) = far_SS;
oo_.steady_state(36) = faw_SS;
oo_.steady_state(37) = dr_SS;
oo_.steady_state(38) = dw_SS;
oo_.steady_state(5) = w_SS;
oo_.steady_state(39) = mu_SS;
oo_.steady_state(40) = k_SS;
oo_.steady_state(41) = U_SS;
oo_.steady_state(42) = delta;
oo_.steady_state(43) = M_.params(25);
oo_.steady_state(44) = gm_SS;
oo_.steady_state(17) = 1;
oo_.steady_state(4) = rk_SS;
oo_.steady_state(9) = s_SS;
oo_.steady_state(45) = v_SS;
oo_.steady_state(46) = j_SS;
oo_.steady_state(8) = varpi_SS;
oo_.steady_state(47) = lambda_SS;
oo_.steady_state(48) = ga_SS;
oo_.steady_state(30) = gE_SS;
oo_.steady_state(31) = iy_SS;
oo_.steady_state(49) = za_SS;
oo_.steady_state(50) = PiA_SS;
oo_.steady_state(51) = 0;
oo_.steady_state(59) = psi_SS;
oo_.steady_state(3) = R_SS;
oo_.steady_state(6) = b_SS;
oo_.steady_state(19) = PiF_SS;
oo_.steady_state(7) = y_SS;
oo_.steady_state(11) = c_SS;
oo_.steady_state(10) = inv_SS;
oo_.steady_state(52) = fa_SS;
oo_.steady_state(53) = n_SS;
oo_.steady_state(54) = n_SS;
oo_.steady_state(55) = gamma_SS;
oo_.steady_state(32) = g_SS/n_SS;
oo_.steady_state(33) = g_SS;
oo_.steady_state(18) = stoyw_SS;
oo_.steady_state(56) = 0;
oo_.steady_state(57) = 0;
oo_.steady_state(58) = 0;
oo_.steady_state(60) = 0;
oo_.steady_state(61) = 0;
oo_.steady_state(62) = 0;
oo_.exo_steady_state(1) = 0;
oo_.steady_state(63) = fert_SS;
oo_.steady_state(67)=oo_.steady_state(40);
oo_.steady_state(68)=oo_.steady_state(49);
oo_.steady_state(69)=oo_.steady_state(62);
oo_.steady_state(70)=oo_.steady_state(69);
oo_.steady_state(71)=oo_.steady_state(70);
oo_.steady_state(72)=oo_.steady_state(71);
oo_.steady_state(73)=oo_.steady_state(72);
oo_.steady_state(74)=oo_.steady_state(73);
oo_.steady_state(75)=oo_.steady_state(74);
oo_.steady_state(76)=oo_.steady_state(75);
oo_.steady_state(77)=oo_.steady_state(76);
oo_.steady_state(78)=oo_.steady_state(77);
oo_.steady_state(79)=oo_.steady_state(78);
oo_.steady_state(80)=oo_.steady_state(79);
oo_.steady_state(81)=oo_.steady_state(80);
oo_.steady_state(82)=oo_.steady_state(81);
oo_.steady_state(83)=oo_.steady_state(82);
oo_.steady_state(84)=oo_.steady_state(83);
oo_.steady_state(85)=oo_.steady_state(84);
oo_.steady_state(86)=oo_.steady_state(85);
oo_.steady_state(87)=oo_.steady_state(86);
oo_.steady_state(88)=oo_.steady_state(87);
oo_.steady_state(89)=oo_.steady_state(88);
oo_.steady_state(90)=oo_.steady_state(89);
oo_.steady_state(91)=oo_.steady_state(90);
oo_.steady_state(92)=oo_.steady_state(91);
oo_.steady_state(93)=oo_.steady_state(92);
oo_.steady_state(94)=oo_.steady_state(93);
oo_.steady_state(95)=oo_.steady_state(94);
oo_.steady_state(96)=oo_.steady_state(95);
oo_.steady_state(97)=oo_.exo_steady_state(1);
oo_.steady_state(98)=oo_.steady_state(97);
oo_.steady_state(99)=oo_.steady_state(98);
oo_.steady_state(100)=oo_.steady_state(99);
oo_.steady_state(101)=oo_.steady_state(100);
oo_.steady_state(102)=oo_.steady_state(101);
oo_.steady_state(103)=oo_.steady_state(102);
oo_.steady_state(104)=oo_.steady_state(103);
oo_.steady_state(105)=oo_.steady_state(104);
oo_.steady_state(106)=oo_.steady_state(105);
oo_.steady_state(107)=oo_.steady_state(106);
oo_.steady_state(108)=oo_.steady_state(107);
oo_.steady_state(109)=oo_.steady_state(108);
oo_.steady_state(110)=oo_.steady_state(109);
oo_.steady_state(111)=oo_.steady_state(110);
oo_.steady_state(112)=oo_.steady_state(111);
oo_.steady_state(113)=oo_.steady_state(112);
oo_.steady_state(114)=oo_.steady_state(113);
oo_.steady_state(115)=oo_.steady_state(114);
oo_.steady_state(116)=oo_.steady_state(115);
oo_.steady_state(117)=oo_.steady_state(116);
oo_.steady_state(118)=oo_.steady_state(117);
oo_.steady_state(119)=oo_.steady_state(118);
oo_.steady_state(120)=oo_.steady_state(119);
oo_.steady_state(121)=oo_.steady_state(120);
oo_.steady_state(122)=oo_.steady_state(121);
oo_.steady_state(123)=oo_.steady_state(122);
oo_.steady_state(124)=oo_.steady_state(123);
oo_.steady_state(125)=oo_.steady_state(124);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 30;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save CasePredoo_ oo_
save CasePredM_ M_
write_latex_parameter_table;
write_latex_definitions;
collect_latex_files;
if system(['pdflatex -halt-on-error -interaction=batchmode ' M_.fname '_TeX_binder.tex'])
error('TeX-File did not compile.')
end
save('DemoMediumRun_Canada_SOE_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('DemoMediumRun_Canada_SOE_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
