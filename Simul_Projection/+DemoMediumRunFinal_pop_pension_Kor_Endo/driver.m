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
M_.fname = 'DemoMediumRunFinal_pop_pension_Kor_Endo';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('DemoMediumRunFinal_pop_pension_Kor_Endo.log');
M_.parameter_used_with_lead_lag = true;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'delall'};
M_.exo_names_tex(1) = {'delall'};
M_.exo_names_long(1) = {'delall'};
M_.endo_names = cell(63,1);
M_.endo_names_tex = cell(63,1);
M_.endo_names_long = cell(63,1);
M_.endo_names(1) = {'OMEGAY'};
M_.endo_names_tex(1) = {'OMEGAY'};
M_.endo_names_long(1) = {'OMEGAY'};
M_.endo_names(2) = {'r'};
M_.endo_names_tex(2) = {'r'};
M_.endo_names_long(2) = {'r'};
M_.endo_names(3) = {'rk'};
M_.endo_names_tex(3) = {'rk'};
M_.endo_names_long(3) = {'rk'};
M_.endo_names(4) = {'w'};
M_.endo_names_tex(4) = {'w'};
M_.endo_names_long(4) = {'w'};
M_.endo_names(5) = {'b'};
M_.endo_names_tex(5) = {'b'};
M_.endo_names_long(5) = {'b'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'y'};
M_.endo_names_long(6) = {'y'};
M_.endo_names(7) = {'varpi'};
M_.endo_names_tex(7) = {'varpi'};
M_.endo_names_long(7) = {'varpi'};
M_.endo_names(8) = {'s'};
M_.endo_names_tex(8) = {'s'};
M_.endo_names_long(8) = {'s'};
M_.endo_names(9) = {'inv'};
M_.endo_names_tex(9) = {'inv'};
M_.endo_names_long(9) = {'inv'};
M_.endo_names(10) = {'invG'};
M_.endo_names_tex(10) = {'invG'};
M_.endo_names_long(10) = {'invG'};
M_.endo_names(11) = {'c'};
M_.endo_names_tex(11) = {'c'};
M_.endo_names_long(11) = {'c'};
M_.endo_names(12) = {'cw'};
M_.endo_names_tex(12) = {'cw'};
M_.endo_names_long(12) = {'cw'};
M_.endo_names(13) = {'cr'};
M_.endo_names_tex(13) = {'cr'};
M_.endo_names_long(13) = {'cr'};
M_.endo_names(14) = {'tauw'};
M_.endo_names_tex(14) = {'tauw'};
M_.endo_names_long(14) = {'tauw'};
M_.endo_names(15) = {'N'};
M_.endo_names_tex(15) = {'N'};
M_.endo_names_long(15) = {'N'};
M_.endo_names(16) = {'stoyw'};
M_.endo_names_tex(16) = {'stoyw'};
M_.endo_names_long(16) = {'stoyw'};
M_.endo_names(17) = {'PiF'};
M_.endo_names_tex(17) = {'PiF'};
M_.endo_names_long(17) = {'PiF'};
M_.endo_names(18) = {'Tw'};
M_.endo_names_tex(18) = {'Tw'};
M_.endo_names_long(18) = {'Tw'};
M_.endo_names(19) = {'hw'};
M_.endo_names_tex(19) = {'hw'};
M_.endo_names_long(19) = {'hw'};
M_.endo_names(20) = {'Dr'};
M_.endo_names_tex(20) = {'Dr'};
M_.endo_names_long(20) = {'Dr'};
M_.endo_names(21) = {'Dw'};
M_.endo_names_tex(21) = {'Dw'};
M_.endo_names_long(21) = {'Dw'};
M_.endo_names(22) = {'ep'};
M_.endo_names_tex(22) = {'ep'};
M_.endo_names_long(22) = {'ep'};
M_.endo_names(23) = {'varsig'};
M_.endo_names_tex(23) = {'varsig'};
M_.endo_names_long(23) = {'varsig'};
M_.endo_names(24) = {'zetar'};
M_.endo_names_tex(24) = {'zetar'};
M_.endo_names_long(24) = {'zetar'};
M_.endo_names(25) = {'zetay'};
M_.endo_names_tex(25) = {'zetay'};
M_.endo_names_long(25) = {'zetay'};
M_.endo_names(26) = {'gw'};
M_.endo_names_tex(26) = {'gw'};
M_.endo_names_long(26) = {'gw'};
M_.endo_names(27) = {'g'};
M_.endo_names_tex(27) = {'g'};
M_.endo_names_long(27) = {'g'};
M_.endo_names(28) = {'gE'};
M_.endo_names_tex(28) = {'gE'};
M_.endo_names_long(28) = {'gE'};
M_.endo_names(29) = {'iy'};
M_.endo_names_tex(29) = {'iy'};
M_.endo_names_long(29) = {'iy'};
M_.endo_names(30) = {'gpc'};
M_.endo_names_tex(30) = {'gpc'};
M_.endo_names_long(30) = {'gpc'};
M_.endo_names(31) = {'zz'};
M_.endo_names_tex(31) = {'zz'};
M_.endo_names_long(31) = {'zz'};
M_.endo_names(32) = {'far'};
M_.endo_names_tex(32) = {'far'};
M_.endo_names_long(32) = {'far'};
M_.endo_names(33) = {'faw'};
M_.endo_names_tex(33) = {'faw'};
M_.endo_names_long(33) = {'faw'};
M_.endo_names(34) = {'dr'};
M_.endo_names_tex(34) = {'dr'};
M_.endo_names_long(34) = {'dr'};
M_.endo_names(35) = {'dw'};
M_.endo_names_tex(35) = {'dw'};
M_.endo_names_long(35) = {'dw'};
M_.endo_names(36) = {'mu'};
M_.endo_names_tex(36) = {'mu'};
M_.endo_names_long(36) = {'mu'};
M_.endo_names(37) = {'k'};
M_.endo_names_tex(37) = {'k'};
M_.endo_names_long(37) = {'k'};
M_.endo_names(38) = {'u'};
M_.endo_names_tex(38) = {'u'};
M_.endo_names_long(38) = {'u'};
M_.endo_names(39) = {'del'};
M_.endo_names_tex(39) = {'del'};
M_.endo_names_long(39) = {'del'};
M_.endo_names(40) = {'delprime'};
M_.endo_names_tex(40) = {'delprime'};
M_.endo_names_long(40) = {'delprime'};
M_.endo_names(41) = {'gM'};
M_.endo_names_tex(41) = {'gM'};
M_.endo_names_long(41) = {'gM'};
M_.endo_names(42) = {'v'};
M_.endo_names_tex(42) = {'v'};
M_.endo_names_long(42) = {'v'};
M_.endo_names(43) = {'j'};
M_.endo_names_tex(43) = {'j'};
M_.endo_names_long(43) = {'j'};
M_.endo_names(44) = {'lam'};
M_.endo_names_tex(44) = {'lam'};
M_.endo_names_long(44) = {'lam'};
M_.endo_names(45) = {'gA'};
M_.endo_names_tex(45) = {'gA'};
M_.endo_names_long(45) = {'gA'};
M_.endo_names(46) = {'za'};
M_.endo_names_tex(46) = {'za'};
M_.endo_names_long(46) = {'za'};
M_.endo_names(47) = {'PiA'};
M_.endo_names_tex(47) = {'PiA'};
M_.endo_names_long(47) = {'PiA'};
M_.endo_names(48) = {'PiRD'};
M_.endo_names_tex(48) = {'PiRD'};
M_.endo_names_long(48) = {'PiRD'};
M_.endo_names(49) = {'fa'};
M_.endo_names_tex(49) = {'fa'};
M_.endo_names_long(49) = {'fa'};
M_.endo_names(50) = {'n'};
M_.endo_names_tex(50) = {'n'};
M_.endo_names_long(50) = {'n'};
M_.endo_names(51) = {'gn'};
M_.endo_names_tex(51) = {'gn'};
M_.endo_names_long(51) = {'gn'};
M_.endo_names(52) = {'gy'};
M_.endo_names_tex(52) = {'gy'};
M_.endo_names_long(52) = {'gy'};
M_.endo_names(53) = {'fert'};
M_.endo_names_tex(53) = {'fert'};
M_.endo_names_long(53) = {'fert'};
M_.endo_names(54) = {'psi'};
M_.endo_names_tex(54) = {'psi'};
M_.endo_names_long(54) = {'psi'};
M_.endo_names(55) = {'tauwE'};
M_.endo_names_tex(55) = {'tauwE'};
M_.endo_names_long(55) = {'tauwE'};
M_.endo_names(56) = {'tauwA'};
M_.endo_names_tex(56) = {'tauwA'};
M_.endo_names_long(56) = {'tauwA'};
M_.endo_names(57) = {'ay'};
M_.endo_names_tex(57) = {'ay'};
M_.endo_names_long(57) = {'ay'};
M_.endo_names(58) = {'tpe'};
M_.endo_names_tex(58) = {'tpe'};
M_.endo_names_long(58) = {'tpe'};
M_.endo_names(59) = {'Pe'};
M_.endo_names_tex(59) = {'Pe'};
M_.endo_names_long(59) = {'Pe'};
M_.endo_names(60) = {'he'};
M_.endo_names_tex(60) = {'he'};
M_.endo_names_long(60) = {'he'};
M_.endo_names(61) = {'AUX_ENDO_LAG_25_1'};
M_.endo_names_tex(61) = {'AUX\_ENDO\_LAG\_25\_1'};
M_.endo_names_long(61) = {'AUX_ENDO_LAG_25_1'};
M_.endo_names(62) = {'AUX_ENDO_LAG_36_1'};
M_.endo_names_tex(62) = {'AUX\_ENDO\_LAG\_36\_1'};
M_.endo_names_long(62) = {'AUX_ENDO_LAG_36_1'};
M_.endo_names(63) = {'AUX_ENDO_LAG_45_1'};
M_.endo_names_tex(63) = {'AUX\_ENDO\_LAG\_45\_1'};
M_.endo_names_long(63) = {'AUX_ENDO_LAG_45_1'};
M_.endo_partitions = struct();
M_.param_names = cell(159,1);
M_.param_names_tex = cell(159,1);
M_.param_names_long = cell(159,1);
M_.param_names(1) = {'gamma'};
M_.param_names_tex(1) = {'gamma'};
M_.param_names_long(1) = {'gamma'};
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 63;
M_.param_nbr = 159;
M_.orig_endo_nbr = 60;
M_.aux_vars(1).endo_index = 61;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 26;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'gw(-1)';
M_.aux_vars(2).endo_index = 62;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 37;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'k(-1)';
M_.aux_vars(3).endo_index = 63;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 46;
M_.aux_vars(3).orig_lead_lag = -1;
M_.aux_vars(3).orig_expr = 'za(-1)';
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
M_.orig_eq_nbr = 60;
M_.eq_nbr = 63;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 2;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 2;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 2;
M_.lead_lag_incidence = [
 0 29 0;
 1 30 0;
 0 31 92;
 2 32 93;
 3 33 0;
 4 34 0;
 5 35 0;
 6 36 0;
 7 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 8 43 0;
 9 44 0;
 0 45 0;
 0 46 94;
 0 47 95;
 0 48 96;
 0 49 97;
 0 50 98;
 0 51 99;
 10 52 0;
 11 53 0;
 12 54 0;
 13 55 100;
 14 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 15 60 0;
 16 61 0;
 0 62 0;
 0 63 0;
 17 64 0;
 18 65 0;
 19 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 101;
 0 71 102;
 0 72 0;
 20 73 0;
 21 74 0;
 0 75 0;
 0 76 0;
 22 77 0;
 0 78 0;
 23 79 0;
 0 80 0;
 0 81 0;
 0 82 0;
 0 83 103;
 0 84 0;
 24 85 0;
 25 86 0;
 0 87 104;
 0 88 0;
 26 89 0;
 27 90 0;
 28 91 0;]';
M_.nstatic = 24;
M_.nfwrd   = 11;
M_.npred   = 26;
M_.nboth   = 2;
M_.nsfwrd   = 13;
M_.nspred   = 28;
M_.ndynamic   = 39;
M_.dynamic_tmp_nbr = [33; 14; 0; 0; ];
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
  27 , 'name' , '27' ;
  28 , 'name' , '28' ;
  29 , 'name' , 'g' ;
  30 , 'name' , '30' ;
  31 , 'name' , '31' ;
  32 , 'name' , 'mu' ;
  33 , 'name' , 'del' ;
  34 , 'name' , 'delprime' ;
  35 , 'name' , 'invG' ;
  36 , 'name' , '36' ;
  37 , 'name' , 'stoyw' ;
  38 , 'name' , 'gA' ;
  39 , 'name' , 's' ;
  40 , 'name' , 'v' ;
  41 , 'name' , 'varpi' ;
  42 , 'name' , 'j' ;
  43 , 'name' , 'lam' ;
  44 , 'name' , 'PiA' ;
  45 , 'name' , 'PiRD' ;
  46 , 'name' , 'psi' ;
  47 , 'name' , 'r' ;
  48 , 'name' , 'dr' ;
  49 , 'name' , 'dw' ;
  50 , 'name' , 'b' ;
  51 , 'name' , 'PiF' ;
  52 , 'name' , 'k' ;
  53 , 'name' , 'y' ;
  54 , 'name' , '54' ;
  55 , 'name' , 'c' ;
  56 , 'name' , 'fa' ;
  57 , 'name' , 'far' ;
  58 , 'name' , '58' ;
  59 , 'name' , 'gpc' ;
  60 , 'name' , 'gy' ;
};
M_.mapping.OMEGAY.eqidx = [17 21 22 23 37 ];
M_.mapping.r.eqidx = [1 2 3 6 7 8 9 10 11 39 40 41 42 44 45 47 51 57 ];
M_.mapping.rk.eqidx = [27 47 51 ];
M_.mapping.w.eqidx = [1 4 15 22 24 25 26 57 ];
M_.mapping.b.eqidx = [50 51 56 ];
M_.mapping.y.eqidx = [53 54 59 60 ];
M_.mapping.varpi.eqidx = [41 42 43 44 50 54 ];
M_.mapping.s.eqidx = [36 39 45 50 54 ];
M_.mapping.inv.eqidx = [35 52 54 ];
M_.mapping.invG.eqidx = [35 ];
M_.mapping.c.eqidx = [54 55 ];
M_.mapping.cw.eqidx = [8 55 57 ];
M_.mapping.cr.eqidx = [9 55 57 ];
M_.mapping.tauw.eqidx = [2 16 57 ];
M_.mapping.N.eqidx = [30 31 32 53 ];
M_.mapping.stoyw.eqidx = [36 37 ];
M_.mapping.PiF.eqidx = [48 49 51 ];
M_.mapping.Tw.eqidx = [2 8 ];
M_.mapping.hw.eqidx = [1 8 ];
M_.mapping.Dr.eqidx = [3 7 9 ];
M_.mapping.Dw.eqidx = [7 8 ];
M_.mapping.ep.eqidx = [7 9 10 12 ];
M_.mapping.varsig.eqidx = [8 9 10 11 22 ];
M_.mapping.zetar.eqidx = [3 6 7 13 19 20 37 ];
M_.mapping.zetay.eqidx = [13 17 18 20 21 22 37 ];
M_.mapping.gw.eqidx = [1 2 3 4 6 7 17 18 19 20 21 22 30 ];
M_.mapping.g.eqidx = [1 2 3 4 5 6 7 8 9 22 27 28 29 30 35 39 40 41 42 44 45 51 52 57 59 60 ];
M_.mapping.gE.eqidx = [5 21 30 ];
M_.mapping.iy.eqidx = [15 21 22 ];
M_.mapping.gpc.eqidx = [59 ];
M_.mapping.zz.eqidx = [1 2 7 11 12 ];
M_.mapping.far.eqidx = [9 48 57 58 ];
M_.mapping.faw.eqidx = [8 49 57 58 ];
M_.mapping.dr.eqidx = [3 48 57 ];
M_.mapping.dw.eqidx = [7 49 57 ];
M_.mapping.mu.eqidx = [26 27 28 29 30 31 32 40 44 53 ];
M_.mapping.k.eqidx = [27 28 30 51 52 56 ];
M_.mapping.u.eqidx = [28 30 33 34 ];
M_.mapping.del.eqidx = [27 33 52 ];
M_.mapping.delprime.eqidx = [28 33 34 ];
M_.mapping.gM.eqidx = [29 30 ];
M_.mapping.v.eqidx = [31 40 41 42 46 ];
M_.mapping.j.eqidx = [39 41 42 44 45 ];
M_.mapping.lam.eqidx = [38 41 42 43 ];
M_.mapping.gA.eqidx = [29 36 38 39 40 41 42 44 45 ];
M_.mapping.za.eqidx = [36 38 39 41 42 43 44 45 50 54 ];
M_.mapping.PiA.eqidx = [44 49 51 ];
M_.mapping.PiRD.eqidx = [45 49 51 ];
M_.mapping.fa.eqidx = [48 49 51 56 58 ];
M_.mapping.n.eqidx = [18 20 23 ];
M_.mapping.gn.eqidx = [20 37 59 ];
M_.mapping.gy.eqidx = [60 ];
M_.mapping.fert.eqidx = [23 ];
M_.mapping.psi.eqidx = [36 43 46 53 ];
M_.mapping.tauwE.eqidx = [15 16 24 54 ];
M_.mapping.tauwA.eqidx = [14 16 ];
M_.mapping.ay.eqidx = [4 5 ];
M_.mapping.tpe.eqidx = [5 6 14 57 ];
M_.mapping.Pe.eqidx = [6 7 9 ];
M_.mapping.he.eqidx = [13 14 54 ];
M_.mapping.delall.eqidx = [25 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 4 5 6 7 8 9 15 16 24 25 26 27 28 32 33 36 37 38 45 46 49 51 57 58 61 62 63 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(63, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(159, 1);
M_.endo_trends = struct('deflator', cell(63, 1), 'log_deflator', cell(63, 1), 'growth_factor', cell(63, 1), 'log_growth_factor', cell(63, 1));
M_.NNZDerivatives = [325; -1; -1; ];
M_.static_tmp_nbr = [27; 16; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinal_ext1;
load vecSSFinal_ext1;
load endpoint;
load pred_param;
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
set_param_value('gamma',gamma_SS)
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
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(52) = g_SS;
oo_.steady_state(56) = tauwA_SS;
oo_.steady_state(55) = tauwE_SS;
oo_.steady_state(58) = tpe_SS;
oo_.steady_state(60) = he_SS;
oo_.steady_state(57) = ay_SS;
oo_.steady_state(59) = Pe_SS;
oo_.steady_state(18) = Tw_SS;
oo_.steady_state(14) = tauw_SS;
oo_.steady_state(19) = hw_SS;
oo_.steady_state(20) = Dr_SS;
oo_.steady_state(21) = Dw_SS;
oo_.steady_state(12) = cw_SS;
oo_.steady_state(13) = cr_SS;
oo_.steady_state(22) = Ep_SS;
oo_.steady_state(23) = varsig_SS;
oo_.steady_state(24) = zetar_SS;
oo_.steady_state(25) = zetay_SS;
oo_.steady_state(27) = g_SS;
oo_.steady_state(26) = gw_SS;
oo_.steady_state(31) = Z_SS;
oo_.steady_state(32) = far_SS;
oo_.steady_state(33) = faw_SS;
oo_.steady_state(34) = dr_SS;
oo_.steady_state(35) = dw_SS;
oo_.steady_state(4) = w_SS;
oo_.steady_state(36) = mu_SS;
oo_.steady_state(37) = k_SS;
oo_.steady_state(38) = U_SS;
oo_.steady_state(39) = delta;
oo_.steady_state(40) = M_.params(28);
oo_.steady_state(10) = g_SS;
oo_.steady_state(41) = gm_SS;
oo_.steady_state(15) = 1;
oo_.steady_state(3) = rk_SS;
oo_.steady_state(8) = s_SS;
oo_.steady_state(42) = v_SS;
oo_.steady_state(43) = j_SS;
oo_.steady_state(7) = varpi_SS;
oo_.steady_state(44) = lambda_SS;
oo_.steady_state(45) = ga_SS;
oo_.steady_state(28) = gE_SS;
oo_.steady_state(29) = iy_SS;
oo_.steady_state(46) = za_SS;
oo_.steady_state(47) = PiA_SS;
oo_.steady_state(48) = 0;
oo_.steady_state(54) = psi_SS;
oo_.steady_state(2) = R_SS;
oo_.steady_state(5) = b_SS;
oo_.steady_state(17) = PiF_SS;
oo_.steady_state(6) = y_SS;
oo_.steady_state(11) = c_SS;
oo_.steady_state(9) = inv_SS;
oo_.steady_state(49) = fa_SS;
oo_.steady_state(50) = n_SS;
oo_.steady_state(51) = n_SS;
oo_.steady_state(30) = g_SS/n_SS;
oo_.steady_state(16) = stoyw_SS;
oo_.steady_state(53) = fert_SS;
oo_.steady_state(61)=oo_.steady_state(26);
oo_.steady_state(62)=oo_.steady_state(37);
oo_.steady_state(63)=oo_.steady_state(46);
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
save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('DemoMediumRunFinal_pop_pension_Kor_Endo_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
