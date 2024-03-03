% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code produces the result for aging shock keeping population constant with the extension of pension and 
% health expentiture for retirees.

var r_star      ${r^*}$ ( long_name = 'foreign real interest rate')
    rk_star     ${r^k^*}$ ( long_name = 'foreign capital rent')
    w_star           ${w^*}$ ( long_name = 'labor income / GDP')
    b_star           ${b^*}$ ( long_name = 'investment of R\&D and adoption / GDP')
    y_star           ${y^*}$ ( long_name = 'disposible income / GDP')
    varpi_star       ${\varpi^*}$ ( long_name = 'adoption investment X number of new ideas / GDP')
    s_star           ${s^*}$ ( long_name = 'R\&D investment / GDP')
    inv_star         ${i^*}$ ( long_name = 'fixed capital investment / GDP')
    invG_star        ${g^i^*}$ ( long_name = 'fixed capital investment growth')
    c_star           ${c^*}$ ( long_name = 'consumption / GDP')
    cw_star          ${c^w^*}$ ( long_name = 'consumption of worker / GDP')
    cr_star          ${c^r^*}$ ( long_name = 'consumption of retiree / GDP')
    tauw_star        $\tilde{\tau}^*$ ( long_name = 'health care, pension, education cost / GDP')
    N_star           ${N^f^*}$ ( long_name = 'number of input firms')
    stoyw_star       ${\gamma^{yw}^*}$ ( long_name = 'share of R\&D worker')
    PiF_star         ${\pi^F^*}$ ( long_name = 'profits of financial intermediary / GDP')
    Tw_star          $\tilde{T}^w^*$ ( long_name = 'present value of education, health, pension / GDP')
    hw_star          ${h^w^*}$ ( long_name = 'present value of workers labor income / GDP')
    Dr_star          $\tilde{D}^r^*$ ( long_name = 'present value of retirees dividends / GDP')
    Dw_star          $\tilde{D}^w^*$ ( long_name = 'present value of workers dividends / GDP')
    ep_star          ${\epsilon^*}$ ( long_name = 'retiree MPC adjustment factor')
    varsig_star      ${\varsigma^*}$ ( long_name = 'MPC of worker')
    zetar_star       ${\zeta^r^*}$ ( long_name = 'retirees / workers')
    zetay_star       ${\zeta^y^*}$ ( long_name = 'youth / workers')
    gw_star          ${g^w^*}$ ( long_name = 'growth rate of workers')
    g_star           ${g^*}$ ( long_name = 'growth rate of GDP')
    gE_star          ${g^{\xi}^*}$ ( long_name = 'growth rate of average effective unit of labor')
    iy_star          ${i^y^*}$ ( long_name = 'education investment / average effective unit of labor')
    gpc_star         ${g_{dypc}^*}$ ( long_name = 'disposable income per capita growth')
    zz_star          ${\mathfrak{Z}^*}$ ( long_name = 'local variable for symbolic briefness')
    far_star         ${fa^r^*}$ ( long_name = 'financial assets of retirees / GDP')
    faw_star         ${fa^w^*}$ ( long_name = 'financial assets of workers / GDP')
    dr_star          $\tilde{d}^r^*$ ( long_name = 'dividends of retirees / GDP')
    dw_star          $\tilde{d}^w^*$ ( long_name = 'dividends of workers / GDP')
    mu_star          ${\mu^*}$ ( long_name = 'markup of input firms')
    k_star           ${k^*}$ ( long_name = 'aggregate fixed capital / GDP')
    u_star           ${u^*}$ ( long_name = 'capital utilization rate')
    del_star         ${\delta^*}$ ( long_name = 'depreciation rate')
    delprime_star    ${\delta^\prime^*}$ ( long_name = 'differentiation of depreciation rate')
    gM_star          ${g^M^*}$ ( long_name = 'growth rate of aggregate intermediate composite goods')
    v_star           ${v^*}$ ( long_name = 'aggregate value of adopted goods / GDP')
    j_star           ${j^*}$ ( long_name = 'aggregate value of new ideas / GDP')
    lam_star         ${\lambda^*}$ ( long_name = 'probability of success of adoption investment')
    gA_star          ${g^A^*}$ ( long_name = 'growth rate of adopted goods')
    za_star          ${z^a^*}$ ( long_name = 'number of aggregate new ideas / number of adopted goods')
    PiA_star         ${\pi^A^*}$ ( long_name = 'profits for adpoters / GDP')
    PiRD_star        ${\pi^{RD}^*}$ ( long_name = 'profits for R\&D sector')
    fa_star          ${fa^*}$ ( long_name = 'aggregate financial assets / GDP')
    n_star           ${n^*}$ ( long_name = 'growth rate of young population')
    gn_star          ${g^n^*}$ ( long_name = 'growth rate of total population')
    gy_star          ${g^y^*}$ ( long_name = 'growth rate of disposable income')
    gamma_star       ${\gamma^*}$ ( long_name = 'probability of retiree survival rate')
    OMEGAY_star      ${\omega^y^*}$ ( long_name = 'probability of staying young')
    fert_star        ${fert^*}$ ( long_name = 'fertility')
    psi_star         ${\psi^*}$ ( long_name = 'operation cost / GDP')
    tauwE_star       $\tilde{\tau}^E^*$ ( long_name = 'education cost / GDP')
    tauwA_star       $\tilde{\tau}^A^*$ ( long_name = 'pension and health care cost / GDP')
    ay_star          ${ay^*}$ ( long_name = 'average labor income / GDP')
    tpe_star         ${tpe^*}$ ( long_name = 'total payment of pensions / GDP')
    Pe_star          ${Pe^*}$ ( long_name = 'present value of life long pension for retirees / GDP')
    he_star          ${he^*}$ ( long_name = 'aggregate health expenditure / GDP')
    en_star          ${en^*}$ ( long_name = 'population growth shock')
    ey_star          ${ey^*}$ ( long_name = 'share of workers shock')
    er_star          ${er^*}$ ( long_name = 'share of retirees shock')
    shockn_star      ${shockn^*}$ ( long_name = 'sequence of population shocks')
    shocky_star      ${shocky^*}$ ( long_name = 'sequence of share of workers shocks')
    shockr_star      ${shockr^*}$ ( long_name = 'sequence of share of retirees shocks')
    shareW_star      ${shareW^*}$ ( long_name = 'workers / population')
    shareR_star      ${shareR^*}$ ( long_name = 'retirees / population')
;
varexo delall; 
parameters 
R_SS_star           
ZETAYSS_star        ${ZETAYSS^*}$ ( long_name = 'steady state of young / worker ')  
ZETARSS_star        ${ZETARSS^*}$ ( long_name = 'steady state of retiree / worker ')
SHINNOVW_star       ${SHINNOVW^*}$ ( long_name = 'share of innovation workers')
YINNOVSH_star       ${\kappa^*}$ ( long_name = 'scale parameter to match new young innovators')
ETAR_star           ${\eta^r^*}$ ( long_name = 'replacement ratio')
DELTAHE_star        ${\delta_{HE}^*}$ ( long_name = 'share of health expenditure to GDP per capita')
NP_star             ${n_p^*}$ ( long_name = 'average working years')
FERTSS_star         ${FERTSS^*}$ ( long_name = 'steady state of fertility')
RHOYW_star          ${\rho^{yw}^*}$ ( long_name = 'importance of young innovators in aggregate new ideas')
LAMY_star           ${\lam^{yw}^*}$ ( long_name = 'rate of no longer active in innovation sector')
PSISS_star          ${PSISS^*}$ ( long_name = 'steady state of operation cost')
GSS_star            ${GSS^*}$ ( long_name = 'steady state of growth rate')
PERS_star
RATIODEL_star       ${\epsilon^{\delta^{\prime}}^*}$ ( long_name = 'elasticity of delta prime to capital utilization')
OMEGAR_star         ${\omega^w^*}$ ( long_name = 'rate of staying workers')
RHOU_star           ${\rho_U^*}$ ( long_name = 'preference parameter')
BBETA_star          ${\beta^*}$ ( long_name = 'subjective discount factor')
ALPHA_star          ${\alpha^*}$ ( long_name = 'fixed capital share of added value')
GAMMAI_star         ${\gamma_I^*}$ ( long_name = 'intermediate good share')
VARNU_star          ${\vartheta^*}$ ( long_name = 'markup of intermediate firms')
BMEGA_star          ${BMEGA^*}$ ( long_name = 'scale parameter of operation cost')
CHI_star            ${\chi^*}$ ( long_name = 'scale parameter in innovation process')
RHO_star            ${\rho^*}$ ( long_name = 'R\&D elasticity of new technology creation in equilibrium')
PHI_star            ${\phi^*}$ ( long_name = 'survival rate of new ideas or prototypes')
ELASMU_star         ${\epsilon_{\mu}^*}$ ( long_name = 'elasticity of markup of input firms to number of input firms')
ELASLAM_star        ${\epsilon_{\lambda}^*}$ ( long_name = 'elasticity of \lambda')
DELPRIMESS_star     ${DELPRIMESS^*}$ ( long_name = 'steady state of \delta^{prime}')
DELSS_star          ${DELSS^*}$ ( long_name = 'steady state of \delta')
MUSS_star           ${MUSS^*}$ ( long_name = 'steady state of \mu')
LAMSS_star          ${LAMSS^*}$ ( long_name = 'steady state of \lambda')
USS_star            ${USS^*}$ ( long_name = 'steady state of capital utilization')
VARPISS_star        ${VARPISS^*}$ ( long_name = 'steady state of \varpi')
ZASS_star           ${ZASS^*}$ ( long_name = 'steady state of z_a')
KSS_star            ${KSS^*}$ ( long_name = 'steady state of k')
NSS_star            ${NSS^*}$ ( long_name = 'steady state of g^n')
GAMMASS_star        ${GAMMASS^*}$ ( long_name = 'steady state of \gamma')
RHOE_star           ${\rho_E^*}$ ( long_name = 'obsolescence of labor skills')
CHIE_star           ${\chi_E^*}$ ( long_name = 'scale parameter in average effective units process')

gn_1_star	gn_2_star	gn_3_star	gn_4_star	gn_5_star	gn_6_star	gn_7_star	gn_8_star	gn_9_star	gn_10_star	gn_11_star	gn_12_star	gn_13_star	gn_14_star	gn_15_star	gn_16_star	gn_17_star	gn_18_star	gn_19_star	gn_20_star	gn_21_star	gn_22_star	gn_23_star	gn_24_star	gn_25_star	gn_26_star	gn_27_star	gn_28_star	gn_29_star	gn_30_star	gn_31_star	gn_32_star	gn_33_star	gn_34_star	gn_35_star	gn_36_star	gn_37_star	gn_38_star	gn_39_star	gn_40_star
dws_1_star	dws_2_star	dws_3_star	dws_4_star	dws_5_star	dws_6_star	dws_7_star	dws_8_star	dws_9_star	dws_10_star	dws_11_star	dws_12_star	dws_13_star	dws_14_star	dws_15_star	dws_16_star	dws_17_star	dws_18_star	dws_19_star	dws_20_star	dws_21_star	dws_22_star	dws_23_star	dws_24_star	dws_25_star	dws_26_star	dws_27_star	dws_28_star	dws_29_star	dws_30_star	dws_31_star	dws_32_star	dws_33_star	dws_34_star	dws_35_star	dws_36_star	dws_37_star	dws_38_star	dws_39_star	dws_40_star
drs_1_star	drs_2_star	drs_3_star	drs_4_star	drs_5_star	drs_6_star	drs_7_star	drs_8_star	drs_9_star	drs_10_star	drs_11_star	drs_12_star	drs_13_star	drs_14_star	drs_15_star	drs_16_star	drs_17_star	drs_18_star	drs_19_star	drs_20_star	drs_21_star	drs_22_star	drs_23_star	drs_24_star	drs_25_star	drs_26_star	drs_27_star	drs_28_star	drs_29_star	drs_30_star	drs_31_star	drs_32_star	drs_33_star	drs_34_star	drs_35_star	drs_36_star	drs_37_star	drs_38_star	drs_39_star	drs_40_star
;

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
%set_param_value('OMEGAY_star',omegay_star)
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




model;

%households
hw_star = w_star + (OMEGAR_star/(r_star*zz_star))*(g_star(+1)/gw_star)*hw_star(+1); %present value of gains from human capital (workers)
Tw_star = tauw_star + (OMEGAR_star/(r_star*zz_star))*(g_star(+1)/gw_star)*Tw_star(+1); %present value of transfers (workers)
Dr_star = dr_star + Dr_star(+1)*gamma_star*g_star(+1)*zetar_star(-1)/(r_star*zetar_star*gw_star); %dividends to retirees from financial profits
ay_star = (1/NP_star)*(w_star(-1)*(1-OMEGAR_star)) + (1-1/NP_star)*ay_star(-1)*gw_star(-2)/g_star; %average labour income -earning reference for pensions
tpe_star = ETAR_star*ay_star+ gamma_star(-1)*(gE_star(-1)/g_star)*tpe_star(-1); %total pension - newly + pensions of retirees who did so in previous periods
Pe_star = tpe_star + Pe_star(+1)*gamma_star*g_star(+1)*zetar_star(-1)/(r_star*zetar_star*gw_star); %Present value of pension
Dw_star = dw_star + (OMEGAR_star/(r_star*zz_star))*(g_star(+1)/gw_star)*Dw_star(+1) + (((1-OMEGAR_star)*ep_star(+1)^((RHOU_star-1)/RHOU_star))/(r_star*zz_star))*(g_star(+1)/(zetar_star*gw_star))*(Dr_star(+1)+Pe_star(+1)); %dividends to workers
cw_star = varsig_star*(r_star(-1)*faw_star(-1)/g_star + hw_star + Dw_star - Tw_star); %consumption of workers
cr_star = ep_star*varsig_star*(r_star(-1)*far_star(-1)/g_star + Dr_star + Pe_star); %consumption of retirees
1- ep_star*varsig_star = ((BBETA_star*r_star)^(1/(1-RHOU_star))*gamma_star/r_star)*(ep_star*varsig_star/(ep_star(+1)*varsig_star(+1))); 
1- varsig_star = ((BBETA_star*r_star*zz_star)^(1/(1-RHOU_star))/(r_star*zz_star))*(varsig_star/varsig_star(+1));
zz_star = OMEGAR_star + (1-OMEGAR_star)*ep_star(+1)^((RHOU_star-1)/RHOU_star);
he_star = DELTAHE_star*(zetar_star(-1)/(1+zetar_star(-1)+zetay_star(-1)));
tauwA_star = tpe_star + he_star;
tauwE_star = iy_star*w_star;
tauw_star = tauwE_star + tauwA_star;

%population dynamics
gw_star = OMEGAR_star + (1-OMEGAY_star)*zetay_star(-1);
n_star = zetay_star/zetay_star(-1)*gw_star; %evolution of worker population
gw_star*zetar_star = (1-OMEGAR_star) + gamma_star*zetar_star(-1); %evolution of retirees population
gn_star = (n_star*zetay_star(-1) + gw_star + gw_star*zetar_star)*(1+zetar_star(-1)+zetay_star(-1))^(-1); %evolution of population
gE_star = (OMEGAR_star + (1-OMEGAY_star)*zetay_star(-1)*(RHOE_star + CHIE_star/2*iy_star^2))/gw_star;
varsig_star^(-1/RHOU_star) = varsig_star(+1)^(-1/RHOU_star)*BBETA_star*(1-OMEGAY_star)*zetay_star(-1)*CHIE_star*iy_star*w_star(+1)*g_star(+1)/(w_star*gw_star); %investment in labour skills
fert_star = n_star - OMEGAY_star;

%production
(1-ALPHA_star)*(1-GAMMAI_star) = mu_star*w_star; %eq'm wage
ALPHA_star*(1-GAMMAI_star) = mu_star*(rk_star + del_star)*(k_star(-1)/g_star); %rent of capital
ALPHA_star*(1-GAMMAI_star) = mu_star*delprime_star*(k_star(-1)/g_star)*(u_star); %utilization rate
g_star = (mu_star/mu_star(-1))*gM_star*(gA_star(-1))^(1-VARNU_star); 
g_star = (N_star^(mu_star-1))/(N_star(-1)^(mu_star(-1)-1))*(g_star(-1)*u_star*(k_star(-1))/(u_star(-1)*k_star(-2)))^(ALPHA_star*(1-GAMMAI_star))*((gE_star(-1)*gw_star(-1))^((1-ALPHA_star)*(1-GAMMAI_star)))*(gM_star)^GAMMAI_star;
((mu_star-1)/mu_star)*(N_star^(-mu_star)) = BMEGA_star*v_star; %number of firms
mu_star = MUSS_star*(1+ ELASMU_star*(N_star - 1)); %mark-up
del_star  = DELSS_star + delprime_star*(u_star - USS_star); %depreciation rate
delprime_star = DELPRIMESS_star + RATIODEL_star*DELPRIMESS_star*(u_star - USS_star)/USS_star;
invG_star = inv_star/inv_star(-1)*g_star;

%innovators/adoptors
gA_star*za_star/za_star(-1) = (stoyw_star)^(RHOYW_star)*CHI_star*(s_star/psi_star)^RHO_star + PHI_star; %evolution of invented goods
stoyw_star = YINNOVSH_star*(1-OMEGAY_star)*zetay_star(-1)/(1+zetay_star(-1)+zetar_star(-1)) + ((1-LAMY_star)*OMEGAR_star/gn_star(-1))*stoyw_star(-1); % intensity to transform invented goods into adopted goods
gA_star = lam_star*PHI_star*(za_star(-1)-1)+PHI_star; % evolution of adopted goods
s_star = (g_star(+1)/r_star)*PHI_star*j_star(+1)*(1 - PHI_star*za_star(-1)/(za_star*gA_star)); %investment in r and d
v_star = (1-1/VARNU_star)*GAMMAI_star/mu_star + (g_star(+1)/gA_star)*(PHI_star/r_star)*v_star(+1);
varpi_star = ELASLAM_star*lam_star*za_star(-1)*(g_star(+1)/gA_star)*(PHI_star/r_star)*(v_star(+1) - j_star(+1)/za_star); %investment in adoption
j_star= -varpi_star + za_star(-1)*(g_star(+1)/gA_star)*(PHI_star/r_star)*(lam_star*v_star(+1) + (1-lam_star)*j_star(+1)/za_star);
lam_star = LAMSS_star*(1+ELASLAM_star*((varpi_star - VARPISS_star)/VARPISS_star  - (za_star(-1) - ZASS_star)/ZASS_star - (psi_star - PSISS_star)/PSISS_star));
PiA_star = (1-1/VARNU_star)*GAMMAI_star/mu_star -  PHI_star*j_star*(1 - PHI_star*za_star(-2)/(za_star(-1)*gA_star(-1))) - r_star(-1)*varpi_star(-1)*(1 -1/za_star(-2))/g_star; %profits from adoption
PiRD_star = PHI_star*j_star*(1 - PHI_star*za_star(-2)/(za_star(-1)*gA_star(-1))) - r_star(-1)*s_star(-1)/g_star; %profits from invention
psi_star = v_star;

%financial intermediary
r_star = (rk_star(+1)+1); %ex ante rate of return
dr_star = PiF_star*far_star(-1)/fa_star(-1); %financial dividends to retirees
dw_star = PiF_star*faw_star(-1)/fa_star(-1) + SHINNOVW_star*(PiA_star + PiRD_star); %financial dividends to workers
b_star = s_star +  varpi_star*(1 -1/za_star(-1)) ; %total bank loans
PiF_star = (rk_star + 1)*(k_star(-1)/g_star) + (b_star(-1)*r_star(-1))/g_star - fa_star(-1)*r_star(-1)/g_star - k_star - b_star + fa_star + (1-SHINNOVW_star)*(PiA_star + PiRD_star); %financial profits



%market clearing conditions
k_star = (1-del_star)*(k_star(-1)/g_star) + inv_star; %evolution of investment 
y_star = (1-GAMMAI_star/(VARNU_star*mu_star)) - N_star*BMEGA_star*psi_star; %total output

y_star =( c_star + inv_star + s_star + varpi_star*(1-1/za_star(-1)) + tauwE_star + he_star);
%current account : Note " - FB " here!!
%y = c + inv + s + varpi*(1-1/za(-1)) + tauwE + he; %output identity
c_star = cr_star + cw_star; %total consumption
fa_star = k_star + b_star  ; %asset markets clearing (financial assets of ertirees and workers is equalized to future loans and capital stock 
% " -FB " here!!
far_star = far_star(-1)*r_star(-1)/g_star + dr_star + tpe_star - cr_star + (1-OMEGAR_star)*(faw_star(-1)*r_star(-1)/g_star +w_star+dw_star-cw_star - tauw_star) ; %flow of assets
fa_star  = far_star+faw_star; %financial assets


%exogenous variables
gpc_star = (y_star/y_star(-1))*g_star(-1)/gn_star(-1);
gy_star = (y_star/y_star(-1))*g_star;
%/g???
gn_star = NSS_star + en_star; %population growth 
shareW_star = 1/(1+zetay_star+zetar_star);
shareR_star = zetar_star/(1+zetay_star+zetar_star);
1/(1+zetay_star+zetar_star)  = 1/(1+ZETAYSS_star+ZETARSS_star) + ey_star; %share of workers in pop
zetar_star/(1+zetay_star+zetar_star)  = ZETARSS_star/(1+ZETAYSS_star+ZETARSS_star) + er_star; %share of retirees
%rstar = R_SS + shockR;
%rstar=R_SS/1.01+shockR;


%shocks

en_star = shockn_star*(gn_1_star-NSS_star) +shockn_star(-1)*(gn_2_star-NSS_star)+shockn_star(-2)*(gn_3_star-NSS_star)+shockn_star(-3)*(gn_4_star-NSS_star)+shockn_star(-4)*(gn_5_star-NSS_star)+shockn_star(-5)*(gn_6_star-NSS_star)+shockn_star(-6)*(gn_7_star-NSS_star)+shockn_star(-7)*(gn_8_star-NSS_star)+shockn_star(-8)*(gn_9_star-NSS_star)+shockn_star(-9)*(gn_10_star-NSS_star)+shockn_star(-10)*(gn_11_star-NSS_star)+shockn_star(-11)*(gn_12_star-NSS_star)+shockn_star(-12)*(gn_13_star-NSS_star)+shockn_star(-13)*(gn_14_star-NSS_star)+shockn_star(-14)*(gn_15_star-NSS_star)+shockn_star(-15)*(gn_16_star-NSS_star)+shockn_star(-16)*(gn_17_star-NSS_star)+shockn_star(-17)*(gn_18_star-NSS_star)+shockn_star(-18)*(gn_19_star-NSS_star)+shockn_star(-19)*(gn_20_star-NSS_star)+shockn_star(-20)*(gn_21_star-NSS_star)+shockn_star(-21)*(gn_22_star-NSS_star)+shockn_star(-22)*(gn_23_star-NSS_star)+shockn_star(-23)*(gn_24_star-NSS_star)+shockn_star(-24)*(gn_25_star-NSS_star)+shockn_star(-25)*(gn_26_star-NSS_star)+shockn_star(-26)*(gn_27_star-NSS_star)+shockn_star(-27)*(gn_28_star-NSS_star)+shockn_star(-28)*(gn_29_star-NSS_star)+shockn_star(-29)*(gn_30_star-NSS_star)+shockn_star(-30)*(gn_31_star-NSS_star)+shockn_star(-31)*(gn_32_star-NSS_star)+shockn_star(-32)*(gn_33_star-NSS_star)+shockn_star(-33)*(gn_34_star-NSS_star)+shockn_star(-34)*(gn_35_star-NSS_star)+shockn_star(-35)*(gn_36_star-NSS_star)+shockn_star(-36)*(gn_37_star-NSS_star)+shockn_star(-37)*(gn_38_star-NSS_star)+shockn_star(-38)*(gn_39_star-NSS_star)+shockn_star(-39)*(gn_40_star-NSS_star);
er_star = shockr_star;
ey_star = shocky_star;
shocky_star = shocky_star(-1) + delall*dws_1_star + delall(-1)*dws_2_star+delall(-2)*dws_3_star+delall(-3)*dws_4_star+delall(-4)*dws_5_star+delall(-5)*dws_6_star+delall(-6)*dws_7_star+delall(-7)*dws_8_star+delall(-8)*dws_9_star+delall(-9)*dws_10_star+delall(-10)*dws_11_star+delall(-11)*dws_12_star+delall(-12)*dws_13_star+delall(-13)*dws_14_star+delall(-14)*dws_15_star+delall(-15)*dws_16_star+delall(-16)*dws_17_star+delall(-17)*dws_18_star+delall(-18)*dws_19_star+delall(-19)*dws_20_star+delall(-20)*dws_21_star+delall(-21)*dws_22_star+delall(-22)*dws_23_star+delall(-23)*dws_24_star+delall(-24)*dws_25_star+delall(-25)*dws_26_star+delall(-26)*dws_27_star+delall(-27)*dws_28_star+delall(-28)*dws_29_star+delall(-29)*dws_30_star+delall(-30)*dws_31_star+delall(-31)*dws_32_star+delall(-32)*dws_33_star+delall(-33)*dws_34_star+delall(-34)*dws_35_star+delall(-35)*dws_36_star+delall(-36)*dws_37_star+delall(-37)*dws_38_star+delall(-38)*dws_39_star+delall(-39)*dws_40_star; 
shockr_star = shockr_star(-1) + delall*dws_1_star + delall(-1)*drs_2_star+delall(-2)*drs_3_star+delall(-3)*drs_4_star+delall(-4)*drs_5_star+delall(-5)*drs_6_star+delall(-6)*drs_7_star+delall(-7)*drs_8_star+delall(-8)*drs_9_star+delall(-9)*drs_10_star+delall(-10)*drs_11_star+delall(-11)*drs_12_star+delall(-12)*drs_13_star+delall(-13)*drs_14_star+delall(-14)*drs_15_star+delall(-15)*drs_16_star+delall(-16)*drs_17_star+delall(-17)*drs_18_star+delall(-18)*drs_19_star+delall(-19)*drs_20_star+delall(-20)*drs_21_star+delall(-21)*drs_22_star+delall(-22)*drs_23_star+delall(-23)*drs_24_star+delall(-24)*drs_25_star+delall(-25)*drs_26_star+delall(-26)*drs_27_star+delall(-27)*drs_28_star+delall(-28)*drs_29_star+delall(-29)*drs_30_star+delall(-30)*drs_31_star+delall(-31)*drs_32_star+delall(-32)*drs_33_star+delall(-33)*drs_34_star+delall(-34)*drs_35_star+delall(-35)*drs_36_star+delall(-36)*drs_37_star+delall(-37)*drs_38_star+delall(-38)*drs_39_star+delall(-39)*drs_40_star;  
shockn_star = delall;

end;


initval;
r_star= R_SS_star;
gy_star = g_SS_star;
tauwA_star = tauwA_SS_star;
tauwE_star = tauwE_SS_star;
tpe_star = tpe_SS_star;
he_star = he_SS_star;
ay_star = ay_SS_star;
Pe_star = Pe_SS_star;
Tw_star = Tw_SS_star;
tauw_star = tauw_SS_star;
hw_star = hw_SS_star;
Dr_star = Dr_SS_star;
Dw_star = Dw_SS_star;
cw_star = cw_SS_star;
cr_star = cr_SS_star;
ep_star = Ep_SS_star;
varsig_star = varsig_SS_star;
zetar_star = zetar_SS_star;
zetay_star = zetay_SS_star;
g_star = g_SS_star;
gw_star = gw_SS_star;
zz_star = Z_SS_star;
far_star = far_SS_star;
faw_star = faw_SS_star;
dr_star = dr_SS_star;
dw_star = dw_SS_star;
w_star = w_SS_star;
mu_star = mu_SS_star;
k_star = k_SS_star;
u_star = U_SS_star;
del_star  = delta_star;
delprime_star = DELPRIMESS_star;
invG_star = g_SS_star;
gM_star = gm_SS_star;
N_star = 1;
rk_star = rk_SS_star;
s_star = s_SS_star;
v_star = v_SS_star;
j_star = j_SS_star;
varpi_star = varpi_SS_star;
lam_star =  lambda_SS_star;
gA_star = ga_SS_star;
gE_star = gE_SS_star;
iy_star = iy_SS_star;
za_star = za_SS_star;
PiA_star = PiA_SS_star; 
PiRD_star = 0;
psi_star = psi_SS_star;
b_star = b_SS_star;
PiF_star = PiF_SS_star;
y_star = y_SS_star;
c_star = c_SS_star;
inv_star = inv_SS_star;
fa_star = fa_SS_star;
n_star = n_SS_star;
gn_star = n_SS_star;
gamma_star = gamma_SS_star;
gpc_star = g_SS_star/n_SS_star;
stoyw_star = stoyw_SS_star;
en_star = 0;
fert_star = fert_SS_star;
OMEGAY_star = omegay_star;
shareW_star = 1/(1+ZETARSS_star+ZETAYSS_star);
shareR_star =  ZETARSS_star/(1+ZETARSS_star+ZETAYSS_star);
end;
steady;


shocks;
var delall; stderr 1; % set standard deviation

%var delg; stderr 0.005; % set standard deviation to be (newgamma-oldgamma)*(1-PERS) %Longevity shock
%var deln; stderr 0.00; % pop shock 
%var delu; stderr 0.000; % no longer used
end;

check;
%options_.nograph=1;
options_.solve_algo=1;
stoch_simul(irf  = 40, order=1);
save Case11oo_ oo_
save Case11M_ M_



%----------------------------------------------------------------
% generate LaTeX output
%----------------------------------------------------------------

write_latex_dynamic_model;
write_latex_parameter_table;
write_latex_definitions;
//write_latex_prior_table;
//generate_trace_plots(1);
collect_latex_files;
if system(['pdflatex -halt-on-error -interaction=batchmode ' M_.fname '_TeX_binder.tex'])
    error('TeX-File did not compile.')
end
