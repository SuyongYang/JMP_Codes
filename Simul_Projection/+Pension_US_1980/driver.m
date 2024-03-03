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
M_.fname = 'Pension_US_1980';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('Pension_US_1980.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'delall'};
M_.exo_names_tex(1) = {'delall'};
M_.exo_names_long(1) = {'delall'};
M_.endo_names = cell(149,1);
M_.endo_names_tex = cell(149,1);
M_.endo_names_long = cell(149,1);
M_.endo_names(1) = {'r_star'};
M_.endo_names_tex(1) = {'{r^*}'};
M_.endo_names_long(1) = {'foreign real interest rate'};
M_.endo_names(2) = {'rk_star'};
M_.endo_names_tex(2) = {'{r^k^*}'};
M_.endo_names_long(2) = {'foreign capital rent'};
M_.endo_names(3) = {'w_star'};
M_.endo_names_tex(3) = {'{w^*}'};
M_.endo_names_long(3) = {'labor income / GDP'};
M_.endo_names(4) = {'b_star'};
M_.endo_names_tex(4) = {'{b^*}'};
M_.endo_names_long(4) = {'investment of R\&D and adoption / GDP'};
M_.endo_names(5) = {'y_star'};
M_.endo_names_tex(5) = {'{y^*}'};
M_.endo_names_long(5) = {'disposible income / GDP'};
M_.endo_names(6) = {'varpi_star'};
M_.endo_names_tex(6) = {'{\varpi^*}'};
M_.endo_names_long(6) = {'adoption investment X number of new ideas / GDP'};
M_.endo_names(7) = {'s_star'};
M_.endo_names_tex(7) = {'{s^*}'};
M_.endo_names_long(7) = {'R\&D investment / GDP'};
M_.endo_names(8) = {'inv_star'};
M_.endo_names_tex(8) = {'{i^*}'};
M_.endo_names_long(8) = {'fixed capital investment / GDP'};
M_.endo_names(9) = {'invG_star'};
M_.endo_names_tex(9) = {'{g^i^*}'};
M_.endo_names_long(9) = {'fixed capital investment growth'};
M_.endo_names(10) = {'c_star'};
M_.endo_names_tex(10) = {'{c^*}'};
M_.endo_names_long(10) = {'consumption / GDP'};
M_.endo_names(11) = {'cw_star'};
M_.endo_names_tex(11) = {'{c^w^*}'};
M_.endo_names_long(11) = {'consumption of worker / GDP'};
M_.endo_names(12) = {'cr_star'};
M_.endo_names_tex(12) = {'{c^r^*}'};
M_.endo_names_long(12) = {'consumption of retiree / GDP'};
M_.endo_names(13) = {'tauw_star'};
M_.endo_names_tex(13) = {'\tilde{\tau}^*'};
M_.endo_names_long(13) = {'health care, pension, education cost / GDP'};
M_.endo_names(14) = {'N_star'};
M_.endo_names_tex(14) = {'{N^f^*}'};
M_.endo_names_long(14) = {'number of input firms'};
M_.endo_names(15) = {'stoyw_star'};
M_.endo_names_tex(15) = {'{\gamma^{yw}^*}'};
M_.endo_names_long(15) = {'share of R\&D worker'};
M_.endo_names(16) = {'PiF_star'};
M_.endo_names_tex(16) = {'{\pi^F^*}'};
M_.endo_names_long(16) = {'profits of financial intermediary / GDP'};
M_.endo_names(17) = {'Tw_star'};
M_.endo_names_tex(17) = {'\tilde{T}^w^*'};
M_.endo_names_long(17) = {'present value of education, health, pension / GDP'};
M_.endo_names(18) = {'hw_star'};
M_.endo_names_tex(18) = {'{h^w^*}'};
M_.endo_names_long(18) = {'present value of workers labor income / GDP'};
M_.endo_names(19) = {'Dr_star'};
M_.endo_names_tex(19) = {'\tilde{D}^r^*'};
M_.endo_names_long(19) = {'present value of retirees dividends / GDP'};
M_.endo_names(20) = {'Dw_star'};
M_.endo_names_tex(20) = {'\tilde{D}^w^*'};
M_.endo_names_long(20) = {'present value of workers dividends / GDP'};
M_.endo_names(21) = {'ep_star'};
M_.endo_names_tex(21) = {'{\epsilon^*}'};
M_.endo_names_long(21) = {'retiree MPC adjustment factor'};
M_.endo_names(22) = {'varsig_star'};
M_.endo_names_tex(22) = {'{\varsigma^*}'};
M_.endo_names_long(22) = {'MPC of worker'};
M_.endo_names(23) = {'zetar_star'};
M_.endo_names_tex(23) = {'{\zeta^r^*}'};
M_.endo_names_long(23) = {'retirees / workers'};
M_.endo_names(24) = {'zetay_star'};
M_.endo_names_tex(24) = {'{\zeta^y^*}'};
M_.endo_names_long(24) = {'youth / workers'};
M_.endo_names(25) = {'gw_star'};
M_.endo_names_tex(25) = {'{g^w^*}'};
M_.endo_names_long(25) = {'growth rate of workers'};
M_.endo_names(26) = {'g_star'};
M_.endo_names_tex(26) = {'{g^*}'};
M_.endo_names_long(26) = {'growth rate of GDP'};
M_.endo_names(27) = {'gE_star'};
M_.endo_names_tex(27) = {'{g^{\xi}^*}'};
M_.endo_names_long(27) = {'growth rate of average effective unit of labor'};
M_.endo_names(28) = {'iy_star'};
M_.endo_names_tex(28) = {'{i^y^*}'};
M_.endo_names_long(28) = {'education investment / average effective unit of labor'};
M_.endo_names(29) = {'gpc_star'};
M_.endo_names_tex(29) = {'{g_{dypc}^*}'};
M_.endo_names_long(29) = {'disposable income per capita growth'};
M_.endo_names(30) = {'zz_star'};
M_.endo_names_tex(30) = {'{\mathfrak{Z}^*}'};
M_.endo_names_long(30) = {'local variable for symbolic briefness'};
M_.endo_names(31) = {'far_star'};
M_.endo_names_tex(31) = {'{fa^r^*}'};
M_.endo_names_long(31) = {'financial assets of retirees / GDP'};
M_.endo_names(32) = {'faw_star'};
M_.endo_names_tex(32) = {'{fa^w^*}'};
M_.endo_names_long(32) = {'financial assets of workers / GDP'};
M_.endo_names(33) = {'dr_star'};
M_.endo_names_tex(33) = {'\tilde{d}^r^*'};
M_.endo_names_long(33) = {'dividends of retirees / GDP'};
M_.endo_names(34) = {'dw_star'};
M_.endo_names_tex(34) = {'\tilde{d}^w^*'};
M_.endo_names_long(34) = {'dividends of workers / GDP'};
M_.endo_names(35) = {'mu_star'};
M_.endo_names_tex(35) = {'{\mu^*}'};
M_.endo_names_long(35) = {'markup of input firms'};
M_.endo_names(36) = {'k_star'};
M_.endo_names_tex(36) = {'{k^*}'};
M_.endo_names_long(36) = {'aggregate fixed capital / GDP'};
M_.endo_names(37) = {'u_star'};
M_.endo_names_tex(37) = {'{u^*}'};
M_.endo_names_long(37) = {'capital utilization rate'};
M_.endo_names(38) = {'del_star'};
M_.endo_names_tex(38) = {'{\delta^*}'};
M_.endo_names_long(38) = {'depreciation rate'};
M_.endo_names(39) = {'delprime_star'};
M_.endo_names_tex(39) = {'{\delta^\prime^*}'};
M_.endo_names_long(39) = {'differentiation of depreciation rate'};
M_.endo_names(40) = {'gM_star'};
M_.endo_names_tex(40) = {'{g^M^*}'};
M_.endo_names_long(40) = {'growth rate of aggregate intermediate composite goods'};
M_.endo_names(41) = {'v_star'};
M_.endo_names_tex(41) = {'{v^*}'};
M_.endo_names_long(41) = {'aggregate value of adopted goods / GDP'};
M_.endo_names(42) = {'j_star'};
M_.endo_names_tex(42) = {'{j^*}'};
M_.endo_names_long(42) = {'aggregate value of new ideas / GDP'};
M_.endo_names(43) = {'lam_star'};
M_.endo_names_tex(43) = {'{\lambda^*}'};
M_.endo_names_long(43) = {'probability of success of adoption investment'};
M_.endo_names(44) = {'gA_star'};
M_.endo_names_tex(44) = {'{g^A^*}'};
M_.endo_names_long(44) = {'growth rate of adopted goods'};
M_.endo_names(45) = {'za_star'};
M_.endo_names_tex(45) = {'{z^a^*}'};
M_.endo_names_long(45) = {'number of aggregate new ideas / number of adopted goods'};
M_.endo_names(46) = {'PiA_star'};
M_.endo_names_tex(46) = {'{\pi^A^*}'};
M_.endo_names_long(46) = {'profits for adpoters / GDP'};
M_.endo_names(47) = {'PiRD_star'};
M_.endo_names_tex(47) = {'{\pi^{RD}^*}'};
M_.endo_names_long(47) = {'profits for R\&D sector'};
M_.endo_names(48) = {'fa_star'};
M_.endo_names_tex(48) = {'{fa^*}'};
M_.endo_names_long(48) = {'aggregate financial assets / GDP'};
M_.endo_names(49) = {'n_star'};
M_.endo_names_tex(49) = {'{n^*}'};
M_.endo_names_long(49) = {'growth rate of young population'};
M_.endo_names(50) = {'gn_star'};
M_.endo_names_tex(50) = {'{g^n^*}'};
M_.endo_names_long(50) = {'growth rate of total population'};
M_.endo_names(51) = {'gy_star'};
M_.endo_names_tex(51) = {'{g^y^*}'};
M_.endo_names_long(51) = {'growth rate of disposable income'};
M_.endo_names(52) = {'gamma_star'};
M_.endo_names_tex(52) = {'{\gamma^*}'};
M_.endo_names_long(52) = {'probability of retiree survival rate'};
M_.endo_names(53) = {'OMEGAY_star'};
M_.endo_names_tex(53) = {'{\omega^y^*}'};
M_.endo_names_long(53) = {'probability of staying young'};
M_.endo_names(54) = {'fert_star'};
M_.endo_names_tex(54) = {'{fert^*}'};
M_.endo_names_long(54) = {'fertility'};
M_.endo_names(55) = {'psi_star'};
M_.endo_names_tex(55) = {'{\psi^*}'};
M_.endo_names_long(55) = {'operation cost / GDP'};
M_.endo_names(56) = {'tauwE_star'};
M_.endo_names_tex(56) = {'\tilde{\tau}^E^*'};
M_.endo_names_long(56) = {'education cost / GDP'};
M_.endo_names(57) = {'tauwA_star'};
M_.endo_names_tex(57) = {'\tilde{\tau}^A^*'};
M_.endo_names_long(57) = {'pension and health care cost / GDP'};
M_.endo_names(58) = {'ay_star'};
M_.endo_names_tex(58) = {'{ay^*}'};
M_.endo_names_long(58) = {'average labor income / GDP'};
M_.endo_names(59) = {'tpe_star'};
M_.endo_names_tex(59) = {'{tpe^*}'};
M_.endo_names_long(59) = {'total payment of pensions / GDP'};
M_.endo_names(60) = {'Pe_star'};
M_.endo_names_tex(60) = {'{Pe^*}'};
M_.endo_names_long(60) = {'present value of life long pension for retirees / GDP'};
M_.endo_names(61) = {'he_star'};
M_.endo_names_tex(61) = {'{he^*}'};
M_.endo_names_long(61) = {'aggregate health expenditure / GDP'};
M_.endo_names(62) = {'en_star'};
M_.endo_names_tex(62) = {'{en^*}'};
M_.endo_names_long(62) = {'population growth shock'};
M_.endo_names(63) = {'ey_star'};
M_.endo_names_tex(63) = {'{ey^*}'};
M_.endo_names_long(63) = {'share of workers shock'};
M_.endo_names(64) = {'er_star'};
M_.endo_names_tex(64) = {'{er^*}'};
M_.endo_names_long(64) = {'share of retirees shock'};
M_.endo_names(65) = {'shockn_star'};
M_.endo_names_tex(65) = {'{shockn^*}'};
M_.endo_names_long(65) = {'sequence of population shocks'};
M_.endo_names(66) = {'shocky_star'};
M_.endo_names_tex(66) = {'{shocky^*}'};
M_.endo_names_long(66) = {'sequence of share of workers shocks'};
M_.endo_names(67) = {'shockr_star'};
M_.endo_names_tex(67) = {'{shockr^*}'};
M_.endo_names_long(67) = {'sequence of share of retirees shocks'};
M_.endo_names(68) = {'shareW_star'};
M_.endo_names_tex(68) = {'{shareW^*}'};
M_.endo_names_long(68) = {'workers / population'};
M_.endo_names(69) = {'shareR_star'};
M_.endo_names_tex(69) = {'{shareR^*}'};
M_.endo_names_long(69) = {'retirees / population'};
M_.endo_names(70) = {'AUX_ENDO_LAG_24_1'};
M_.endo_names_tex(70) = {'AUX\_ENDO\_LAG\_24\_1'};
M_.endo_names_long(70) = {'AUX_ENDO_LAG_24_1'};
M_.endo_names(71) = {'AUX_ENDO_LAG_35_1'};
M_.endo_names_tex(71) = {'AUX\_ENDO\_LAG\_35\_1'};
M_.endo_names_long(71) = {'AUX_ENDO_LAG_35_1'};
M_.endo_names(72) = {'AUX_ENDO_LAG_44_1'};
M_.endo_names_tex(72) = {'AUX\_ENDO\_LAG\_44\_1'};
M_.endo_names_long(72) = {'AUX_ENDO_LAG_44_1'};
M_.endo_names(73) = {'AUX_ENDO_LAG_64_1'};
M_.endo_names_tex(73) = {'AUX\_ENDO\_LAG\_64\_1'};
M_.endo_names_long(73) = {'AUX_ENDO_LAG_64_1'};
M_.endo_names(74) = {'AUX_ENDO_LAG_64_2'};
M_.endo_names_tex(74) = {'AUX\_ENDO\_LAG\_64\_2'};
M_.endo_names_long(74) = {'AUX_ENDO_LAG_64_2'};
M_.endo_names(75) = {'AUX_ENDO_LAG_64_3'};
M_.endo_names_tex(75) = {'AUX\_ENDO\_LAG\_64\_3'};
M_.endo_names_long(75) = {'AUX_ENDO_LAG_64_3'};
M_.endo_names(76) = {'AUX_ENDO_LAG_64_4'};
M_.endo_names_tex(76) = {'AUX\_ENDO\_LAG\_64\_4'};
M_.endo_names_long(76) = {'AUX_ENDO_LAG_64_4'};
M_.endo_names(77) = {'AUX_ENDO_LAG_64_5'};
M_.endo_names_tex(77) = {'AUX\_ENDO\_LAG\_64\_5'};
M_.endo_names_long(77) = {'AUX_ENDO_LAG_64_5'};
M_.endo_names(78) = {'AUX_ENDO_LAG_64_6'};
M_.endo_names_tex(78) = {'AUX\_ENDO\_LAG\_64\_6'};
M_.endo_names_long(78) = {'AUX_ENDO_LAG_64_6'};
M_.endo_names(79) = {'AUX_ENDO_LAG_64_7'};
M_.endo_names_tex(79) = {'AUX\_ENDO\_LAG\_64\_7'};
M_.endo_names_long(79) = {'AUX_ENDO_LAG_64_7'};
M_.endo_names(80) = {'AUX_ENDO_LAG_64_8'};
M_.endo_names_tex(80) = {'AUX\_ENDO\_LAG\_64\_8'};
M_.endo_names_long(80) = {'AUX_ENDO_LAG_64_8'};
M_.endo_names(81) = {'AUX_ENDO_LAG_64_9'};
M_.endo_names_tex(81) = {'AUX\_ENDO\_LAG\_64\_9'};
M_.endo_names_long(81) = {'AUX_ENDO_LAG_64_9'};
M_.endo_names(82) = {'AUX_ENDO_LAG_64_10'};
M_.endo_names_tex(82) = {'AUX\_ENDO\_LAG\_64\_10'};
M_.endo_names_long(82) = {'AUX_ENDO_LAG_64_10'};
M_.endo_names(83) = {'AUX_ENDO_LAG_64_11'};
M_.endo_names_tex(83) = {'AUX\_ENDO\_LAG\_64\_11'};
M_.endo_names_long(83) = {'AUX_ENDO_LAG_64_11'};
M_.endo_names(84) = {'AUX_ENDO_LAG_64_12'};
M_.endo_names_tex(84) = {'AUX\_ENDO\_LAG\_64\_12'};
M_.endo_names_long(84) = {'AUX_ENDO_LAG_64_12'};
M_.endo_names(85) = {'AUX_ENDO_LAG_64_13'};
M_.endo_names_tex(85) = {'AUX\_ENDO\_LAG\_64\_13'};
M_.endo_names_long(85) = {'AUX_ENDO_LAG_64_13'};
M_.endo_names(86) = {'AUX_ENDO_LAG_64_14'};
M_.endo_names_tex(86) = {'AUX\_ENDO\_LAG\_64\_14'};
M_.endo_names_long(86) = {'AUX_ENDO_LAG_64_14'};
M_.endo_names(87) = {'AUX_ENDO_LAG_64_15'};
M_.endo_names_tex(87) = {'AUX\_ENDO\_LAG\_64\_15'};
M_.endo_names_long(87) = {'AUX_ENDO_LAG_64_15'};
M_.endo_names(88) = {'AUX_ENDO_LAG_64_16'};
M_.endo_names_tex(88) = {'AUX\_ENDO\_LAG\_64\_16'};
M_.endo_names_long(88) = {'AUX_ENDO_LAG_64_16'};
M_.endo_names(89) = {'AUX_ENDO_LAG_64_17'};
M_.endo_names_tex(89) = {'AUX\_ENDO\_LAG\_64\_17'};
M_.endo_names_long(89) = {'AUX_ENDO_LAG_64_17'};
M_.endo_names(90) = {'AUX_ENDO_LAG_64_18'};
M_.endo_names_tex(90) = {'AUX\_ENDO\_LAG\_64\_18'};
M_.endo_names_long(90) = {'AUX_ENDO_LAG_64_18'};
M_.endo_names(91) = {'AUX_ENDO_LAG_64_19'};
M_.endo_names_tex(91) = {'AUX\_ENDO\_LAG\_64\_19'};
M_.endo_names_long(91) = {'AUX_ENDO_LAG_64_19'};
M_.endo_names(92) = {'AUX_ENDO_LAG_64_20'};
M_.endo_names_tex(92) = {'AUX\_ENDO\_LAG\_64\_20'};
M_.endo_names_long(92) = {'AUX_ENDO_LAG_64_20'};
M_.endo_names(93) = {'AUX_ENDO_LAG_64_21'};
M_.endo_names_tex(93) = {'AUX\_ENDO\_LAG\_64\_21'};
M_.endo_names_long(93) = {'AUX_ENDO_LAG_64_21'};
M_.endo_names(94) = {'AUX_ENDO_LAG_64_22'};
M_.endo_names_tex(94) = {'AUX\_ENDO\_LAG\_64\_22'};
M_.endo_names_long(94) = {'AUX_ENDO_LAG_64_22'};
M_.endo_names(95) = {'AUX_ENDO_LAG_64_23'};
M_.endo_names_tex(95) = {'AUX\_ENDO\_LAG\_64\_23'};
M_.endo_names_long(95) = {'AUX_ENDO_LAG_64_23'};
M_.endo_names(96) = {'AUX_ENDO_LAG_64_24'};
M_.endo_names_tex(96) = {'AUX\_ENDO\_LAG\_64\_24'};
M_.endo_names_long(96) = {'AUX_ENDO_LAG_64_24'};
M_.endo_names(97) = {'AUX_ENDO_LAG_64_25'};
M_.endo_names_tex(97) = {'AUX\_ENDO\_LAG\_64\_25'};
M_.endo_names_long(97) = {'AUX_ENDO_LAG_64_25'};
M_.endo_names(98) = {'AUX_ENDO_LAG_64_26'};
M_.endo_names_tex(98) = {'AUX\_ENDO\_LAG\_64\_26'};
M_.endo_names_long(98) = {'AUX_ENDO_LAG_64_26'};
M_.endo_names(99) = {'AUX_ENDO_LAG_64_27'};
M_.endo_names_tex(99) = {'AUX\_ENDO\_LAG\_64\_27'};
M_.endo_names_long(99) = {'AUX_ENDO_LAG_64_27'};
M_.endo_names(100) = {'AUX_ENDO_LAG_64_28'};
M_.endo_names_tex(100) = {'AUX\_ENDO\_LAG\_64\_28'};
M_.endo_names_long(100) = {'AUX_ENDO_LAG_64_28'};
M_.endo_names(101) = {'AUX_ENDO_LAG_64_29'};
M_.endo_names_tex(101) = {'AUX\_ENDO\_LAG\_64\_29'};
M_.endo_names_long(101) = {'AUX_ENDO_LAG_64_29'};
M_.endo_names(102) = {'AUX_ENDO_LAG_64_30'};
M_.endo_names_tex(102) = {'AUX\_ENDO\_LAG\_64\_30'};
M_.endo_names_long(102) = {'AUX_ENDO_LAG_64_30'};
M_.endo_names(103) = {'AUX_ENDO_LAG_64_31'};
M_.endo_names_tex(103) = {'AUX\_ENDO\_LAG\_64\_31'};
M_.endo_names_long(103) = {'AUX_ENDO_LAG_64_31'};
M_.endo_names(104) = {'AUX_ENDO_LAG_64_32'};
M_.endo_names_tex(104) = {'AUX\_ENDO\_LAG\_64\_32'};
M_.endo_names_long(104) = {'AUX_ENDO_LAG_64_32'};
M_.endo_names(105) = {'AUX_ENDO_LAG_64_33'};
M_.endo_names_tex(105) = {'AUX\_ENDO\_LAG\_64\_33'};
M_.endo_names_long(105) = {'AUX_ENDO_LAG_64_33'};
M_.endo_names(106) = {'AUX_ENDO_LAG_64_34'};
M_.endo_names_tex(106) = {'AUX\_ENDO\_LAG\_64\_34'};
M_.endo_names_long(106) = {'AUX_ENDO_LAG_64_34'};
M_.endo_names(107) = {'AUX_ENDO_LAG_64_35'};
M_.endo_names_tex(107) = {'AUX\_ENDO\_LAG\_64\_35'};
M_.endo_names_long(107) = {'AUX_ENDO_LAG_64_35'};
M_.endo_names(108) = {'AUX_ENDO_LAG_64_36'};
M_.endo_names_tex(108) = {'AUX\_ENDO\_LAG\_64\_36'};
M_.endo_names_long(108) = {'AUX_ENDO_LAG_64_36'};
M_.endo_names(109) = {'AUX_ENDO_LAG_64_37'};
M_.endo_names_tex(109) = {'AUX\_ENDO\_LAG\_64\_37'};
M_.endo_names_long(109) = {'AUX_ENDO_LAG_64_37'};
M_.endo_names(110) = {'AUX_ENDO_LAG_64_38'};
M_.endo_names_tex(110) = {'AUX\_ENDO\_LAG\_64\_38'};
M_.endo_names_long(110) = {'AUX_ENDO_LAG_64_38'};
M_.endo_names(111) = {'AUX_EXO_LAG_69_0'};
M_.endo_names_tex(111) = {'AUX\_EXO\_LAG\_69\_0'};
M_.endo_names_long(111) = {'AUX_EXO_LAG_69_0'};
M_.endo_names(112) = {'AUX_EXO_LAG_69_1'};
M_.endo_names_tex(112) = {'AUX\_EXO\_LAG\_69\_1'};
M_.endo_names_long(112) = {'AUX_EXO_LAG_69_1'};
M_.endo_names(113) = {'AUX_EXO_LAG_69_2'};
M_.endo_names_tex(113) = {'AUX\_EXO\_LAG\_69\_2'};
M_.endo_names_long(113) = {'AUX_EXO_LAG_69_2'};
M_.endo_names(114) = {'AUX_EXO_LAG_69_3'};
M_.endo_names_tex(114) = {'AUX\_EXO\_LAG\_69\_3'};
M_.endo_names_long(114) = {'AUX_EXO_LAG_69_3'};
M_.endo_names(115) = {'AUX_EXO_LAG_69_4'};
M_.endo_names_tex(115) = {'AUX\_EXO\_LAG\_69\_4'};
M_.endo_names_long(115) = {'AUX_EXO_LAG_69_4'};
M_.endo_names(116) = {'AUX_EXO_LAG_69_5'};
M_.endo_names_tex(116) = {'AUX\_EXO\_LAG\_69\_5'};
M_.endo_names_long(116) = {'AUX_EXO_LAG_69_5'};
M_.endo_names(117) = {'AUX_EXO_LAG_69_6'};
M_.endo_names_tex(117) = {'AUX\_EXO\_LAG\_69\_6'};
M_.endo_names_long(117) = {'AUX_EXO_LAG_69_6'};
M_.endo_names(118) = {'AUX_EXO_LAG_69_7'};
M_.endo_names_tex(118) = {'AUX\_EXO\_LAG\_69\_7'};
M_.endo_names_long(118) = {'AUX_EXO_LAG_69_7'};
M_.endo_names(119) = {'AUX_EXO_LAG_69_8'};
M_.endo_names_tex(119) = {'AUX\_EXO\_LAG\_69\_8'};
M_.endo_names_long(119) = {'AUX_EXO_LAG_69_8'};
M_.endo_names(120) = {'AUX_EXO_LAG_69_9'};
M_.endo_names_tex(120) = {'AUX\_EXO\_LAG\_69\_9'};
M_.endo_names_long(120) = {'AUX_EXO_LAG_69_9'};
M_.endo_names(121) = {'AUX_EXO_LAG_69_10'};
M_.endo_names_tex(121) = {'AUX\_EXO\_LAG\_69\_10'};
M_.endo_names_long(121) = {'AUX_EXO_LAG_69_10'};
M_.endo_names(122) = {'AUX_EXO_LAG_69_11'};
M_.endo_names_tex(122) = {'AUX\_EXO\_LAG\_69\_11'};
M_.endo_names_long(122) = {'AUX_EXO_LAG_69_11'};
M_.endo_names(123) = {'AUX_EXO_LAG_69_12'};
M_.endo_names_tex(123) = {'AUX\_EXO\_LAG\_69\_12'};
M_.endo_names_long(123) = {'AUX_EXO_LAG_69_12'};
M_.endo_names(124) = {'AUX_EXO_LAG_69_13'};
M_.endo_names_tex(124) = {'AUX\_EXO\_LAG\_69\_13'};
M_.endo_names_long(124) = {'AUX_EXO_LAG_69_13'};
M_.endo_names(125) = {'AUX_EXO_LAG_69_14'};
M_.endo_names_tex(125) = {'AUX\_EXO\_LAG\_69\_14'};
M_.endo_names_long(125) = {'AUX_EXO_LAG_69_14'};
M_.endo_names(126) = {'AUX_EXO_LAG_69_15'};
M_.endo_names_tex(126) = {'AUX\_EXO\_LAG\_69\_15'};
M_.endo_names_long(126) = {'AUX_EXO_LAG_69_15'};
M_.endo_names(127) = {'AUX_EXO_LAG_69_16'};
M_.endo_names_tex(127) = {'AUX\_EXO\_LAG\_69\_16'};
M_.endo_names_long(127) = {'AUX_EXO_LAG_69_16'};
M_.endo_names(128) = {'AUX_EXO_LAG_69_17'};
M_.endo_names_tex(128) = {'AUX\_EXO\_LAG\_69\_17'};
M_.endo_names_long(128) = {'AUX_EXO_LAG_69_17'};
M_.endo_names(129) = {'AUX_EXO_LAG_69_18'};
M_.endo_names_tex(129) = {'AUX\_EXO\_LAG\_69\_18'};
M_.endo_names_long(129) = {'AUX_EXO_LAG_69_18'};
M_.endo_names(130) = {'AUX_EXO_LAG_69_19'};
M_.endo_names_tex(130) = {'AUX\_EXO\_LAG\_69\_19'};
M_.endo_names_long(130) = {'AUX_EXO_LAG_69_19'};
M_.endo_names(131) = {'AUX_EXO_LAG_69_20'};
M_.endo_names_tex(131) = {'AUX\_EXO\_LAG\_69\_20'};
M_.endo_names_long(131) = {'AUX_EXO_LAG_69_20'};
M_.endo_names(132) = {'AUX_EXO_LAG_69_21'};
M_.endo_names_tex(132) = {'AUX\_EXO\_LAG\_69\_21'};
M_.endo_names_long(132) = {'AUX_EXO_LAG_69_21'};
M_.endo_names(133) = {'AUX_EXO_LAG_69_22'};
M_.endo_names_tex(133) = {'AUX\_EXO\_LAG\_69\_22'};
M_.endo_names_long(133) = {'AUX_EXO_LAG_69_22'};
M_.endo_names(134) = {'AUX_EXO_LAG_69_23'};
M_.endo_names_tex(134) = {'AUX\_EXO\_LAG\_69\_23'};
M_.endo_names_long(134) = {'AUX_EXO_LAG_69_23'};
M_.endo_names(135) = {'AUX_EXO_LAG_69_24'};
M_.endo_names_tex(135) = {'AUX\_EXO\_LAG\_69\_24'};
M_.endo_names_long(135) = {'AUX_EXO_LAG_69_24'};
M_.endo_names(136) = {'AUX_EXO_LAG_69_25'};
M_.endo_names_tex(136) = {'AUX\_EXO\_LAG\_69\_25'};
M_.endo_names_long(136) = {'AUX_EXO_LAG_69_25'};
M_.endo_names(137) = {'AUX_EXO_LAG_69_26'};
M_.endo_names_tex(137) = {'AUX\_EXO\_LAG\_69\_26'};
M_.endo_names_long(137) = {'AUX_EXO_LAG_69_26'};
M_.endo_names(138) = {'AUX_EXO_LAG_69_27'};
M_.endo_names_tex(138) = {'AUX\_EXO\_LAG\_69\_27'};
M_.endo_names_long(138) = {'AUX_EXO_LAG_69_27'};
M_.endo_names(139) = {'AUX_EXO_LAG_69_28'};
M_.endo_names_tex(139) = {'AUX\_EXO\_LAG\_69\_28'};
M_.endo_names_long(139) = {'AUX_EXO_LAG_69_28'};
M_.endo_names(140) = {'AUX_EXO_LAG_69_29'};
M_.endo_names_tex(140) = {'AUX\_EXO\_LAG\_69\_29'};
M_.endo_names_long(140) = {'AUX_EXO_LAG_69_29'};
M_.endo_names(141) = {'AUX_EXO_LAG_69_30'};
M_.endo_names_tex(141) = {'AUX\_EXO\_LAG\_69\_30'};
M_.endo_names_long(141) = {'AUX_EXO_LAG_69_30'};
M_.endo_names(142) = {'AUX_EXO_LAG_69_31'};
M_.endo_names_tex(142) = {'AUX\_EXO\_LAG\_69\_31'};
M_.endo_names_long(142) = {'AUX_EXO_LAG_69_31'};
M_.endo_names(143) = {'AUX_EXO_LAG_69_32'};
M_.endo_names_tex(143) = {'AUX\_EXO\_LAG\_69\_32'};
M_.endo_names_long(143) = {'AUX_EXO_LAG_69_32'};
M_.endo_names(144) = {'AUX_EXO_LAG_69_33'};
M_.endo_names_tex(144) = {'AUX\_EXO\_LAG\_69\_33'};
M_.endo_names_long(144) = {'AUX_EXO_LAG_69_33'};
M_.endo_names(145) = {'AUX_EXO_LAG_69_34'};
M_.endo_names_tex(145) = {'AUX\_EXO\_LAG\_69\_34'};
M_.endo_names_long(145) = {'AUX_EXO_LAG_69_34'};
M_.endo_names(146) = {'AUX_EXO_LAG_69_35'};
M_.endo_names_tex(146) = {'AUX\_EXO\_LAG\_69\_35'};
M_.endo_names_long(146) = {'AUX_EXO_LAG_69_35'};
M_.endo_names(147) = {'AUX_EXO_LAG_69_36'};
M_.endo_names_tex(147) = {'AUX\_EXO\_LAG\_69\_36'};
M_.endo_names_long(147) = {'AUX_EXO_LAG_69_36'};
M_.endo_names(148) = {'AUX_EXO_LAG_69_37'};
M_.endo_names_tex(148) = {'AUX\_EXO\_LAG\_69\_37'};
M_.endo_names_long(148) = {'AUX_EXO_LAG_69_37'};
M_.endo_names(149) = {'AUX_EXO_LAG_69_38'};
M_.endo_names_tex(149) = {'AUX\_EXO\_LAG\_69\_38'};
M_.endo_names_long(149) = {'AUX_EXO_LAG_69_38'};
M_.endo_partitions = struct();
M_.param_names = cell(159,1);
M_.param_names_tex = cell(159,1);
M_.param_names_long = cell(159,1);
M_.param_names(1) = {'R_SS_star'};
M_.param_names_tex(1) = {'R\_SS\_star'};
M_.param_names_long(1) = {'R_SS_star'};
M_.param_names(2) = {'ZETAYSS_star'};
M_.param_names_tex(2) = {'{ZETAYSS^*}'};
M_.param_names_long(2) = {'steady state of young / worker '};
M_.param_names(3) = {'ZETARSS_star'};
M_.param_names_tex(3) = {'{ZETARSS^*}'};
M_.param_names_long(3) = {'steady state of retiree / worker '};
M_.param_names(4) = {'SHINNOVW_star'};
M_.param_names_tex(4) = {'{SHINNOVW^*}'};
M_.param_names_long(4) = {'share of innovation workers'};
M_.param_names(5) = {'YINNOVSH_star'};
M_.param_names_tex(5) = {'{\kappa^*}'};
M_.param_names_long(5) = {'scale parameter to match new young innovators'};
M_.param_names(6) = {'ETAR_star'};
M_.param_names_tex(6) = {'{\eta^r^*}'};
M_.param_names_long(6) = {'replacement ratio'};
M_.param_names(7) = {'DELTAHE_star'};
M_.param_names_tex(7) = {'{\delta_{HE}^*}'};
M_.param_names_long(7) = {'share of health expenditure to GDP per capita'};
M_.param_names(8) = {'NP_star'};
M_.param_names_tex(8) = {'{n_p^*}'};
M_.param_names_long(8) = {'average working years'};
M_.param_names(9) = {'FERTSS_star'};
M_.param_names_tex(9) = {'{FERTSS^*}'};
M_.param_names_long(9) = {'steady state of fertility'};
M_.param_names(10) = {'RHOYW_star'};
M_.param_names_tex(10) = {'{\rho^{yw}^*}'};
M_.param_names_long(10) = {'importance of young innovators in aggregate new ideas'};
M_.param_names(11) = {'LAMY_star'};
M_.param_names_tex(11) = {'{\lam^{yw}^*}'};
M_.param_names_long(11) = {'rate of no longer active in innovation sector'};
M_.param_names(12) = {'PSISS_star'};
M_.param_names_tex(12) = {'{PSISS^*}'};
M_.param_names_long(12) = {'steady state of operation cost'};
M_.param_names(13) = {'GSS_star'};
M_.param_names_tex(13) = {'{GSS^*}'};
M_.param_names_long(13) = {'steady state of growth rate'};
M_.param_names(14) = {'PERS_star'};
M_.param_names_tex(14) = {'PERS\_star'};
M_.param_names_long(14) = {'PERS_star'};
M_.param_names(15) = {'RATIODEL_star'};
M_.param_names_tex(15) = {'{\epsilon^{\delta^{\prime}}^*}'};
M_.param_names_long(15) = {'elasticity of delta prime to capital utilization'};
M_.param_names(16) = {'OMEGAR_star'};
M_.param_names_tex(16) = {'{\omega^w^*}'};
M_.param_names_long(16) = {'rate of staying workers'};
M_.param_names(17) = {'RHOU_star'};
M_.param_names_tex(17) = {'{\rho_U^*}'};
M_.param_names_long(17) = {'preference parameter'};
M_.param_names(18) = {'BBETA_star'};
M_.param_names_tex(18) = {'{\beta^*}'};
M_.param_names_long(18) = {'subjective discount factor'};
M_.param_names(19) = {'ALPHA_star'};
M_.param_names_tex(19) = {'{\alpha^*}'};
M_.param_names_long(19) = {'fixed capital share of added value'};
M_.param_names(20) = {'GAMMAI_star'};
M_.param_names_tex(20) = {'{\gamma_I^*}'};
M_.param_names_long(20) = {'intermediate good share'};
M_.param_names(21) = {'VARNU_star'};
M_.param_names_tex(21) = {'{\vartheta^*}'};
M_.param_names_long(21) = {'markup of intermediate firms'};
M_.param_names(22) = {'BMEGA_star'};
M_.param_names_tex(22) = {'{BMEGA^*}'};
M_.param_names_long(22) = {'scale parameter of operation cost'};
M_.param_names(23) = {'CHI_star'};
M_.param_names_tex(23) = {'{\chi^*}'};
M_.param_names_long(23) = {'scale parameter in innovation process'};
M_.param_names(24) = {'RHO_star'};
M_.param_names_tex(24) = {'{\rho^*}'};
M_.param_names_long(24) = {'R\&D elasticity of new technology creation in equilibrium'};
M_.param_names(25) = {'PHI_star'};
M_.param_names_tex(25) = {'{\phi^*}'};
M_.param_names_long(25) = {'survival rate of new ideas or prototypes'};
M_.param_names(26) = {'ELASMU_star'};
M_.param_names_tex(26) = {'{\epsilon_{\mu}^*}'};
M_.param_names_long(26) = {'elasticity of markup of input firms to number of input firms'};
M_.param_names(27) = {'ELASLAM_star'};
M_.param_names_tex(27) = {'{\epsilon_{\lambda}^*}'};
M_.param_names_long(27) = {'elasticity of \lambda'};
M_.param_names(28) = {'DELPRIMESS_star'};
M_.param_names_tex(28) = {'{DELPRIMESS^*}'};
M_.param_names_long(28) = {'steady state of \delta^{prime}'};
M_.param_names(29) = {'DELSS_star'};
M_.param_names_tex(29) = {'{DELSS^*}'};
M_.param_names_long(29) = {'steady state of \delta'};
M_.param_names(30) = {'MUSS_star'};
M_.param_names_tex(30) = {'{MUSS^*}'};
M_.param_names_long(30) = {'steady state of \mu'};
M_.param_names(31) = {'LAMSS_star'};
M_.param_names_tex(31) = {'{LAMSS^*}'};
M_.param_names_long(31) = {'steady state of \lambda'};
M_.param_names(32) = {'USS_star'};
M_.param_names_tex(32) = {'{USS^*}'};
M_.param_names_long(32) = {'steady state of capital utilization'};
M_.param_names(33) = {'VARPISS_star'};
M_.param_names_tex(33) = {'{VARPISS^*}'};
M_.param_names_long(33) = {'steady state of \varpi'};
M_.param_names(34) = {'ZASS_star'};
M_.param_names_tex(34) = {'{ZASS^*}'};
M_.param_names_long(34) = {'steady state of z_a'};
M_.param_names(35) = {'KSS_star'};
M_.param_names_tex(35) = {'{KSS^*}'};
M_.param_names_long(35) = {'steady state of k'};
M_.param_names(36) = {'NSS_star'};
M_.param_names_tex(36) = {'{NSS^*}'};
M_.param_names_long(36) = {'steady state of g^n'};
M_.param_names(37) = {'GAMMASS_star'};
M_.param_names_tex(37) = {'{GAMMASS^*}'};
M_.param_names_long(37) = {'steady state of \gamma'};
M_.param_names(38) = {'RHOE_star'};
M_.param_names_tex(38) = {'{\rho_E^*}'};
M_.param_names_long(38) = {'obsolescence of labor skills'};
M_.param_names(39) = {'CHIE_star'};
M_.param_names_tex(39) = {'{\chi_E^*}'};
M_.param_names_long(39) = {'scale parameter in average effective units process'};
M_.param_names(40) = {'gn_1_star'};
M_.param_names_tex(40) = {'gn\_1\_star'};
M_.param_names_long(40) = {'gn_1_star'};
M_.param_names(41) = {'gn_2_star'};
M_.param_names_tex(41) = {'gn\_2\_star'};
M_.param_names_long(41) = {'gn_2_star'};
M_.param_names(42) = {'gn_3_star'};
M_.param_names_tex(42) = {'gn\_3\_star'};
M_.param_names_long(42) = {'gn_3_star'};
M_.param_names(43) = {'gn_4_star'};
M_.param_names_tex(43) = {'gn\_4\_star'};
M_.param_names_long(43) = {'gn_4_star'};
M_.param_names(44) = {'gn_5_star'};
M_.param_names_tex(44) = {'gn\_5\_star'};
M_.param_names_long(44) = {'gn_5_star'};
M_.param_names(45) = {'gn_6_star'};
M_.param_names_tex(45) = {'gn\_6\_star'};
M_.param_names_long(45) = {'gn_6_star'};
M_.param_names(46) = {'gn_7_star'};
M_.param_names_tex(46) = {'gn\_7\_star'};
M_.param_names_long(46) = {'gn_7_star'};
M_.param_names(47) = {'gn_8_star'};
M_.param_names_tex(47) = {'gn\_8\_star'};
M_.param_names_long(47) = {'gn_8_star'};
M_.param_names(48) = {'gn_9_star'};
M_.param_names_tex(48) = {'gn\_9\_star'};
M_.param_names_long(48) = {'gn_9_star'};
M_.param_names(49) = {'gn_10_star'};
M_.param_names_tex(49) = {'gn\_10\_star'};
M_.param_names_long(49) = {'gn_10_star'};
M_.param_names(50) = {'gn_11_star'};
M_.param_names_tex(50) = {'gn\_11\_star'};
M_.param_names_long(50) = {'gn_11_star'};
M_.param_names(51) = {'gn_12_star'};
M_.param_names_tex(51) = {'gn\_12\_star'};
M_.param_names_long(51) = {'gn_12_star'};
M_.param_names(52) = {'gn_13_star'};
M_.param_names_tex(52) = {'gn\_13\_star'};
M_.param_names_long(52) = {'gn_13_star'};
M_.param_names(53) = {'gn_14_star'};
M_.param_names_tex(53) = {'gn\_14\_star'};
M_.param_names_long(53) = {'gn_14_star'};
M_.param_names(54) = {'gn_15_star'};
M_.param_names_tex(54) = {'gn\_15\_star'};
M_.param_names_long(54) = {'gn_15_star'};
M_.param_names(55) = {'gn_16_star'};
M_.param_names_tex(55) = {'gn\_16\_star'};
M_.param_names_long(55) = {'gn_16_star'};
M_.param_names(56) = {'gn_17_star'};
M_.param_names_tex(56) = {'gn\_17\_star'};
M_.param_names_long(56) = {'gn_17_star'};
M_.param_names(57) = {'gn_18_star'};
M_.param_names_tex(57) = {'gn\_18\_star'};
M_.param_names_long(57) = {'gn_18_star'};
M_.param_names(58) = {'gn_19_star'};
M_.param_names_tex(58) = {'gn\_19\_star'};
M_.param_names_long(58) = {'gn_19_star'};
M_.param_names(59) = {'gn_20_star'};
M_.param_names_tex(59) = {'gn\_20\_star'};
M_.param_names_long(59) = {'gn_20_star'};
M_.param_names(60) = {'gn_21_star'};
M_.param_names_tex(60) = {'gn\_21\_star'};
M_.param_names_long(60) = {'gn_21_star'};
M_.param_names(61) = {'gn_22_star'};
M_.param_names_tex(61) = {'gn\_22\_star'};
M_.param_names_long(61) = {'gn_22_star'};
M_.param_names(62) = {'gn_23_star'};
M_.param_names_tex(62) = {'gn\_23\_star'};
M_.param_names_long(62) = {'gn_23_star'};
M_.param_names(63) = {'gn_24_star'};
M_.param_names_tex(63) = {'gn\_24\_star'};
M_.param_names_long(63) = {'gn_24_star'};
M_.param_names(64) = {'gn_25_star'};
M_.param_names_tex(64) = {'gn\_25\_star'};
M_.param_names_long(64) = {'gn_25_star'};
M_.param_names(65) = {'gn_26_star'};
M_.param_names_tex(65) = {'gn\_26\_star'};
M_.param_names_long(65) = {'gn_26_star'};
M_.param_names(66) = {'gn_27_star'};
M_.param_names_tex(66) = {'gn\_27\_star'};
M_.param_names_long(66) = {'gn_27_star'};
M_.param_names(67) = {'gn_28_star'};
M_.param_names_tex(67) = {'gn\_28\_star'};
M_.param_names_long(67) = {'gn_28_star'};
M_.param_names(68) = {'gn_29_star'};
M_.param_names_tex(68) = {'gn\_29\_star'};
M_.param_names_long(68) = {'gn_29_star'};
M_.param_names(69) = {'gn_30_star'};
M_.param_names_tex(69) = {'gn\_30\_star'};
M_.param_names_long(69) = {'gn_30_star'};
M_.param_names(70) = {'gn_31_star'};
M_.param_names_tex(70) = {'gn\_31\_star'};
M_.param_names_long(70) = {'gn_31_star'};
M_.param_names(71) = {'gn_32_star'};
M_.param_names_tex(71) = {'gn\_32\_star'};
M_.param_names_long(71) = {'gn_32_star'};
M_.param_names(72) = {'gn_33_star'};
M_.param_names_tex(72) = {'gn\_33\_star'};
M_.param_names_long(72) = {'gn_33_star'};
M_.param_names(73) = {'gn_34_star'};
M_.param_names_tex(73) = {'gn\_34\_star'};
M_.param_names_long(73) = {'gn_34_star'};
M_.param_names(74) = {'gn_35_star'};
M_.param_names_tex(74) = {'gn\_35\_star'};
M_.param_names_long(74) = {'gn_35_star'};
M_.param_names(75) = {'gn_36_star'};
M_.param_names_tex(75) = {'gn\_36\_star'};
M_.param_names_long(75) = {'gn_36_star'};
M_.param_names(76) = {'gn_37_star'};
M_.param_names_tex(76) = {'gn\_37\_star'};
M_.param_names_long(76) = {'gn_37_star'};
M_.param_names(77) = {'gn_38_star'};
M_.param_names_tex(77) = {'gn\_38\_star'};
M_.param_names_long(77) = {'gn_38_star'};
M_.param_names(78) = {'gn_39_star'};
M_.param_names_tex(78) = {'gn\_39\_star'};
M_.param_names_long(78) = {'gn_39_star'};
M_.param_names(79) = {'gn_40_star'};
M_.param_names_tex(79) = {'gn\_40\_star'};
M_.param_names_long(79) = {'gn_40_star'};
M_.param_names(80) = {'dws_1_star'};
M_.param_names_tex(80) = {'dws\_1\_star'};
M_.param_names_long(80) = {'dws_1_star'};
M_.param_names(81) = {'dws_2_star'};
M_.param_names_tex(81) = {'dws\_2\_star'};
M_.param_names_long(81) = {'dws_2_star'};
M_.param_names(82) = {'dws_3_star'};
M_.param_names_tex(82) = {'dws\_3\_star'};
M_.param_names_long(82) = {'dws_3_star'};
M_.param_names(83) = {'dws_4_star'};
M_.param_names_tex(83) = {'dws\_4\_star'};
M_.param_names_long(83) = {'dws_4_star'};
M_.param_names(84) = {'dws_5_star'};
M_.param_names_tex(84) = {'dws\_5\_star'};
M_.param_names_long(84) = {'dws_5_star'};
M_.param_names(85) = {'dws_6_star'};
M_.param_names_tex(85) = {'dws\_6\_star'};
M_.param_names_long(85) = {'dws_6_star'};
M_.param_names(86) = {'dws_7_star'};
M_.param_names_tex(86) = {'dws\_7\_star'};
M_.param_names_long(86) = {'dws_7_star'};
M_.param_names(87) = {'dws_8_star'};
M_.param_names_tex(87) = {'dws\_8\_star'};
M_.param_names_long(87) = {'dws_8_star'};
M_.param_names(88) = {'dws_9_star'};
M_.param_names_tex(88) = {'dws\_9\_star'};
M_.param_names_long(88) = {'dws_9_star'};
M_.param_names(89) = {'dws_10_star'};
M_.param_names_tex(89) = {'dws\_10\_star'};
M_.param_names_long(89) = {'dws_10_star'};
M_.param_names(90) = {'dws_11_star'};
M_.param_names_tex(90) = {'dws\_11\_star'};
M_.param_names_long(90) = {'dws_11_star'};
M_.param_names(91) = {'dws_12_star'};
M_.param_names_tex(91) = {'dws\_12\_star'};
M_.param_names_long(91) = {'dws_12_star'};
M_.param_names(92) = {'dws_13_star'};
M_.param_names_tex(92) = {'dws\_13\_star'};
M_.param_names_long(92) = {'dws_13_star'};
M_.param_names(93) = {'dws_14_star'};
M_.param_names_tex(93) = {'dws\_14\_star'};
M_.param_names_long(93) = {'dws_14_star'};
M_.param_names(94) = {'dws_15_star'};
M_.param_names_tex(94) = {'dws\_15\_star'};
M_.param_names_long(94) = {'dws_15_star'};
M_.param_names(95) = {'dws_16_star'};
M_.param_names_tex(95) = {'dws\_16\_star'};
M_.param_names_long(95) = {'dws_16_star'};
M_.param_names(96) = {'dws_17_star'};
M_.param_names_tex(96) = {'dws\_17\_star'};
M_.param_names_long(96) = {'dws_17_star'};
M_.param_names(97) = {'dws_18_star'};
M_.param_names_tex(97) = {'dws\_18\_star'};
M_.param_names_long(97) = {'dws_18_star'};
M_.param_names(98) = {'dws_19_star'};
M_.param_names_tex(98) = {'dws\_19\_star'};
M_.param_names_long(98) = {'dws_19_star'};
M_.param_names(99) = {'dws_20_star'};
M_.param_names_tex(99) = {'dws\_20\_star'};
M_.param_names_long(99) = {'dws_20_star'};
M_.param_names(100) = {'dws_21_star'};
M_.param_names_tex(100) = {'dws\_21\_star'};
M_.param_names_long(100) = {'dws_21_star'};
M_.param_names(101) = {'dws_22_star'};
M_.param_names_tex(101) = {'dws\_22\_star'};
M_.param_names_long(101) = {'dws_22_star'};
M_.param_names(102) = {'dws_23_star'};
M_.param_names_tex(102) = {'dws\_23\_star'};
M_.param_names_long(102) = {'dws_23_star'};
M_.param_names(103) = {'dws_24_star'};
M_.param_names_tex(103) = {'dws\_24\_star'};
M_.param_names_long(103) = {'dws_24_star'};
M_.param_names(104) = {'dws_25_star'};
M_.param_names_tex(104) = {'dws\_25\_star'};
M_.param_names_long(104) = {'dws_25_star'};
M_.param_names(105) = {'dws_26_star'};
M_.param_names_tex(105) = {'dws\_26\_star'};
M_.param_names_long(105) = {'dws_26_star'};
M_.param_names(106) = {'dws_27_star'};
M_.param_names_tex(106) = {'dws\_27\_star'};
M_.param_names_long(106) = {'dws_27_star'};
M_.param_names(107) = {'dws_28_star'};
M_.param_names_tex(107) = {'dws\_28\_star'};
M_.param_names_long(107) = {'dws_28_star'};
M_.param_names(108) = {'dws_29_star'};
M_.param_names_tex(108) = {'dws\_29\_star'};
M_.param_names_long(108) = {'dws_29_star'};
M_.param_names(109) = {'dws_30_star'};
M_.param_names_tex(109) = {'dws\_30\_star'};
M_.param_names_long(109) = {'dws_30_star'};
M_.param_names(110) = {'dws_31_star'};
M_.param_names_tex(110) = {'dws\_31\_star'};
M_.param_names_long(110) = {'dws_31_star'};
M_.param_names(111) = {'dws_32_star'};
M_.param_names_tex(111) = {'dws\_32\_star'};
M_.param_names_long(111) = {'dws_32_star'};
M_.param_names(112) = {'dws_33_star'};
M_.param_names_tex(112) = {'dws\_33\_star'};
M_.param_names_long(112) = {'dws_33_star'};
M_.param_names(113) = {'dws_34_star'};
M_.param_names_tex(113) = {'dws\_34\_star'};
M_.param_names_long(113) = {'dws_34_star'};
M_.param_names(114) = {'dws_35_star'};
M_.param_names_tex(114) = {'dws\_35\_star'};
M_.param_names_long(114) = {'dws_35_star'};
M_.param_names(115) = {'dws_36_star'};
M_.param_names_tex(115) = {'dws\_36\_star'};
M_.param_names_long(115) = {'dws_36_star'};
M_.param_names(116) = {'dws_37_star'};
M_.param_names_tex(116) = {'dws\_37\_star'};
M_.param_names_long(116) = {'dws_37_star'};
M_.param_names(117) = {'dws_38_star'};
M_.param_names_tex(117) = {'dws\_38\_star'};
M_.param_names_long(117) = {'dws_38_star'};
M_.param_names(118) = {'dws_39_star'};
M_.param_names_tex(118) = {'dws\_39\_star'};
M_.param_names_long(118) = {'dws_39_star'};
M_.param_names(119) = {'dws_40_star'};
M_.param_names_tex(119) = {'dws\_40\_star'};
M_.param_names_long(119) = {'dws_40_star'};
M_.param_names(120) = {'drs_1_star'};
M_.param_names_tex(120) = {'drs\_1\_star'};
M_.param_names_long(120) = {'drs_1_star'};
M_.param_names(121) = {'drs_2_star'};
M_.param_names_tex(121) = {'drs\_2\_star'};
M_.param_names_long(121) = {'drs_2_star'};
M_.param_names(122) = {'drs_3_star'};
M_.param_names_tex(122) = {'drs\_3\_star'};
M_.param_names_long(122) = {'drs_3_star'};
M_.param_names(123) = {'drs_4_star'};
M_.param_names_tex(123) = {'drs\_4\_star'};
M_.param_names_long(123) = {'drs_4_star'};
M_.param_names(124) = {'drs_5_star'};
M_.param_names_tex(124) = {'drs\_5\_star'};
M_.param_names_long(124) = {'drs_5_star'};
M_.param_names(125) = {'drs_6_star'};
M_.param_names_tex(125) = {'drs\_6\_star'};
M_.param_names_long(125) = {'drs_6_star'};
M_.param_names(126) = {'drs_7_star'};
M_.param_names_tex(126) = {'drs\_7\_star'};
M_.param_names_long(126) = {'drs_7_star'};
M_.param_names(127) = {'drs_8_star'};
M_.param_names_tex(127) = {'drs\_8\_star'};
M_.param_names_long(127) = {'drs_8_star'};
M_.param_names(128) = {'drs_9_star'};
M_.param_names_tex(128) = {'drs\_9\_star'};
M_.param_names_long(128) = {'drs_9_star'};
M_.param_names(129) = {'drs_10_star'};
M_.param_names_tex(129) = {'drs\_10\_star'};
M_.param_names_long(129) = {'drs_10_star'};
M_.param_names(130) = {'drs_11_star'};
M_.param_names_tex(130) = {'drs\_11\_star'};
M_.param_names_long(130) = {'drs_11_star'};
M_.param_names(131) = {'drs_12_star'};
M_.param_names_tex(131) = {'drs\_12\_star'};
M_.param_names_long(131) = {'drs_12_star'};
M_.param_names(132) = {'drs_13_star'};
M_.param_names_tex(132) = {'drs\_13\_star'};
M_.param_names_long(132) = {'drs_13_star'};
M_.param_names(133) = {'drs_14_star'};
M_.param_names_tex(133) = {'drs\_14\_star'};
M_.param_names_long(133) = {'drs_14_star'};
M_.param_names(134) = {'drs_15_star'};
M_.param_names_tex(134) = {'drs\_15\_star'};
M_.param_names_long(134) = {'drs_15_star'};
M_.param_names(135) = {'drs_16_star'};
M_.param_names_tex(135) = {'drs\_16\_star'};
M_.param_names_long(135) = {'drs_16_star'};
M_.param_names(136) = {'drs_17_star'};
M_.param_names_tex(136) = {'drs\_17\_star'};
M_.param_names_long(136) = {'drs_17_star'};
M_.param_names(137) = {'drs_18_star'};
M_.param_names_tex(137) = {'drs\_18\_star'};
M_.param_names_long(137) = {'drs_18_star'};
M_.param_names(138) = {'drs_19_star'};
M_.param_names_tex(138) = {'drs\_19\_star'};
M_.param_names_long(138) = {'drs_19_star'};
M_.param_names(139) = {'drs_20_star'};
M_.param_names_tex(139) = {'drs\_20\_star'};
M_.param_names_long(139) = {'drs_20_star'};
M_.param_names(140) = {'drs_21_star'};
M_.param_names_tex(140) = {'drs\_21\_star'};
M_.param_names_long(140) = {'drs_21_star'};
M_.param_names(141) = {'drs_22_star'};
M_.param_names_tex(141) = {'drs\_22\_star'};
M_.param_names_long(141) = {'drs_22_star'};
M_.param_names(142) = {'drs_23_star'};
M_.param_names_tex(142) = {'drs\_23\_star'};
M_.param_names_long(142) = {'drs_23_star'};
M_.param_names(143) = {'drs_24_star'};
M_.param_names_tex(143) = {'drs\_24\_star'};
M_.param_names_long(143) = {'drs_24_star'};
M_.param_names(144) = {'drs_25_star'};
M_.param_names_tex(144) = {'drs\_25\_star'};
M_.param_names_long(144) = {'drs_25_star'};
M_.param_names(145) = {'drs_26_star'};
M_.param_names_tex(145) = {'drs\_26\_star'};
M_.param_names_long(145) = {'drs_26_star'};
M_.param_names(146) = {'drs_27_star'};
M_.param_names_tex(146) = {'drs\_27\_star'};
M_.param_names_long(146) = {'drs_27_star'};
M_.param_names(147) = {'drs_28_star'};
M_.param_names_tex(147) = {'drs\_28\_star'};
M_.param_names_long(147) = {'drs_28_star'};
M_.param_names(148) = {'drs_29_star'};
M_.param_names_tex(148) = {'drs\_29\_star'};
M_.param_names_long(148) = {'drs_29_star'};
M_.param_names(149) = {'drs_30_star'};
M_.param_names_tex(149) = {'drs\_30\_star'};
M_.param_names_long(149) = {'drs_30_star'};
M_.param_names(150) = {'drs_31_star'};
M_.param_names_tex(150) = {'drs\_31\_star'};
M_.param_names_long(150) = {'drs_31_star'};
M_.param_names(151) = {'drs_32_star'};
M_.param_names_tex(151) = {'drs\_32\_star'};
M_.param_names_long(151) = {'drs_32_star'};
M_.param_names(152) = {'drs_33_star'};
M_.param_names_tex(152) = {'drs\_33\_star'};
M_.param_names_long(152) = {'drs_33_star'};
M_.param_names(153) = {'drs_34_star'};
M_.param_names_tex(153) = {'drs\_34\_star'};
M_.param_names_long(153) = {'drs_34_star'};
M_.param_names(154) = {'drs_35_star'};
M_.param_names_tex(154) = {'drs\_35\_star'};
M_.param_names_long(154) = {'drs_35_star'};
M_.param_names(155) = {'drs_36_star'};
M_.param_names_tex(155) = {'drs\_36\_star'};
M_.param_names_long(155) = {'drs_36_star'};
M_.param_names(156) = {'drs_37_star'};
M_.param_names_tex(156) = {'drs\_37\_star'};
M_.param_names_long(156) = {'drs_37_star'};
M_.param_names(157) = {'drs_38_star'};
M_.param_names_tex(157) = {'drs\_38\_star'};
M_.param_names_long(157) = {'drs_38_star'};
M_.param_names(158) = {'drs_39_star'};
M_.param_names_tex(158) = {'drs\_39\_star'};
M_.param_names_long(158) = {'drs_39_star'};
M_.param_names(159) = {'drs_40_star'};
M_.param_names_tex(159) = {'drs\_40\_star'};
M_.param_names_long(159) = {'drs_40_star'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 149;
M_.param_nbr = 159;
M_.orig_endo_nbr = 69;
M_.aux_vars(1).endo_index = 70;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 25;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'gw_star(-1)';
M_.aux_vars(2).endo_index = 71;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 36;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'k_star(-1)';
M_.aux_vars(3).endo_index = 72;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 45;
M_.aux_vars(3).orig_lead_lag = -1;
M_.aux_vars(3).orig_expr = 'za_star(-1)';
M_.aux_vars(4).endo_index = 73;
M_.aux_vars(4).type = 1;
M_.aux_vars(4).orig_index = 65;
M_.aux_vars(4).orig_lead_lag = -1;
M_.aux_vars(4).orig_expr = 'shockn_star(-1)';
M_.aux_vars(5).endo_index = 74;
M_.aux_vars(5).type = 1;
M_.aux_vars(5).orig_index = 65;
M_.aux_vars(5).orig_lead_lag = -2;
M_.aux_vars(5).orig_expr = 'AUX_ENDO_LAG_64_1(-1)';
M_.aux_vars(6).endo_index = 75;
M_.aux_vars(6).type = 1;
M_.aux_vars(6).orig_index = 65;
M_.aux_vars(6).orig_lead_lag = -3;
M_.aux_vars(6).orig_expr = 'AUX_ENDO_LAG_64_2(-1)';
M_.aux_vars(7).endo_index = 76;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 65;
M_.aux_vars(7).orig_lead_lag = -4;
M_.aux_vars(7).orig_expr = 'AUX_ENDO_LAG_64_3(-1)';
M_.aux_vars(8).endo_index = 77;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 65;
M_.aux_vars(8).orig_lead_lag = -5;
M_.aux_vars(8).orig_expr = 'AUX_ENDO_LAG_64_4(-1)';
M_.aux_vars(9).endo_index = 78;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 65;
M_.aux_vars(9).orig_lead_lag = -6;
M_.aux_vars(9).orig_expr = 'AUX_ENDO_LAG_64_5(-1)';
M_.aux_vars(10).endo_index = 79;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 65;
M_.aux_vars(10).orig_lead_lag = -7;
M_.aux_vars(10).orig_expr = 'AUX_ENDO_LAG_64_6(-1)';
M_.aux_vars(11).endo_index = 80;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 65;
M_.aux_vars(11).orig_lead_lag = -8;
M_.aux_vars(11).orig_expr = 'AUX_ENDO_LAG_64_7(-1)';
M_.aux_vars(12).endo_index = 81;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 65;
M_.aux_vars(12).orig_lead_lag = -9;
M_.aux_vars(12).orig_expr = 'AUX_ENDO_LAG_64_8(-1)';
M_.aux_vars(13).endo_index = 82;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 65;
M_.aux_vars(13).orig_lead_lag = -10;
M_.aux_vars(13).orig_expr = 'AUX_ENDO_LAG_64_9(-1)';
M_.aux_vars(14).endo_index = 83;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 65;
M_.aux_vars(14).orig_lead_lag = -11;
M_.aux_vars(14).orig_expr = 'AUX_ENDO_LAG_64_10(-1)';
M_.aux_vars(15).endo_index = 84;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 65;
M_.aux_vars(15).orig_lead_lag = -12;
M_.aux_vars(15).orig_expr = 'AUX_ENDO_LAG_64_11(-1)';
M_.aux_vars(16).endo_index = 85;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 65;
M_.aux_vars(16).orig_lead_lag = -13;
M_.aux_vars(16).orig_expr = 'AUX_ENDO_LAG_64_12(-1)';
M_.aux_vars(17).endo_index = 86;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 65;
M_.aux_vars(17).orig_lead_lag = -14;
M_.aux_vars(17).orig_expr = 'AUX_ENDO_LAG_64_13(-1)';
M_.aux_vars(18).endo_index = 87;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 65;
M_.aux_vars(18).orig_lead_lag = -15;
M_.aux_vars(18).orig_expr = 'AUX_ENDO_LAG_64_14(-1)';
M_.aux_vars(19).endo_index = 88;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 65;
M_.aux_vars(19).orig_lead_lag = -16;
M_.aux_vars(19).orig_expr = 'AUX_ENDO_LAG_64_15(-1)';
M_.aux_vars(20).endo_index = 89;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 65;
M_.aux_vars(20).orig_lead_lag = -17;
M_.aux_vars(20).orig_expr = 'AUX_ENDO_LAG_64_16(-1)';
M_.aux_vars(21).endo_index = 90;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 65;
M_.aux_vars(21).orig_lead_lag = -18;
M_.aux_vars(21).orig_expr = 'AUX_ENDO_LAG_64_17(-1)';
M_.aux_vars(22).endo_index = 91;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 65;
M_.aux_vars(22).orig_lead_lag = -19;
M_.aux_vars(22).orig_expr = 'AUX_ENDO_LAG_64_18(-1)';
M_.aux_vars(23).endo_index = 92;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 65;
M_.aux_vars(23).orig_lead_lag = -20;
M_.aux_vars(23).orig_expr = 'AUX_ENDO_LAG_64_19(-1)';
M_.aux_vars(24).endo_index = 93;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 65;
M_.aux_vars(24).orig_lead_lag = -21;
M_.aux_vars(24).orig_expr = 'AUX_ENDO_LAG_64_20(-1)';
M_.aux_vars(25).endo_index = 94;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 65;
M_.aux_vars(25).orig_lead_lag = -22;
M_.aux_vars(25).orig_expr = 'AUX_ENDO_LAG_64_21(-1)';
M_.aux_vars(26).endo_index = 95;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 65;
M_.aux_vars(26).orig_lead_lag = -23;
M_.aux_vars(26).orig_expr = 'AUX_ENDO_LAG_64_22(-1)';
M_.aux_vars(27).endo_index = 96;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 65;
M_.aux_vars(27).orig_lead_lag = -24;
M_.aux_vars(27).orig_expr = 'AUX_ENDO_LAG_64_23(-1)';
M_.aux_vars(28).endo_index = 97;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 65;
M_.aux_vars(28).orig_lead_lag = -25;
M_.aux_vars(28).orig_expr = 'AUX_ENDO_LAG_64_24(-1)';
M_.aux_vars(29).endo_index = 98;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 65;
M_.aux_vars(29).orig_lead_lag = -26;
M_.aux_vars(29).orig_expr = 'AUX_ENDO_LAG_64_25(-1)';
M_.aux_vars(30).endo_index = 99;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 65;
M_.aux_vars(30).orig_lead_lag = -27;
M_.aux_vars(30).orig_expr = 'AUX_ENDO_LAG_64_26(-1)';
M_.aux_vars(31).endo_index = 100;
M_.aux_vars(31).type = 1;
M_.aux_vars(31).orig_index = 65;
M_.aux_vars(31).orig_lead_lag = -28;
M_.aux_vars(31).orig_expr = 'AUX_ENDO_LAG_64_27(-1)';
M_.aux_vars(32).endo_index = 101;
M_.aux_vars(32).type = 1;
M_.aux_vars(32).orig_index = 65;
M_.aux_vars(32).orig_lead_lag = -29;
M_.aux_vars(32).orig_expr = 'AUX_ENDO_LAG_64_28(-1)';
M_.aux_vars(33).endo_index = 102;
M_.aux_vars(33).type = 1;
M_.aux_vars(33).orig_index = 65;
M_.aux_vars(33).orig_lead_lag = -30;
M_.aux_vars(33).orig_expr = 'AUX_ENDO_LAG_64_29(-1)';
M_.aux_vars(34).endo_index = 103;
M_.aux_vars(34).type = 1;
M_.aux_vars(34).orig_index = 65;
M_.aux_vars(34).orig_lead_lag = -31;
M_.aux_vars(34).orig_expr = 'AUX_ENDO_LAG_64_30(-1)';
M_.aux_vars(35).endo_index = 104;
M_.aux_vars(35).type = 1;
M_.aux_vars(35).orig_index = 65;
M_.aux_vars(35).orig_lead_lag = -32;
M_.aux_vars(35).orig_expr = 'AUX_ENDO_LAG_64_31(-1)';
M_.aux_vars(36).endo_index = 105;
M_.aux_vars(36).type = 1;
M_.aux_vars(36).orig_index = 65;
M_.aux_vars(36).orig_lead_lag = -33;
M_.aux_vars(36).orig_expr = 'AUX_ENDO_LAG_64_32(-1)';
M_.aux_vars(37).endo_index = 106;
M_.aux_vars(37).type = 1;
M_.aux_vars(37).orig_index = 65;
M_.aux_vars(37).orig_lead_lag = -34;
M_.aux_vars(37).orig_expr = 'AUX_ENDO_LAG_64_33(-1)';
M_.aux_vars(38).endo_index = 107;
M_.aux_vars(38).type = 1;
M_.aux_vars(38).orig_index = 65;
M_.aux_vars(38).orig_lead_lag = -35;
M_.aux_vars(38).orig_expr = 'AUX_ENDO_LAG_64_34(-1)';
M_.aux_vars(39).endo_index = 108;
M_.aux_vars(39).type = 1;
M_.aux_vars(39).orig_index = 65;
M_.aux_vars(39).orig_lead_lag = -36;
M_.aux_vars(39).orig_expr = 'AUX_ENDO_LAG_64_35(-1)';
M_.aux_vars(40).endo_index = 109;
M_.aux_vars(40).type = 1;
M_.aux_vars(40).orig_index = 65;
M_.aux_vars(40).orig_lead_lag = -37;
M_.aux_vars(40).orig_expr = 'AUX_ENDO_LAG_64_36(-1)';
M_.aux_vars(41).endo_index = 110;
M_.aux_vars(41).type = 1;
M_.aux_vars(41).orig_index = 65;
M_.aux_vars(41).orig_lead_lag = -38;
M_.aux_vars(41).orig_expr = 'AUX_ENDO_LAG_64_37(-1)';
M_.aux_vars(42).endo_index = 111;
M_.aux_vars(42).type = 3;
M_.aux_vars(42).orig_index = 1;
M_.aux_vars(42).orig_lead_lag = 0;
M_.aux_vars(42).orig_expr = 'delall';
M_.aux_vars(43).endo_index = 112;
M_.aux_vars(43).type = 3;
M_.aux_vars(43).orig_index = 1;
M_.aux_vars(43).orig_lead_lag = -1;
M_.aux_vars(43).orig_expr = 'AUX_EXO_LAG_69_0(-1)';
M_.aux_vars(44).endo_index = 113;
M_.aux_vars(44).type = 3;
M_.aux_vars(44).orig_index = 1;
M_.aux_vars(44).orig_lead_lag = -2;
M_.aux_vars(44).orig_expr = 'AUX_EXO_LAG_69_1(-1)';
M_.aux_vars(45).endo_index = 114;
M_.aux_vars(45).type = 3;
M_.aux_vars(45).orig_index = 1;
M_.aux_vars(45).orig_lead_lag = -3;
M_.aux_vars(45).orig_expr = 'AUX_EXO_LAG_69_2(-1)';
M_.aux_vars(46).endo_index = 115;
M_.aux_vars(46).type = 3;
M_.aux_vars(46).orig_index = 1;
M_.aux_vars(46).orig_lead_lag = -4;
M_.aux_vars(46).orig_expr = 'AUX_EXO_LAG_69_3(-1)';
M_.aux_vars(47).endo_index = 116;
M_.aux_vars(47).type = 3;
M_.aux_vars(47).orig_index = 1;
M_.aux_vars(47).orig_lead_lag = -5;
M_.aux_vars(47).orig_expr = 'AUX_EXO_LAG_69_4(-1)';
M_.aux_vars(48).endo_index = 117;
M_.aux_vars(48).type = 3;
M_.aux_vars(48).orig_index = 1;
M_.aux_vars(48).orig_lead_lag = -6;
M_.aux_vars(48).orig_expr = 'AUX_EXO_LAG_69_5(-1)';
M_.aux_vars(49).endo_index = 118;
M_.aux_vars(49).type = 3;
M_.aux_vars(49).orig_index = 1;
M_.aux_vars(49).orig_lead_lag = -7;
M_.aux_vars(49).orig_expr = 'AUX_EXO_LAG_69_6(-1)';
M_.aux_vars(50).endo_index = 119;
M_.aux_vars(50).type = 3;
M_.aux_vars(50).orig_index = 1;
M_.aux_vars(50).orig_lead_lag = -8;
M_.aux_vars(50).orig_expr = 'AUX_EXO_LAG_69_7(-1)';
M_.aux_vars(51).endo_index = 120;
M_.aux_vars(51).type = 3;
M_.aux_vars(51).orig_index = 1;
M_.aux_vars(51).orig_lead_lag = -9;
M_.aux_vars(51).orig_expr = 'AUX_EXO_LAG_69_8(-1)';
M_.aux_vars(52).endo_index = 121;
M_.aux_vars(52).type = 3;
M_.aux_vars(52).orig_index = 1;
M_.aux_vars(52).orig_lead_lag = -10;
M_.aux_vars(52).orig_expr = 'AUX_EXO_LAG_69_9(-1)';
M_.aux_vars(53).endo_index = 122;
M_.aux_vars(53).type = 3;
M_.aux_vars(53).orig_index = 1;
M_.aux_vars(53).orig_lead_lag = -11;
M_.aux_vars(53).orig_expr = 'AUX_EXO_LAG_69_10(-1)';
M_.aux_vars(54).endo_index = 123;
M_.aux_vars(54).type = 3;
M_.aux_vars(54).orig_index = 1;
M_.aux_vars(54).orig_lead_lag = -12;
M_.aux_vars(54).orig_expr = 'AUX_EXO_LAG_69_11(-1)';
M_.aux_vars(55).endo_index = 124;
M_.aux_vars(55).type = 3;
M_.aux_vars(55).orig_index = 1;
M_.aux_vars(55).orig_lead_lag = -13;
M_.aux_vars(55).orig_expr = 'AUX_EXO_LAG_69_12(-1)';
M_.aux_vars(56).endo_index = 125;
M_.aux_vars(56).type = 3;
M_.aux_vars(56).orig_index = 1;
M_.aux_vars(56).orig_lead_lag = -14;
M_.aux_vars(56).orig_expr = 'AUX_EXO_LAG_69_13(-1)';
M_.aux_vars(57).endo_index = 126;
M_.aux_vars(57).type = 3;
M_.aux_vars(57).orig_index = 1;
M_.aux_vars(57).orig_lead_lag = -15;
M_.aux_vars(57).orig_expr = 'AUX_EXO_LAG_69_14(-1)';
M_.aux_vars(58).endo_index = 127;
M_.aux_vars(58).type = 3;
M_.aux_vars(58).orig_index = 1;
M_.aux_vars(58).orig_lead_lag = -16;
M_.aux_vars(58).orig_expr = 'AUX_EXO_LAG_69_15(-1)';
M_.aux_vars(59).endo_index = 128;
M_.aux_vars(59).type = 3;
M_.aux_vars(59).orig_index = 1;
M_.aux_vars(59).orig_lead_lag = -17;
M_.aux_vars(59).orig_expr = 'AUX_EXO_LAG_69_16(-1)';
M_.aux_vars(60).endo_index = 129;
M_.aux_vars(60).type = 3;
M_.aux_vars(60).orig_index = 1;
M_.aux_vars(60).orig_lead_lag = -18;
M_.aux_vars(60).orig_expr = 'AUX_EXO_LAG_69_17(-1)';
M_.aux_vars(61).endo_index = 130;
M_.aux_vars(61).type = 3;
M_.aux_vars(61).orig_index = 1;
M_.aux_vars(61).orig_lead_lag = -19;
M_.aux_vars(61).orig_expr = 'AUX_EXO_LAG_69_18(-1)';
M_.aux_vars(62).endo_index = 131;
M_.aux_vars(62).type = 3;
M_.aux_vars(62).orig_index = 1;
M_.aux_vars(62).orig_lead_lag = -20;
M_.aux_vars(62).orig_expr = 'AUX_EXO_LAG_69_19(-1)';
M_.aux_vars(63).endo_index = 132;
M_.aux_vars(63).type = 3;
M_.aux_vars(63).orig_index = 1;
M_.aux_vars(63).orig_lead_lag = -21;
M_.aux_vars(63).orig_expr = 'AUX_EXO_LAG_69_20(-1)';
M_.aux_vars(64).endo_index = 133;
M_.aux_vars(64).type = 3;
M_.aux_vars(64).orig_index = 1;
M_.aux_vars(64).orig_lead_lag = -22;
M_.aux_vars(64).orig_expr = 'AUX_EXO_LAG_69_21(-1)';
M_.aux_vars(65).endo_index = 134;
M_.aux_vars(65).type = 3;
M_.aux_vars(65).orig_index = 1;
M_.aux_vars(65).orig_lead_lag = -23;
M_.aux_vars(65).orig_expr = 'AUX_EXO_LAG_69_22(-1)';
M_.aux_vars(66).endo_index = 135;
M_.aux_vars(66).type = 3;
M_.aux_vars(66).orig_index = 1;
M_.aux_vars(66).orig_lead_lag = -24;
M_.aux_vars(66).orig_expr = 'AUX_EXO_LAG_69_23(-1)';
M_.aux_vars(67).endo_index = 136;
M_.aux_vars(67).type = 3;
M_.aux_vars(67).orig_index = 1;
M_.aux_vars(67).orig_lead_lag = -25;
M_.aux_vars(67).orig_expr = 'AUX_EXO_LAG_69_24(-1)';
M_.aux_vars(68).endo_index = 137;
M_.aux_vars(68).type = 3;
M_.aux_vars(68).orig_index = 1;
M_.aux_vars(68).orig_lead_lag = -26;
M_.aux_vars(68).orig_expr = 'AUX_EXO_LAG_69_25(-1)';
M_.aux_vars(69).endo_index = 138;
M_.aux_vars(69).type = 3;
M_.aux_vars(69).orig_index = 1;
M_.aux_vars(69).orig_lead_lag = -27;
M_.aux_vars(69).orig_expr = 'AUX_EXO_LAG_69_26(-1)';
M_.aux_vars(70).endo_index = 139;
M_.aux_vars(70).type = 3;
M_.aux_vars(70).orig_index = 1;
M_.aux_vars(70).orig_lead_lag = -28;
M_.aux_vars(70).orig_expr = 'AUX_EXO_LAG_69_27(-1)';
M_.aux_vars(71).endo_index = 140;
M_.aux_vars(71).type = 3;
M_.aux_vars(71).orig_index = 1;
M_.aux_vars(71).orig_lead_lag = -29;
M_.aux_vars(71).orig_expr = 'AUX_EXO_LAG_69_28(-1)';
M_.aux_vars(72).endo_index = 141;
M_.aux_vars(72).type = 3;
M_.aux_vars(72).orig_index = 1;
M_.aux_vars(72).orig_lead_lag = -30;
M_.aux_vars(72).orig_expr = 'AUX_EXO_LAG_69_29(-1)';
M_.aux_vars(73).endo_index = 142;
M_.aux_vars(73).type = 3;
M_.aux_vars(73).orig_index = 1;
M_.aux_vars(73).orig_lead_lag = -31;
M_.aux_vars(73).orig_expr = 'AUX_EXO_LAG_69_30(-1)';
M_.aux_vars(74).endo_index = 143;
M_.aux_vars(74).type = 3;
M_.aux_vars(74).orig_index = 1;
M_.aux_vars(74).orig_lead_lag = -32;
M_.aux_vars(74).orig_expr = 'AUX_EXO_LAG_69_31(-1)';
M_.aux_vars(75).endo_index = 144;
M_.aux_vars(75).type = 3;
M_.aux_vars(75).orig_index = 1;
M_.aux_vars(75).orig_lead_lag = -33;
M_.aux_vars(75).orig_expr = 'AUX_EXO_LAG_69_32(-1)';
M_.aux_vars(76).endo_index = 145;
M_.aux_vars(76).type = 3;
M_.aux_vars(76).orig_index = 1;
M_.aux_vars(76).orig_lead_lag = -34;
M_.aux_vars(76).orig_expr = 'AUX_EXO_LAG_69_33(-1)';
M_.aux_vars(77).endo_index = 146;
M_.aux_vars(77).type = 3;
M_.aux_vars(77).orig_index = 1;
M_.aux_vars(77).orig_lead_lag = -35;
M_.aux_vars(77).orig_expr = 'AUX_EXO_LAG_69_34(-1)';
M_.aux_vars(78).endo_index = 147;
M_.aux_vars(78).type = 3;
M_.aux_vars(78).orig_index = 1;
M_.aux_vars(78).orig_lead_lag = -36;
M_.aux_vars(78).orig_expr = 'AUX_EXO_LAG_69_35(-1)';
M_.aux_vars(79).endo_index = 148;
M_.aux_vars(79).type = 3;
M_.aux_vars(79).orig_index = 1;
M_.aux_vars(79).orig_lead_lag = -37;
M_.aux_vars(79).orig_expr = 'AUX_EXO_LAG_69_36(-1)';
M_.aux_vars(80).endo_index = 149;
M_.aux_vars(80).type = 3;
M_.aux_vars(80).orig_index = 1;
M_.aux_vars(80).orig_lead_lag = -38;
M_.aux_vars(80).orig_expr = 'AUX_EXO_LAG_69_37(-1)';
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
M_.eq_nbr = 149;
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
 1 110 0;
 0 111 259;
 2 112 260;
 3 113 0;
 4 114 0;
 5 115 0;
 6 116 0;
 7 117 0;
 0 118 0;
 0 119 0;
 0 120 0;
 0 121 0;
 0 122 0;
 8 123 0;
 9 124 0;
 0 125 0;
 0 126 261;
 0 127 262;
 0 128 263;
 0 129 264;
 0 130 265;
 0 131 266;
 10 132 0;
 11 133 0;
 12 134 0;
 13 135 267;
 14 136 0;
 0 137 0;
 0 138 0;
 0 139 0;
 15 140 0;
 16 141 0;
 0 142 0;
 0 143 0;
 17 144 0;
 18 145 0;
 19 146 0;
 0 147 0;
 0 148 0;
 0 149 0;
 0 150 268;
 0 151 269;
 0 152 0;
 20 153 0;
 21 154 0;
 0 155 0;
 0 156 0;
 22 157 0;
 0 158 0;
 23 159 0;
 0 160 0;
 24 161 0;
 0 162 0;
 0 163 0;
 0 164 0;
 0 165 0;
 0 166 0;
 25 167 0;
 26 168 0;
 0 169 270;
 0 170 0;
 0 171 0;
 0 172 0;
 0 173 0;
 27 174 0;
 28 175 0;
 29 176 0;
 0 177 0;
 0 178 0;
 30 179 0;
 31 180 0;
 32 181 0;
 33 182 0;
 34 183 0;
 35 184 0;
 36 185 0;
 37 186 0;
 38 187 0;
 39 188 0;
 40 189 0;
 41 190 0;
 42 191 0;
 43 192 0;
 44 193 0;
 45 194 0;
 46 195 0;
 47 196 0;
 48 197 0;
 49 198 0;
 50 199 0;
 51 200 0;
 52 201 0;
 53 202 0;
 54 203 0;
 55 204 0;
 56 205 0;
 57 206 0;
 58 207 0;
 59 208 0;
 60 209 0;
 61 210 0;
 62 211 0;
 63 212 0;
 64 213 0;
 65 214 0;
 66 215 0;
 67 216 0;
 68 217 0;
 69 218 0;
 70 219 0;
 71 220 0;
 72 221 0;
 73 222 0;
 74 223 0;
 75 224 0;
 76 225 0;
 77 226 0;
 78 227 0;
 79 228 0;
 80 229 0;
 81 230 0;
 82 231 0;
 83 232 0;
 84 233 0;
 85 234 0;
 86 235 0;
 87 236 0;
 88 237 0;
 89 238 0;
 90 239 0;
 91 240 0;
 92 241 0;
 93 242 0;
 94 243 0;
 95 244 0;
 96 245 0;
 97 246 0;
 98 247 0;
 99 248 0;
 100 249 0;
 101 250 0;
 102 251 0;
 103 252 0;
 104 253 0;
 105 254 0;
 106 255 0;
 107 256 0;
 108 257 0;
 109 258 0;]';
M_.nstatic = 30;
M_.nfwrd   = 10;
M_.npred   = 107;
M_.nboth   = 2;
M_.nsfwrd   = 12;
M_.nspred   = 109;
M_.ndynamic   = 119;
M_.dynamic_tmp_nbr = [38; 15; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'hw_star' ;
  2 , 'name' , 'Tw_star' ;
  3 , 'name' , 'Dr_star' ;
  4 , 'name' , 'ay_star' ;
  5 , 'name' , 'tpe_star' ;
  6 , 'name' , 'Pe_star' ;
  7 , 'name' , 'Dw_star' ;
  8 , 'name' , 'cw_star' ;
  9 , 'name' , 'cr_star' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'zz_star' ;
  13 , 'name' , 'he_star' ;
  14 , 'name' , 'tauwA_star' ;
  15 , 'name' , 'tauwE_star' ;
  16 , 'name' , 'tauw_star' ;
  17 , 'name' , 'gw_star' ;
  18 , 'name' , 'n_star' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'gn_star' ;
  21 , 'name' , 'gE_star' ;
  22 , 'name' , '22' ;
  23 , 'name' , 'fert_star' ;
  24 , 'name' , '24' ;
  25 , 'name' , '25' ;
  26 , 'name' , '26' ;
  27 , 'name' , 'g_star' ;
  28 , 'name' , '28' ;
  29 , 'name' , '29' ;
  30 , 'name' , 'mu_star' ;
  31 , 'name' , 'del_star' ;
  32 , 'name' , 'delprime_star' ;
  33 , 'name' , 'invG_star' ;
  34 , 'name' , '34' ;
  35 , 'name' , 'stoyw_star' ;
  36 , 'name' , 'gA_star' ;
  37 , 'name' , 's_star' ;
  38 , 'name' , 'v_star' ;
  39 , 'name' , 'varpi_star' ;
  40 , 'name' , 'j_star' ;
  41 , 'name' , 'lam_star' ;
  42 , 'name' , 'PiA_star' ;
  43 , 'name' , 'PiRD_star' ;
  44 , 'name' , 'psi_star' ;
  45 , 'name' , 'r_star' ;
  46 , 'name' , 'dr_star' ;
  47 , 'name' , 'dw_star' ;
  48 , 'name' , 'b_star' ;
  49 , 'name' , 'PiF_star' ;
  50 , 'name' , 'k_star' ;
  51 , 'name' , 'y_star' ;
  52 , 'name' , '52' ;
  53 , 'name' , 'c_star' ;
  54 , 'name' , 'fa_star' ;
  55 , 'name' , 'far_star' ;
  56 , 'name' , '56' ;
  57 , 'name' , 'gpc_star' ;
  58 , 'name' , 'gy_star' ;
  59 , 'name' , '59' ;
  60 , 'name' , 'shareW_star' ;
  61 , 'name' , 'shareR_star' ;
  62 , 'name' , '62' ;
  63 , 'name' , '63' ;
  64 , 'name' , 'en_star' ;
  65 , 'name' , 'er_star' ;
  66 , 'name' , 'ey_star' ;
  67 , 'name' , 'shocky_star' ;
  68 , 'name' , 'shockr_star' ;
  69 , 'name' , 'shockn_star' ;
};
M_.mapping.r_star.eqidx = [1 2 3 6 7 8 9 10 11 37 38 39 40 42 43 45 49 55 ];
M_.mapping.rk_star.eqidx = [25 45 49 ];
M_.mapping.w_star.eqidx = [1 4 15 22 24 55 ];
M_.mapping.b_star.eqidx = [48 49 54 ];
M_.mapping.y_star.eqidx = [51 52 57 58 ];
M_.mapping.varpi_star.eqidx = [39 40 41 42 48 52 ];
M_.mapping.s_star.eqidx = [34 37 43 48 52 ];
M_.mapping.inv_star.eqidx = [33 50 52 ];
M_.mapping.invG_star.eqidx = [33 ];
M_.mapping.c_star.eqidx = [52 53 ];
M_.mapping.cw_star.eqidx = [8 53 55 ];
M_.mapping.cr_star.eqidx = [9 53 55 ];
M_.mapping.tauw_star.eqidx = [2 16 55 ];
M_.mapping.N_star.eqidx = [28 29 30 51 ];
M_.mapping.stoyw_star.eqidx = [34 35 ];
M_.mapping.PiF_star.eqidx = [46 47 49 ];
M_.mapping.Tw_star.eqidx = [2 8 ];
M_.mapping.hw_star.eqidx = [1 8 ];
M_.mapping.Dr_star.eqidx = [3 7 9 ];
M_.mapping.Dw_star.eqidx = [7 8 ];
M_.mapping.ep_star.eqidx = [7 9 10 12 ];
M_.mapping.varsig_star.eqidx = [8 9 10 11 22 ];
M_.mapping.zetar_star.eqidx = [3 6 7 13 19 20 35 60 61 62 63 ];
M_.mapping.zetay_star.eqidx = [13 17 18 20 21 22 35 60 61 62 63 ];
M_.mapping.gw_star.eqidx = [1 2 3 4 6 7 17 18 19 20 21 22 28 ];
M_.mapping.g_star.eqidx = [1 2 3 4 5 6 7 8 9 22 25 26 27 28 33 37 38 39 40 42 43 49 50 55 57 58 ];
M_.mapping.gE_star.eqidx = [5 21 28 ];
M_.mapping.iy_star.eqidx = [15 21 22 ];
M_.mapping.gpc_star.eqidx = [57 ];
M_.mapping.zz_star.eqidx = [1 2 7 11 12 ];
M_.mapping.far_star.eqidx = [9 46 55 56 ];
M_.mapping.faw_star.eqidx = [8 47 55 56 ];
M_.mapping.dr_star.eqidx = [3 46 55 ];
M_.mapping.dw_star.eqidx = [7 47 55 ];
M_.mapping.mu_star.eqidx = [24 25 26 27 28 29 30 38 42 51 ];
M_.mapping.k_star.eqidx = [25 26 28 49 50 54 ];
M_.mapping.u_star.eqidx = [26 28 31 32 ];
M_.mapping.del_star.eqidx = [25 31 50 ];
M_.mapping.delprime_star.eqidx = [26 31 32 ];
M_.mapping.gM_star.eqidx = [27 28 ];
M_.mapping.v_star.eqidx = [29 38 39 40 44 ];
M_.mapping.j_star.eqidx = [37 39 40 42 43 ];
M_.mapping.lam_star.eqidx = [36 39 40 41 ];
M_.mapping.gA_star.eqidx = [27 34 36 37 38 39 40 42 43 ];
M_.mapping.za_star.eqidx = [34 36 37 39 40 41 42 43 48 52 ];
M_.mapping.PiA_star.eqidx = [42 47 49 ];
M_.mapping.PiRD_star.eqidx = [43 47 49 ];
M_.mapping.fa_star.eqidx = [46 47 49 54 56 ];
M_.mapping.n_star.eqidx = [18 20 23 ];
M_.mapping.gn_star.eqidx = [20 35 57 59 ];
M_.mapping.gy_star.eqidx = [58 ];
M_.mapping.gamma_star.eqidx = [3 5 6 10 19 ];
M_.mapping.OMEGAY_star.eqidx = [17 21 22 23 35 ];
M_.mapping.fert_star.eqidx = [23 ];
M_.mapping.psi_star.eqidx = [34 41 44 51 ];
M_.mapping.tauwE_star.eqidx = [15 16 52 ];
M_.mapping.tauwA_star.eqidx = [14 16 ];
M_.mapping.ay_star.eqidx = [4 5 ];
M_.mapping.tpe_star.eqidx = [5 6 14 55 ];
M_.mapping.Pe_star.eqidx = [6 7 9 ];
M_.mapping.he_star.eqidx = [13 14 52 ];
M_.mapping.en_star.eqidx = [59 64 ];
M_.mapping.ey_star.eqidx = [62 66 ];
M_.mapping.er_star.eqidx = [63 65 ];
M_.mapping.shockn_star.eqidx = [64 69 ];
M_.mapping.shocky_star.eqidx = [66 67 ];
M_.mapping.shockr_star.eqidx = [65 68 ];
M_.mapping.shareW_star.eqidx = [60 ];
M_.mapping.shareR_star.eqidx = [61 ];
M_.mapping.delall.eqidx = [67 68 69 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 3 4 5 6 7 8 14 15 23 24 25 26 27 31 32 35 36 37 44 45 48 50 52 58 59 65 66 67 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(149, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(159, 1);
M_.endo_trends = struct('deflator', cell(149, 1), 'log_deflator', cell(149, 1), 'growth_factor', cell(149, 1), 'log_growth_factor', cell(149, 1));
M_.NNZDerivatives = [622; -1; -1; ];
M_.static_tmp_nbr = [29; 17; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load paramFinal_ext1_US;
load vecSSFinal_ext1_US;
load endpoint;
load pred_param_US_1980;
set_param_value('R_SS_star',R_SS_star)
set_param_value('ZETAYSS_star',zetay_SS_star)
set_param_value('ZETARSS_star',zetar_SS_star)
set_param_value('BBETA_star',bbeta_star)
set_param_value('DELPRIMESS_star',delprime_star)
set_param_value('RATIODEL_star',ratiodel_star)
set_param_value('ALPHA_star',alpha_star)
set_param_value('PHI_star',phi_star)
set_param_value('RHO_star',rho_star)
set_param_value('RHOU_star',rhoU_star)
set_param_value('CHI_star',chi_star)
set_param_value('CHIE_star',chiE_star)
set_param_value('RHOE_star',rhoE_star)
set_param_value('RHOYW_star',rhoyw_star)
set_param_value('BMEGA_star',Bmega_star)
set_param_value('VARNU_star',varnu_star)
set_param_value('OMEGAR_star',omegar_star)
set_param_value('GAMMAI_star',gammaI_star)
set_param_value('LAMY_star',lamy_star)
set_param_value('YINNOVSH_star',yinnovsh_star)
set_param_value('ELASMU_star',elasmu_star)
set_param_value('ELASLAM_star',el_SS_star)
set_param_value('DELSS_star',delta_star)
set_param_value('MUSS_star',mu_SS_star)
set_param_value('LAMSS_star',lambda_SS_star)
set_param_value('USS_star',U_SS_star)
set_param_value('VARPISS_star',varpi_SS_star)
set_param_value('ZASS_star',za_SS_star)
set_param_value('KSS_star',k_SS_star)
set_param_value('GSS_star',g_SS_star)
set_param_value('GAMMASS_star',gamma_SS_star)
set_param_value('NSS_star',n_SS_star)
set_param_value('FERTSS_star',fert_SS_star)
set_param_value('PSISS_star',psi_SS_star)
set_param_value('PERS_star',rho_star)
set_param_value('NP_star',np_star)
set_param_value('DELTAHE_star',deltaHE_star)
set_param_value('ETAR_star',etar_star)
set_param_value('SHINNOVW_star',shinnovw_star)
set_param_value('drs_1_star',drs_1_star)		
set_param_value('drs_2_star',drs_2_star)		
set_param_value('drs_3_star',drs_3_star)		
set_param_value('drs_4_star',drs_4_star)		
set_param_value('drs_5_star',drs_5_star)		
set_param_value('drs_6_star',drs_6_star)		
set_param_value('drs_7_star',drs_7_star)		
set_param_value('drs_8_star',drs_8_star)		
set_param_value('drs_9_star',drs_9_star)		
set_param_value('drs_10_star',drs_10_star)		
set_param_value('drs_11_star',drs_11_star)		
set_param_value('drs_12_star',drs_12_star)		
set_param_value('drs_13_star',drs_13_star)		
set_param_value('drs_14_star',drs_14_star)		
set_param_value('drs_15_star',drs_15_star)		
set_param_value('drs_16_star',drs_16_star)		
set_param_value('drs_17_star',drs_17_star)		
set_param_value('drs_18_star',drs_18_star)		
set_param_value('drs_19_star',drs_19_star)		
set_param_value('drs_20_star',drs_20_star)		
set_param_value('drs_21_star',drs_21_star)		
set_param_value('drs_22_star',drs_22_star)		
set_param_value('drs_23_star',drs_23_star)		
set_param_value('drs_24_star',drs_24_star)		
set_param_value('drs_25_star',drs_25_star)		
set_param_value('drs_26_star',drs_26_star)		
set_param_value('drs_27_star',drs_27_star)		
set_param_value('drs_28_star',drs_28_star)		
set_param_value('drs_29_star',drs_29_star)		
set_param_value('drs_30_star',drs_30_star)		
set_param_value('drs_31_star',drs_31_star)		
set_param_value('drs_32_star',drs_32_star)		
set_param_value('drs_33_star',drs_33_star)		
set_param_value('drs_34_star',drs_34_star)		
set_param_value('drs_35_star',drs_35_star)		
set_param_value('drs_36_star',drs_36_star)		
set_param_value('drs_37_star',drs_37_star)		
set_param_value('drs_38_star',drs_38_star)		
set_param_value('drs_39_star',drs_39_star)		
set_param_value('drs_40_star',drs_40_star)		
set_param_value('dws_1_star',dws_1_star)		
set_param_value('dws_2_star',dws_2_star)		
set_param_value('dws_3_star',dws_3_star)		
set_param_value('dws_4_star',dws_4_star)		
set_param_value('dws_5_star',dws_5_star)		
set_param_value('dws_6_star',dws_6_star)		
set_param_value('dws_7_star',dws_7_star)		
set_param_value('dws_8_star',dws_8_star)		
set_param_value('dws_9_star',dws_9_star)		
set_param_value('dws_10_star',dws_10_star)		
set_param_value('dws_11_star',dws_11_star)		
set_param_value('dws_12_star',dws_12_star)		
set_param_value('dws_13_star',dws_13_star)		
set_param_value('dws_14_star',dws_14_star)		
set_param_value('dws_15_star',dws_15_star)		
set_param_value('dws_16_star',dws_16_star)		
set_param_value('dws_17_star',dws_17_star)		
set_param_value('dws_18_star',dws_18_star)		
set_param_value('dws_19_star',dws_19_star)		
set_param_value('dws_20_star',dws_20_star)		
set_param_value('dws_21_star',dws_21_star)		
set_param_value('dws_22_star',dws_22_star)		
set_param_value('dws_23_star',dws_23_star)		
set_param_value('dws_24_star',dws_24_star)		
set_param_value('dws_25_star',dws_25_star)		
set_param_value('dws_26_star',dws_26_star)		
set_param_value('dws_27_star',dws_27_star)		
set_param_value('dws_28_star',dws_28_star)		
set_param_value('dws_29_star',dws_29_star)		
set_param_value('dws_30_star',dws_30_star)		
set_param_value('dws_31_star',dws_31_star)		
set_param_value('dws_32_star',dws_32_star)		
set_param_value('dws_33_star',dws_33_star)		
set_param_value('dws_34_star',dws_34_star)		
set_param_value('dws_35_star',dws_35_star)		
set_param_value('dws_36_star',dws_36_star)		
set_param_value('dws_37_star',dws_37_star)		
set_param_value('dws_38_star',dws_38_star)		
set_param_value('dws_39_star',dws_39_star)		
set_param_value('dws_40_star',dws_40_star)		
set_param_value('gn_1_star',gn_1_star)
set_param_value('gn_2_star',gn_2_star)
set_param_value('gn_3_star',gn_3_star)
set_param_value('gn_4_star',gn_4_star)
set_param_value('gn_5_star',gn_5_star)
set_param_value('gn_6_star',gn_6_star)
set_param_value('gn_7_star',gn_7_star)
set_param_value('gn_8_star',gn_8_star)
set_param_value('gn_9_star',gn_9_star)
set_param_value('gn_10_star',gn_10_star)
set_param_value('gn_11_star',gn_11_star)
set_param_value('gn_12_star',gn_12_star)
set_param_value('gn_13_star',gn_13_star)
set_param_value('gn_14_star',gn_14_star)
set_param_value('gn_15_star',gn_15_star)
set_param_value('gn_16_star',gn_16_star)
set_param_value('gn_17_star',gn_17_star)
set_param_value('gn_18_star',gn_18_star)
set_param_value('gn_19_star',gn_19_star)
set_param_value('gn_20_star',gn_20_star)
set_param_value('gn_21_star',gn_21_star)
set_param_value('gn_22_star',gn_22_star)
set_param_value('gn_23_star',gn_23_star)
set_param_value('gn_24_star',gn_24_star)
set_param_value('gn_25_star',gn_25_star)
set_param_value('gn_26_star',gn_26_star)
set_param_value('gn_27_star',gn_27_star)
set_param_value('gn_28_star',gn_28_star)
set_param_value('gn_29_star',gn_29_star)
set_param_value('gn_30_star',gn_30_star)
set_param_value('gn_31_star',gn_31_star)
set_param_value('gn_32_star',gn_32_star)
set_param_value('gn_33_star',gn_33_star)
set_param_value('gn_34_star',gn_34_star)
set_param_value('gn_35_star',gn_35_star)
set_param_value('gn_36_star',gn_36_star)
set_param_value('gn_37_star',gn_37_star)
set_param_value('gn_38_star',gn_38_star)
set_param_value('gn_39_star',gn_39_star)
set_param_value('gn_40_star',gn_40_star)
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = M_.params(1);
oo_.steady_state(51) = g_SS_star;
oo_.steady_state(57) = tauwA_SS_star;
oo_.steady_state(56) = tauwE_SS_star;
oo_.steady_state(59) = tpe_SS_star;
oo_.steady_state(61) = he_SS_star;
oo_.steady_state(58) = ay_SS_star;
oo_.steady_state(60) = Pe_SS_star;
oo_.steady_state(17) = Tw_SS_star;
oo_.steady_state(13) = tauw_SS_star;
oo_.steady_state(18) = hw_SS_star;
oo_.steady_state(19) = Dr_SS_star;
oo_.steady_state(20) = Dw_SS_star;
oo_.steady_state(11) = cw_SS_star;
oo_.steady_state(12) = cr_SS_star;
oo_.steady_state(21) = Ep_SS_star;
oo_.steady_state(22) = varsig_SS_star;
oo_.steady_state(23) = zetar_SS_star;
oo_.steady_state(24) = zetay_SS_star;
oo_.steady_state(26) = g_SS_star;
oo_.steady_state(25) = gw_SS_star;
oo_.steady_state(30) = Z_SS_star;
oo_.steady_state(31) = far_SS_star;
oo_.steady_state(32) = faw_SS_star;
oo_.steady_state(33) = dr_SS_star;
oo_.steady_state(34) = dw_SS_star;
oo_.steady_state(3) = w_SS_star;
oo_.steady_state(35) = mu_SS_star;
oo_.steady_state(36) = k_SS_star;
oo_.steady_state(37) = U_SS_star;
oo_.steady_state(38) = delta_star;
oo_.steady_state(39) = M_.params(28);
oo_.steady_state(9) = g_SS_star;
oo_.steady_state(40) = gm_SS_star;
oo_.steady_state(14) = 1;
oo_.steady_state(2) = rk_SS_star;
oo_.steady_state(7) = s_SS_star;
oo_.steady_state(41) = v_SS_star;
oo_.steady_state(42) = j_SS_star;
oo_.steady_state(6) = varpi_SS_star;
oo_.steady_state(43) = lambda_SS_star;
oo_.steady_state(44) = ga_SS_star;
oo_.steady_state(27) = gE_SS_star;
oo_.steady_state(28) = iy_SS_star;
oo_.steady_state(45) = za_SS_star;
oo_.steady_state(46) = PiA_SS_star;
oo_.steady_state(47) = 0;
oo_.steady_state(55) = psi_SS_star;
oo_.steady_state(4) = b_SS_star;
oo_.steady_state(16) = PiF_SS_star;
oo_.steady_state(5) = y_SS_star;
oo_.steady_state(10) = c_SS_star;
oo_.steady_state(8) = inv_SS_star;
oo_.steady_state(48) = fa_SS_star;
oo_.steady_state(49) = n_SS_star;
oo_.steady_state(50) = n_SS_star;
oo_.steady_state(52) = gamma_SS_star;
oo_.steady_state(29) = g_SS_star/n_SS_star;
oo_.steady_state(15) = stoyw_SS_star;
oo_.steady_state(62) = 0;
oo_.steady_state(54) = fert_SS_star;
oo_.steady_state(53) = omegay_star;
oo_.steady_state(68) = 1/(1+M_.params(3)+M_.params(2));
oo_.steady_state(69) = M_.params(3)/(1+M_.params(3)+M_.params(2));
oo_.steady_state(70)=oo_.steady_state(25);
oo_.steady_state(71)=oo_.steady_state(36);
oo_.steady_state(72)=oo_.steady_state(45);
oo_.steady_state(73)=oo_.steady_state(65);
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
oo_.steady_state(111)=oo_.exo_steady_state(1);
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
save('Pension_US_1980_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('Pension_US_1980_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('Pension_US_1980_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('Pension_US_1980_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('Pension_US_1980_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('Pension_US_1980_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('Pension_US_1980_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
