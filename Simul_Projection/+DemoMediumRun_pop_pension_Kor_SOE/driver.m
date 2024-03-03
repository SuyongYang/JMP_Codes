%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'DemoMediumRun_pop_pension_Kor_SOE';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('DemoMediumRun_pop_pension_Kor_SOE.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'delall'};
M_.exo_names_tex(1) = {'delall'};
M_.exo_names_long(1) = {'delall'};
M_.endo_names = cell(152,1);
M_.endo_names_tex = cell(152,1);
M_.endo_names_long = cell(152,1);
M_.endo_names(1) = {'FB'};
M_.endo_names_tex(1) = {'FB'};
M_.endo_names_long(1) = {'FB'};
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
M_.endo_names(11) = {'invG'};
M_.endo_names_tex(11) = {'invG'};
M_.endo_names_long(11) = {'invG'};
M_.endo_names(12) = {'c'};
M_.endo_names_tex(12) = {'c'};
M_.endo_names_long(12) = {'c'};
M_.endo_names(13) = {'cw'};
M_.endo_names_tex(13) = {'cw'};
M_.endo_names_long(13) = {'cw'};
M_.endo_names(14) = {'cr'};
M_.endo_names_tex(14) = {'cr'};
M_.endo_names_long(14) = {'cr'};
M_.endo_names(15) = {'tauw'};
M_.endo_names_tex(15) = {'tauw'};
M_.endo_names_long(15) = {'tauw'};
M_.endo_names(16) = {'N'};
M_.endo_names_tex(16) = {'N'};
M_.endo_names_long(16) = {'N'};
M_.endo_names(17) = {'stoyw'};
M_.endo_names_tex(17) = {'stoyw'};
M_.endo_names_long(17) = {'stoyw'};
M_.endo_names(18) = {'PiF'};
M_.endo_names_tex(18) = {'PiF'};
M_.endo_names_long(18) = {'PiF'};
M_.endo_names(19) = {'Tw'};
M_.endo_names_tex(19) = {'Tw'};
M_.endo_names_long(19) = {'Tw'};
M_.endo_names(20) = {'hw'};
M_.endo_names_tex(20) = {'hw'};
M_.endo_names_long(20) = {'hw'};
M_.endo_names(21) = {'Dr'};
M_.endo_names_tex(21) = {'Dr'};
M_.endo_names_long(21) = {'Dr'};
M_.endo_names(22) = {'Dw'};
M_.endo_names_tex(22) = {'Dw'};
M_.endo_names_long(22) = {'Dw'};
M_.endo_names(23) = {'ep'};
M_.endo_names_tex(23) = {'ep'};
M_.endo_names_long(23) = {'ep'};
M_.endo_names(24) = {'varsig'};
M_.endo_names_tex(24) = {'varsig'};
M_.endo_names_long(24) = {'varsig'};
M_.endo_names(25) = {'zetar'};
M_.endo_names_tex(25) = {'zetar'};
M_.endo_names_long(25) = {'zetar'};
M_.endo_names(26) = {'zetay'};
M_.endo_names_tex(26) = {'zetay'};
M_.endo_names_long(26) = {'zetay'};
M_.endo_names(27) = {'gw'};
M_.endo_names_tex(27) = {'gw'};
M_.endo_names_long(27) = {'gw'};
M_.endo_names(28) = {'g'};
M_.endo_names_tex(28) = {'g'};
M_.endo_names_long(28) = {'g'};
M_.endo_names(29) = {'gE'};
M_.endo_names_tex(29) = {'gE'};
M_.endo_names_long(29) = {'gE'};
M_.endo_names(30) = {'iy'};
M_.endo_names_tex(30) = {'iy'};
M_.endo_names_long(30) = {'iy'};
M_.endo_names(31) = {'gpc'};
M_.endo_names_tex(31) = {'gpc'};
M_.endo_names_long(31) = {'gpc'};
M_.endo_names(32) = {'zz'};
M_.endo_names_tex(32) = {'zz'};
M_.endo_names_long(32) = {'zz'};
M_.endo_names(33) = {'far'};
M_.endo_names_tex(33) = {'far'};
M_.endo_names_long(33) = {'far'};
M_.endo_names(34) = {'faw'};
M_.endo_names_tex(34) = {'faw'};
M_.endo_names_long(34) = {'faw'};
M_.endo_names(35) = {'dr'};
M_.endo_names_tex(35) = {'dr'};
M_.endo_names_long(35) = {'dr'};
M_.endo_names(36) = {'dw'};
M_.endo_names_tex(36) = {'dw'};
M_.endo_names_long(36) = {'dw'};
M_.endo_names(37) = {'mu'};
M_.endo_names_tex(37) = {'mu'};
M_.endo_names_long(37) = {'mu'};
M_.endo_names(38) = {'k'};
M_.endo_names_tex(38) = {'k'};
M_.endo_names_long(38) = {'k'};
M_.endo_names(39) = {'u'};
M_.endo_names_tex(39) = {'u'};
M_.endo_names_long(39) = {'u'};
M_.endo_names(40) = {'del'};
M_.endo_names_tex(40) = {'del'};
M_.endo_names_long(40) = {'del'};
M_.endo_names(41) = {'delprime'};
M_.endo_names_tex(41) = {'delprime'};
M_.endo_names_long(41) = {'delprime'};
M_.endo_names(42) = {'gM'};
M_.endo_names_tex(42) = {'gM'};
M_.endo_names_long(42) = {'gM'};
M_.endo_names(43) = {'v'};
M_.endo_names_tex(43) = {'v'};
M_.endo_names_long(43) = {'v'};
M_.endo_names(44) = {'j'};
M_.endo_names_tex(44) = {'j'};
M_.endo_names_long(44) = {'j'};
M_.endo_names(45) = {'lam'};
M_.endo_names_tex(45) = {'lam'};
M_.endo_names_long(45) = {'lam'};
M_.endo_names(46) = {'gA'};
M_.endo_names_tex(46) = {'gA'};
M_.endo_names_long(46) = {'gA'};
M_.endo_names(47) = {'za'};
M_.endo_names_tex(47) = {'za'};
M_.endo_names_long(47) = {'za'};
M_.endo_names(48) = {'PiA'};
M_.endo_names_tex(48) = {'PiA'};
M_.endo_names_long(48) = {'PiA'};
M_.endo_names(49) = {'PiRD'};
M_.endo_names_tex(49) = {'PiRD'};
M_.endo_names_long(49) = {'PiRD'};
M_.endo_names(50) = {'fa'};
M_.endo_names_tex(50) = {'fa'};
M_.endo_names_long(50) = {'fa'};
M_.endo_names(51) = {'n'};
M_.endo_names_tex(51) = {'n'};
M_.endo_names_long(51) = {'n'};
M_.endo_names(52) = {'gn'};
M_.endo_names_tex(52) = {'gn'};
M_.endo_names_long(52) = {'gn'};
M_.endo_names(53) = {'gy'};
M_.endo_names_tex(53) = {'gy'};
M_.endo_names_long(53) = {'gy'};
M_.endo_names(54) = {'gamma'};
M_.endo_names_tex(54) = {'gamma'};
M_.endo_names_long(54) = {'gamma'};
M_.endo_names(55) = {'OMEGAY'};
M_.endo_names_tex(55) = {'OMEGAY'};
M_.endo_names_long(55) = {'OMEGAY'};
M_.endo_names(56) = {'fert'};
M_.endo_names_tex(56) = {'fert'};
M_.endo_names_long(56) = {'fert'};
M_.endo_names(57) = {'psi'};
M_.endo_names_tex(57) = {'psi'};
M_.endo_names_long(57) = {'psi'};
M_.endo_names(58) = {'tauwE'};
M_.endo_names_tex(58) = {'tauwE'};
M_.endo_names_long(58) = {'tauwE'};
M_.endo_names(59) = {'tauwA'};
M_.endo_names_tex(59) = {'tauwA'};
M_.endo_names_long(59) = {'tauwA'};
M_.endo_names(60) = {'ay'};
M_.endo_names_tex(60) = {'ay'};
M_.endo_names_long(60) = {'ay'};
M_.endo_names(61) = {'tpe'};
M_.endo_names_tex(61) = {'tpe'};
M_.endo_names_long(61) = {'tpe'};
M_.endo_names(62) = {'Pe'};
M_.endo_names_tex(62) = {'Pe'};
M_.endo_names_long(62) = {'Pe'};
M_.endo_names(63) = {'he'};
M_.endo_names_tex(63) = {'he'};
M_.endo_names_long(63) = {'he'};
M_.endo_names(64) = {'en'};
M_.endo_names_tex(64) = {'en'};
M_.endo_names_long(64) = {'en'};
M_.endo_names(65) = {'ey'};
M_.endo_names_tex(65) = {'ey'};
M_.endo_names_long(65) = {'ey'};
M_.endo_names(66) = {'er'};
M_.endo_names_tex(66) = {'er'};
M_.endo_names_long(66) = {'er'};
M_.endo_names(67) = {'shockn'};
M_.endo_names_tex(67) = {'shockn'};
M_.endo_names_long(67) = {'shockn'};
M_.endo_names(68) = {'shocky'};
M_.endo_names_tex(68) = {'shocky'};
M_.endo_names_long(68) = {'shocky'};
M_.endo_names(69) = {'shockr'};
M_.endo_names_tex(69) = {'shockr'};
M_.endo_names_long(69) = {'shockr'};
M_.endo_names(70) = {'shareW'};
M_.endo_names_tex(70) = {'shareW'};
M_.endo_names_long(70) = {'shareW'};
M_.endo_names(71) = {'shareR'};
M_.endo_names_tex(71) = {'shareR'};
M_.endo_names_long(71) = {'shareR'};
M_.endo_names(72) = {'shockR'};
M_.endo_names_tex(72) = {'shockR'};
M_.endo_names_long(72) = {'shockR'};
M_.endo_names(73) = {'AUX_ENDO_LAG_26_1'};
M_.endo_names_tex(73) = {'AUX\_ENDO\_LAG\_26\_1'};
M_.endo_names_long(73) = {'AUX_ENDO_LAG_26_1'};
M_.endo_names(74) = {'AUX_ENDO_LAG_37_1'};
M_.endo_names_tex(74) = {'AUX\_ENDO\_LAG\_37\_1'};
M_.endo_names_long(74) = {'AUX_ENDO_LAG_37_1'};
M_.endo_names(75) = {'AUX_ENDO_LAG_46_1'};
M_.endo_names_tex(75) = {'AUX\_ENDO\_LAG\_46\_1'};
M_.endo_names_long(75) = {'AUX_ENDO_LAG_46_1'};
M_.endo_names(76) = {'AUX_ENDO_LAG_66_1'};
M_.endo_names_tex(76) = {'AUX\_ENDO\_LAG\_66\_1'};
M_.endo_names_long(76) = {'AUX_ENDO_LAG_66_1'};
M_.endo_names(77) = {'AUX_ENDO_LAG_66_2'};
M_.endo_names_tex(77) = {'AUX\_ENDO\_LAG\_66\_2'};
M_.endo_names_long(77) = {'AUX_ENDO_LAG_66_2'};
M_.endo_names(78) = {'AUX_ENDO_LAG_66_3'};
M_.endo_names_tex(78) = {'AUX\_ENDO\_LAG\_66\_3'};
M_.endo_names_long(78) = {'AUX_ENDO_LAG_66_3'};
M_.endo_names(79) = {'AUX_ENDO_LAG_66_4'};
M_.endo_names_tex(79) = {'AUX\_ENDO\_LAG\_66\_4'};
M_.endo_names_long(79) = {'AUX_ENDO_LAG_66_4'};
M_.endo_names(80) = {'AUX_ENDO_LAG_66_5'};
M_.endo_names_tex(80) = {'AUX\_ENDO\_LAG\_66\_5'};
M_.endo_names_long(80) = {'AUX_ENDO_LAG_66_5'};
M_.endo_names(81) = {'AUX_ENDO_LAG_66_6'};
M_.endo_names_tex(81) = {'AUX\_ENDO\_LAG\_66\_6'};
M_.endo_names_long(81) = {'AUX_ENDO_LAG_66_6'};
M_.endo_names(82) = {'AUX_ENDO_LAG_66_7'};
M_.endo_names_tex(82) = {'AUX\_ENDO\_LAG\_66\_7'};
M_.endo_names_long(82) = {'AUX_ENDO_LAG_66_7'};
M_.endo_names(83) = {'AUX_ENDO_LAG_66_8'};
M_.endo_names_tex(83) = {'AUX\_ENDO\_LAG\_66\_8'};
M_.endo_names_long(83) = {'AUX_ENDO_LAG_66_8'};
M_.endo_names(84) = {'AUX_ENDO_LAG_66_9'};
M_.endo_names_tex(84) = {'AUX\_ENDO\_LAG\_66\_9'};
M_.endo_names_long(84) = {'AUX_ENDO_LAG_66_9'};
M_.endo_names(85) = {'AUX_ENDO_LAG_66_10'};
M_.endo_names_tex(85) = {'AUX\_ENDO\_LAG\_66\_10'};
M_.endo_names_long(85) = {'AUX_ENDO_LAG_66_10'};
M_.endo_names(86) = {'AUX_ENDO_LAG_66_11'};
M_.endo_names_tex(86) = {'AUX\_ENDO\_LAG\_66\_11'};
M_.endo_names_long(86) = {'AUX_ENDO_LAG_66_11'};
M_.endo_names(87) = {'AUX_ENDO_LAG_66_12'};
M_.endo_names_tex(87) = {'AUX\_ENDO\_LAG\_66\_12'};
M_.endo_names_long(87) = {'AUX_ENDO_LAG_66_12'};
M_.endo_names(88) = {'AUX_ENDO_LAG_66_13'};
M_.endo_names_tex(88) = {'AUX\_ENDO\_LAG\_66\_13'};
M_.endo_names_long(88) = {'AUX_ENDO_LAG_66_13'};
M_.endo_names(89) = {'AUX_ENDO_LAG_66_14'};
M_.endo_names_tex(89) = {'AUX\_ENDO\_LAG\_66\_14'};
M_.endo_names_long(89) = {'AUX_ENDO_LAG_66_14'};
M_.endo_names(90) = {'AUX_ENDO_LAG_66_15'};
M_.endo_names_tex(90) = {'AUX\_ENDO\_LAG\_66\_15'};
M_.endo_names_long(90) = {'AUX_ENDO_LAG_66_15'};
M_.endo_names(91) = {'AUX_ENDO_LAG_66_16'};
M_.endo_names_tex(91) = {'AUX\_ENDO\_LAG\_66\_16'};
M_.endo_names_long(91) = {'AUX_ENDO_LAG_66_16'};
M_.endo_names(92) = {'AUX_ENDO_LAG_66_17'};
M_.endo_names_tex(92) = {'AUX\_ENDO\_LAG\_66\_17'};
M_.endo_names_long(92) = {'AUX_ENDO_LAG_66_17'};
M_.endo_names(93) = {'AUX_ENDO_LAG_66_18'};
M_.endo_names_tex(93) = {'AUX\_ENDO\_LAG\_66\_18'};
M_.endo_names_long(93) = {'AUX_ENDO_LAG_66_18'};
M_.endo_names(94) = {'AUX_ENDO_LAG_66_19'};
M_.endo_names_tex(94) = {'AUX\_ENDO\_LAG\_66\_19'};
M_.endo_names_long(94) = {'AUX_ENDO_LAG_66_19'};
M_.endo_names(95) = {'AUX_ENDO_LAG_66_20'};
M_.endo_names_tex(95) = {'AUX\_ENDO\_LAG\_66\_20'};
M_.endo_names_long(95) = {'AUX_ENDO_LAG_66_20'};
M_.endo_names(96) = {'AUX_ENDO_LAG_66_21'};
M_.endo_names_tex(96) = {'AUX\_ENDO\_LAG\_66\_21'};
M_.endo_names_long(96) = {'AUX_ENDO_LAG_66_21'};
M_.endo_names(97) = {'AUX_ENDO_LAG_66_22'};
M_.endo_names_tex(97) = {'AUX\_ENDO\_LAG\_66\_22'};
M_.endo_names_long(97) = {'AUX_ENDO_LAG_66_22'};
M_.endo_names(98) = {'AUX_ENDO_LAG_66_23'};
M_.endo_names_tex(98) = {'AUX\_ENDO\_LAG\_66\_23'};
M_.endo_names_long(98) = {'AUX_ENDO_LAG_66_23'};
M_.endo_names(99) = {'AUX_ENDO_LAG_66_24'};
M_.endo_names_tex(99) = {'AUX\_ENDO\_LAG\_66\_24'};
M_.endo_names_long(99) = {'AUX_ENDO_LAG_66_24'};
M_.endo_names(100) = {'AUX_ENDO_LAG_66_25'};
M_.endo_names_tex(100) = {'AUX\_ENDO\_LAG\_66\_25'};
M_.endo_names_long(100) = {'AUX_ENDO_LAG_66_25'};
M_.endo_names(101) = {'AUX_ENDO_LAG_66_26'};
M_.endo_names_tex(101) = {'AUX\_ENDO\_LAG\_66\_26'};
M_.endo_names_long(101) = {'AUX_ENDO_LAG_66_26'};
M_.endo_names(102) = {'AUX_ENDO_LAG_66_27'};
M_.endo_names_tex(102) = {'AUX\_ENDO\_LAG\_66\_27'};
M_.endo_names_long(102) = {'AUX_ENDO_LAG_66_27'};
M_.endo_names(103) = {'AUX_ENDO_LAG_66_28'};
M_.endo_names_tex(103) = {'AUX\_ENDO\_LAG\_66\_28'};
M_.endo_names_long(103) = {'AUX_ENDO_LAG_66_28'};
M_.endo_names(104) = {'AUX_ENDO_LAG_66_29'};
M_.endo_names_tex(104) = {'AUX\_ENDO\_LAG\_66\_29'};
M_.endo_names_long(104) = {'AUX_ENDO_LAG_66_29'};
M_.endo_names(105) = {'AUX_ENDO_LAG_66_30'};
M_.endo_names_tex(105) = {'AUX\_ENDO\_LAG\_66\_30'};
M_.endo_names_long(105) = {'AUX_ENDO_LAG_66_30'};
M_.endo_names(106) = {'AUX_ENDO_LAG_66_31'};
M_.endo_names_tex(106) = {'AUX\_ENDO\_LAG\_66\_31'};
M_.endo_names_long(106) = {'AUX_ENDO_LAG_66_31'};
M_.endo_names(107) = {'AUX_ENDO_LAG_66_32'};
M_.endo_names_tex(107) = {'AUX\_ENDO\_LAG\_66\_32'};
M_.endo_names_long(107) = {'AUX_ENDO_LAG_66_32'};
M_.endo_names(108) = {'AUX_ENDO_LAG_66_33'};
M_.endo_names_tex(108) = {'AUX\_ENDO\_LAG\_66\_33'};
M_.endo_names_long(108) = {'AUX_ENDO_LAG_66_33'};
M_.endo_names(109) = {'AUX_ENDO_LAG_66_34'};
M_.endo_names_tex(109) = {'AUX\_ENDO\_LAG\_66\_34'};
M_.endo_names_long(109) = {'AUX_ENDO_LAG_66_34'};
M_.endo_names(110) = {'AUX_ENDO_LAG_66_35'};
M_.endo_names_tex(110) = {'AUX\_ENDO\_LAG\_66\_35'};
M_.endo_names_long(110) = {'AUX_ENDO_LAG_66_35'};
M_.endo_names(111) = {'AUX_ENDO_LAG_66_36'};
M_.endo_names_tex(111) = {'AUX\_ENDO\_LAG\_66\_36'};
M_.endo_names_long(111) = {'AUX_ENDO_LAG_66_36'};
M_.endo_names(112) = {'AUX_ENDO_LAG_66_37'};
M_.endo_names_tex(112) = {'AUX\_ENDO\_LAG\_66\_37'};
M_.endo_names_long(112) = {'AUX_ENDO_LAG_66_37'};
M_.endo_names(113) = {'AUX_ENDO_LAG_66_38'};
M_.endo_names_tex(113) = {'AUX\_ENDO\_LAG\_66\_38'};
M_.endo_names_long(113) = {'AUX_ENDO_LAG_66_38'};
M_.endo_names(114) = {'AUX_EXO_LAG_72_0'};
M_.endo_names_tex(114) = {'AUX\_EXO\_LAG\_72\_0'};
M_.endo_names_long(114) = {'AUX_EXO_LAG_72_0'};
M_.endo_names(115) = {'AUX_EXO_LAG_72_1'};
M_.endo_names_tex(115) = {'AUX\_EXO\_LAG\_72\_1'};
M_.endo_names_long(115) = {'AUX_EXO_LAG_72_1'};
M_.endo_names(116) = {'AUX_EXO_LAG_72_2'};
M_.endo_names_tex(116) = {'AUX\_EXO\_LAG\_72\_2'};
M_.endo_names_long(116) = {'AUX_EXO_LAG_72_2'};
M_.endo_names(117) = {'AUX_EXO_LAG_72_3'};
M_.endo_names_tex(117) = {'AUX\_EXO\_LAG\_72\_3'};
M_.endo_names_long(117) = {'AUX_EXO_LAG_72_3'};
M_.endo_names(118) = {'AUX_EXO_LAG_72_4'};
M_.endo_names_tex(118) = {'AUX\_EXO\_LAG\_72\_4'};
M_.endo_names_long(118) = {'AUX_EXO_LAG_72_4'};
M_.endo_names(119) = {'AUX_EXO_LAG_72_5'};
M_.endo_names_tex(119) = {'AUX\_EXO\_LAG\_72\_5'};
M_.endo_names_long(119) = {'AUX_EXO_LAG_72_5'};
M_.endo_names(120) = {'AUX_EXO_LAG_72_6'};
M_.endo_names_tex(120) = {'AUX\_EXO\_LAG\_72\_6'};
M_.endo_names_long(120) = {'AUX_EXO_LAG_72_6'};
M_.endo_names(121) = {'AUX_EXO_LAG_72_7'};
M_.endo_names_tex(121) = {'AUX\_EXO\_LAG\_72\_7'};
M_.endo_names_long(121) = {'AUX_EXO_LAG_72_7'};
M_.endo_names(122) = {'AUX_EXO_LAG_72_8'};
M_.endo_names_tex(122) = {'AUX\_EXO\_LAG\_72\_8'};
M_.endo_names_long(122) = {'AUX_EXO_LAG_72_8'};
M_.endo_names(123) = {'AUX_EXO_LAG_72_9'};
M_.endo_names_tex(123) = {'AUX\_EXO\_LAG\_72\_9'};
M_.endo_names_long(123) = {'AUX_EXO_LAG_72_9'};
M_.endo_names(124) = {'AUX_EXO_LAG_72_10'};
M_.endo_names_tex(124) = {'AUX\_EXO\_LAG\_72\_10'};
M_.endo_names_long(124) = {'AUX_EXO_LAG_72_10'};
M_.endo_names(125) = {'AUX_EXO_LAG_72_11'};
M_.endo_names_tex(125) = {'AUX\_EXO\_LAG\_72\_11'};
M_.endo_names_long(125) = {'AUX_EXO_LAG_72_11'};
M_.endo_names(126) = {'AUX_EXO_LAG_72_12'};
M_.endo_names_tex(126) = {'AUX\_EXO\_LAG\_72\_12'};
M_.endo_names_long(126) = {'AUX_EXO_LAG_72_12'};
M_.endo_names(127) = {'AUX_EXO_LAG_72_13'};
M_.endo_names_tex(127) = {'AUX\_EXO\_LAG\_72\_13'};
M_.endo_names_long(127) = {'AUX_EXO_LAG_72_13'};
M_.endo_names(128) = {'AUX_EXO_LAG_72_14'};
M_.endo_names_tex(128) = {'AUX\_EXO\_LAG\_72\_14'};
M_.endo_names_long(128) = {'AUX_EXO_LAG_72_14'};
M_.endo_names(129) = {'AUX_EXO_LAG_72_15'};
M_.endo_names_tex(129) = {'AUX\_EXO\_LAG\_72\_15'};
M_.endo_names_long(129) = {'AUX_EXO_LAG_72_15'};
M_.endo_names(130) = {'AUX_EXO_LAG_72_16'};
M_.endo_names_tex(130) = {'AUX\_EXO\_LAG\_72\_16'};
M_.endo_names_long(130) = {'AUX_EXO_LAG_72_16'};
M_.endo_names(131) = {'AUX_EXO_LAG_72_17'};
M_.endo_names_tex(131) = {'AUX\_EXO\_LAG\_72\_17'};
M_.endo_names_long(131) = {'AUX_EXO_LAG_72_17'};
M_.endo_names(132) = {'AUX_EXO_LAG_72_18'};
M_.endo_names_tex(132) = {'AUX\_EXO\_LAG\_72\_18'};
M_.endo_names_long(132) = {'AUX_EXO_LAG_72_18'};
M_.endo_names(133) = {'AUX_EXO_LAG_72_19'};
M_.endo_names_tex(133) = {'AUX\_EXO\_LAG\_72\_19'};
M_.endo_names_long(133) = {'AUX_EXO_LAG_72_19'};
M_.endo_names(134) = {'AUX_EXO_LAG_72_20'};
M_.endo_names_tex(134) = {'AUX\_EXO\_LAG\_72\_20'};
M_.endo_names_long(134) = {'AUX_EXO_LAG_72_20'};
M_.endo_names(135) = {'AUX_EXO_LAG_72_21'};
M_.endo_names_tex(135) = {'AUX\_EXO\_LAG\_72\_21'};
M_.endo_names_long(135) = {'AUX_EXO_LAG_72_21'};
M_.endo_names(136) = {'AUX_EXO_LAG_72_22'};
M_.endo_names_tex(136) = {'AUX\_EXO\_LAG\_72\_22'};
M_.endo_names_long(136) = {'AUX_EXO_LAG_72_22'};
M_.endo_names(137) = {'AUX_EXO_LAG_72_23'};
M_.endo_names_tex(137) = {'AUX\_EXO\_LAG\_72\_23'};
M_.endo_names_long(137) = {'AUX_EXO_LAG_72_23'};
M_.endo_names(138) = {'AUX_EXO_LAG_72_24'};
M_.endo_names_tex(138) = {'AUX\_EXO\_LAG\_72\_24'};
M_.endo_names_long(138) = {'AUX_EXO_LAG_72_24'};
M_.endo_names(139) = {'AUX_EXO_LAG_72_25'};
M_.endo_names_tex(139) = {'AUX\_EXO\_LAG\_72\_25'};
M_.endo_names_long(139) = {'AUX_EXO_LAG_72_25'};
M_.endo_names(140) = {'AUX_EXO_LAG_72_26'};
M_.endo_names_tex(140) = {'AUX\_EXO\_LAG\_72\_26'};
M_.endo_names_long(140) = {'AUX_EXO_LAG_72_26'};
M_.endo_names(141) = {'AUX_EXO_LAG_72_27'};
M_.endo_names_tex(141) = {'AUX\_EXO\_LAG\_72\_27'};
M_.endo_names_long(141) = {'AUX_EXO_LAG_72_27'};
M_.endo_names(142) = {'AUX_EXO_LAG_72_28'};
M_.endo_names_tex(142) = {'AUX\_EXO\_LAG\_72\_28'};
M_.endo_names_long(142) = {'AUX_EXO_LAG_72_28'};
M_.endo_names(143) = {'AUX_EXO_LAG_72_29'};
M_.endo_names_tex(143) = {'AUX\_EXO\_LAG\_72\_29'};
M_.endo_names_long(143) = {'AUX_EXO_LAG_72_29'};
M_.endo_names(144) = {'AUX_EXO_LAG_72_30'};
M_.endo_names_tex(144) = {'AUX\_EXO\_LAG\_72\_30'};
M_.endo_names_long(144) = {'AUX_EXO_LAG_72_30'};
M_.endo_names(145) = {'AUX_EXO_LAG_72_31'};
M_.endo_names_tex(145) = {'AUX\_EXO\_LAG\_72\_31'};
M_.endo_names_long(145) = {'AUX_EXO_LAG_72_31'};
M_.endo_names(146) = {'AUX_EXO_LAG_72_32'};
M_.endo_names_tex(146) = {'AUX\_EXO\_LAG\_72\_32'};
M_.endo_names_long(146) = {'AUX_EXO_LAG_72_32'};
M_.endo_names(147) = {'AUX_EXO_LAG_72_33'};
M_.endo_names_tex(147) = {'AUX\_EXO\_LAG\_72\_33'};
M_.endo_names_long(147) = {'AUX_EXO_LAG_72_33'};
M_.endo_names(148) = {'AUX_EXO_LAG_72_34'};
M_.endo_names_tex(148) = {'AUX\_EXO\_LAG\_72\_34'};
M_.endo_names_long(148) = {'AUX_EXO_LAG_72_34'};
M_.endo_names(149) = {'AUX_EXO_LAG_72_35'};
M_.endo_names_tex(149) = {'AUX\_EXO\_LAG\_72\_35'};
M_.endo_names_long(149) = {'AUX_EXO_LAG_72_35'};
M_.endo_names(150) = {'AUX_EXO_LAG_72_36'};
M_.endo_names_tex(150) = {'AUX\_EXO\_LAG\_72\_36'};
M_.endo_names_long(150) = {'AUX_EXO_LAG_72_36'};
M_.endo_names(151) = {'AUX_EXO_LAG_72_37'};
M_.endo_names_tex(151) = {'AUX\_EXO\_LAG\_72\_37'};
M_.endo_names_long(151) = {'AUX_EXO_LAG_72_37'};
M_.endo_names(152) = {'AUX_EXO_LAG_72_38'};
M_.endo_names_tex(152) = {'AUX\_EXO\_LAG\_72\_38'};
M_.endo_names_long(152) = {'AUX_EXO_LAG_72_38'};
M_.endo_partitions = struct();
M_.param_names = cell(199,1);
M_.param_names_tex = cell(199,1);
M_.param_names_long = cell(199,1);
M_.param_names(1) = {'R_SS'};
M_.param_names_tex(1) = {'R\_SS'};
M_.param_names_long(1) = {'R_SS'};
M_.param_names(2) = {'ZETAYSS'};
M_.param_names_tex(2) = {'ZETAYSS'};
M_.param_names_long(2) = {'ZETAYSS'};
M_.param_names(3) = {'ZETARSS'};
M_.param_names_tex(3) = {'ZETARSS'};
M_.param_names_long(3) = {'ZETARSS'};
M_.param_names(4) = {'SHINNOVW'};
M_.param_names_tex(4) = {'SHINNOVW'};
M_.param_names_long(4) = {'SHINNOVW'};
M_.param_names(5) = {'YINNOVSH'};
M_.param_names_tex(5) = {'YINNOVSH'};
M_.param_names_long(5) = {'YINNOVSH'};
M_.param_names(6) = {'ETAR'};
M_.param_names_tex(6) = {'ETAR'};
M_.param_names_long(6) = {'ETAR'};
M_.param_names(7) = {'DELTAHE'};
M_.param_names_tex(7) = {'DELTAHE'};
M_.param_names_long(7) = {'DELTAHE'};
M_.param_names(8) = {'NP'};
M_.param_names_tex(8) = {'NP'};
M_.param_names_long(8) = {'NP'};
M_.param_names(9) = {'FERTSS'};
M_.param_names_tex(9) = {'FERTSS'};
M_.param_names_long(9) = {'FERTSS'};
M_.param_names(10) = {'RHOYW'};
M_.param_names_tex(10) = {'RHOYW'};
M_.param_names_long(10) = {'RHOYW'};
M_.param_names(11) = {'LAMY'};
M_.param_names_tex(11) = {'LAMY'};
M_.param_names_long(11) = {'LAMY'};
M_.param_names(12) = {'PSISS'};
M_.param_names_tex(12) = {'PSISS'};
M_.param_names_long(12) = {'PSISS'};
M_.param_names(13) = {'GSS'};
M_.param_names_tex(13) = {'GSS'};
M_.param_names_long(13) = {'GSS'};
M_.param_names(14) = {'PERS'};
M_.param_names_tex(14) = {'PERS'};
M_.param_names_long(14) = {'PERS'};
M_.param_names(15) = {'RATIODEL'};
M_.param_names_tex(15) = {'RATIODEL'};
M_.param_names_long(15) = {'RATIODEL'};
M_.param_names(16) = {'OMEGAR'};
M_.param_names_tex(16) = {'OMEGAR'};
M_.param_names_long(16) = {'OMEGAR'};
M_.param_names(17) = {'RHOU'};
M_.param_names_tex(17) = {'RHOU'};
M_.param_names_long(17) = {'RHOU'};
M_.param_names(18) = {'BBETA'};
M_.param_names_tex(18) = {'BBETA'};
M_.param_names_long(18) = {'BBETA'};
M_.param_names(19) = {'ALPHA'};
M_.param_names_tex(19) = {'ALPHA'};
M_.param_names_long(19) = {'ALPHA'};
M_.param_names(20) = {'GAMMAI'};
M_.param_names_tex(20) = {'GAMMAI'};
M_.param_names_long(20) = {'GAMMAI'};
M_.param_names(21) = {'VARNU'};
M_.param_names_tex(21) = {'VARNU'};
M_.param_names_long(21) = {'VARNU'};
M_.param_names(22) = {'BMEGA'};
M_.param_names_tex(22) = {'BMEGA'};
M_.param_names_long(22) = {'BMEGA'};
M_.param_names(23) = {'CHI'};
M_.param_names_tex(23) = {'CHI'};
M_.param_names_long(23) = {'CHI'};
M_.param_names(24) = {'RHO'};
M_.param_names_tex(24) = {'RHO'};
M_.param_names_long(24) = {'RHO'};
M_.param_names(25) = {'PHI'};
M_.param_names_tex(25) = {'PHI'};
M_.param_names_long(25) = {'PHI'};
M_.param_names(26) = {'ELASMU'};
M_.param_names_tex(26) = {'ELASMU'};
M_.param_names_long(26) = {'ELASMU'};
M_.param_names(27) = {'ELASLAM'};
M_.param_names_tex(27) = {'ELASLAM'};
M_.param_names_long(27) = {'ELASLAM'};
M_.param_names(28) = {'DELPRIMESS'};
M_.param_names_tex(28) = {'DELPRIMESS'};
M_.param_names_long(28) = {'DELPRIMESS'};
M_.param_names(29) = {'DELSS'};
M_.param_names_tex(29) = {'DELSS'};
M_.param_names_long(29) = {'DELSS'};
M_.param_names(30) = {'MUSS'};
M_.param_names_tex(30) = {'MUSS'};
M_.param_names_long(30) = {'MUSS'};
M_.param_names(31) = {'LAMSS'};
M_.param_names_tex(31) = {'LAMSS'};
M_.param_names_long(31) = {'LAMSS'};
M_.param_names(32) = {'USS'};
M_.param_names_tex(32) = {'USS'};
M_.param_names_long(32) = {'USS'};
M_.param_names(33) = {'VARPISS'};
M_.param_names_tex(33) = {'VARPISS'};
M_.param_names_long(33) = {'VARPISS'};
M_.param_names(34) = {'ZASS'};
M_.param_names_tex(34) = {'ZASS'};
M_.param_names_long(34) = {'ZASS'};
M_.param_names(35) = {'KSS'};
M_.param_names_tex(35) = {'KSS'};
M_.param_names_long(35) = {'KSS'};
M_.param_names(36) = {'NSS'};
M_.param_names_tex(36) = {'NSS'};
M_.param_names_long(36) = {'NSS'};
M_.param_names(37) = {'GAMMASS'};
M_.param_names_tex(37) = {'GAMMASS'};
M_.param_names_long(37) = {'GAMMASS'};
M_.param_names(38) = {'RHOE'};
M_.param_names_tex(38) = {'RHOE'};
M_.param_names_long(38) = {'RHOE'};
M_.param_names(39) = {'CHIE'};
M_.param_names_tex(39) = {'CHIE'};
M_.param_names_long(39) = {'CHIE'};
M_.param_names(40) = {'drs_1'};
M_.param_names_tex(40) = {'drs\_1'};
M_.param_names_long(40) = {'drs_1'};
M_.param_names(41) = {'drs_2'};
M_.param_names_tex(41) = {'drs\_2'};
M_.param_names_long(41) = {'drs_2'};
M_.param_names(42) = {'drs_3'};
M_.param_names_tex(42) = {'drs\_3'};
M_.param_names_long(42) = {'drs_3'};
M_.param_names(43) = {'drs_4'};
M_.param_names_tex(43) = {'drs\_4'};
M_.param_names_long(43) = {'drs_4'};
M_.param_names(44) = {'drs_5'};
M_.param_names_tex(44) = {'drs\_5'};
M_.param_names_long(44) = {'drs_5'};
M_.param_names(45) = {'drs_6'};
M_.param_names_tex(45) = {'drs\_6'};
M_.param_names_long(45) = {'drs_6'};
M_.param_names(46) = {'drs_7'};
M_.param_names_tex(46) = {'drs\_7'};
M_.param_names_long(46) = {'drs_7'};
M_.param_names(47) = {'drs_8'};
M_.param_names_tex(47) = {'drs\_8'};
M_.param_names_long(47) = {'drs_8'};
M_.param_names(48) = {'drs_9'};
M_.param_names_tex(48) = {'drs\_9'};
M_.param_names_long(48) = {'drs_9'};
M_.param_names(49) = {'drs_10'};
M_.param_names_tex(49) = {'drs\_10'};
M_.param_names_long(49) = {'drs_10'};
M_.param_names(50) = {'drs_11'};
M_.param_names_tex(50) = {'drs\_11'};
M_.param_names_long(50) = {'drs_11'};
M_.param_names(51) = {'drs_12'};
M_.param_names_tex(51) = {'drs\_12'};
M_.param_names_long(51) = {'drs_12'};
M_.param_names(52) = {'drs_13'};
M_.param_names_tex(52) = {'drs\_13'};
M_.param_names_long(52) = {'drs_13'};
M_.param_names(53) = {'drs_14'};
M_.param_names_tex(53) = {'drs\_14'};
M_.param_names_long(53) = {'drs_14'};
M_.param_names(54) = {'drs_15'};
M_.param_names_tex(54) = {'drs\_15'};
M_.param_names_long(54) = {'drs_15'};
M_.param_names(55) = {'drs_16'};
M_.param_names_tex(55) = {'drs\_16'};
M_.param_names_long(55) = {'drs_16'};
M_.param_names(56) = {'drs_17'};
M_.param_names_tex(56) = {'drs\_17'};
M_.param_names_long(56) = {'drs_17'};
M_.param_names(57) = {'drs_18'};
M_.param_names_tex(57) = {'drs\_18'};
M_.param_names_long(57) = {'drs_18'};
M_.param_names(58) = {'drs_19'};
M_.param_names_tex(58) = {'drs\_19'};
M_.param_names_long(58) = {'drs_19'};
M_.param_names(59) = {'drs_20'};
M_.param_names_tex(59) = {'drs\_20'};
M_.param_names_long(59) = {'drs_20'};
M_.param_names(60) = {'drs_21'};
M_.param_names_tex(60) = {'drs\_21'};
M_.param_names_long(60) = {'drs_21'};
M_.param_names(61) = {'drs_22'};
M_.param_names_tex(61) = {'drs\_22'};
M_.param_names_long(61) = {'drs_22'};
M_.param_names(62) = {'drs_23'};
M_.param_names_tex(62) = {'drs\_23'};
M_.param_names_long(62) = {'drs_23'};
M_.param_names(63) = {'drs_24'};
M_.param_names_tex(63) = {'drs\_24'};
M_.param_names_long(63) = {'drs_24'};
M_.param_names(64) = {'drs_25'};
M_.param_names_tex(64) = {'drs\_25'};
M_.param_names_long(64) = {'drs_25'};
M_.param_names(65) = {'drs_26'};
M_.param_names_tex(65) = {'drs\_26'};
M_.param_names_long(65) = {'drs_26'};
M_.param_names(66) = {'drs_27'};
M_.param_names_tex(66) = {'drs\_27'};
M_.param_names_long(66) = {'drs_27'};
M_.param_names(67) = {'drs_28'};
M_.param_names_tex(67) = {'drs\_28'};
M_.param_names_long(67) = {'drs_28'};
M_.param_names(68) = {'drs_29'};
M_.param_names_tex(68) = {'drs\_29'};
M_.param_names_long(68) = {'drs_29'};
M_.param_names(69) = {'drs_30'};
M_.param_names_tex(69) = {'drs\_30'};
M_.param_names_long(69) = {'drs_30'};
M_.param_names(70) = {'drs_31'};
M_.param_names_tex(70) = {'drs\_31'};
M_.param_names_long(70) = {'drs_31'};
M_.param_names(71) = {'drs_32'};
M_.param_names_tex(71) = {'drs\_32'};
M_.param_names_long(71) = {'drs_32'};
M_.param_names(72) = {'drs_33'};
M_.param_names_tex(72) = {'drs\_33'};
M_.param_names_long(72) = {'drs_33'};
M_.param_names(73) = {'drs_34'};
M_.param_names_tex(73) = {'drs\_34'};
M_.param_names_long(73) = {'drs_34'};
M_.param_names(74) = {'drs_35'};
M_.param_names_tex(74) = {'drs\_35'};
M_.param_names_long(74) = {'drs_35'};
M_.param_names(75) = {'drs_36'};
M_.param_names_tex(75) = {'drs\_36'};
M_.param_names_long(75) = {'drs_36'};
M_.param_names(76) = {'drs_37'};
M_.param_names_tex(76) = {'drs\_37'};
M_.param_names_long(76) = {'drs_37'};
M_.param_names(77) = {'drs_38'};
M_.param_names_tex(77) = {'drs\_38'};
M_.param_names_long(77) = {'drs_38'};
M_.param_names(78) = {'drs_39'};
M_.param_names_tex(78) = {'drs\_39'};
M_.param_names_long(78) = {'drs_39'};
M_.param_names(79) = {'drs_40'};
M_.param_names_tex(79) = {'drs\_40'};
M_.param_names_long(79) = {'drs_40'};
M_.param_names(80) = {'dws_1'};
M_.param_names_tex(80) = {'dws\_1'};
M_.param_names_long(80) = {'dws_1'};
M_.param_names(81) = {'dws_2'};
M_.param_names_tex(81) = {'dws\_2'};
M_.param_names_long(81) = {'dws_2'};
M_.param_names(82) = {'dws_3'};
M_.param_names_tex(82) = {'dws\_3'};
M_.param_names_long(82) = {'dws_3'};
M_.param_names(83) = {'dws_4'};
M_.param_names_tex(83) = {'dws\_4'};
M_.param_names_long(83) = {'dws_4'};
M_.param_names(84) = {'dws_5'};
M_.param_names_tex(84) = {'dws\_5'};
M_.param_names_long(84) = {'dws_5'};
M_.param_names(85) = {'dws_6'};
M_.param_names_tex(85) = {'dws\_6'};
M_.param_names_long(85) = {'dws_6'};
M_.param_names(86) = {'dws_7'};
M_.param_names_tex(86) = {'dws\_7'};
M_.param_names_long(86) = {'dws_7'};
M_.param_names(87) = {'dws_8'};
M_.param_names_tex(87) = {'dws\_8'};
M_.param_names_long(87) = {'dws_8'};
M_.param_names(88) = {'dws_9'};
M_.param_names_tex(88) = {'dws\_9'};
M_.param_names_long(88) = {'dws_9'};
M_.param_names(89) = {'dws_10'};
M_.param_names_tex(89) = {'dws\_10'};
M_.param_names_long(89) = {'dws_10'};
M_.param_names(90) = {'dws_11'};
M_.param_names_tex(90) = {'dws\_11'};
M_.param_names_long(90) = {'dws_11'};
M_.param_names(91) = {'dws_12'};
M_.param_names_tex(91) = {'dws\_12'};
M_.param_names_long(91) = {'dws_12'};
M_.param_names(92) = {'dws_13'};
M_.param_names_tex(92) = {'dws\_13'};
M_.param_names_long(92) = {'dws_13'};
M_.param_names(93) = {'dws_14'};
M_.param_names_tex(93) = {'dws\_14'};
M_.param_names_long(93) = {'dws_14'};
M_.param_names(94) = {'dws_15'};
M_.param_names_tex(94) = {'dws\_15'};
M_.param_names_long(94) = {'dws_15'};
M_.param_names(95) = {'dws_16'};
M_.param_names_tex(95) = {'dws\_16'};
M_.param_names_long(95) = {'dws_16'};
M_.param_names(96) = {'dws_17'};
M_.param_names_tex(96) = {'dws\_17'};
M_.param_names_long(96) = {'dws_17'};
M_.param_names(97) = {'dws_18'};
M_.param_names_tex(97) = {'dws\_18'};
M_.param_names_long(97) = {'dws_18'};
M_.param_names(98) = {'dws_19'};
M_.param_names_tex(98) = {'dws\_19'};
M_.param_names_long(98) = {'dws_19'};
M_.param_names(99) = {'dws_20'};
M_.param_names_tex(99) = {'dws\_20'};
M_.param_names_long(99) = {'dws_20'};
M_.param_names(100) = {'dws_21'};
M_.param_names_tex(100) = {'dws\_21'};
M_.param_names_long(100) = {'dws_21'};
M_.param_names(101) = {'dws_22'};
M_.param_names_tex(101) = {'dws\_22'};
M_.param_names_long(101) = {'dws_22'};
M_.param_names(102) = {'dws_23'};
M_.param_names_tex(102) = {'dws\_23'};
M_.param_names_long(102) = {'dws_23'};
M_.param_names(103) = {'dws_24'};
M_.param_names_tex(103) = {'dws\_24'};
M_.param_names_long(103) = {'dws_24'};
M_.param_names(104) = {'dws_25'};
M_.param_names_tex(104) = {'dws\_25'};
M_.param_names_long(104) = {'dws_25'};
M_.param_names(105) = {'dws_26'};
M_.param_names_tex(105) = {'dws\_26'};
M_.param_names_long(105) = {'dws_26'};
M_.param_names(106) = {'dws_27'};
M_.param_names_tex(106) = {'dws\_27'};
M_.param_names_long(106) = {'dws_27'};
M_.param_names(107) = {'dws_28'};
M_.param_names_tex(107) = {'dws\_28'};
M_.param_names_long(107) = {'dws_28'};
M_.param_names(108) = {'dws_29'};
M_.param_names_tex(108) = {'dws\_29'};
M_.param_names_long(108) = {'dws_29'};
M_.param_names(109) = {'dws_30'};
M_.param_names_tex(109) = {'dws\_30'};
M_.param_names_long(109) = {'dws_30'};
M_.param_names(110) = {'dws_31'};
M_.param_names_tex(110) = {'dws\_31'};
M_.param_names_long(110) = {'dws_31'};
M_.param_names(111) = {'dws_32'};
M_.param_names_tex(111) = {'dws\_32'};
M_.param_names_long(111) = {'dws_32'};
M_.param_names(112) = {'dws_33'};
M_.param_names_tex(112) = {'dws\_33'};
M_.param_names_long(112) = {'dws_33'};
M_.param_names(113) = {'dws_34'};
M_.param_names_tex(113) = {'dws\_34'};
M_.param_names_long(113) = {'dws_34'};
M_.param_names(114) = {'dws_35'};
M_.param_names_tex(114) = {'dws\_35'};
M_.param_names_long(114) = {'dws_35'};
M_.param_names(115) = {'dws_36'};
M_.param_names_tex(115) = {'dws\_36'};
M_.param_names_long(115) = {'dws_36'};
M_.param_names(116) = {'dws_37'};
M_.param_names_tex(116) = {'dws\_37'};
M_.param_names_long(116) = {'dws_37'};
M_.param_names(117) = {'dws_38'};
M_.param_names_tex(117) = {'dws\_38'};
M_.param_names_long(117) = {'dws_38'};
M_.param_names(118) = {'dws_39'};
M_.param_names_tex(118) = {'dws\_39'};
M_.param_names_long(118) = {'dws_39'};
M_.param_names(119) = {'dws_40'};
M_.param_names_tex(119) = {'dws\_40'};
M_.param_names_long(119) = {'dws_40'};
M_.param_names(120) = {'gn_1'};
M_.param_names_tex(120) = {'gn\_1'};
M_.param_names_long(120) = {'gn_1'};
M_.param_names(121) = {'gn_2'};
M_.param_names_tex(121) = {'gn\_2'};
M_.param_names_long(121) = {'gn_2'};
M_.param_names(122) = {'gn_3'};
M_.param_names_tex(122) = {'gn\_3'};
M_.param_names_long(122) = {'gn_3'};
M_.param_names(123) = {'gn_4'};
M_.param_names_tex(123) = {'gn\_4'};
M_.param_names_long(123) = {'gn_4'};
M_.param_names(124) = {'gn_5'};
M_.param_names_tex(124) = {'gn\_5'};
M_.param_names_long(124) = {'gn_5'};
M_.param_names(125) = {'gn_6'};
M_.param_names_tex(125) = {'gn\_6'};
M_.param_names_long(125) = {'gn_6'};
M_.param_names(126) = {'gn_7'};
M_.param_names_tex(126) = {'gn\_7'};
M_.param_names_long(126) = {'gn_7'};
M_.param_names(127) = {'gn_8'};
M_.param_names_tex(127) = {'gn\_8'};
M_.param_names_long(127) = {'gn_8'};
M_.param_names(128) = {'gn_9'};
M_.param_names_tex(128) = {'gn\_9'};
M_.param_names_long(128) = {'gn_9'};
M_.param_names(129) = {'gn_10'};
M_.param_names_tex(129) = {'gn\_10'};
M_.param_names_long(129) = {'gn_10'};
M_.param_names(130) = {'gn_11'};
M_.param_names_tex(130) = {'gn\_11'};
M_.param_names_long(130) = {'gn_11'};
M_.param_names(131) = {'gn_12'};
M_.param_names_tex(131) = {'gn\_12'};
M_.param_names_long(131) = {'gn_12'};
M_.param_names(132) = {'gn_13'};
M_.param_names_tex(132) = {'gn\_13'};
M_.param_names_long(132) = {'gn_13'};
M_.param_names(133) = {'gn_14'};
M_.param_names_tex(133) = {'gn\_14'};
M_.param_names_long(133) = {'gn_14'};
M_.param_names(134) = {'gn_15'};
M_.param_names_tex(134) = {'gn\_15'};
M_.param_names_long(134) = {'gn_15'};
M_.param_names(135) = {'gn_16'};
M_.param_names_tex(135) = {'gn\_16'};
M_.param_names_long(135) = {'gn_16'};
M_.param_names(136) = {'gn_17'};
M_.param_names_tex(136) = {'gn\_17'};
M_.param_names_long(136) = {'gn_17'};
M_.param_names(137) = {'gn_18'};
M_.param_names_tex(137) = {'gn\_18'};
M_.param_names_long(137) = {'gn_18'};
M_.param_names(138) = {'gn_19'};
M_.param_names_tex(138) = {'gn\_19'};
M_.param_names_long(138) = {'gn_19'};
M_.param_names(139) = {'gn_20'};
M_.param_names_tex(139) = {'gn\_20'};
M_.param_names_long(139) = {'gn_20'};
M_.param_names(140) = {'gn_21'};
M_.param_names_tex(140) = {'gn\_21'};
M_.param_names_long(140) = {'gn_21'};
M_.param_names(141) = {'gn_22'};
M_.param_names_tex(141) = {'gn\_22'};
M_.param_names_long(141) = {'gn_22'};
M_.param_names(142) = {'gn_23'};
M_.param_names_tex(142) = {'gn\_23'};
M_.param_names_long(142) = {'gn_23'};
M_.param_names(143) = {'gn_24'};
M_.param_names_tex(143) = {'gn\_24'};
M_.param_names_long(143) = {'gn_24'};
M_.param_names(144) = {'gn_25'};
M_.param_names_tex(144) = {'gn\_25'};
M_.param_names_long(144) = {'gn_25'};
M_.param_names(145) = {'gn_26'};
M_.param_names_tex(145) = {'gn\_26'};
M_.param_names_long(145) = {'gn_26'};
M_.param_names(146) = {'gn_27'};
M_.param_names_tex(146) = {'gn\_27'};
M_.param_names_long(146) = {'gn_27'};
M_.param_names(147) = {'gn_28'};
M_.param_names_tex(147) = {'gn\_28'};
M_.param_names_long(147) = {'gn_28'};
M_.param_names(148) = {'gn_29'};
M_.param_names_tex(148) = {'gn\_29'};
M_.param_names_long(148) = {'gn_29'};
M_.param_names(149) = {'gn_30'};
M_.param_names_tex(149) = {'gn\_30'};
M_.param_names_long(149) = {'gn_30'};
M_.param_names(150) = {'gn_31'};
M_.param_names_tex(150) = {'gn\_31'};
M_.param_names_long(150) = {'gn_31'};
M_.param_names(151) = {'gn_32'};
M_.param_names_tex(151) = {'gn\_32'};
M_.param_names_long(151) = {'gn_32'};
M_.param_names(152) = {'gn_33'};
M_.param_names_tex(152) = {'gn\_33'};
M_.param_names_long(152) = {'gn_33'};
M_.param_names(153) = {'gn_34'};
M_.param_names_tex(153) = {'gn\_34'};
M_.param_names_long(153) = {'gn_34'};
M_.param_names(154) = {'gn_35'};
M_.param_names_tex(154) = {'gn\_35'};
M_.param_names_long(154) = {'gn_35'};
M_.param_names(155) = {'gn_36'};
M_.param_names_tex(155) = {'gn\_36'};
M_.param_names_long(155) = {'gn_36'};
M_.param_names(156) = {'gn_37'};
M_.param_names_tex(156) = {'gn\_37'};
M_.param_names_long(156) = {'gn_37'};
M_.param_names(157) = {'gn_38'};
M_.param_names_tex(157) = {'gn\_38'};
M_.param_names_long(157) = {'gn_38'};
M_.param_names(158) = {'gn_39'};
M_.param_names_tex(158) = {'gn\_39'};
M_.param_names_long(158) = {'gn_39'};
M_.param_names(159) = {'gn_40'};
M_.param_names_tex(159) = {'gn\_40'};
M_.param_names_long(159) = {'gn_40'};
M_.param_names(160) = {'Rh_1'};
M_.param_names_tex(160) = {'Rh\_1'};
M_.param_names_long(160) = {'Rh_1'};
M_.param_names(161) = {'Rh_2'};
M_.param_names_tex(161) = {'Rh\_2'};
M_.param_names_long(161) = {'Rh_2'};
M_.param_names(162) = {'Rh_3'};
M_.param_names_tex(162) = {'Rh\_3'};
M_.param_names_long(162) = {'Rh_3'};
M_.param_names(163) = {'Rh_4'};
M_.param_names_tex(163) = {'Rh\_4'};
M_.param_names_long(163) = {'Rh_4'};
M_.param_names(164) = {'Rh_5'};
M_.param_names_tex(164) = {'Rh\_5'};
M_.param_names_long(164) = {'Rh_5'};
M_.param_names(165) = {'Rh_6'};
M_.param_names_tex(165) = {'Rh\_6'};
M_.param_names_long(165) = {'Rh_6'};
M_.param_names(166) = {'Rh_7'};
M_.param_names_tex(166) = {'Rh\_7'};
M_.param_names_long(166) = {'Rh_7'};
M_.param_names(167) = {'Rh_8'};
M_.param_names_tex(167) = {'Rh\_8'};
M_.param_names_long(167) = {'Rh_8'};
M_.param_names(168) = {'Rh_9'};
M_.param_names_tex(168) = {'Rh\_9'};
M_.param_names_long(168) = {'Rh_9'};
M_.param_names(169) = {'Rh_10'};
M_.param_names_tex(169) = {'Rh\_10'};
M_.param_names_long(169) = {'Rh_10'};
M_.param_names(170) = {'Rh_11'};
M_.param_names_tex(170) = {'Rh\_11'};
M_.param_names_long(170) = {'Rh_11'};
M_.param_names(171) = {'Rh_12'};
M_.param_names_tex(171) = {'Rh\_12'};
M_.param_names_long(171) = {'Rh_12'};
M_.param_names(172) = {'Rh_13'};
M_.param_names_tex(172) = {'Rh\_13'};
M_.param_names_long(172) = {'Rh_13'};
M_.param_names(173) = {'Rh_14'};
M_.param_names_tex(173) = {'Rh\_14'};
M_.param_names_long(173) = {'Rh_14'};
M_.param_names(174) = {'Rh_15'};
M_.param_names_tex(174) = {'Rh\_15'};
M_.param_names_long(174) = {'Rh_15'};
M_.param_names(175) = {'Rh_16'};
M_.param_names_tex(175) = {'Rh\_16'};
M_.param_names_long(175) = {'Rh_16'};
M_.param_names(176) = {'Rh_17'};
M_.param_names_tex(176) = {'Rh\_17'};
M_.param_names_long(176) = {'Rh_17'};
M_.param_names(177) = {'Rh_18'};
M_.param_names_tex(177) = {'Rh\_18'};
M_.param_names_long(177) = {'Rh_18'};
M_.param_names(178) = {'Rh_19'};
M_.param_names_tex(178) = {'Rh\_19'};
M_.param_names_long(178) = {'Rh_19'};
M_.param_names(179) = {'Rh_20'};
M_.param_names_tex(179) = {'Rh\_20'};
M_.param_names_long(179) = {'Rh_20'};
M_.param_names(180) = {'Rh_21'};
M_.param_names_tex(180) = {'Rh\_21'};
M_.param_names_long(180) = {'Rh_21'};
M_.param_names(181) = {'Rh_22'};
M_.param_names_tex(181) = {'Rh\_22'};
M_.param_names_long(181) = {'Rh_22'};
M_.param_names(182) = {'Rh_23'};
M_.param_names_tex(182) = {'Rh\_23'};
M_.param_names_long(182) = {'Rh_23'};
M_.param_names(183) = {'Rh_24'};
M_.param_names_tex(183) = {'Rh\_24'};
M_.param_names_long(183) = {'Rh_24'};
M_.param_names(184) = {'Rh_25'};
M_.param_names_tex(184) = {'Rh\_25'};
M_.param_names_long(184) = {'Rh_25'};
M_.param_names(185) = {'Rh_26'};
M_.param_names_tex(185) = {'Rh\_26'};
M_.param_names_long(185) = {'Rh_26'};
M_.param_names(186) = {'Rh_27'};
M_.param_names_tex(186) = {'Rh\_27'};
M_.param_names_long(186) = {'Rh_27'};
M_.param_names(187) = {'Rh_28'};
M_.param_names_tex(187) = {'Rh\_28'};
M_.param_names_long(187) = {'Rh_28'};
M_.param_names(188) = {'Rh_29'};
M_.param_names_tex(188) = {'Rh\_29'};
M_.param_names_long(188) = {'Rh_29'};
M_.param_names(189) = {'Rh_30'};
M_.param_names_tex(189) = {'Rh\_30'};
M_.param_names_long(189) = {'Rh_30'};
M_.param_names(190) = {'Rh_31'};
M_.param_names_tex(190) = {'Rh\_31'};
M_.param_names_long(190) = {'Rh_31'};
M_.param_names(191) = {'Rh_32'};
M_.param_names_tex(191) = {'Rh\_32'};
M_.param_names_long(191) = {'Rh_32'};
M_.param_names(192) = {'Rh_33'};
M_.param_names_tex(192) = {'Rh\_33'};
M_.param_names_long(192) = {'Rh_33'};
M_.param_names(193) = {'Rh_34'};
M_.param_names_tex(193) = {'Rh\_34'};
M_.param_names_long(193) = {'Rh_34'};
M_.param_names(194) = {'Rh_35'};
M_.param_names_tex(194) = {'Rh\_35'};
M_.param_names_long(194) = {'Rh_35'};
M_.param_names(195) = {'Rh_36'};
M_.param_names_tex(195) = {'Rh\_36'};
M_.param_names_long(195) = {'Rh_36'};
M_.param_names(196) = {'Rh_37'};
M_.param_names_tex(196) = {'Rh\_37'};
M_.param_names_long(196) = {'Rh_37'};
M_.param_names(197) = {'Rh_38'};
M_.param_names_tex(197) = {'Rh\_38'};
M_.param_names_long(197) = {'Rh_38'};
M_.param_names(198) = {'Rh_39'};
M_.param_names_tex(198) = {'Rh\_39'};
M_.param_names_long(198) = {'Rh_39'};
M_.param_names(199) = {'Rh_40'};
M_.param_names_tex(199) = {'Rh\_40'};
M_.param_names_long(199) = {'Rh_40'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 152;
M_.param_nbr = 199;
M_.orig_endo_nbr = 72;
M_.aux_vars(1).endo_index = 73;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 27;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'gw(-1)';
M_.aux_vars(2).endo_index = 74;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 38;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'k(-1)';
M_.aux_vars(3).endo_index = 75;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 47;
M_.aux_vars(3).orig_lead_lag = -1;
M_.aux_vars(3).orig_expr = 'za(-1)';
M_.aux_vars(4).endo_index = 76;
M_.aux_vars(4).type = 1;
M_.aux_vars(4).orig_index = 67;
M_.aux_vars(4).orig_lead_lag = -1;
M_.aux_vars(4).orig_expr = 'shockn(-1)';
M_.aux_vars(5).endo_index = 77;
M_.aux_vars(5).type = 1;
M_.aux_vars(5).orig_index = 67;
M_.aux_vars(5).orig_lead_lag = -2;
M_.aux_vars(5).orig_expr = 'AUX_ENDO_LAG_66_1(-1)';
M_.aux_vars(6).endo_index = 78;
M_.aux_vars(6).type = 1;
M_.aux_vars(6).orig_index = 67;
M_.aux_vars(6).orig_lead_lag = -3;
M_.aux_vars(6).orig_expr = 'AUX_ENDO_LAG_66_2(-1)';
M_.aux_vars(7).endo_index = 79;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 67;
M_.aux_vars(7).orig_lead_lag = -4;
M_.aux_vars(7).orig_expr = 'AUX_ENDO_LAG_66_3(-1)';
M_.aux_vars(8).endo_index = 80;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 67;
M_.aux_vars(8).orig_lead_lag = -5;
M_.aux_vars(8).orig_expr = 'AUX_ENDO_LAG_66_4(-1)';
M_.aux_vars(9).endo_index = 81;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 67;
M_.aux_vars(9).orig_lead_lag = -6;
M_.aux_vars(9).orig_expr = 'AUX_ENDO_LAG_66_5(-1)';
M_.aux_vars(10).endo_index = 82;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 67;
M_.aux_vars(10).orig_lead_lag = -7;
M_.aux_vars(10).orig_expr = 'AUX_ENDO_LAG_66_6(-1)';
M_.aux_vars(11).endo_index = 83;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 67;
M_.aux_vars(11).orig_lead_lag = -8;
M_.aux_vars(11).orig_expr = 'AUX_ENDO_LAG_66_7(-1)';
M_.aux_vars(12).endo_index = 84;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 67;
M_.aux_vars(12).orig_lead_lag = -9;
M_.aux_vars(12).orig_expr = 'AUX_ENDO_LAG_66_8(-1)';
M_.aux_vars(13).endo_index = 85;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 67;
M_.aux_vars(13).orig_lead_lag = -10;
M_.aux_vars(13).orig_expr = 'AUX_ENDO_LAG_66_9(-1)';
M_.aux_vars(14).endo_index = 86;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 67;
M_.aux_vars(14).orig_lead_lag = -11;
M_.aux_vars(14).orig_expr = 'AUX_ENDO_LAG_66_10(-1)';
M_.aux_vars(15).endo_index = 87;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 67;
M_.aux_vars(15).orig_lead_lag = -12;
M_.aux_vars(15).orig_expr = 'AUX_ENDO_LAG_66_11(-1)';
M_.aux_vars(16).endo_index = 88;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 67;
M_.aux_vars(16).orig_lead_lag = -13;
M_.aux_vars(16).orig_expr = 'AUX_ENDO_LAG_66_12(-1)';
M_.aux_vars(17).endo_index = 89;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 67;
M_.aux_vars(17).orig_lead_lag = -14;
M_.aux_vars(17).orig_expr = 'AUX_ENDO_LAG_66_13(-1)';
M_.aux_vars(18).endo_index = 90;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 67;
M_.aux_vars(18).orig_lead_lag = -15;
M_.aux_vars(18).orig_expr = 'AUX_ENDO_LAG_66_14(-1)';
M_.aux_vars(19).endo_index = 91;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 67;
M_.aux_vars(19).orig_lead_lag = -16;
M_.aux_vars(19).orig_expr = 'AUX_ENDO_LAG_66_15(-1)';
M_.aux_vars(20).endo_index = 92;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 67;
M_.aux_vars(20).orig_lead_lag = -17;
M_.aux_vars(20).orig_expr = 'AUX_ENDO_LAG_66_16(-1)';
M_.aux_vars(21).endo_index = 93;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 67;
M_.aux_vars(21).orig_lead_lag = -18;
M_.aux_vars(21).orig_expr = 'AUX_ENDO_LAG_66_17(-1)';
M_.aux_vars(22).endo_index = 94;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 67;
M_.aux_vars(22).orig_lead_lag = -19;
M_.aux_vars(22).orig_expr = 'AUX_ENDO_LAG_66_18(-1)';
M_.aux_vars(23).endo_index = 95;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 67;
M_.aux_vars(23).orig_lead_lag = -20;
M_.aux_vars(23).orig_expr = 'AUX_ENDO_LAG_66_19(-1)';
M_.aux_vars(24).endo_index = 96;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 67;
M_.aux_vars(24).orig_lead_lag = -21;
M_.aux_vars(24).orig_expr = 'AUX_ENDO_LAG_66_20(-1)';
M_.aux_vars(25).endo_index = 97;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 67;
M_.aux_vars(25).orig_lead_lag = -22;
M_.aux_vars(25).orig_expr = 'AUX_ENDO_LAG_66_21(-1)';
M_.aux_vars(26).endo_index = 98;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 67;
M_.aux_vars(26).orig_lead_lag = -23;
M_.aux_vars(26).orig_expr = 'AUX_ENDO_LAG_66_22(-1)';
M_.aux_vars(27).endo_index = 99;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 67;
M_.aux_vars(27).orig_lead_lag = -24;
M_.aux_vars(27).orig_expr = 'AUX_ENDO_LAG_66_23(-1)';
M_.aux_vars(28).endo_index = 100;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 67;
M_.aux_vars(28).orig_lead_lag = -25;
M_.aux_vars(28).orig_expr = 'AUX_ENDO_LAG_66_24(-1)';
M_.aux_vars(29).endo_index = 101;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 67;
M_.aux_vars(29).orig_lead_lag = -26;
M_.aux_vars(29).orig_expr = 'AUX_ENDO_LAG_66_25(-1)';
M_.aux_vars(30).endo_index = 102;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 67;
M_.aux_vars(30).orig_lead_lag = -27;
M_.aux_vars(30).orig_expr = 'AUX_ENDO_LAG_66_26(-1)';
M_.aux_vars(31).endo_index = 103;
M_.aux_vars(31).type = 1;
M_.aux_vars(31).orig_index = 67;
M_.aux_vars(31).orig_lead_lag = -28;
M_.aux_vars(31).orig_expr = 'AUX_ENDO_LAG_66_27(-1)';
M_.aux_vars(32).endo_index = 104;
M_.aux_vars(32).type = 1;
M_.aux_vars(32).orig_index = 67;
M_.aux_vars(32).orig_lead_lag = -29;
M_.aux_vars(32).orig_expr = 'AUX_ENDO_LAG_66_28(-1)';
M_.aux_vars(33).endo_index = 105;
M_.aux_vars(33).type = 1;
M_.aux_vars(33).orig_index = 67;
M_.aux_vars(33).orig_lead_lag = -30;
M_.aux_vars(33).orig_expr = 'AUX_ENDO_LAG_66_29(-1)';
M_.aux_vars(34).endo_index = 106;
M_.aux_vars(34).type = 1;
M_.aux_vars(34).orig_index = 67;
M_.aux_vars(34).orig_lead_lag = -31;
M_.aux_vars(34).orig_expr = 'AUX_ENDO_LAG_66_30(-1)';
M_.aux_vars(35).endo_index = 107;
M_.aux_vars(35).type = 1;
M_.aux_vars(35).orig_index = 67;
M_.aux_vars(35).orig_lead_lag = -32;
M_.aux_vars(35).orig_expr = 'AUX_ENDO_LAG_66_31(-1)';
M_.aux_vars(36).endo_index = 108;
M_.aux_vars(36).type = 1;
M_.aux_vars(36).orig_index = 67;
M_.aux_vars(36).orig_lead_lag = -33;
M_.aux_vars(36).orig_expr = 'AUX_ENDO_LAG_66_32(-1)';
M_.aux_vars(37).endo_index = 109;
M_.aux_vars(37).type = 1;
M_.aux_vars(37).orig_index = 67;
M_.aux_vars(37).orig_lead_lag = -34;
M_.aux_vars(37).orig_expr = 'AUX_ENDO_LAG_66_33(-1)';
M_.aux_vars(38).endo_index = 110;
M_.aux_vars(38).type = 1;
M_.aux_vars(38).orig_index = 67;
M_.aux_vars(38).orig_lead_lag = -35;
M_.aux_vars(38).orig_expr = 'AUX_ENDO_LAG_66_34(-1)';
M_.aux_vars(39).endo_index = 111;
M_.aux_vars(39).type = 1;
M_.aux_vars(39).orig_index = 67;
M_.aux_vars(39).orig_lead_lag = -36;
M_.aux_vars(39).orig_expr = 'AUX_ENDO_LAG_66_35(-1)';
M_.aux_vars(40).endo_index = 112;
M_.aux_vars(40).type = 1;
M_.aux_vars(40).orig_index = 67;
M_.aux_vars(40).orig_lead_lag = -37;
M_.aux_vars(40).orig_expr = 'AUX_ENDO_LAG_66_36(-1)';
M_.aux_vars(41).endo_index = 113;
M_.aux_vars(41).type = 1;
M_.aux_vars(41).orig_index = 67;
M_.aux_vars(41).orig_lead_lag = -38;
M_.aux_vars(41).orig_expr = 'AUX_ENDO_LAG_66_37(-1)';
M_.aux_vars(42).endo_index = 114;
M_.aux_vars(42).type = 3;
M_.aux_vars(42).orig_index = 1;
M_.aux_vars(42).orig_lead_lag = 0;
M_.aux_vars(42).orig_expr = 'delall';
M_.aux_vars(43).endo_index = 115;
M_.aux_vars(43).type = 3;
M_.aux_vars(43).orig_index = 1;
M_.aux_vars(43).orig_lead_lag = -1;
M_.aux_vars(43).orig_expr = 'AUX_EXO_LAG_72_0(-1)';
M_.aux_vars(44).endo_index = 116;
M_.aux_vars(44).type = 3;
M_.aux_vars(44).orig_index = 1;
M_.aux_vars(44).orig_lead_lag = -2;
M_.aux_vars(44).orig_expr = 'AUX_EXO_LAG_72_1(-1)';
M_.aux_vars(45).endo_index = 117;
M_.aux_vars(45).type = 3;
M_.aux_vars(45).orig_index = 1;
M_.aux_vars(45).orig_lead_lag = -3;
M_.aux_vars(45).orig_expr = 'AUX_EXO_LAG_72_2(-1)';
M_.aux_vars(46).endo_index = 118;
M_.aux_vars(46).type = 3;
M_.aux_vars(46).orig_index = 1;
M_.aux_vars(46).orig_lead_lag = -4;
M_.aux_vars(46).orig_expr = 'AUX_EXO_LAG_72_3(-1)';
M_.aux_vars(47).endo_index = 119;
M_.aux_vars(47).type = 3;
M_.aux_vars(47).orig_index = 1;
M_.aux_vars(47).orig_lead_lag = -5;
M_.aux_vars(47).orig_expr = 'AUX_EXO_LAG_72_4(-1)';
M_.aux_vars(48).endo_index = 120;
M_.aux_vars(48).type = 3;
M_.aux_vars(48).orig_index = 1;
M_.aux_vars(48).orig_lead_lag = -6;
M_.aux_vars(48).orig_expr = 'AUX_EXO_LAG_72_5(-1)';
M_.aux_vars(49).endo_index = 121;
M_.aux_vars(49).type = 3;
M_.aux_vars(49).orig_index = 1;
M_.aux_vars(49).orig_lead_lag = -7;
M_.aux_vars(49).orig_expr = 'AUX_EXO_LAG_72_6(-1)';
M_.aux_vars(50).endo_index = 122;
M_.aux_vars(50).type = 3;
M_.aux_vars(50).orig_index = 1;
M_.aux_vars(50).orig_lead_lag = -8;
M_.aux_vars(50).orig_expr = 'AUX_EXO_LAG_72_7(-1)';
M_.aux_vars(51).endo_index = 123;
M_.aux_vars(51).type = 3;
M_.aux_vars(51).orig_index = 1;
M_.aux_vars(51).orig_lead_lag = -9;
M_.aux_vars(51).orig_expr = 'AUX_EXO_LAG_72_8(-1)';
M_.aux_vars(52).endo_index = 124;
M_.aux_vars(52).type = 3;
M_.aux_vars(52).orig_index = 1;
M_.aux_vars(52).orig_lead_lag = -10;
M_.aux_vars(52).orig_expr = 'AUX_EXO_LAG_72_9(-1)';
M_.aux_vars(53).endo_index = 125;
M_.aux_vars(53).type = 3;
M_.aux_vars(53).orig_index = 1;
M_.aux_vars(53).orig_lead_lag = -11;
M_.aux_vars(53).orig_expr = 'AUX_EXO_LAG_72_10(-1)';
M_.aux_vars(54).endo_index = 126;
M_.aux_vars(54).type = 3;
M_.aux_vars(54).orig_index = 1;
M_.aux_vars(54).orig_lead_lag = -12;
M_.aux_vars(54).orig_expr = 'AUX_EXO_LAG_72_11(-1)';
M_.aux_vars(55).endo_index = 127;
M_.aux_vars(55).type = 3;
M_.aux_vars(55).orig_index = 1;
M_.aux_vars(55).orig_lead_lag = -13;
M_.aux_vars(55).orig_expr = 'AUX_EXO_LAG_72_12(-1)';
M_.aux_vars(56).endo_index = 128;
M_.aux_vars(56).type = 3;
M_.aux_vars(56).orig_index = 1;
M_.aux_vars(56).orig_lead_lag = -14;
M_.aux_vars(56).orig_expr = 'AUX_EXO_LAG_72_13(-1)';
M_.aux_vars(57).endo_index = 129;
M_.aux_vars(57).type = 3;
M_.aux_vars(57).orig_index = 1;
M_.aux_vars(57).orig_lead_lag = -15;
M_.aux_vars(57).orig_expr = 'AUX_EXO_LAG_72_14(-1)';
M_.aux_vars(58).endo_index = 130;
M_.aux_vars(58).type = 3;
M_.aux_vars(58).orig_index = 1;
M_.aux_vars(58).orig_lead_lag = -16;
M_.aux_vars(58).orig_expr = 'AUX_EXO_LAG_72_15(-1)';
M_.aux_vars(59).endo_index = 131;
M_.aux_vars(59).type = 3;
M_.aux_vars(59).orig_index = 1;
M_.aux_vars(59).orig_lead_lag = -17;
M_.aux_vars(59).orig_expr = 'AUX_EXO_LAG_72_16(-1)';
M_.aux_vars(60).endo_index = 132;
M_.aux_vars(60).type = 3;
M_.aux_vars(60).orig_index = 1;
M_.aux_vars(60).orig_lead_lag = -18;
M_.aux_vars(60).orig_expr = 'AUX_EXO_LAG_72_17(-1)';
M_.aux_vars(61).endo_index = 133;
M_.aux_vars(61).type = 3;
M_.aux_vars(61).orig_index = 1;
M_.aux_vars(61).orig_lead_lag = -19;
M_.aux_vars(61).orig_expr = 'AUX_EXO_LAG_72_18(-1)';
M_.aux_vars(62).endo_index = 134;
M_.aux_vars(62).type = 3;
M_.aux_vars(62).orig_index = 1;
M_.aux_vars(62).orig_lead_lag = -20;
M_.aux_vars(62).orig_expr = 'AUX_EXO_LAG_72_19(-1)';
M_.aux_vars(63).endo_index = 135;
M_.aux_vars(63).type = 3;
M_.aux_vars(63).orig_index = 1;
M_.aux_vars(63).orig_lead_lag = -21;
M_.aux_vars(63).orig_expr = 'AUX_EXO_LAG_72_20(-1)';
M_.aux_vars(64).endo_index = 136;
M_.aux_vars(64).type = 3;
M_.aux_vars(64).orig_index = 1;
M_.aux_vars(64).orig_lead_lag = -22;
M_.aux_vars(64).orig_expr = 'AUX_EXO_LAG_72_21(-1)';
M_.aux_vars(65).endo_index = 137;
M_.aux_vars(65).type = 3;
M_.aux_vars(65).orig_index = 1;
M_.aux_vars(65).orig_lead_lag = -23;
M_.aux_vars(65).orig_expr = 'AUX_EXO_LAG_72_22(-1)';
M_.aux_vars(66).endo_index = 138;
M_.aux_vars(66).type = 3;
M_.aux_vars(66).orig_index = 1;
M_.aux_vars(66).orig_lead_lag = -24;
M_.aux_vars(66).orig_expr = 'AUX_EXO_LAG_72_23(-1)';
M_.aux_vars(67).endo_index = 139;
M_.aux_vars(67).type = 3;
M_.aux_vars(67).orig_index = 1;
M_.aux_vars(67).orig_lead_lag = -25;
M_.aux_vars(67).orig_expr = 'AUX_EXO_LAG_72_24(-1)';
M_.aux_vars(68).endo_index = 140;
M_.aux_vars(68).type = 3;
M_.aux_vars(68).orig_index = 1;
M_.aux_vars(68).orig_lead_lag = -26;
M_.aux_vars(68).orig_expr = 'AUX_EXO_LAG_72_25(-1)';
M_.aux_vars(69).endo_index = 141;
M_.aux_vars(69).type = 3;
M_.aux_vars(69).orig_index = 1;
M_.aux_vars(69).orig_lead_lag = -27;
M_.aux_vars(69).orig_expr = 'AUX_EXO_LAG_72_26(-1)';
M_.aux_vars(70).endo_index = 142;
M_.aux_vars(70).type = 3;
M_.aux_vars(70).orig_index = 1;
M_.aux_vars(70).orig_lead_lag = -28;
M_.aux_vars(70).orig_expr = 'AUX_EXO_LAG_72_27(-1)';
M_.aux_vars(71).endo_index = 143;
M_.aux_vars(71).type = 3;
M_.aux_vars(71).orig_index = 1;
M_.aux_vars(71).orig_lead_lag = -29;
M_.aux_vars(71).orig_expr = 'AUX_EXO_LAG_72_28(-1)';
M_.aux_vars(72).endo_index = 144;
M_.aux_vars(72).type = 3;
M_.aux_vars(72).orig_index = 1;
M_.aux_vars(72).orig_lead_lag = -30;
M_.aux_vars(72).orig_expr = 'AUX_EXO_LAG_72_29(-1)';
M_.aux_vars(73).endo_index = 145;
M_.aux_vars(73).type = 3;
M_.aux_vars(73).orig_index = 1;
M_.aux_vars(73).orig_lead_lag = -31;
M_.aux_vars(73).orig_expr = 'AUX_EXO_LAG_72_30(-1)';
M_.aux_vars(74).endo_index = 146;
M_.aux_vars(74).type = 3;
M_.aux_vars(74).orig_index = 1;
M_.aux_vars(74).orig_lead_lag = -32;
M_.aux_vars(74).orig_expr = 'AUX_EXO_LAG_72_31(-1)';
M_.aux_vars(75).endo_index = 147;
M_.aux_vars(75).type = 3;
M_.aux_vars(75).orig_index = 1;
M_.aux_vars(75).orig_lead_lag = -33;
M_.aux_vars(75).orig_expr = 'AUX_EXO_LAG_72_32(-1)';
M_.aux_vars(76).endo_index = 148;
M_.aux_vars(76).type = 3;
M_.aux_vars(76).orig_index = 1;
M_.aux_vars(76).orig_lead_lag = -34;
M_.aux_vars(76).orig_expr = 'AUX_EXO_LAG_72_33(-1)';
M_.aux_vars(77).endo_index = 149;
M_.aux_vars(77).type = 3;
M_.aux_vars(77).orig_index = 1;
M_.aux_vars(77).orig_lead_lag = -35;
M_.aux_vars(77).orig_expr = 'AUX_EXO_LAG_72_34(-1)';
M_.aux_vars(78).endo_index = 150;
M_.aux_vars(78).type = 3;
M_.aux_vars(78).orig_index = 1;
M_.aux_vars(78).orig_lead_lag = -36;
M_.aux_vars(78).orig_expr = 'AUX_EXO_LAG_72_35(-1)';
M_.aux_vars(79).endo_index = 151;
M_.aux_vars(79).type = 3;
M_.aux_vars(79).orig_index = 1;
M_.aux_vars(79).orig_lead_lag = -37;
M_.aux_vars(79).orig_expr = 'AUX_EXO_LAG_72_36(-1)';
M_.aux_vars(80).endo_index = 152;
M_.aux_vars(80).type = 3;
M_.aux_vars(80).orig_index = 1;
M_.aux_vars(80).orig_lead_lag = -38;
M_.aux_vars(80).orig_expr = 'AUX_EXO_LAG_72_37(-1)';
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
M_.orig_eq_nbr = 72;
M_.eq_nbr = 152;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 39;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 39;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 39;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 39;
M_.lead_lag_incidence = [
 1 112 0;
 2 113 264;
 3 114 265;
 0 115 266;
 4 116 267;
 5 117 0;
 6 118 0;
 7 119 0;
 8 120 0;
 9 121 0;
 0 122 0;
 0 123 0;
 0 124 0;
 0 125 0;
 0 126 0;
 10 127 0;
 11 128 0;
 0 129 0;
 0 130 268;
 0 131 269;
 0 132 270;
 0 133 271;
 0 134 272;
 0 135 273;
 12 136 0;
 13 137 0;
 14 138 0;
 15 139 274;
 16 140 0;
 0 141 0;
 0 142 0;
 0 143 0;
 17 144 0;
 18 145 0;
 0 146 0;
 0 147 0;
 19 148 0;
 20 149 0;
 21 150 0;
 0 151 0;
 0 152 0;
 0 153 0;
 0 154 275;
 0 155 276;
 0 156 0;
 22 157 0;
 23 158 0;
 0 159 0;
 0 160 0;
 24 161 0;
 0 162 0;
 25 163 0;
 0 164 0;
 26 165 0;
 0 166 0;
 0 167 0;
 0 168 0;
 0 169 0;
 0 170 0;
 27 171 0;
 28 172 0;
 0 173 277;
 0 174 0;
 0 175 0;
 0 176 0;
 0 177 0;
 29 178 0;
 30 179 0;
 31 180 0;
 0 181 0;
 0 182 0;
 0 183 0;
 32 184 0;
 33 185 0;
 34 186 0;
 35 187 0;
 36 188 0;
 37 189 0;
 38 190 0;
 39 191 0;
 40 192 0;
 41 193 0;
 42 194 0;
 43 195 0;
 44 196 0;
 45 197 0;
 46 198 0;
 47 199 0;
 48 200 0;
 49 201 0;
 50 202 0;
 51 203 0;
 52 204 0;
 53 205 0;
 54 206 0;
 55 207 0;
 56 208 0;
 57 209 0;
 58 210 0;
 59 211 0;
 60 212 0;
 61 213 0;
 62 214 0;
 63 215 0;
 64 216 0;
 65 217 0;
 66 218 0;
 67 219 0;
 68 220 0;
 69 221 0;
 70 222 0;
 71 223 0;
 72 224 0;
 73 225 0;
 74 226 0;
 75 227 0;
 76 228 0;
 77 229 0;
 78 230 0;
 79 231 0;
 80 232 0;
 81 233 0;
 82 234 0;
 83 235 0;
 84 236 0;
 85 237 0;
 86 238 0;
 87 239 0;
 88 240 0;
 89 241 0;
 90 242 0;
 91 243 0;
 92 244 0;
 93 245 0;
 94 246 0;
 95 247 0;
 96 248 0;
 97 249 0;
 98 250 0;
 99 251 0;
 100 252 0;
 101 253 0;
 102 254 0;
 103 255 0;
 104 256 0;
 105 257 0;
 106 258 0;
 107 259 0;
 108 260 0;
 109 261 0;
 110 262 0;
 111 263 0;]';
M_.nstatic = 31;
M_.nfwrd   = 10;
M_.npred   = 107;
M_.nboth   = 4;
M_.nsfwrd   = 14;
M_.nspred   = 111;
M_.ndynamic   = 121;
M_.dynamic_tmp_nbr = [38; 15; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'hw' ;
  2 , 'name' , 'Tw' ;
  3 , 'name' , 'Dr' ;
  4 , 'name' , 'ay' ;
  5 , 'name' , 'tpe' ;
  6 , 'name' , 'Pe' ;
  7 , 'name' , 'Dw' ;
  8 , 'name' , 'cw' ;
  9 , 'name' , 'cr' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'zz' ;
  13 , 'name' , 'he' ;
  14 , 'name' , 'tauwA' ;
  15 , 'name' , 'tauwE' ;
  16 , 'name' , 'tauw' ;
  17 , 'name' , 'gw' ;
  18 , 'name' , 'n' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'gn' ;
  21 , 'name' , 'gE' ;
  22 , 'name' , '22' ;
  23 , 'name' , 'fert' ;
  24 , 'name' , '24' ;
  25 , 'name' , '25' ;
  26 , 'name' , '26' ;
  27 , 'name' , 'g' ;
  28 , 'name' , '28' ;
  29 , 'name' , '29' ;
  30 , 'name' , 'mu' ;
  31 , 'name' , 'del' ;
  32 , 'name' , 'delprime' ;
  33 , 'name' , 'invG' ;
  34 , 'name' , '34' ;
  35 , 'name' , 'stoyw' ;
  36 , 'name' , 'gA' ;
  37 , 'name' , 's' ;
  38 , 'name' , 'v' ;
  39 , 'name' , 'varpi' ;
  40 , 'name' , 'j' ;
  41 , 'name' , 'lam' ;
  42 , 'name' , 'PiA' ;
  43 , 'name' , 'PiRD' ;
  44 , 'name' , 'psi' ;
  45 , 'name' , 'r' ;
  46 , 'name' , 'dr' ;
  47 , 'name' , 'dw' ;
  48 , 'name' , 'b' ;
  49 , 'name' , 'PiF' ;
  50 , 'name' , '50' ;
  51 , 'name' , 'k' ;
  52 , 'name' , 'y' ;
  53 , 'name' , 'FB' ;
  54 , 'name' , 'c' ;
  55 , 'name' , 'fa' ;
  56 , 'name' , 'far' ;
  57 , 'name' , '57' ;
  58 , 'name' , 'gpc' ;
  59 , 'name' , 'gy' ;
  60 , 'name' , '60' ;
  61 , 'name' , 'shareW' ;
  62 , 'name' , 'shareR' ;
  63 , 'name' , '63' ;
  64 , 'name' , '64' ;
  65 , 'name' , 'rstar' ;
  66 , 'name' , 'shockR' ;
  67 , 'name' , 'en' ;
  68 , 'name' , 'er' ;
  69 , 'name' , 'ey' ;
  70 , 'name' , 'shocky' ;
  71 , 'name' , 'shockr' ;
  72 , 'name' , 'shockn' ;
};
M_.mapping.FB.eqidx = [49 53 55 ];
M_.mapping.rstar.eqidx = [49 50 65 ];
M_.mapping.r.eqidx = [1 2 3 6 7 8 9 10 11 37 38 39 40 42 43 45 49 50 56 ];
M_.mapping.rk.eqidx = [25 45 49 ];
M_.mapping.w.eqidx = [1 4 15 22 24 56 ];
M_.mapping.b.eqidx = [48 49 55 ];
M_.mapping.y.eqidx = [52 53 58 59 ];
M_.mapping.varpi.eqidx = [39 40 41 42 48 53 ];
M_.mapping.s.eqidx = [34 37 43 48 53 ];
M_.mapping.inv.eqidx = [33 51 53 ];
M_.mapping.invG.eqidx = [33 ];
M_.mapping.c.eqidx = [53 54 ];
M_.mapping.cw.eqidx = [8 54 56 ];
M_.mapping.cr.eqidx = [9 54 56 ];
M_.mapping.tauw.eqidx = [2 16 56 ];
M_.mapping.N.eqidx = [28 29 30 52 ];
M_.mapping.stoyw.eqidx = [34 35 ];
M_.mapping.PiF.eqidx = [46 47 49 ];
M_.mapping.Tw.eqidx = [2 8 ];
M_.mapping.hw.eqidx = [1 8 ];
M_.mapping.Dr.eqidx = [3 7 9 ];
M_.mapping.Dw.eqidx = [7 8 ];
M_.mapping.ep.eqidx = [7 9 10 12 ];
M_.mapping.varsig.eqidx = [8 9 10 11 22 ];
M_.mapping.zetar.eqidx = [3 6 7 13 19 20 35 61 62 63 64 ];
M_.mapping.zetay.eqidx = [13 17 18 20 21 22 35 61 62 63 64 ];
M_.mapping.gw.eqidx = [1 2 3 4 6 7 17 18 19 20 21 22 28 ];
M_.mapping.g.eqidx = [1 2 3 4 5 6 7 8 9 22 25 26 27 28 33 37 38 39 40 42 43 49 51 56 58 59 ];
M_.mapping.gE.eqidx = [5 21 28 ];
M_.mapping.iy.eqidx = [15 21 22 ];
M_.mapping.gpc.eqidx = [58 ];
M_.mapping.zz.eqidx = [1 2 7 11 12 ];
M_.mapping.far.eqidx = [9 46 56 57 ];
M_.mapping.faw.eqidx = [8 47 56 57 ];
M_.mapping.dr.eqidx = [3 46 56 ];
M_.mapping.dw.eqidx = [7 47 56 ];
M_.mapping.mu.eqidx = [24 25 26 27 28 29 30 38 42 52 ];
M_.mapping.k.eqidx = [25 26 28 49 51 55 ];
M_.mapping.u.eqidx = [26 28 31 32 ];
M_.mapping.del.eqidx = [25 31 51 ];
M_.mapping.delprime.eqidx = [26 31 32 ];
M_.mapping.gM.eqidx = [27 28 ];
M_.mapping.v.eqidx = [29 38 39 40 44 ];
M_.mapping.j.eqidx = [37 39 40 42 43 ];
M_.mapping.lam.eqidx = [36 39 40 41 ];
M_.mapping.gA.eqidx = [27 34 36 37 38 39 40 42 43 ];
M_.mapping.za.eqidx = [34 36 37 39 40 41 42 43 48 53 ];
M_.mapping.PiA.eqidx = [42 47 49 ];
M_.mapping.PiRD.eqidx = [43 47 49 ];
M_.mapping.fa.eqidx = [46 47 49 55 57 ];
M_.mapping.n.eqidx = [18 20 23 ];
M_.mapping.gn.eqidx = [20 35 58 60 ];
M_.mapping.gy.eqidx = [59 ];
M_.mapping.gamma.eqidx = [3 5 6 10 19 ];
M_.mapping.OMEGAY.eqidx = [17 21 22 23 35 ];
M_.mapping.fert.eqidx = [23 ];
M_.mapping.psi.eqidx = [34 41 44 52 ];
M_.mapping.tauwE.eqidx = [15 16 53 ];
M_.mapping.tauwA.eqidx = [14 16 ];
M_.mapping.ay.eqidx = [4 5 ];
M_.mapping.tpe.eqidx = [5 6 14 56 ];
M_.mapping.Pe.eqidx = [6 7 9 ];
M_.mapping.he.eqidx = [13 14 53 ];
M_.mapping.en.eqidx = [60 67 ];
M_.mapping.ey.eqidx = [63 69 ];
M_.mapping.er.eqidx = [64 68 ];
M_.mapping.shockn.eqidx = [67 72 ];
M_.mapping.shocky.eqidx = [69 70 ];
M_.mapping.shockr.eqidx = [68 71 ];
M_.mapping.shareW.eqidx = [61 ];
M_.mapping.shareR.eqidx = [62 ];
M_.mapping.shockR.eqidx = [65 66 ];
M_.mapping.delall.eqidx = [66 70 71 72 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 5 6 7 8 9 10 16 17 25 26 27 28 29 33 34 37 38 39 46 47 50 52 54 60 61 67 68 69 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(152, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(199, 1);
M_.endo_trends = struct('deflator', cell(152, 1), 'log_deflator', cell(152, 1), 'growth_factor', cell(152, 1), 'log_growth_factor', cell(152, 1));
M_.NNZDerivatives = [674; -1; -1; ];
M_.static_tmp_nbr = [29; 17; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinal_ext1;
load vecSSFinal_ext1;
load endpoint;
load pred_param;
set_param_value('R_SS',R_SS)
set_param_value('ZETAYSS',zetay_SS)
set_param_value('ZETARSS',zetar_SS)
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
set_param_value('OMEGAR',omegar)
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
set_param_value('FERTSS',fert_SS)
set_param_value('PSISS',psi_SS)
set_param_value('PERS',rho)
set_param_value('NP',np)
set_param_value('DELTAHE',deltaHE)
set_param_value('ETAR',etar)
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
set_param_value('gn_31',gn_31)
set_param_value('gn_32',gn_32)
set_param_value('gn_33',gn_33)
set_param_value('gn_34',gn_34)
set_param_value('gn_35',gn_35)
set_param_value('gn_36',gn_36)
set_param_value('gn_37',gn_37)
set_param_value('gn_38',gn_38)
set_param_value('gn_39',gn_39)
set_param_value('gn_40',gn_40)
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
set_param_value('dws_31',dws_31)
set_param_value('dws_32',dws_32)
set_param_value('dws_33',dws_33)
set_param_value('dws_34',dws_34)
set_param_value('dws_35',dws_35)
set_param_value('dws_36',dws_36)
set_param_value('dws_37',dws_37)
set_param_value('dws_38',dws_38)
set_param_value('dws_39',dws_39)
set_param_value('dws_40',dws_40)
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
set_param_value('drs_31',drs_31)
set_param_value('drs_32',drs_32)
set_param_value('drs_33',drs_33)
set_param_value('drs_34',drs_34)
set_param_value('drs_35',drs_35)
set_param_value('drs_36',drs_36)
set_param_value('drs_37',drs_37)
set_param_value('drs_38',drs_38)
set_param_value('drs_39',drs_39)
set_param_value('drs_40',drs_40)
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
set_param_value('Rh_31',Rh_31)
set_param_value('Rh_32',Rh_32)
set_param_value('Rh_33',Rh_33)
set_param_value('Rh_34',Rh_34)
set_param_value('Rh_35',Rh_35)
set_param_value('Rh_36',Rh_36)
set_param_value('Rh_37',Rh_37)
set_param_value('Rh_38',Rh_38)
set_param_value('Rh_39',Rh_39)
set_param_value('Rh_40',Rh_40)
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0;
oo_.steady_state(2) = M_.params(1);
oo_.steady_state(53) = g_SS;
oo_.steady_state(59) = tauwA_SS;
oo_.steady_state(58) = tauwE_SS;
oo_.steady_state(61) = tpe_SS;
oo_.steady_state(63) = he_SS;
oo_.steady_state(60) = ay_SS;
oo_.steady_state(62) = Pe_SS;
oo_.steady_state(19) = Tw_SS;
oo_.steady_state(15) = tauw_SS;
oo_.steady_state(20) = hw_SS;
oo_.steady_state(21) = Dr_SS;
oo_.steady_state(22) = Dw_SS;
oo_.steady_state(13) = cw_SS;
oo_.steady_state(14) = cr_SS;
oo_.steady_state(23) = Ep_SS;
oo_.steady_state(24) = varsig_SS;
oo_.steady_state(25) = zetar_SS;
oo_.steady_state(26) = zetay_SS;
oo_.steady_state(28) = g_SS;
oo_.steady_state(27) = gw_SS;
oo_.steady_state(32) = Z_SS;
oo_.steady_state(33) = far_SS;
oo_.steady_state(34) = faw_SS;
oo_.steady_state(35) = dr_SS;
oo_.steady_state(36) = dw_SS;
oo_.steady_state(5) = w_SS;
oo_.steady_state(37) = mu_SS;
oo_.steady_state(38) = k_SS;
oo_.steady_state(39) = U_SS;
oo_.steady_state(40) = delta;
oo_.steady_state(41) = M_.params(28);
oo_.steady_state(11) = g_SS;
oo_.steady_state(42) = gm_SS;
oo_.steady_state(16) = 1;
oo_.steady_state(4) = rk_SS;
oo_.steady_state(9) = s_SS;
oo_.steady_state(43) = v_SS;
oo_.steady_state(44) = j_SS;
oo_.steady_state(8) = varpi_SS;
oo_.steady_state(45) = lambda_SS;
oo_.steady_state(46) = ga_SS;
oo_.steady_state(29) = gE_SS;
oo_.steady_state(30) = iy_SS;
oo_.steady_state(47) = za_SS;
oo_.steady_state(48) = PiA_SS;
oo_.steady_state(49) = 0;
oo_.steady_state(57) = psi_SS;
oo_.steady_state(3) = M_.params(1);
oo_.steady_state(6) = b_SS;
oo_.steady_state(18) = PiF_SS;
oo_.steady_state(7) = y_SS;
oo_.steady_state(12) = c_SS;
oo_.steady_state(10) = inv_SS;
oo_.steady_state(50) = fa_SS;
oo_.steady_state(51) = n_SS;
oo_.steady_state(52) = n_SS;
oo_.steady_state(54) = gamma_SS;
oo_.steady_state(31) = g_SS/n_SS;
oo_.steady_state(17) = stoyw_SS;
oo_.steady_state(64) = 0;
oo_.steady_state(67) = 0;
oo_.steady_state(56) = fert_SS;
oo_.steady_state(73)=oo_.steady_state(27);
oo_.steady_state(74)=oo_.steady_state(38);
oo_.steady_state(75)=oo_.steady_state(47);
oo_.steady_state(76)=oo_.steady_state(67);
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
oo_.steady_state(97)=oo_.steady_state(96);
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
oo_.steady_state(114)=oo_.exo_steady_state(1);
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
oo_.steady_state(126)=oo_.steady_state(125);
oo_.steady_state(127)=oo_.steady_state(126);
oo_.steady_state(128)=oo_.steady_state(127);
oo_.steady_state(129)=oo_.steady_state(128);
oo_.steady_state(130)=oo_.steady_state(129);
oo_.steady_state(131)=oo_.steady_state(130);
oo_.steady_state(132)=oo_.steady_state(131);
oo_.steady_state(133)=oo_.steady_state(132);
oo_.steady_state(134)=oo_.steady_state(133);
oo_.steady_state(135)=oo_.steady_state(134);
oo_.steady_state(136)=oo_.steady_state(135);
oo_.steady_state(137)=oo_.steady_state(136);
oo_.steady_state(138)=oo_.steady_state(137);
oo_.steady_state(139)=oo_.steady_state(138);
oo_.steady_state(140)=oo_.steady_state(139);
oo_.steady_state(141)=oo_.steady_state(140);
oo_.steady_state(142)=oo_.steady_state(141);
oo_.steady_state(143)=oo_.steady_state(142);
oo_.steady_state(144)=oo_.steady_state(143);
oo_.steady_state(145)=oo_.steady_state(144);
oo_.steady_state(146)=oo_.steady_state(145);
oo_.steady_state(147)=oo_.steady_state(146);
oo_.steady_state(148)=oo_.steady_state(147);
oo_.steady_state(149)=oo_.steady_state(148);
oo_.steady_state(150)=oo_.steady_state(149);
oo_.steady_state(151)=oo_.steady_state(150);
oo_.steady_state(152)=oo_.steady_state(151);
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
options_.solve_algo=1;
options_.irf = 40;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save Case11oo_ oo_
save Case11M_ M_
write_latex_parameter_table;
write_latex_definitions;
collect_latex_files;
if system(['pdflatex -halt-on-error -interaction=batchmode ' M_.fname '_TeX_binder.tex'])
error('TeX-File did not compile.')
end
save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('DemoMediumRun_pop_pension_Kor_SOE_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
