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
M_.fname = 'DemoMediumRunFinal_pop_ext3';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('DemoMediumRunFinal_pop_ext3.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'delg'};
M_.exo_names_tex(1) = {'delg'};
M_.exo_names_long(1) = {'delg'};
M_.endo_names = cell(60,1);
M_.endo_names_tex = cell(60,1);
M_.endo_names_long = cell(60,1);
M_.endo_names(1) = {'r'};
M_.endo_names_tex(1) = {'r'};
M_.endo_names_long(1) = {'r'};
M_.endo_names(2) = {'rk'};
M_.endo_names_tex(2) = {'rk'};
M_.endo_names_long(2) = {'rk'};
M_.endo_names(3) = {'w'};
M_.endo_names_tex(3) = {'w'};
M_.endo_names_long(3) = {'w'};
M_.endo_names(4) = {'b'};
M_.endo_names_tex(4) = {'b'};
M_.endo_names_long(4) = {'b'};
M_.endo_names(5) = {'y'};
M_.endo_names_tex(5) = {'y'};
M_.endo_names_long(5) = {'y'};
M_.endo_names(6) = {'varpi'};
M_.endo_names_tex(6) = {'varpi'};
M_.endo_names_long(6) = {'varpi'};
M_.endo_names(7) = {'s'};
M_.endo_names_tex(7) = {'s'};
M_.endo_names_long(7) = {'s'};
M_.endo_names(8) = {'inv'};
M_.endo_names_tex(8) = {'inv'};
M_.endo_names_long(8) = {'inv'};
M_.endo_names(9) = {'c'};
M_.endo_names_tex(9) = {'c'};
M_.endo_names_long(9) = {'c'};
M_.endo_names(10) = {'cw'};
M_.endo_names_tex(10) = {'cw'};
M_.endo_names_long(10) = {'cw'};
M_.endo_names(11) = {'cr'};
M_.endo_names_tex(11) = {'cr'};
M_.endo_names_long(11) = {'cr'};
M_.endo_names(12) = {'tauw'};
M_.endo_names_tex(12) = {'tauw'};
M_.endo_names_long(12) = {'tauw'};
M_.endo_names(13) = {'N'};
M_.endo_names_tex(13) = {'N'};
M_.endo_names_long(13) = {'N'};
M_.endo_names(14) = {'stoyw'};
M_.endo_names_tex(14) = {'stoyw'};
M_.endo_names_long(14) = {'stoyw'};
M_.endo_names(15) = {'PiF'};
M_.endo_names_tex(15) = {'PiF'};
M_.endo_names_long(15) = {'PiF'};
M_.endo_names(16) = {'Tw'};
M_.endo_names_tex(16) = {'Tw'};
M_.endo_names_long(16) = {'Tw'};
M_.endo_names(17) = {'hw'};
M_.endo_names_tex(17) = {'hw'};
M_.endo_names_long(17) = {'hw'};
M_.endo_names(18) = {'Dr'};
M_.endo_names_tex(18) = {'Dr'};
M_.endo_names_long(18) = {'Dr'};
M_.endo_names(19) = {'Dw'};
M_.endo_names_tex(19) = {'Dw'};
M_.endo_names_long(19) = {'Dw'};
M_.endo_names(20) = {'ep'};
M_.endo_names_tex(20) = {'ep'};
M_.endo_names_long(20) = {'ep'};
M_.endo_names(21) = {'varsig'};
M_.endo_names_tex(21) = {'varsig'};
M_.endo_names_long(21) = {'varsig'};
M_.endo_names(22) = {'zetar'};
M_.endo_names_tex(22) = {'zetar'};
M_.endo_names_long(22) = {'zetar'};
M_.endo_names(23) = {'zetay'};
M_.endo_names_tex(23) = {'zetay'};
M_.endo_names_long(23) = {'zetay'};
M_.endo_names(24) = {'gw'};
M_.endo_names_tex(24) = {'gw'};
M_.endo_names_long(24) = {'gw'};
M_.endo_names(25) = {'g'};
M_.endo_names_tex(25) = {'g'};
M_.endo_names_long(25) = {'g'};
M_.endo_names(26) = {'gE'};
M_.endo_names_tex(26) = {'gE'};
M_.endo_names_long(26) = {'gE'};
M_.endo_names(27) = {'iy'};
M_.endo_names_tex(27) = {'iy'};
M_.endo_names_long(27) = {'iy'};
M_.endo_names(28) = {'gpc'};
M_.endo_names_tex(28) = {'gpc'};
M_.endo_names_long(28) = {'gpc'};
M_.endo_names(29) = {'zz'};
M_.endo_names_tex(29) = {'zz'};
M_.endo_names_long(29) = {'zz'};
M_.endo_names(30) = {'far'};
M_.endo_names_tex(30) = {'far'};
M_.endo_names_long(30) = {'far'};
M_.endo_names(31) = {'faw'};
M_.endo_names_tex(31) = {'faw'};
M_.endo_names_long(31) = {'faw'};
M_.endo_names(32) = {'dr'};
M_.endo_names_tex(32) = {'dr'};
M_.endo_names_long(32) = {'dr'};
M_.endo_names(33) = {'dw'};
M_.endo_names_tex(33) = {'dw'};
M_.endo_names_long(33) = {'dw'};
M_.endo_names(34) = {'mu'};
M_.endo_names_tex(34) = {'mu'};
M_.endo_names_long(34) = {'mu'};
M_.endo_names(35) = {'k'};
M_.endo_names_tex(35) = {'k'};
M_.endo_names_long(35) = {'k'};
M_.endo_names(36) = {'u'};
M_.endo_names_tex(36) = {'u'};
M_.endo_names_long(36) = {'u'};
M_.endo_names(37) = {'del'};
M_.endo_names_tex(37) = {'del'};
M_.endo_names_long(37) = {'del'};
M_.endo_names(38) = {'delprime'};
M_.endo_names_tex(38) = {'delprime'};
M_.endo_names_long(38) = {'delprime'};
M_.endo_names(39) = {'gM'};
M_.endo_names_tex(39) = {'gM'};
M_.endo_names_long(39) = {'gM'};
M_.endo_names(40) = {'v'};
M_.endo_names_tex(40) = {'v'};
M_.endo_names_long(40) = {'v'};
M_.endo_names(41) = {'j'};
M_.endo_names_tex(41) = {'j'};
M_.endo_names_long(41) = {'j'};
M_.endo_names(42) = {'lam'};
M_.endo_names_tex(42) = {'lam'};
M_.endo_names_long(42) = {'lam'};
M_.endo_names(43) = {'gA'};
M_.endo_names_tex(43) = {'gA'};
M_.endo_names_long(43) = {'gA'};
M_.endo_names(44) = {'za'};
M_.endo_names_tex(44) = {'za'};
M_.endo_names_long(44) = {'za'};
M_.endo_names(45) = {'PiA'};
M_.endo_names_tex(45) = {'PiA'};
M_.endo_names_long(45) = {'PiA'};
M_.endo_names(46) = {'PiRD'};
M_.endo_names_tex(46) = {'PiRD'};
M_.endo_names_long(46) = {'PiRD'};
M_.endo_names(47) = {'fa'};
M_.endo_names_tex(47) = {'fa'};
M_.endo_names_long(47) = {'fa'};
M_.endo_names(48) = {'n'};
M_.endo_names_tex(48) = {'n'};
M_.endo_names_long(48) = {'n'};
M_.endo_names(49) = {'gn'};
M_.endo_names_tex(49) = {'gn'};
M_.endo_names_long(49) = {'gn'};
M_.endo_names(50) = {'gy'};
M_.endo_names_tex(50) = {'gy'};
M_.endo_names_long(50) = {'gy'};
M_.endo_names(51) = {'gamma'};
M_.endo_names_tex(51) = {'gamma'};
M_.endo_names_long(51) = {'gamma'};
M_.endo_names(52) = {'egamma'};
M_.endo_names_tex(52) = {'egamma'};
M_.endo_names_long(52) = {'egamma'};
M_.endo_names(53) = {'fert'};
M_.endo_names_tex(53) = {'fert'};
M_.endo_names_long(53) = {'fert'};
M_.endo_names(54) = {'psi'};
M_.endo_names_tex(54) = {'psi'};
M_.endo_names_long(54) = {'psi'};
M_.endo_names(55) = {'shockg'};
M_.endo_names_tex(55) = {'shockg'};
M_.endo_names_long(55) = {'shockg'};
M_.endo_names(56) = {'rhoyw'};
M_.endo_names_tex(56) = {'rhoyw'};
M_.endo_names_long(56) = {'rhoyw'};
M_.endo_names(57) = {'shockrhoyw'};
M_.endo_names_tex(57) = {'shockrhoyw'};
M_.endo_names_long(57) = {'shockrhoyw'};
M_.endo_names(58) = {'erhoyw'};
M_.endo_names_tex(58) = {'erhoyw'};
M_.endo_names_long(58) = {'erhoyw'};
M_.endo_names(59) = {'AUX_ENDO_LAG_34_1'};
M_.endo_names_tex(59) = {'AUX\_ENDO\_LAG\_34\_1'};
M_.endo_names_long(59) = {'AUX_ENDO_LAG_34_1'};
M_.endo_names(60) = {'AUX_ENDO_LAG_43_1'};
M_.endo_names_tex(60) = {'AUX\_ENDO\_LAG\_43\_1'};
M_.endo_names_long(60) = {'AUX_ENDO_LAG_43_1'};
M_.endo_partitions = struct();
M_.param_names = cell(36,1);
M_.param_names_tex = cell(36,1);
M_.param_names_long = cell(36,1);
M_.param_names(1) = {'PERS2'};
M_.param_names_tex(1) = {'PERS2'};
M_.param_names_long(1) = {'PERS2'};
M_.param_names(2) = {'SHINNOVW'};
M_.param_names_tex(2) = {'SHINNOVW'};
M_.param_names_long(2) = {'SHINNOVW'};
M_.param_names(3) = {'YINNOVSH'};
M_.param_names_tex(3) = {'YINNOVSH'};
M_.param_names_long(3) = {'YINNOVSH'};
M_.param_names(4) = {'FERTSS'};
M_.param_names_tex(4) = {'FERTSS'};
M_.param_names_long(4) = {'FERTSS'};
M_.param_names(5) = {'DIFRHOYW'};
M_.param_names_tex(5) = {'DIFRHOYW'};
M_.param_names_long(5) = {'DIFRHOYW'};
M_.param_names(6) = {'RHOYW'};
M_.param_names_tex(6) = {'RHOYW'};
M_.param_names_long(6) = {'RHOYW'};
M_.param_names(7) = {'LAMY'};
M_.param_names_tex(7) = {'LAMY'};
M_.param_names_long(7) = {'LAMY'};
M_.param_names(8) = {'PSISS'};
M_.param_names_tex(8) = {'PSISS'};
M_.param_names_long(8) = {'PSISS'};
M_.param_names(9) = {'GSS'};
M_.param_names_tex(9) = {'GSS'};
M_.param_names_long(9) = {'GSS'};
M_.param_names(10) = {'PERS'};
M_.param_names_tex(10) = {'PERS'};
M_.param_names_long(10) = {'PERS'};
M_.param_names(11) = {'RATIODEL'};
M_.param_names_tex(11) = {'RATIODEL'};
M_.param_names_long(11) = {'RATIODEL'};
M_.param_names(12) = {'OMEGAR'};
M_.param_names_tex(12) = {'OMEGAR'};
M_.param_names_long(12) = {'OMEGAR'};
M_.param_names(13) = {'OMEGAY'};
M_.param_names_tex(13) = {'OMEGAY'};
M_.param_names_long(13) = {'OMEGAY'};
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 60;
M_.param_nbr = 36;
M_.orig_endo_nbr = 58;
M_.aux_vars(1).endo_index = 59;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 35;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'k(-1)';
M_.aux_vars(2).endo_index = 60;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 44;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'za(-1)';
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
M_.orig_eq_nbr = 58;
M_.eq_nbr = 60;
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
 1 28 0;
 0 29 88;
 0 30 89;
 2 31 0;
 3 32 0;
 4 33 0;
 5 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 6 40 0;
 7 41 0;
 0 42 0;
 0 43 90;
 0 44 91;
 0 45 92;
 0 46 93;
 0 47 94;
 0 48 95;
 8 49 0;
 9 50 0;
 10 51 0;
 11 52 96;
 12 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 13 57 0;
 14 58 0;
 0 59 0;
 0 60 0;
 15 61 0;
 16 62 0;
 17 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 97;
 0 68 98;
 0 69 0;
 18 70 0;
 19 71 0;
 0 72 0;
 0 73 0;
 20 74 0;
 0 75 0;
 21 76 0;
 0 77 0;
 0 78 0;
 22 79 0;
 0 80 0;
 0 81 0;
 23 82 0;
 0 83 0;
 24 84 0;
 25 85 0;
 26 86 0;
 27 87 0;]';
M_.nstatic = 23;
M_.nfwrd   = 10;
M_.npred   = 26;
M_.nboth   = 1;
M_.nsfwrd   = 11;
M_.nspred   = 27;
M_.ndynamic   = 37;
M_.dynamic_tmp_nbr = [36; 14; 0; 0; ];
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
  10 , 'name' , 'gw' ;
  11 , 'name' , 'n' ;
  12 , 'name' , '12' ;
  13 , 'name' , 'gn' ;
  14 , 'name' , 'gE' ;
  15 , 'name' , '15' ;
  16 , 'name' , 'fert' ;
  17 , 'name' , 'tauw' ;
  18 , 'name' , '18' ;
  19 , 'name' , '19' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'g' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'mu' ;
  25 , 'name' , 'del' ;
  26 , 'name' , 'delprime' ;
  27 , 'name' , '27' ;
  28 , 'name' , 'rhoyw' ;
  29 , 'name' , 'stoyw' ;
  30 , 'name' , 'gA' ;
  31 , 'name' , 's' ;
  32 , 'name' , 'v' ;
  33 , 'name' , 'varpi' ;
  34 , 'name' , 'j' ;
  35 , 'name' , 'lam' ;
  36 , 'name' , 'PiA' ;
  37 , 'name' , 'PiRD' ;
  38 , 'name' , 'psi' ;
  39 , 'name' , 'r' ;
  40 , 'name' , 'dr' ;
  41 , 'name' , 'dw' ;
  42 , 'name' , 'b' ;
  43 , 'name' , 'PiF' ;
  44 , 'name' , 'k' ;
  45 , 'name' , 'y' ;
  46 , 'name' , '46' ;
  47 , 'name' , 'c' ;
  48 , 'name' , 'fa' ;
  49 , 'name' , 'far' ;
  50 , 'name' , '50' ;
  51 , 'name' , '51' ;
  52 , 'name' , 'gpc' ;
  53 , 'name' , 'gy' ;
  54 , 'name' , 'gamma' ;
  55 , 'name' , 'egamma' ;
  56 , 'name' , 'erhoyw' ;
  57 , 'name' , 'shockrhoyw' ;
  58 , 'name' , 'shockg' ;
};
M_.mapping.r.eqidx = [1 2 3 4 5 6 7 8 31 32 33 34 36 37 39 43 49 ];
M_.mapping.rk.eqidx = [19 39 43 ];
M_.mapping.w.eqidx = [1 15 17 18 49 ];
M_.mapping.b.eqidx = [42 43 48 ];
M_.mapping.y.eqidx = [45 46 52 53 ];
M_.mapping.varpi.eqidx = [33 34 35 36 42 46 ];
M_.mapping.s.eqidx = [27 31 37 42 46 ];
M_.mapping.inv.eqidx = [44 46 ];
M_.mapping.c.eqidx = [46 47 ];
M_.mapping.cw.eqidx = [5 47 49 ];
M_.mapping.cr.eqidx = [6 47 49 ];
M_.mapping.tauw.eqidx = [2 17 46 49 ];
M_.mapping.N.eqidx = [22 23 24 45 ];
M_.mapping.stoyw.eqidx = [27 29 ];
M_.mapping.PiF.eqidx = [40 41 43 ];
M_.mapping.Tw.eqidx = [2 5 ];
M_.mapping.hw.eqidx = [1 5 ];
M_.mapping.Dr.eqidx = [3 4 6 ];
M_.mapping.Dw.eqidx = [4 5 ];
M_.mapping.ep.eqidx = [4 6 7 9 ];
M_.mapping.varsig.eqidx = [5 6 7 8 15 ];
M_.mapping.zetar.eqidx = [3 4 12 13 29 ];
M_.mapping.zetay.eqidx = [10 11 13 14 15 29 ];
M_.mapping.gw.eqidx = [1 2 3 4 10 11 12 13 14 15 22 ];
M_.mapping.g.eqidx = [1 2 3 4 5 6 15 19 20 21 22 31 32 33 34 36 37 43 44 49 52 53 ];
M_.mapping.gE.eqidx = [14 22 ];
M_.mapping.iy.eqidx = [14 15 17 ];
M_.mapping.gpc.eqidx = [52 ];
M_.mapping.zz.eqidx = [1 2 4 8 9 ];
M_.mapping.far.eqidx = [6 40 49 50 ];
M_.mapping.faw.eqidx = [5 41 49 50 ];
M_.mapping.dr.eqidx = [3 40 49 ];
M_.mapping.dw.eqidx = [4 41 49 ];
M_.mapping.mu.eqidx = [18 19 20 21 22 23 24 32 36 45 ];
M_.mapping.k.eqidx = [19 20 22 43 44 48 ];
M_.mapping.u.eqidx = [20 22 25 26 ];
M_.mapping.del.eqidx = [19 25 44 ];
M_.mapping.delprime.eqidx = [20 25 26 ];
M_.mapping.gM.eqidx = [21 22 ];
M_.mapping.v.eqidx = [23 32 33 34 38 ];
M_.mapping.j.eqidx = [31 33 34 36 37 ];
M_.mapping.lam.eqidx = [30 33 34 35 ];
M_.mapping.gA.eqidx = [21 27 30 31 32 33 34 36 37 ];
M_.mapping.za.eqidx = [27 30 31 33 34 35 36 37 42 46 ];
M_.mapping.PiA.eqidx = [36 41 43 ];
M_.mapping.PiRD.eqidx = [37 41 43 ];
M_.mapping.fa.eqidx = [40 41 43 48 50 ];
M_.mapping.n.eqidx = [11 13 16 ];
M_.mapping.gn.eqidx = [13 29 51 52 ];
M_.mapping.gy.eqidx = [53 ];
M_.mapping.gamma.eqidx = [3 7 12 54 ];
M_.mapping.egamma.eqidx = [54 55 ];
M_.mapping.fert.eqidx = [16 ];
M_.mapping.psi.eqidx = [27 35 38 45 ];
M_.mapping.shockg.eqidx = [55 58 ];
M_.mapping.rhoyw.eqidx = [27 28 ];
M_.mapping.shockrhoyw.eqidx = [56 57 ];
M_.mapping.erhoyw.eqidx = [28 56 ];
M_.mapping.delg.eqidx = [57 58 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 4 5 6 7 13 14 22 23 24 25 26 30 31 34 35 36 43 44 47 49 52 55 57 58 59 60 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(60, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(36, 1);
M_.endo_trends = struct('deflator', cell(60, 1), 'log_deflator', cell(60, 1), 'growth_factor', cell(60, 1), 'log_growth_factor', cell(60, 1));
M_.NNZDerivatives = [297; -1; -1; ];
M_.static_tmp_nbr = [28; 16; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinal_ext3;
load vecSSFinal_ext3;
load endpoint;
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
set_param_value('OMEGAY',omegay)
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
set_param_value('PERS2',pers2)
set_param_value('DIFRHOYW', difrhoyw)
set_param_value('SHINNOVW',shinnovw)
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(50) = g_SS;
oo_.steady_state(16) = Tw_SS;
oo_.steady_state(12) = tauw_SS;
oo_.steady_state(17) = hw_SS;
oo_.steady_state(18) = Dr_SS;
oo_.steady_state(19) = Dw_SS;
oo_.steady_state(10) = cw_SS;
oo_.steady_state(11) = cr_SS;
oo_.steady_state(20) = Ep_SS;
oo_.steady_state(21) = varsig_SS;
oo_.steady_state(22) = zetar_SS;
oo_.steady_state(23) = zetay_SS;
oo_.steady_state(25) = g_SS;
oo_.steady_state(24) = gw_SS;
oo_.steady_state(29) = Z_SS;
oo_.steady_state(30) = far_SS;
oo_.steady_state(31) = faw_SS;
oo_.steady_state(32) = dr_SS;
oo_.steady_state(33) = dw_SS;
oo_.steady_state(3) = w_SS;
oo_.steady_state(34) = mu_SS;
oo_.steady_state(35) = k_SS;
oo_.steady_state(36) = U_SS;
oo_.steady_state(37) = delta;
oo_.steady_state(38) = M_.params(25);
oo_.steady_state(39) = gm_SS;
oo_.steady_state(13) = 1;
oo_.steady_state(2) = rk_SS;
oo_.steady_state(7) = s_SS;
oo_.steady_state(40) = v_SS;
oo_.steady_state(41) = j_SS;
oo_.steady_state(6) = varpi_SS;
oo_.steady_state(42) = lambda_SS;
oo_.steady_state(43) = ga_SS;
oo_.steady_state(26) = gE_SS;
oo_.steady_state(27) = iy_SS;
oo_.steady_state(44) = za_SS;
oo_.steady_state(45) = PiA_SS;
oo_.steady_state(46) = 0;
oo_.steady_state(54) = psi_SS;
oo_.steady_state(1) = R_SS;
oo_.steady_state(4) = b_SS;
oo_.steady_state(15) = PiF_SS;
oo_.steady_state(5) = y_SS;
oo_.steady_state(9) = c_SS;
oo_.steady_state(8) = inv_SS;
oo_.steady_state(47) = fa_SS;
oo_.steady_state(48) = n_SS;
oo_.steady_state(49) = n_SS;
oo_.steady_state(51) = gamma_SS;
oo_.steady_state(28) = g_SS/n_SS;
oo_.steady_state(14) = stoyw_SS;
oo_.steady_state(52) = 0;
oo_.steady_state(55) = 0;
oo_.exo_steady_state(1) = 0;
oo_.steady_state(53) = fert_SS;
oo_.steady_state(59)=oo_.steady_state(35);
oo_.steady_state(60)=oo_.steady_state(44);
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
M_.Sigma_e(1, 1) = (0.005)^2;
oo_.dr.eigval = check(M_,options_,oo_);
options_.nograph=1;
options_.irf = 100;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save Case13oo_ oo_
save Case13M_ M_
save('DemoMediumRunFinal_pop_ext3_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('DemoMediumRunFinal_pop_ext3_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
