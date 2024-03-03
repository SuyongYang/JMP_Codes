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
M_.endo_names = cell(128,1);
M_.endo_names_tex = cell(128,1);
M_.endo_names_long = cell(128,1);
M_.endo_names(1) = {'shockR'};
M_.endo_names_tex(1) = {'shockR'};
M_.endo_names_long(1) = {'shockR'};
M_.endo_names(2) = {'path'};
M_.endo_names_tex(2) = {'path'};
M_.endo_names_long(2) = {'path'};
M_.endo_names(3) = {'fee'};
M_.endo_names_tex(3) = {'fee'};
M_.endo_names_long(3) = {'fee'};
M_.endo_names(4) = {'ca'};
M_.endo_names_tex(4) = {'ca'};
M_.endo_names_long(4) = {'ca'};
M_.endo_names(5) = {'rstar'};
M_.endo_names_tex(5) = {'rstar'};
M_.endo_names_long(5) = {'rstar'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'r'};
M_.endo_names_long(6) = {'r'};
M_.endo_names(7) = {'rk'};
M_.endo_names_tex(7) = {'rk'};
M_.endo_names_long(7) = {'rk'};
M_.endo_names(8) = {'w'};
M_.endo_names_tex(8) = {'w'};
M_.endo_names_long(8) = {'w'};
M_.endo_names(9) = {'b'};
M_.endo_names_tex(9) = {'b'};
M_.endo_names_long(9) = {'b'};
M_.endo_names(10) = {'y'};
M_.endo_names_tex(10) = {'y'};
M_.endo_names_long(10) = {'y'};
M_.endo_names(11) = {'varpi'};
M_.endo_names_tex(11) = {'varpi'};
M_.endo_names_long(11) = {'varpi'};
M_.endo_names(12) = {'s'};
M_.endo_names_tex(12) = {'s'};
M_.endo_names_long(12) = {'s'};
M_.endo_names(13) = {'inv'};
M_.endo_names_tex(13) = {'inv'};
M_.endo_names_long(13) = {'inv'};
M_.endo_names(14) = {'c'};
M_.endo_names_tex(14) = {'c'};
M_.endo_names_long(14) = {'c'};
M_.endo_names(15) = {'cw'};
M_.endo_names_tex(15) = {'cw'};
M_.endo_names_long(15) = {'cw'};
M_.endo_names(16) = {'cwper'};
M_.endo_names_tex(16) = {'cwper'};
M_.endo_names_long(16) = {'cwper'};
M_.endo_names(17) = {'cr'};
M_.endo_names_tex(17) = {'cr'};
M_.endo_names_long(17) = {'cr'};
M_.endo_names(18) = {'crper'};
M_.endo_names_tex(18) = {'crper'};
M_.endo_names_long(18) = {'crper'};
M_.endo_names(19) = {'tauw'};
M_.endo_names_tex(19) = {'tauw'};
M_.endo_names_long(19) = {'tauw'};
M_.endo_names(20) = {'N'};
M_.endo_names_tex(20) = {'N'};
M_.endo_names_long(20) = {'N'};
M_.endo_names(21) = {'stoyw'};
M_.endo_names_tex(21) = {'stoyw'};
M_.endo_names_long(21) = {'stoyw'};
M_.endo_names(22) = {'PiF'};
M_.endo_names_tex(22) = {'PiF'};
M_.endo_names_long(22) = {'PiF'};
M_.endo_names(23) = {'Tw'};
M_.endo_names_tex(23) = {'Tw'};
M_.endo_names_long(23) = {'Tw'};
M_.endo_names(24) = {'hw'};
M_.endo_names_tex(24) = {'hw'};
M_.endo_names_long(24) = {'hw'};
M_.endo_names(25) = {'Dr'};
M_.endo_names_tex(25) = {'Dr'};
M_.endo_names_long(25) = {'Dr'};
M_.endo_names(26) = {'Dw'};
M_.endo_names_tex(26) = {'Dw'};
M_.endo_names_long(26) = {'Dw'};
M_.endo_names(27) = {'ep'};
M_.endo_names_tex(27) = {'ep'};
M_.endo_names_long(27) = {'ep'};
M_.endo_names(28) = {'varsig'};
M_.endo_names_tex(28) = {'varsig'};
M_.endo_names_long(28) = {'varsig'};
M_.endo_names(29) = {'zetar'};
M_.endo_names_tex(29) = {'zetar'};
M_.endo_names_long(29) = {'zetar'};
M_.endo_names(30) = {'zetay'};
M_.endo_names_tex(30) = {'zetay'};
M_.endo_names_long(30) = {'zetay'};
M_.endo_names(31) = {'gw'};
M_.endo_names_tex(31) = {'gw'};
M_.endo_names_long(31) = {'gw'};
M_.endo_names(32) = {'g'};
M_.endo_names_tex(32) = {'g'};
M_.endo_names_long(32) = {'g'};
M_.endo_names(33) = {'gE'};
M_.endo_names_tex(33) = {'gE'};
M_.endo_names_long(33) = {'gE'};
M_.endo_names(34) = {'iy'};
M_.endo_names_tex(34) = {'iy'};
M_.endo_names_long(34) = {'iy'};
M_.endo_names(35) = {'gpc'};
M_.endo_names_tex(35) = {'gpc'};
M_.endo_names_long(35) = {'gpc'};
M_.endo_names(36) = {'gy'};
M_.endo_names_tex(36) = {'gy'};
M_.endo_names_long(36) = {'gy'};
M_.endo_names(37) = {'zz'};
M_.endo_names_tex(37) = {'zz'};
M_.endo_names_long(37) = {'zz'};
M_.endo_names(38) = {'far'};
M_.endo_names_tex(38) = {'far'};
M_.endo_names_long(38) = {'far'};
M_.endo_names(39) = {'faw'};
M_.endo_names_tex(39) = {'faw'};
M_.endo_names_long(39) = {'faw'};
M_.endo_names(40) = {'dr'};
M_.endo_names_tex(40) = {'dr'};
M_.endo_names_long(40) = {'dr'};
M_.endo_names(41) = {'dw'};
M_.endo_names_tex(41) = {'dw'};
M_.endo_names_long(41) = {'dw'};
M_.endo_names(42) = {'mu'};
M_.endo_names_tex(42) = {'mu'};
M_.endo_names_long(42) = {'mu'};
M_.endo_names(43) = {'k'};
M_.endo_names_tex(43) = {'k'};
M_.endo_names_long(43) = {'k'};
M_.endo_names(44) = {'u'};
M_.endo_names_tex(44) = {'u'};
M_.endo_names_long(44) = {'u'};
M_.endo_names(45) = {'del'};
M_.endo_names_tex(45) = {'del'};
M_.endo_names_long(45) = {'del'};
M_.endo_names(46) = {'delprime'};
M_.endo_names_tex(46) = {'delprime'};
M_.endo_names_long(46) = {'delprime'};
M_.endo_names(47) = {'gM'};
M_.endo_names_tex(47) = {'gM'};
M_.endo_names_long(47) = {'gM'};
M_.endo_names(48) = {'v'};
M_.endo_names_tex(48) = {'v'};
M_.endo_names_long(48) = {'v'};
M_.endo_names(49) = {'j'};
M_.endo_names_tex(49) = {'j'};
M_.endo_names_long(49) = {'j'};
M_.endo_names(50) = {'lam'};
M_.endo_names_tex(50) = {'lam'};
M_.endo_names_long(50) = {'lam'};
M_.endo_names(51) = {'gA'};
M_.endo_names_tex(51) = {'gA'};
M_.endo_names_long(51) = {'gA'};
M_.endo_names(52) = {'za'};
M_.endo_names_tex(52) = {'za'};
M_.endo_names_long(52) = {'za'};
M_.endo_names(53) = {'PiA'};
M_.endo_names_tex(53) = {'PiA'};
M_.endo_names_long(53) = {'PiA'};
M_.endo_names(54) = {'PiRD'};
M_.endo_names_tex(54) = {'PiRD'};
M_.endo_names_long(54) = {'PiRD'};
M_.endo_names(55) = {'fa'};
M_.endo_names_tex(55) = {'fa'};
M_.endo_names_long(55) = {'fa'};
M_.endo_names(56) = {'n'};
M_.endo_names_tex(56) = {'n'};
M_.endo_names_long(56) = {'n'};
M_.endo_names(57) = {'gn'};
M_.endo_names_tex(57) = {'gn'};
M_.endo_names_long(57) = {'gn'};
M_.endo_names(58) = {'gamma'};
M_.endo_names_tex(58) = {'gamma'};
M_.endo_names_long(58) = {'gamma'};
M_.endo_names(59) = {'er'};
M_.endo_names_tex(59) = {'er'};
M_.endo_names_long(59) = {'er'};
M_.endo_names(60) = {'ey'};
M_.endo_names_tex(60) = {'ey'};
M_.endo_names_long(60) = {'ey'};
M_.endo_names(61) = {'en'};
M_.endo_names_tex(61) = {'en'};
M_.endo_names_long(61) = {'en'};
M_.endo_names(62) = {'psi'};
M_.endo_names_tex(62) = {'psi'};
M_.endo_names_long(62) = {'psi'};
M_.endo_names(63) = {'shockr'};
M_.endo_names_tex(63) = {'shockr'};
M_.endo_names_long(63) = {'shockr'};
M_.endo_names(64) = {'shocky'};
M_.endo_names_tex(64) = {'shocky'};
M_.endo_names_long(64) = {'shocky'};
M_.endo_names(65) = {'shockn'};
M_.endo_names_tex(65) = {'shockn'};
M_.endo_names_long(65) = {'shockn'};
M_.endo_names(66) = {'fert'};
M_.endo_names_tex(66) = {'fert'};
M_.endo_names_long(66) = {'fert'};
M_.endo_names(67) = {'omegay'};
M_.endo_names_tex(67) = {'omegay'};
M_.endo_names_long(67) = {'omegay'};
M_.endo_names(68) = {'shareW'};
M_.endo_names_tex(68) = {'shareW'};
M_.endo_names_long(68) = {'shareW'};
M_.endo_names(69) = {'shareR'};
M_.endo_names_tex(69) = {'shareR'};
M_.endo_names_long(69) = {'shareR'};
M_.endo_names(70) = {'AUX_ENDO_LAG_42_1'};
M_.endo_names_tex(70) = {'AUX\_ENDO\_LAG\_42\_1'};
M_.endo_names_long(70) = {'AUX_ENDO_LAG_42_1'};
M_.endo_names(71) = {'AUX_ENDO_LAG_51_1'};
M_.endo_names_tex(71) = {'AUX\_ENDO\_LAG\_51\_1'};
M_.endo_names_long(71) = {'AUX_ENDO_LAG_51_1'};
M_.endo_names(72) = {'AUX_ENDO_LAG_64_1'};
M_.endo_names_tex(72) = {'AUX\_ENDO\_LAG\_64\_1'};
M_.endo_names_long(72) = {'AUX_ENDO_LAG_64_1'};
M_.endo_names(73) = {'AUX_ENDO_LAG_64_2'};
M_.endo_names_tex(73) = {'AUX\_ENDO\_LAG\_64\_2'};
M_.endo_names_long(73) = {'AUX_ENDO_LAG_64_2'};
M_.endo_names(74) = {'AUX_ENDO_LAG_64_3'};
M_.endo_names_tex(74) = {'AUX\_ENDO\_LAG\_64\_3'};
M_.endo_names_long(74) = {'AUX_ENDO_LAG_64_3'};
M_.endo_names(75) = {'AUX_ENDO_LAG_64_4'};
M_.endo_names_tex(75) = {'AUX\_ENDO\_LAG\_64\_4'};
M_.endo_names_long(75) = {'AUX_ENDO_LAG_64_4'};
M_.endo_names(76) = {'AUX_ENDO_LAG_64_5'};
M_.endo_names_tex(76) = {'AUX\_ENDO\_LAG\_64\_5'};
M_.endo_names_long(76) = {'AUX_ENDO_LAG_64_5'};
M_.endo_names(77) = {'AUX_ENDO_LAG_64_6'};
M_.endo_names_tex(77) = {'AUX\_ENDO\_LAG\_64\_6'};
M_.endo_names_long(77) = {'AUX_ENDO_LAG_64_6'};
M_.endo_names(78) = {'AUX_ENDO_LAG_64_7'};
M_.endo_names_tex(78) = {'AUX\_ENDO\_LAG\_64\_7'};
M_.endo_names_long(78) = {'AUX_ENDO_LAG_64_7'};
M_.endo_names(79) = {'AUX_ENDO_LAG_64_8'};
M_.endo_names_tex(79) = {'AUX\_ENDO\_LAG\_64\_8'};
M_.endo_names_long(79) = {'AUX_ENDO_LAG_64_8'};
M_.endo_names(80) = {'AUX_ENDO_LAG_64_9'};
M_.endo_names_tex(80) = {'AUX\_ENDO\_LAG\_64\_9'};
M_.endo_names_long(80) = {'AUX_ENDO_LAG_64_9'};
M_.endo_names(81) = {'AUX_ENDO_LAG_64_10'};
M_.endo_names_tex(81) = {'AUX\_ENDO\_LAG\_64\_10'};
M_.endo_names_long(81) = {'AUX_ENDO_LAG_64_10'};
M_.endo_names(82) = {'AUX_ENDO_LAG_64_11'};
M_.endo_names_tex(82) = {'AUX\_ENDO\_LAG\_64\_11'};
M_.endo_names_long(82) = {'AUX_ENDO_LAG_64_11'};
M_.endo_names(83) = {'AUX_ENDO_LAG_64_12'};
M_.endo_names_tex(83) = {'AUX\_ENDO\_LAG\_64\_12'};
M_.endo_names_long(83) = {'AUX_ENDO_LAG_64_12'};
M_.endo_names(84) = {'AUX_ENDO_LAG_64_13'};
M_.endo_names_tex(84) = {'AUX\_ENDO\_LAG\_64\_13'};
M_.endo_names_long(84) = {'AUX_ENDO_LAG_64_13'};
M_.endo_names(85) = {'AUX_ENDO_LAG_64_14'};
M_.endo_names_tex(85) = {'AUX\_ENDO\_LAG\_64\_14'};
M_.endo_names_long(85) = {'AUX_ENDO_LAG_64_14'};
M_.endo_names(86) = {'AUX_ENDO_LAG_64_15'};
M_.endo_names_tex(86) = {'AUX\_ENDO\_LAG\_64\_15'};
M_.endo_names_long(86) = {'AUX_ENDO_LAG_64_15'};
M_.endo_names(87) = {'AUX_ENDO_LAG_64_16'};
M_.endo_names_tex(87) = {'AUX\_ENDO\_LAG\_64\_16'};
M_.endo_names_long(87) = {'AUX_ENDO_LAG_64_16'};
M_.endo_names(88) = {'AUX_ENDO_LAG_64_17'};
M_.endo_names_tex(88) = {'AUX\_ENDO\_LAG\_64\_17'};
M_.endo_names_long(88) = {'AUX_ENDO_LAG_64_17'};
M_.endo_names(89) = {'AUX_ENDO_LAG_64_18'};
M_.endo_names_tex(89) = {'AUX\_ENDO\_LAG\_64\_18'};
M_.endo_names_long(89) = {'AUX_ENDO_LAG_64_18'};
M_.endo_names(90) = {'AUX_ENDO_LAG_64_19'};
M_.endo_names_tex(90) = {'AUX\_ENDO\_LAG\_64\_19'};
M_.endo_names_long(90) = {'AUX_ENDO_LAG_64_19'};
M_.endo_names(91) = {'AUX_ENDO_LAG_64_20'};
M_.endo_names_tex(91) = {'AUX\_ENDO\_LAG\_64\_20'};
M_.endo_names_long(91) = {'AUX_ENDO_LAG_64_20'};
M_.endo_names(92) = {'AUX_ENDO_LAG_64_21'};
M_.endo_names_tex(92) = {'AUX\_ENDO\_LAG\_64\_21'};
M_.endo_names_long(92) = {'AUX_ENDO_LAG_64_21'};
M_.endo_names(93) = {'AUX_ENDO_LAG_64_22'};
M_.endo_names_tex(93) = {'AUX\_ENDO\_LAG\_64\_22'};
M_.endo_names_long(93) = {'AUX_ENDO_LAG_64_22'};
M_.endo_names(94) = {'AUX_ENDO_LAG_64_23'};
M_.endo_names_tex(94) = {'AUX\_ENDO\_LAG\_64\_23'};
M_.endo_names_long(94) = {'AUX_ENDO_LAG_64_23'};
M_.endo_names(95) = {'AUX_ENDO_LAG_64_24'};
M_.endo_names_tex(95) = {'AUX\_ENDO\_LAG\_64\_24'};
M_.endo_names_long(95) = {'AUX_ENDO_LAG_64_24'};
M_.endo_names(96) = {'AUX_ENDO_LAG_64_25'};
M_.endo_names_tex(96) = {'AUX\_ENDO\_LAG\_64\_25'};
M_.endo_names_long(96) = {'AUX_ENDO_LAG_64_25'};
M_.endo_names(97) = {'AUX_ENDO_LAG_64_26'};
M_.endo_names_tex(97) = {'AUX\_ENDO\_LAG\_64\_26'};
M_.endo_names_long(97) = {'AUX_ENDO_LAG_64_26'};
M_.endo_names(98) = {'AUX_ENDO_LAG_64_27'};
M_.endo_names_tex(98) = {'AUX\_ENDO\_LAG\_64\_27'};
M_.endo_names_long(98) = {'AUX_ENDO_LAG_64_27'};
M_.endo_names(99) = {'AUX_ENDO_LAG_64_28'};
M_.endo_names_tex(99) = {'AUX\_ENDO\_LAG\_64\_28'};
M_.endo_names_long(99) = {'AUX_ENDO_LAG_64_28'};
M_.endo_names(100) = {'AUX_EXO_LAG_69_0'};
M_.endo_names_tex(100) = {'AUX\_EXO\_LAG\_69\_0'};
M_.endo_names_long(100) = {'AUX_EXO_LAG_69_0'};
M_.endo_names(101) = {'AUX_EXO_LAG_69_1'};
M_.endo_names_tex(101) = {'AUX\_EXO\_LAG\_69\_1'};
M_.endo_names_long(101) = {'AUX_EXO_LAG_69_1'};
M_.endo_names(102) = {'AUX_EXO_LAG_69_2'};
M_.endo_names_tex(102) = {'AUX\_EXO\_LAG\_69\_2'};
M_.endo_names_long(102) = {'AUX_EXO_LAG_69_2'};
M_.endo_names(103) = {'AUX_EXO_LAG_69_3'};
M_.endo_names_tex(103) = {'AUX\_EXO\_LAG\_69\_3'};
M_.endo_names_long(103) = {'AUX_EXO_LAG_69_3'};
M_.endo_names(104) = {'AUX_EXO_LAG_69_4'};
M_.endo_names_tex(104) = {'AUX\_EXO\_LAG\_69\_4'};
M_.endo_names_long(104) = {'AUX_EXO_LAG_69_4'};
M_.endo_names(105) = {'AUX_EXO_LAG_69_5'};
M_.endo_names_tex(105) = {'AUX\_EXO\_LAG\_69\_5'};
M_.endo_names_long(105) = {'AUX_EXO_LAG_69_5'};
M_.endo_names(106) = {'AUX_EXO_LAG_69_6'};
M_.endo_names_tex(106) = {'AUX\_EXO\_LAG\_69\_6'};
M_.endo_names_long(106) = {'AUX_EXO_LAG_69_6'};
M_.endo_names(107) = {'AUX_EXO_LAG_69_7'};
M_.endo_names_tex(107) = {'AUX\_EXO\_LAG\_69\_7'};
M_.endo_names_long(107) = {'AUX_EXO_LAG_69_7'};
M_.endo_names(108) = {'AUX_EXO_LAG_69_8'};
M_.endo_names_tex(108) = {'AUX\_EXO\_LAG\_69\_8'};
M_.endo_names_long(108) = {'AUX_EXO_LAG_69_8'};
M_.endo_names(109) = {'AUX_EXO_LAG_69_9'};
M_.endo_names_tex(109) = {'AUX\_EXO\_LAG\_69\_9'};
M_.endo_names_long(109) = {'AUX_EXO_LAG_69_9'};
M_.endo_names(110) = {'AUX_EXO_LAG_69_10'};
M_.endo_names_tex(110) = {'AUX\_EXO\_LAG\_69\_10'};
M_.endo_names_long(110) = {'AUX_EXO_LAG_69_10'};
M_.endo_names(111) = {'AUX_EXO_LAG_69_11'};
M_.endo_names_tex(111) = {'AUX\_EXO\_LAG\_69\_11'};
M_.endo_names_long(111) = {'AUX_EXO_LAG_69_11'};
M_.endo_names(112) = {'AUX_EXO_LAG_69_12'};
M_.endo_names_tex(112) = {'AUX\_EXO\_LAG\_69\_12'};
M_.endo_names_long(112) = {'AUX_EXO_LAG_69_12'};
M_.endo_names(113) = {'AUX_EXO_LAG_69_13'};
M_.endo_names_tex(113) = {'AUX\_EXO\_LAG\_69\_13'};
M_.endo_names_long(113) = {'AUX_EXO_LAG_69_13'};
M_.endo_names(114) = {'AUX_EXO_LAG_69_14'};
M_.endo_names_tex(114) = {'AUX\_EXO\_LAG\_69\_14'};
M_.endo_names_long(114) = {'AUX_EXO_LAG_69_14'};
M_.endo_names(115) = {'AUX_EXO_LAG_69_15'};
M_.endo_names_tex(115) = {'AUX\_EXO\_LAG\_69\_15'};
M_.endo_names_long(115) = {'AUX_EXO_LAG_69_15'};
M_.endo_names(116) = {'AUX_EXO_LAG_69_16'};
M_.endo_names_tex(116) = {'AUX\_EXO\_LAG\_69\_16'};
M_.endo_names_long(116) = {'AUX_EXO_LAG_69_16'};
M_.endo_names(117) = {'AUX_EXO_LAG_69_17'};
M_.endo_names_tex(117) = {'AUX\_EXO\_LAG\_69\_17'};
M_.endo_names_long(117) = {'AUX_EXO_LAG_69_17'};
M_.endo_names(118) = {'AUX_EXO_LAG_69_18'};
M_.endo_names_tex(118) = {'AUX\_EXO\_LAG\_69\_18'};
M_.endo_names_long(118) = {'AUX_EXO_LAG_69_18'};
M_.endo_names(119) = {'AUX_EXO_LAG_69_19'};
M_.endo_names_tex(119) = {'AUX\_EXO\_LAG\_69\_19'};
M_.endo_names_long(119) = {'AUX_EXO_LAG_69_19'};
M_.endo_names(120) = {'AUX_EXO_LAG_69_20'};
M_.endo_names_tex(120) = {'AUX\_EXO\_LAG\_69\_20'};
M_.endo_names_long(120) = {'AUX_EXO_LAG_69_20'};
M_.endo_names(121) = {'AUX_EXO_LAG_69_21'};
M_.endo_names_tex(121) = {'AUX\_EXO\_LAG\_69\_21'};
M_.endo_names_long(121) = {'AUX_EXO_LAG_69_21'};
M_.endo_names(122) = {'AUX_EXO_LAG_69_22'};
M_.endo_names_tex(122) = {'AUX\_EXO\_LAG\_69\_22'};
M_.endo_names_long(122) = {'AUX_EXO_LAG_69_22'};
M_.endo_names(123) = {'AUX_EXO_LAG_69_23'};
M_.endo_names_tex(123) = {'AUX\_EXO\_LAG\_69\_23'};
M_.endo_names_long(123) = {'AUX_EXO_LAG_69_23'};
M_.endo_names(124) = {'AUX_EXO_LAG_69_24'};
M_.endo_names_tex(124) = {'AUX\_EXO\_LAG\_69\_24'};
M_.endo_names_long(124) = {'AUX_EXO_LAG_69_24'};
M_.endo_names(125) = {'AUX_EXO_LAG_69_25'};
M_.endo_names_tex(125) = {'AUX\_EXO\_LAG\_69\_25'};
M_.endo_names_long(125) = {'AUX_EXO_LAG_69_25'};
M_.endo_names(126) = {'AUX_EXO_LAG_69_26'};
M_.endo_names_tex(126) = {'AUX\_EXO\_LAG\_69\_26'};
M_.endo_names_long(126) = {'AUX_EXO_LAG_69_26'};
M_.endo_names(127) = {'AUX_EXO_LAG_69_27'};
M_.endo_names_tex(127) = {'AUX\_EXO\_LAG\_69\_27'};
M_.endo_names_long(127) = {'AUX_EXO_LAG_69_27'};
M_.endo_names(128) = {'AUX_EXO_LAG_69_28'};
M_.endo_names_tex(128) = {'AUX\_EXO\_LAG\_69\_28'};
M_.endo_names_long(128) = {'AUX_EXO_LAG_69_28'};
M_.endo_partitions = struct();
M_.param_names = cell(158,1);
M_.param_names_tex = cell(158,1);
M_.param_names_long = cell(158,1);
M_.param_names(1) = {'R_SS'};
M_.param_names_tex(1) = {'R\_SS'};
M_.param_names_long(1) = {'R_SS'};
M_.param_names(2) = {'SHINNOVW'};
M_.param_names_tex(2) = {'SHINNOVW'};
M_.param_names_long(2) = {'SHINNOVW'};
M_.param_names(3) = {'YINNOVSH'};
M_.param_names_tex(3) = {'YINNOVSH'};
M_.param_names_long(3) = {'YINNOVSH'};
M_.param_names(4) = {'OMEGAR'};
M_.param_names_tex(4) = {'OMEGAR'};
M_.param_names_long(4) = {'OMEGAR'};
M_.param_names(5) = {'ZETAYSS'};
M_.param_names_tex(5) = {'ZETAYSS'};
M_.param_names_long(5) = {'ZETAYSS'};
M_.param_names(6) = {'ZETARSS'};
M_.param_names_tex(6) = {'ZETARSS'};
M_.param_names_long(6) = {'ZETARSS'};
M_.param_names(7) = {'REPLACSS'};
M_.param_names_tex(7) = {'REPLACSS'};
M_.param_names_long(7) = {'REPLACSS'};
M_.param_names(8) = {'RHOYW'};
M_.param_names_tex(8) = {'RHOYW'};
M_.param_names_long(8) = {'RHOYW'};
M_.param_names(9) = {'LAMY'};
M_.param_names_tex(9) = {'LAMY'};
M_.param_names_long(9) = {'LAMY'};
M_.param_names(10) = {'PSISS'};
M_.param_names_tex(10) = {'PSISS'};
M_.param_names_long(10) = {'PSISS'};
M_.param_names(11) = {'GSS'};
M_.param_names_tex(11) = {'GSS'};
M_.param_names_long(11) = {'GSS'};
M_.param_names(12) = {'PERS'};
M_.param_names_tex(12) = {'PERS'};
M_.param_names_long(12) = {'PERS'};
M_.param_names(13) = {'RATIODEL'};
M_.param_names_tex(13) = {'RATIODEL'};
M_.param_names_long(13) = {'RATIODEL'};
M_.param_names(14) = {'OMEGAYSS'};
M_.param_names_tex(14) = {'OMEGAYSS'};
M_.param_names_long(14) = {'OMEGAYSS'};
M_.param_names(15) = {'RHOU'};
M_.param_names_tex(15) = {'RHOU'};
M_.param_names_long(15) = {'RHOU'};
M_.param_names(16) = {'BBETA'};
M_.param_names_tex(16) = {'BBETA'};
M_.param_names_long(16) = {'BBETA'};
M_.param_names(17) = {'ALPHA'};
M_.param_names_tex(17) = {'ALPHA'};
M_.param_names_long(17) = {'ALPHA'};
M_.param_names(18) = {'GAMMAI'};
M_.param_names_tex(18) = {'GAMMAI'};
M_.param_names_long(18) = {'GAMMAI'};
M_.param_names(19) = {'VARNU'};
M_.param_names_tex(19) = {'VARNU'};
M_.param_names_long(19) = {'VARNU'};
M_.param_names(20) = {'BMEGA'};
M_.param_names_tex(20) = {'BMEGA'};
M_.param_names_long(20) = {'BMEGA'};
M_.param_names(21) = {'CHI'};
M_.param_names_tex(21) = {'CHI'};
M_.param_names_long(21) = {'CHI'};
M_.param_names(22) = {'RHO'};
M_.param_names_tex(22) = {'RHO'};
M_.param_names_long(22) = {'RHO'};
M_.param_names(23) = {'PHI'};
M_.param_names_tex(23) = {'PHI'};
M_.param_names_long(23) = {'PHI'};
M_.param_names(24) = {'ELASMU'};
M_.param_names_tex(24) = {'ELASMU'};
M_.param_names_long(24) = {'ELASMU'};
M_.param_names(25) = {'ELASLAM'};
M_.param_names_tex(25) = {'ELASLAM'};
M_.param_names_long(25) = {'ELASLAM'};
M_.param_names(26) = {'DELPRIMESS'};
M_.param_names_tex(26) = {'DELPRIMESS'};
M_.param_names_long(26) = {'DELPRIMESS'};
M_.param_names(27) = {'DELSS'};
M_.param_names_tex(27) = {'DELSS'};
M_.param_names_long(27) = {'DELSS'};
M_.param_names(28) = {'MUSS'};
M_.param_names_tex(28) = {'MUSS'};
M_.param_names_long(28) = {'MUSS'};
M_.param_names(29) = {'LAMSS'};
M_.param_names_tex(29) = {'LAMSS'};
M_.param_names_long(29) = {'LAMSS'};
M_.param_names(30) = {'USS'};
M_.param_names_tex(30) = {'USS'};
M_.param_names_long(30) = {'USS'};
M_.param_names(31) = {'VARPISS'};
M_.param_names_tex(31) = {'VARPISS'};
M_.param_names_long(31) = {'VARPISS'};
M_.param_names(32) = {'ZASS'};
M_.param_names_tex(32) = {'ZASS'};
M_.param_names_long(32) = {'ZASS'};
M_.param_names(33) = {'KSS'};
M_.param_names_tex(33) = {'KSS'};
M_.param_names_long(33) = {'KSS'};
M_.param_names(34) = {'NSS'};
M_.param_names_tex(34) = {'NSS'};
M_.param_names_long(34) = {'NSS'};
M_.param_names(35) = {'GAMMASS'};
M_.param_names_tex(35) = {'GAMMASS'};
M_.param_names_long(35) = {'GAMMASS'};
M_.param_names(36) = {'RHOE'};
M_.param_names_tex(36) = {'RHOE'};
M_.param_names_long(36) = {'RHOE'};
M_.param_names(37) = {'CHIE'};
M_.param_names_tex(37) = {'CHIE'};
M_.param_names_long(37) = {'CHIE'};
M_.param_names(38) = {'gn_1'};
M_.param_names_tex(38) = {'gn\_1'};
M_.param_names_long(38) = {'gn_1'};
M_.param_names(39) = {'gn_2'};
M_.param_names_tex(39) = {'gn\_2'};
M_.param_names_long(39) = {'gn_2'};
M_.param_names(40) = {'gn_3'};
M_.param_names_tex(40) = {'gn\_3'};
M_.param_names_long(40) = {'gn_3'};
M_.param_names(41) = {'gn_4'};
M_.param_names_tex(41) = {'gn\_4'};
M_.param_names_long(41) = {'gn_4'};
M_.param_names(42) = {'gn_5'};
M_.param_names_tex(42) = {'gn\_5'};
M_.param_names_long(42) = {'gn_5'};
M_.param_names(43) = {'gn_6'};
M_.param_names_tex(43) = {'gn\_6'};
M_.param_names_long(43) = {'gn_6'};
M_.param_names(44) = {'gn_7'};
M_.param_names_tex(44) = {'gn\_7'};
M_.param_names_long(44) = {'gn_7'};
M_.param_names(45) = {'gn_8'};
M_.param_names_tex(45) = {'gn\_8'};
M_.param_names_long(45) = {'gn_8'};
M_.param_names(46) = {'gn_9'};
M_.param_names_tex(46) = {'gn\_9'};
M_.param_names_long(46) = {'gn_9'};
M_.param_names(47) = {'gn_10'};
M_.param_names_tex(47) = {'gn\_10'};
M_.param_names_long(47) = {'gn_10'};
M_.param_names(48) = {'gn_11'};
M_.param_names_tex(48) = {'gn\_11'};
M_.param_names_long(48) = {'gn_11'};
M_.param_names(49) = {'gn_12'};
M_.param_names_tex(49) = {'gn\_12'};
M_.param_names_long(49) = {'gn_12'};
M_.param_names(50) = {'gn_13'};
M_.param_names_tex(50) = {'gn\_13'};
M_.param_names_long(50) = {'gn_13'};
M_.param_names(51) = {'gn_14'};
M_.param_names_tex(51) = {'gn\_14'};
M_.param_names_long(51) = {'gn_14'};
M_.param_names(52) = {'gn_15'};
M_.param_names_tex(52) = {'gn\_15'};
M_.param_names_long(52) = {'gn_15'};
M_.param_names(53) = {'gn_16'};
M_.param_names_tex(53) = {'gn\_16'};
M_.param_names_long(53) = {'gn_16'};
M_.param_names(54) = {'gn_17'};
M_.param_names_tex(54) = {'gn\_17'};
M_.param_names_long(54) = {'gn_17'};
M_.param_names(55) = {'gn_18'};
M_.param_names_tex(55) = {'gn\_18'};
M_.param_names_long(55) = {'gn_18'};
M_.param_names(56) = {'gn_19'};
M_.param_names_tex(56) = {'gn\_19'};
M_.param_names_long(56) = {'gn_19'};
M_.param_names(57) = {'gn_20'};
M_.param_names_tex(57) = {'gn\_20'};
M_.param_names_long(57) = {'gn_20'};
M_.param_names(58) = {'gn_21'};
M_.param_names_tex(58) = {'gn\_21'};
M_.param_names_long(58) = {'gn_21'};
M_.param_names(59) = {'gn_22'};
M_.param_names_tex(59) = {'gn\_22'};
M_.param_names_long(59) = {'gn_22'};
M_.param_names(60) = {'gn_23'};
M_.param_names_tex(60) = {'gn\_23'};
M_.param_names_long(60) = {'gn_23'};
M_.param_names(61) = {'gn_24'};
M_.param_names_tex(61) = {'gn\_24'};
M_.param_names_long(61) = {'gn_24'};
M_.param_names(62) = {'gn_25'};
M_.param_names_tex(62) = {'gn\_25'};
M_.param_names_long(62) = {'gn_25'};
M_.param_names(63) = {'gn_26'};
M_.param_names_tex(63) = {'gn\_26'};
M_.param_names_long(63) = {'gn_26'};
M_.param_names(64) = {'gn_27'};
M_.param_names_tex(64) = {'gn\_27'};
M_.param_names_long(64) = {'gn_27'};
M_.param_names(65) = {'gn_28'};
M_.param_names_tex(65) = {'gn\_28'};
M_.param_names_long(65) = {'gn_28'};
M_.param_names(66) = {'gn_29'};
M_.param_names_tex(66) = {'gn\_29'};
M_.param_names_long(66) = {'gn_29'};
M_.param_names(67) = {'gn_30'};
M_.param_names_tex(67) = {'gn\_30'};
M_.param_names_long(67) = {'gn_30'};
M_.param_names(68) = {'dws_1'};
M_.param_names_tex(68) = {'dws\_1'};
M_.param_names_long(68) = {'dws_1'};
M_.param_names(69) = {'dws_2'};
M_.param_names_tex(69) = {'dws\_2'};
M_.param_names_long(69) = {'dws_2'};
M_.param_names(70) = {'dws_3'};
M_.param_names_tex(70) = {'dws\_3'};
M_.param_names_long(70) = {'dws_3'};
M_.param_names(71) = {'dws_4'};
M_.param_names_tex(71) = {'dws\_4'};
M_.param_names_long(71) = {'dws_4'};
M_.param_names(72) = {'dws_5'};
M_.param_names_tex(72) = {'dws\_5'};
M_.param_names_long(72) = {'dws_5'};
M_.param_names(73) = {'dws_6'};
M_.param_names_tex(73) = {'dws\_6'};
M_.param_names_long(73) = {'dws_6'};
M_.param_names(74) = {'dws_7'};
M_.param_names_tex(74) = {'dws\_7'};
M_.param_names_long(74) = {'dws_7'};
M_.param_names(75) = {'dws_8'};
M_.param_names_tex(75) = {'dws\_8'};
M_.param_names_long(75) = {'dws_8'};
M_.param_names(76) = {'dws_9'};
M_.param_names_tex(76) = {'dws\_9'};
M_.param_names_long(76) = {'dws_9'};
M_.param_names(77) = {'dws_10'};
M_.param_names_tex(77) = {'dws\_10'};
M_.param_names_long(77) = {'dws_10'};
M_.param_names(78) = {'dws_11'};
M_.param_names_tex(78) = {'dws\_11'};
M_.param_names_long(78) = {'dws_11'};
M_.param_names(79) = {'dws_12'};
M_.param_names_tex(79) = {'dws\_12'};
M_.param_names_long(79) = {'dws_12'};
M_.param_names(80) = {'dws_13'};
M_.param_names_tex(80) = {'dws\_13'};
M_.param_names_long(80) = {'dws_13'};
M_.param_names(81) = {'dws_14'};
M_.param_names_tex(81) = {'dws\_14'};
M_.param_names_long(81) = {'dws_14'};
M_.param_names(82) = {'dws_15'};
M_.param_names_tex(82) = {'dws\_15'};
M_.param_names_long(82) = {'dws_15'};
M_.param_names(83) = {'dws_16'};
M_.param_names_tex(83) = {'dws\_16'};
M_.param_names_long(83) = {'dws_16'};
M_.param_names(84) = {'dws_17'};
M_.param_names_tex(84) = {'dws\_17'};
M_.param_names_long(84) = {'dws_17'};
M_.param_names(85) = {'dws_18'};
M_.param_names_tex(85) = {'dws\_18'};
M_.param_names_long(85) = {'dws_18'};
M_.param_names(86) = {'dws_19'};
M_.param_names_tex(86) = {'dws\_19'};
M_.param_names_long(86) = {'dws_19'};
M_.param_names(87) = {'dws_20'};
M_.param_names_tex(87) = {'dws\_20'};
M_.param_names_long(87) = {'dws_20'};
M_.param_names(88) = {'dws_21'};
M_.param_names_tex(88) = {'dws\_21'};
M_.param_names_long(88) = {'dws_21'};
M_.param_names(89) = {'dws_22'};
M_.param_names_tex(89) = {'dws\_22'};
M_.param_names_long(89) = {'dws_22'};
M_.param_names(90) = {'dws_23'};
M_.param_names_tex(90) = {'dws\_23'};
M_.param_names_long(90) = {'dws_23'};
M_.param_names(91) = {'dws_24'};
M_.param_names_tex(91) = {'dws\_24'};
M_.param_names_long(91) = {'dws_24'};
M_.param_names(92) = {'dws_25'};
M_.param_names_tex(92) = {'dws\_25'};
M_.param_names_long(92) = {'dws_25'};
M_.param_names(93) = {'dws_26'};
M_.param_names_tex(93) = {'dws\_26'};
M_.param_names_long(93) = {'dws_26'};
M_.param_names(94) = {'dws_27'};
M_.param_names_tex(94) = {'dws\_27'};
M_.param_names_long(94) = {'dws_27'};
M_.param_names(95) = {'dws_28'};
M_.param_names_tex(95) = {'dws\_28'};
M_.param_names_long(95) = {'dws_28'};
M_.param_names(96) = {'dws_29'};
M_.param_names_tex(96) = {'dws\_29'};
M_.param_names_long(96) = {'dws_29'};
M_.param_names(97) = {'dws_30'};
M_.param_names_tex(97) = {'dws\_30'};
M_.param_names_long(97) = {'dws_30'};
M_.param_names(98) = {'drs_1'};
M_.param_names_tex(98) = {'drs\_1'};
M_.param_names_long(98) = {'drs_1'};
M_.param_names(99) = {'drs_2'};
M_.param_names_tex(99) = {'drs\_2'};
M_.param_names_long(99) = {'drs_2'};
M_.param_names(100) = {'drs_3'};
M_.param_names_tex(100) = {'drs\_3'};
M_.param_names_long(100) = {'drs_3'};
M_.param_names(101) = {'drs_4'};
M_.param_names_tex(101) = {'drs\_4'};
M_.param_names_long(101) = {'drs_4'};
M_.param_names(102) = {'drs_5'};
M_.param_names_tex(102) = {'drs\_5'};
M_.param_names_long(102) = {'drs_5'};
M_.param_names(103) = {'drs_6'};
M_.param_names_tex(103) = {'drs\_6'};
M_.param_names_long(103) = {'drs_6'};
M_.param_names(104) = {'drs_7'};
M_.param_names_tex(104) = {'drs\_7'};
M_.param_names_long(104) = {'drs_7'};
M_.param_names(105) = {'drs_8'};
M_.param_names_tex(105) = {'drs\_8'};
M_.param_names_long(105) = {'drs_8'};
M_.param_names(106) = {'drs_9'};
M_.param_names_tex(106) = {'drs\_9'};
M_.param_names_long(106) = {'drs_9'};
M_.param_names(107) = {'drs_10'};
M_.param_names_tex(107) = {'drs\_10'};
M_.param_names_long(107) = {'drs_10'};
M_.param_names(108) = {'drs_11'};
M_.param_names_tex(108) = {'drs\_11'};
M_.param_names_long(108) = {'drs_11'};
M_.param_names(109) = {'drs_12'};
M_.param_names_tex(109) = {'drs\_12'};
M_.param_names_long(109) = {'drs_12'};
M_.param_names(110) = {'drs_13'};
M_.param_names_tex(110) = {'drs\_13'};
M_.param_names_long(110) = {'drs_13'};
M_.param_names(111) = {'drs_14'};
M_.param_names_tex(111) = {'drs\_14'};
M_.param_names_long(111) = {'drs_14'};
M_.param_names(112) = {'drs_15'};
M_.param_names_tex(112) = {'drs\_15'};
M_.param_names_long(112) = {'drs_15'};
M_.param_names(113) = {'drs_16'};
M_.param_names_tex(113) = {'drs\_16'};
M_.param_names_long(113) = {'drs_16'};
M_.param_names(114) = {'drs_17'};
M_.param_names_tex(114) = {'drs\_17'};
M_.param_names_long(114) = {'drs_17'};
M_.param_names(115) = {'drs_18'};
M_.param_names_tex(115) = {'drs\_18'};
M_.param_names_long(115) = {'drs_18'};
M_.param_names(116) = {'drs_19'};
M_.param_names_tex(116) = {'drs\_19'};
M_.param_names_long(116) = {'drs_19'};
M_.param_names(117) = {'drs_20'};
M_.param_names_tex(117) = {'drs\_20'};
M_.param_names_long(117) = {'drs_20'};
M_.param_names(118) = {'drs_21'};
M_.param_names_tex(118) = {'drs\_21'};
M_.param_names_long(118) = {'drs_21'};
M_.param_names(119) = {'drs_22'};
M_.param_names_tex(119) = {'drs\_22'};
M_.param_names_long(119) = {'drs_22'};
M_.param_names(120) = {'drs_23'};
M_.param_names_tex(120) = {'drs\_23'};
M_.param_names_long(120) = {'drs_23'};
M_.param_names(121) = {'drs_24'};
M_.param_names_tex(121) = {'drs\_24'};
M_.param_names_long(121) = {'drs_24'};
M_.param_names(122) = {'drs_25'};
M_.param_names_tex(122) = {'drs\_25'};
M_.param_names_long(122) = {'drs_25'};
M_.param_names(123) = {'drs_26'};
M_.param_names_tex(123) = {'drs\_26'};
M_.param_names_long(123) = {'drs_26'};
M_.param_names(124) = {'drs_27'};
M_.param_names_tex(124) = {'drs\_27'};
M_.param_names_long(124) = {'drs_27'};
M_.param_names(125) = {'drs_28'};
M_.param_names_tex(125) = {'drs\_28'};
M_.param_names_long(125) = {'drs_28'};
M_.param_names(126) = {'drs_29'};
M_.param_names_tex(126) = {'drs\_29'};
M_.param_names_long(126) = {'drs_29'};
M_.param_names(127) = {'drs_30'};
M_.param_names_tex(127) = {'drs\_30'};
M_.param_names_long(127) = {'drs_30'};
M_.param_names(128) = {'Rh_1'};
M_.param_names_tex(128) = {'Rh\_1'};
M_.param_names_long(128) = {'Rh_1'};
M_.param_names(129) = {'Rh_2'};
M_.param_names_tex(129) = {'Rh\_2'};
M_.param_names_long(129) = {'Rh_2'};
M_.param_names(130) = {'Rh_3'};
M_.param_names_tex(130) = {'Rh\_3'};
M_.param_names_long(130) = {'Rh_3'};
M_.param_names(131) = {'Rh_4'};
M_.param_names_tex(131) = {'Rh\_4'};
M_.param_names_long(131) = {'Rh_4'};
M_.param_names(132) = {'Rh_5'};
M_.param_names_tex(132) = {'Rh\_5'};
M_.param_names_long(132) = {'Rh_5'};
M_.param_names(133) = {'Rh_6'};
M_.param_names_tex(133) = {'Rh\_6'};
M_.param_names_long(133) = {'Rh_6'};
M_.param_names(134) = {'Rh_7'};
M_.param_names_tex(134) = {'Rh\_7'};
M_.param_names_long(134) = {'Rh_7'};
M_.param_names(135) = {'Rh_8'};
M_.param_names_tex(135) = {'Rh\_8'};
M_.param_names_long(135) = {'Rh_8'};
M_.param_names(136) = {'Rh_9'};
M_.param_names_tex(136) = {'Rh\_9'};
M_.param_names_long(136) = {'Rh_9'};
M_.param_names(137) = {'Rh_10'};
M_.param_names_tex(137) = {'Rh\_10'};
M_.param_names_long(137) = {'Rh_10'};
M_.param_names(138) = {'Rh_11'};
M_.param_names_tex(138) = {'Rh\_11'};
M_.param_names_long(138) = {'Rh_11'};
M_.param_names(139) = {'Rh_12'};
M_.param_names_tex(139) = {'Rh\_12'};
M_.param_names_long(139) = {'Rh_12'};
M_.param_names(140) = {'Rh_13'};
M_.param_names_tex(140) = {'Rh\_13'};
M_.param_names_long(140) = {'Rh_13'};
M_.param_names(141) = {'Rh_14'};
M_.param_names_tex(141) = {'Rh\_14'};
M_.param_names_long(141) = {'Rh_14'};
M_.param_names(142) = {'Rh_15'};
M_.param_names_tex(142) = {'Rh\_15'};
M_.param_names_long(142) = {'Rh_15'};
M_.param_names(143) = {'Rh_16'};
M_.param_names_tex(143) = {'Rh\_16'};
M_.param_names_long(143) = {'Rh_16'};
M_.param_names(144) = {'Rh_17'};
M_.param_names_tex(144) = {'Rh\_17'};
M_.param_names_long(144) = {'Rh_17'};
M_.param_names(145) = {'Rh_18'};
M_.param_names_tex(145) = {'Rh\_18'};
M_.param_names_long(145) = {'Rh_18'};
M_.param_names(146) = {'Rh_19'};
M_.param_names_tex(146) = {'Rh\_19'};
M_.param_names_long(146) = {'Rh_19'};
M_.param_names(147) = {'Rh_20'};
M_.param_names_tex(147) = {'Rh\_20'};
M_.param_names_long(147) = {'Rh_20'};
M_.param_names(148) = {'Rh_21'};
M_.param_names_tex(148) = {'Rh\_21'};
M_.param_names_long(148) = {'Rh_21'};
M_.param_names(149) = {'Rh_22'};
M_.param_names_tex(149) = {'Rh\_22'};
M_.param_names_long(149) = {'Rh_22'};
M_.param_names(150) = {'Rh_23'};
M_.param_names_tex(150) = {'Rh\_23'};
M_.param_names_long(150) = {'Rh_23'};
M_.param_names(151) = {'Rh_24'};
M_.param_names_tex(151) = {'Rh\_24'};
M_.param_names_long(151) = {'Rh_24'};
M_.param_names(152) = {'Rh_25'};
M_.param_names_tex(152) = {'Rh\_25'};
M_.param_names_long(152) = {'Rh_25'};
M_.param_names(153) = {'Rh_26'};
M_.param_names_tex(153) = {'Rh\_26'};
M_.param_names_long(153) = {'Rh_26'};
M_.param_names(154) = {'Rh_27'};
M_.param_names_tex(154) = {'Rh\_27'};
M_.param_names_long(154) = {'Rh_27'};
M_.param_names(155) = {'Rh_28'};
M_.param_names_tex(155) = {'Rh\_28'};
M_.param_names_long(155) = {'Rh_28'};
M_.param_names(156) = {'Rh_29'};
M_.param_names_tex(156) = {'Rh\_29'};
M_.param_names_long(156) = {'Rh_29'};
M_.param_names(157) = {'Rh_30'};
M_.param_names_tex(157) = {'Rh\_30'};
M_.param_names_long(157) = {'Rh_30'};
M_.param_names(158) = {'Rstar_SS'};
M_.param_names_tex(158) = {'Rstar\_SS'};
M_.param_names_long(158) = {'Rstar_SS'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 128;
M_.param_nbr = 158;
M_.orig_endo_nbr = 69;
M_.aux_vars(1).endo_index = 70;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 43;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'k(-1)';
M_.aux_vars(2).endo_index = 71;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 52;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'za(-1)';
M_.aux_vars(3).endo_index = 72;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 65;
M_.aux_vars(3).orig_lead_lag = -1;
M_.aux_vars(3).orig_expr = 'shockn(-1)';
M_.aux_vars(4).endo_index = 73;
M_.aux_vars(4).type = 1;
M_.aux_vars(4).orig_index = 65;
M_.aux_vars(4).orig_lead_lag = -2;
M_.aux_vars(4).orig_expr = 'AUX_ENDO_LAG_64_1(-1)';
M_.aux_vars(5).endo_index = 74;
M_.aux_vars(5).type = 1;
M_.aux_vars(5).orig_index = 65;
M_.aux_vars(5).orig_lead_lag = -3;
M_.aux_vars(5).orig_expr = 'AUX_ENDO_LAG_64_2(-1)';
M_.aux_vars(6).endo_index = 75;
M_.aux_vars(6).type = 1;
M_.aux_vars(6).orig_index = 65;
M_.aux_vars(6).orig_lead_lag = -4;
M_.aux_vars(6).orig_expr = 'AUX_ENDO_LAG_64_3(-1)';
M_.aux_vars(7).endo_index = 76;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 65;
M_.aux_vars(7).orig_lead_lag = -5;
M_.aux_vars(7).orig_expr = 'AUX_ENDO_LAG_64_4(-1)';
M_.aux_vars(8).endo_index = 77;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 65;
M_.aux_vars(8).orig_lead_lag = -6;
M_.aux_vars(8).orig_expr = 'AUX_ENDO_LAG_64_5(-1)';
M_.aux_vars(9).endo_index = 78;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 65;
M_.aux_vars(9).orig_lead_lag = -7;
M_.aux_vars(9).orig_expr = 'AUX_ENDO_LAG_64_6(-1)';
M_.aux_vars(10).endo_index = 79;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 65;
M_.aux_vars(10).orig_lead_lag = -8;
M_.aux_vars(10).orig_expr = 'AUX_ENDO_LAG_64_7(-1)';
M_.aux_vars(11).endo_index = 80;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 65;
M_.aux_vars(11).orig_lead_lag = -9;
M_.aux_vars(11).orig_expr = 'AUX_ENDO_LAG_64_8(-1)';
M_.aux_vars(12).endo_index = 81;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 65;
M_.aux_vars(12).orig_lead_lag = -10;
M_.aux_vars(12).orig_expr = 'AUX_ENDO_LAG_64_9(-1)';
M_.aux_vars(13).endo_index = 82;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 65;
M_.aux_vars(13).orig_lead_lag = -11;
M_.aux_vars(13).orig_expr = 'AUX_ENDO_LAG_64_10(-1)';
M_.aux_vars(14).endo_index = 83;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 65;
M_.aux_vars(14).orig_lead_lag = -12;
M_.aux_vars(14).orig_expr = 'AUX_ENDO_LAG_64_11(-1)';
M_.aux_vars(15).endo_index = 84;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 65;
M_.aux_vars(15).orig_lead_lag = -13;
M_.aux_vars(15).orig_expr = 'AUX_ENDO_LAG_64_12(-1)';
M_.aux_vars(16).endo_index = 85;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 65;
M_.aux_vars(16).orig_lead_lag = -14;
M_.aux_vars(16).orig_expr = 'AUX_ENDO_LAG_64_13(-1)';
M_.aux_vars(17).endo_index = 86;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 65;
M_.aux_vars(17).orig_lead_lag = -15;
M_.aux_vars(17).orig_expr = 'AUX_ENDO_LAG_64_14(-1)';
M_.aux_vars(18).endo_index = 87;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 65;
M_.aux_vars(18).orig_lead_lag = -16;
M_.aux_vars(18).orig_expr = 'AUX_ENDO_LAG_64_15(-1)';
M_.aux_vars(19).endo_index = 88;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 65;
M_.aux_vars(19).orig_lead_lag = -17;
M_.aux_vars(19).orig_expr = 'AUX_ENDO_LAG_64_16(-1)';
M_.aux_vars(20).endo_index = 89;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 65;
M_.aux_vars(20).orig_lead_lag = -18;
M_.aux_vars(20).orig_expr = 'AUX_ENDO_LAG_64_17(-1)';
M_.aux_vars(21).endo_index = 90;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 65;
M_.aux_vars(21).orig_lead_lag = -19;
M_.aux_vars(21).orig_expr = 'AUX_ENDO_LAG_64_18(-1)';
M_.aux_vars(22).endo_index = 91;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 65;
M_.aux_vars(22).orig_lead_lag = -20;
M_.aux_vars(22).orig_expr = 'AUX_ENDO_LAG_64_19(-1)';
M_.aux_vars(23).endo_index = 92;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 65;
M_.aux_vars(23).orig_lead_lag = -21;
M_.aux_vars(23).orig_expr = 'AUX_ENDO_LAG_64_20(-1)';
M_.aux_vars(24).endo_index = 93;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 65;
M_.aux_vars(24).orig_lead_lag = -22;
M_.aux_vars(24).orig_expr = 'AUX_ENDO_LAG_64_21(-1)';
M_.aux_vars(25).endo_index = 94;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 65;
M_.aux_vars(25).orig_lead_lag = -23;
M_.aux_vars(25).orig_expr = 'AUX_ENDO_LAG_64_22(-1)';
M_.aux_vars(26).endo_index = 95;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 65;
M_.aux_vars(26).orig_lead_lag = -24;
M_.aux_vars(26).orig_expr = 'AUX_ENDO_LAG_64_23(-1)';
M_.aux_vars(27).endo_index = 96;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 65;
M_.aux_vars(27).orig_lead_lag = -25;
M_.aux_vars(27).orig_expr = 'AUX_ENDO_LAG_64_24(-1)';
M_.aux_vars(28).endo_index = 97;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 65;
M_.aux_vars(28).orig_lead_lag = -26;
M_.aux_vars(28).orig_expr = 'AUX_ENDO_LAG_64_25(-1)';
M_.aux_vars(29).endo_index = 98;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 65;
M_.aux_vars(29).orig_lead_lag = -27;
M_.aux_vars(29).orig_expr = 'AUX_ENDO_LAG_64_26(-1)';
M_.aux_vars(30).endo_index = 99;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 65;
M_.aux_vars(30).orig_lead_lag = -28;
M_.aux_vars(30).orig_expr = 'AUX_ENDO_LAG_64_27(-1)';
M_.aux_vars(31).endo_index = 100;
M_.aux_vars(31).type = 3;
M_.aux_vars(31).orig_index = 1;
M_.aux_vars(31).orig_lead_lag = 0;
M_.aux_vars(31).orig_expr = 'delall';
M_.aux_vars(32).endo_index = 101;
M_.aux_vars(32).type = 3;
M_.aux_vars(32).orig_index = 1;
M_.aux_vars(32).orig_lead_lag = -1;
M_.aux_vars(32).orig_expr = 'AUX_EXO_LAG_69_0(-1)';
M_.aux_vars(33).endo_index = 102;
M_.aux_vars(33).type = 3;
M_.aux_vars(33).orig_index = 1;
M_.aux_vars(33).orig_lead_lag = -2;
M_.aux_vars(33).orig_expr = 'AUX_EXO_LAG_69_1(-1)';
M_.aux_vars(34).endo_index = 103;
M_.aux_vars(34).type = 3;
M_.aux_vars(34).orig_index = 1;
M_.aux_vars(34).orig_lead_lag = -3;
M_.aux_vars(34).orig_expr = 'AUX_EXO_LAG_69_2(-1)';
M_.aux_vars(35).endo_index = 104;
M_.aux_vars(35).type = 3;
M_.aux_vars(35).orig_index = 1;
M_.aux_vars(35).orig_lead_lag = -4;
M_.aux_vars(35).orig_expr = 'AUX_EXO_LAG_69_3(-1)';
M_.aux_vars(36).endo_index = 105;
M_.aux_vars(36).type = 3;
M_.aux_vars(36).orig_index = 1;
M_.aux_vars(36).orig_lead_lag = -5;
M_.aux_vars(36).orig_expr = 'AUX_EXO_LAG_69_4(-1)';
M_.aux_vars(37).endo_index = 106;
M_.aux_vars(37).type = 3;
M_.aux_vars(37).orig_index = 1;
M_.aux_vars(37).orig_lead_lag = -6;
M_.aux_vars(37).orig_expr = 'AUX_EXO_LAG_69_5(-1)';
M_.aux_vars(38).endo_index = 107;
M_.aux_vars(38).type = 3;
M_.aux_vars(38).orig_index = 1;
M_.aux_vars(38).orig_lead_lag = -7;
M_.aux_vars(38).orig_expr = 'AUX_EXO_LAG_69_6(-1)';
M_.aux_vars(39).endo_index = 108;
M_.aux_vars(39).type = 3;
M_.aux_vars(39).orig_index = 1;
M_.aux_vars(39).orig_lead_lag = -8;
M_.aux_vars(39).orig_expr = 'AUX_EXO_LAG_69_7(-1)';
M_.aux_vars(40).endo_index = 109;
M_.aux_vars(40).type = 3;
M_.aux_vars(40).orig_index = 1;
M_.aux_vars(40).orig_lead_lag = -9;
M_.aux_vars(40).orig_expr = 'AUX_EXO_LAG_69_8(-1)';
M_.aux_vars(41).endo_index = 110;
M_.aux_vars(41).type = 3;
M_.aux_vars(41).orig_index = 1;
M_.aux_vars(41).orig_lead_lag = -10;
M_.aux_vars(41).orig_expr = 'AUX_EXO_LAG_69_9(-1)';
M_.aux_vars(42).endo_index = 111;
M_.aux_vars(42).type = 3;
M_.aux_vars(42).orig_index = 1;
M_.aux_vars(42).orig_lead_lag = -11;
M_.aux_vars(42).orig_expr = 'AUX_EXO_LAG_69_10(-1)';
M_.aux_vars(43).endo_index = 112;
M_.aux_vars(43).type = 3;
M_.aux_vars(43).orig_index = 1;
M_.aux_vars(43).orig_lead_lag = -12;
M_.aux_vars(43).orig_expr = 'AUX_EXO_LAG_69_11(-1)';
M_.aux_vars(44).endo_index = 113;
M_.aux_vars(44).type = 3;
M_.aux_vars(44).orig_index = 1;
M_.aux_vars(44).orig_lead_lag = -13;
M_.aux_vars(44).orig_expr = 'AUX_EXO_LAG_69_12(-1)';
M_.aux_vars(45).endo_index = 114;
M_.aux_vars(45).type = 3;
M_.aux_vars(45).orig_index = 1;
M_.aux_vars(45).orig_lead_lag = -14;
M_.aux_vars(45).orig_expr = 'AUX_EXO_LAG_69_13(-1)';
M_.aux_vars(46).endo_index = 115;
M_.aux_vars(46).type = 3;
M_.aux_vars(46).orig_index = 1;
M_.aux_vars(46).orig_lead_lag = -15;
M_.aux_vars(46).orig_expr = 'AUX_EXO_LAG_69_14(-1)';
M_.aux_vars(47).endo_index = 116;
M_.aux_vars(47).type = 3;
M_.aux_vars(47).orig_index = 1;
M_.aux_vars(47).orig_lead_lag = -16;
M_.aux_vars(47).orig_expr = 'AUX_EXO_LAG_69_15(-1)';
M_.aux_vars(48).endo_index = 117;
M_.aux_vars(48).type = 3;
M_.aux_vars(48).orig_index = 1;
M_.aux_vars(48).orig_lead_lag = -17;
M_.aux_vars(48).orig_expr = 'AUX_EXO_LAG_69_16(-1)';
M_.aux_vars(49).endo_index = 118;
M_.aux_vars(49).type = 3;
M_.aux_vars(49).orig_index = 1;
M_.aux_vars(49).orig_lead_lag = -18;
M_.aux_vars(49).orig_expr = 'AUX_EXO_LAG_69_17(-1)';
M_.aux_vars(50).endo_index = 119;
M_.aux_vars(50).type = 3;
M_.aux_vars(50).orig_index = 1;
M_.aux_vars(50).orig_lead_lag = -19;
M_.aux_vars(50).orig_expr = 'AUX_EXO_LAG_69_18(-1)';
M_.aux_vars(51).endo_index = 120;
M_.aux_vars(51).type = 3;
M_.aux_vars(51).orig_index = 1;
M_.aux_vars(51).orig_lead_lag = -20;
M_.aux_vars(51).orig_expr = 'AUX_EXO_LAG_69_19(-1)';
M_.aux_vars(52).endo_index = 121;
M_.aux_vars(52).type = 3;
M_.aux_vars(52).orig_index = 1;
M_.aux_vars(52).orig_lead_lag = -21;
M_.aux_vars(52).orig_expr = 'AUX_EXO_LAG_69_20(-1)';
M_.aux_vars(53).endo_index = 122;
M_.aux_vars(53).type = 3;
M_.aux_vars(53).orig_index = 1;
M_.aux_vars(53).orig_lead_lag = -22;
M_.aux_vars(53).orig_expr = 'AUX_EXO_LAG_69_21(-1)';
M_.aux_vars(54).endo_index = 123;
M_.aux_vars(54).type = 3;
M_.aux_vars(54).orig_index = 1;
M_.aux_vars(54).orig_lead_lag = -23;
M_.aux_vars(54).orig_expr = 'AUX_EXO_LAG_69_22(-1)';
M_.aux_vars(55).endo_index = 124;
M_.aux_vars(55).type = 3;
M_.aux_vars(55).orig_index = 1;
M_.aux_vars(55).orig_lead_lag = -24;
M_.aux_vars(55).orig_expr = 'AUX_EXO_LAG_69_23(-1)';
M_.aux_vars(56).endo_index = 125;
M_.aux_vars(56).type = 3;
M_.aux_vars(56).orig_index = 1;
M_.aux_vars(56).orig_lead_lag = -25;
M_.aux_vars(56).orig_expr = 'AUX_EXO_LAG_69_24(-1)';
M_.aux_vars(57).endo_index = 126;
M_.aux_vars(57).type = 3;
M_.aux_vars(57).orig_index = 1;
M_.aux_vars(57).orig_lead_lag = -26;
M_.aux_vars(57).orig_expr = 'AUX_EXO_LAG_69_25(-1)';
M_.aux_vars(58).endo_index = 127;
M_.aux_vars(58).type = 3;
M_.aux_vars(58).orig_index = 1;
M_.aux_vars(58).orig_lead_lag = -27;
M_.aux_vars(58).orig_expr = 'AUX_EXO_LAG_69_26(-1)';
M_.aux_vars(59).endo_index = 128;
M_.aux_vars(59).type = 3;
M_.aux_vars(59).orig_index = 1;
M_.aux_vars(59).orig_lead_lag = -28;
M_.aux_vars(59).orig_expr = 'AUX_EXO_LAG_69_27(-1)';
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
M_.orig_eq_nbr = 69;
M_.eq_nbr = 128;
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
 0 86 0;
 0 87 0;
 0 88 0;
 1 89 0;
 2 90 0;
 3 91 0;
 0 92 214;
 0 93 215;
 4 94 0;
 5 95 0;
 6 96 0;
 7 97 0;
 0 98 0;
 0 99 0;
 0 100 0;
 0 101 0;
 0 102 0;
 0 103 0;
 0 104 0;
 8 105 0;
 9 106 0;
 0 107 0;
 0 108 216;
 0 109 217;
 0 110 218;
 0 111 219;
 0 112 220;
 0 113 221;
 10 114 0;
 11 115 0;
 12 116 0;
 13 117 222;
 14 118 0;
 0 119 0;
 0 120 0;
 0 121 0;
 0 122 0;
 15 123 0;
 16 124 0;
 0 125 0;
 0 126 0;
 17 127 0;
 18 128 0;
 19 129 0;
 0 130 0;
 0 131 0;
 0 132 0;
 0 133 223;
 0 134 224;
 0 135 0;
 20 136 0;
 21 137 0;
 0 138 0;
 0 139 0;
 22 140 0;
 0 141 0;
 23 142 0;
 0 143 0;
 0 144 0;
 0 145 0;
 0 146 0;
 0 147 0;
 24 148 0;
 25 149 0;
 26 150 0;
 0 151 0;
 0 152 225;
 0 153 0;
 0 154 0;
 27 155 0;
 28 156 0;
 29 157 0;
 30 158 0;
 31 159 0;
 32 160 0;
 33 161 0;
 34 162 0;
 35 163 0;
 36 164 0;
 37 165 0;
 38 166 0;
 39 167 0;
 40 168 0;
 41 169 0;
 42 170 0;
 43 171 0;
 44 172 0;
 45 173 0;
 46 174 0;
 47 175 0;
 48 176 0;
 49 177 0;
 50 178 0;
 51 179 0;
 52 180 0;
 53 181 0;
 54 182 0;
 55 183 0;
 56 184 0;
 57 185 0;
 58 186 0;
 59 187 0;
 60 188 0;
 61 189 0;
 62 190 0;
 63 191 0;
 64 192 0;
 65 193 0;
 66 194 0;
 67 195 0;
 68 196 0;
 69 197 0;
 70 198 0;
 71 199 0;
 72 200 0;
 73 201 0;
 74 202 0;
 75 203 0;
 76 204 0;
 77 205 0;
 78 206 0;
 79 207 0;
 80 208 0;
 81 209 0;
 82 210 0;
 83 211 0;
 84 212 0;
 85 213 0;]';
M_.nstatic = 32;
M_.nfwrd   = 11;
M_.npred   = 84;
M_.nboth   = 1;
M_.nsfwrd   = 12;
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
  40 , 'name' , 'path' ;
  41 , 'name' , '41' ;
  42 , 'name' , 'dr' ;
  43 , 'name' , 'dw' ;
  44 , 'name' , 'b' ;
  45 , 'name' , 'PiF' ;
  46 , 'name' , 'k' ;
  47 , 'name' , 'y' ;
  48 , 'name' , '48' ;
  49 , 'name' , 'c' ;
  50 , 'name' , 'fa' ;
  51 , 'name' , 'far' ;
  52 , 'name' , '52' ;
  53 , 'name' , 'fee' ;
  54 , 'name' , '54' ;
  55 , 'name' , 'shockR' ;
  56 , 'name' , 'rstar' ;
  57 , 'name' , 'gpc' ;
  58 , 'name' , 'gy' ;
  59 , 'name' , '59' ;
  60 , 'name' , 'shareW' ;
  61 , 'name' , 'shareR' ;
  62 , 'name' , '62' ;
  63 , 'name' , '63' ;
  64 , 'name' , 'en' ;
  65 , 'name' , 'er' ;
  66 , 'name' , 'ey' ;
  67 , 'name' , 'shocky' ;
  68 , 'name' , 'shockr' ;
  69 , 'name' , 'shockn' ;
};
M_.mapping.shockR.eqidx = [55 56 ];
M_.mapping.path.eqidx = [40 41 ];
M_.mapping.fee.eqidx = [53 ];
M_.mapping.ca.eqidx = [45 48 50 54 ];
M_.mapping.rstar.eqidx = [40 45 53 54 56 ];
M_.mapping.r.eqidx = [1 2 3 4 5 6 7 8 32 33 34 35 37 38 40 45 51 53 54 ];
M_.mapping.rk.eqidx = [21 41 45 54 ];
M_.mapping.w.eqidx = [1 17 18 20 51 ];
M_.mapping.b.eqidx = [44 45 50 54 ];
M_.mapping.y.eqidx = [47 48 57 58 ];
M_.mapping.varpi.eqidx = [34 35 36 37 44 48 ];
M_.mapping.s.eqidx = [29 32 38 44 48 ];
M_.mapping.inv.eqidx = [46 48 ];
M_.mapping.c.eqidx = [48 49 ];
M_.mapping.cw.eqidx = [5 10 49 51 ];
M_.mapping.cwper.eqidx = [10 ];
M_.mapping.cr.eqidx = [6 11 49 51 ];
M_.mapping.crper.eqidx = [11 ];
M_.mapping.tauw.eqidx = [2 17 48 51 ];
M_.mapping.N.eqidx = [24 25 26 47 ];
M_.mapping.stoyw.eqidx = [29 30 ];
M_.mapping.PiF.eqidx = [42 43 45 ];
M_.mapping.Tw.eqidx = [2 5 ];
M_.mapping.hw.eqidx = [1 5 ];
M_.mapping.Dr.eqidx = [3 4 6 ];
M_.mapping.Dw.eqidx = [4 5 ];
M_.mapping.ep.eqidx = [4 6 7 9 ];
M_.mapping.varsig.eqidx = [5 6 7 8 18 ];
M_.mapping.zetar.eqidx = [3 4 10 11 14 15 30 60 61 62 63 ];
M_.mapping.zetay.eqidx = [10 11 12 13 15 16 18 30 60 61 62 63 ];
M_.mapping.gw.eqidx = [1 2 3 4 12 13 14 15 16 18 24 ];
M_.mapping.g.eqidx = [1 2 3 4 5 6 18 21 22 23 24 32 33 34 35 37 38 45 46 51 54 57 58 ];
M_.mapping.gE.eqidx = [16 18 24 ];
M_.mapping.iy.eqidx = [16 17 18 ];
M_.mapping.gpc.eqidx = [57 ];
M_.mapping.gy.eqidx = [58 ];
M_.mapping.zz.eqidx = [1 2 4 8 9 ];
M_.mapping.far.eqidx = [6 42 51 52 ];
M_.mapping.faw.eqidx = [5 43 51 52 ];
M_.mapping.dr.eqidx = [3 42 51 ];
M_.mapping.dw.eqidx = [4 43 51 ];
M_.mapping.mu.eqidx = [20 21 22 23 24 25 26 33 37 47 ];
M_.mapping.k.eqidx = [21 22 24 45 46 50 54 ];
M_.mapping.u.eqidx = [22 24 27 28 ];
M_.mapping.del.eqidx = [21 27 46 ];
M_.mapping.delprime.eqidx = [22 27 28 ];
M_.mapping.gM.eqidx = [23 24 ];
M_.mapping.v.eqidx = [25 33 34 35 39 ];
M_.mapping.j.eqidx = [32 34 35 37 38 ];
M_.mapping.lam.eqidx = [31 34 35 36 ];
M_.mapping.gA.eqidx = [23 29 31 32 33 34 35 37 38 ];
M_.mapping.za.eqidx = [29 31 32 34 35 36 37 38 44 48 ];
M_.mapping.PiA.eqidx = [37 43 45 ];
M_.mapping.PiRD.eqidx = [38 43 45 ];
M_.mapping.fa.eqidx = [42 43 45 50 52 54 ];
M_.mapping.n.eqidx = [13 15 18 19 ];
M_.mapping.gn.eqidx = [15 30 57 59 ];
M_.mapping.gamma.eqidx = [3 7 14 ];
M_.mapping.er.eqidx = [63 65 ];
M_.mapping.ey.eqidx = [62 66 ];
M_.mapping.en.eqidx = [59 64 ];
M_.mapping.psi.eqidx = [29 36 39 47 ];
M_.mapping.shockr.eqidx = [65 68 ];
M_.mapping.shocky.eqidx = [66 67 ];
M_.mapping.shockn.eqidx = [64 69 ];
M_.mapping.fert.eqidx = [19 ];
M_.mapping.omegay.eqidx = [12 16 18 19 30 ];
M_.mapping.shareW.eqidx = [60 ];
M_.mapping.shareR.eqidx = [61 ];
M_.mapping.delall.eqidx = [40 55 67 68 69 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 5 6 9 10 11 12 20 21 29 30 31 32 33 38 39 42 43 44 51 52 55 57 63 64 65 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(128, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(158, 1);
M_.endo_trends = struct('deflator', cell(128, 1), 'log_deflator', cell(128, 1), 'growth_factor', cell(128, 1), 'log_growth_factor', cell(128, 1));
M_.NNZDerivatives = [586; -1; -1; ];
M_.static_tmp_nbr = [29; 19; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinalPred_Canada2019SOE;
load vecSSFinalPred_Canada2019SOE;
load endpoint;
load pred_param_Canada2019;
load RstarShocks;
set_param_value('Rstar_SS',Rstar_SS)
set_param_value('R_SS',R_SS)
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
oo_.steady_state(1) = 0;
oo_.steady_state(2) = 0;
oo_.steady_state(3) = M_.params(1)-M_.params(158);
oo_.steady_state(6) = M_.params(1);
oo_.steady_state(5) = M_.params(158);
oo_.steady_state(4) = 0;
oo_.steady_state(67) = M_.params(14);
oo_.steady_state(23) = Tw_SS;
oo_.steady_state(19) = tauw_SS;
oo_.steady_state(24) = hw_SS;
oo_.steady_state(25) = Dr_SS;
oo_.steady_state(26) = Dw_SS;
oo_.steady_state(15) = cw_SS;
oo_.steady_state(17) = cr_SS;
oo_.steady_state(27) = Ep_SS;
oo_.steady_state(28) = varsig_SS;
oo_.steady_state(29) = zetar_SS;
oo_.steady_state(30) = zetay_SS;
oo_.steady_state(68) = shareW_SS;
oo_.steady_state(69) = shareR_SS;
oo_.steady_state(32) = g_SS;
oo_.steady_state(31) = gw_SS;
oo_.steady_state(37) = Z_SS;
oo_.steady_state(38) = far_SS;
oo_.steady_state(39) = faw_SS;
oo_.steady_state(40) = dr_SS;
oo_.steady_state(41) = dw_SS;
oo_.steady_state(8) = w_SS;
oo_.steady_state(42) = mu_SS;
oo_.steady_state(43) = k_SS;
oo_.steady_state(44) = U_SS;
oo_.steady_state(45) = delta;
oo_.steady_state(46) = M_.params(26);
oo_.steady_state(47) = gm_SS;
oo_.steady_state(20) = 1;
oo_.steady_state(7) = rk_SS;
oo_.steady_state(12) = s_SS;
oo_.steady_state(48) = v_SS;
oo_.steady_state(49) = j_SS;
oo_.steady_state(11) = varpi_SS;
oo_.steady_state(50) = lambda_SS;
oo_.steady_state(51) = ga_SS;
oo_.steady_state(33) = gE_SS;
oo_.steady_state(34) = iy_SS;
oo_.steady_state(52) = za_SS;
oo_.steady_state(53) = PiA_SS;
oo_.steady_state(54) = 0;
oo_.steady_state(62) = psi_SS;
oo_.steady_state(9) = b_SS;
oo_.steady_state(22) = PiF_SS;
oo_.steady_state(10) = y_SS;
oo_.steady_state(14) = c_SS;
oo_.steady_state(13) = inv_SS;
oo_.steady_state(55) = fa_SS;
oo_.steady_state(56) = n_SS;
oo_.steady_state(57) = n_SS;
oo_.steady_state(58) = gamma_SS;
oo_.steady_state(35) = g_SS/n_SS;
oo_.steady_state(36) = g_SS;
oo_.steady_state(21) = stoyw_SS;
oo_.steady_state(59) = 0;
oo_.steady_state(60) = 0;
oo_.steady_state(61) = 0;
oo_.steady_state(63) = 0;
oo_.steady_state(64) = 0;
oo_.steady_state(65) = 0;
oo_.exo_steady_state(1) = 0;
oo_.steady_state(66) = fert_SS;
oo_.steady_state(70)=oo_.steady_state(43);
oo_.steady_state(71)=oo_.steady_state(52);
oo_.steady_state(72)=oo_.steady_state(65);
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
oo_.steady_state(97)=oo_.steady_state(96);
oo_.steady_state(98)=oo_.steady_state(97);
oo_.steady_state(99)=oo_.steady_state(98);
oo_.steady_state(100)=oo_.exo_steady_state(1);
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
oo_.steady_state(126)=oo_.steady_state(125);
oo_.steady_state(127)=oo_.steady_state(126);
oo_.steady_state(128)=oo_.steady_state(127);
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
