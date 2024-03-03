% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code produces the result for aging shock keeping population constant with the extension of pension and 
% health expentiture for retirees.

var gdpratio    ${\mathfrak{G}}$ (long_name = 'Home GDP / Foreign GDP')
    FB          ${\mathfrak{F}}$ ( long_name = 'Net foreign Bond of Home country / GDP')
    r           ${r}$ ( long_name = 'Home real interest rate')
    rk          ${r^k}$ ( long_name = 'Home capital rent')
    w           ${w}$ ( long_name = 'labor income / GDP')
    b           ${b}$ ( long_name = 'investment of R\&D and adoption / GDP')
    y           ${y}$ ( long_name = 'disposible income / GDP')
    varpi       ${\varpi}$ ( long_name = 'adoption investment X number of new ideas / GDP')
    s           ${s}$ ( long_name = 'R\&D investment / GDP')
    inv         ${i}$ ( long_name = 'fixed capital investment / GDP')
    invG        ${g^i}$ ( long_name = 'fixed capital investment growth')
    c           ${c}$ ( long_name = 'consumption / GDP')
    cw          ${c^w}$ ( long_name = 'consumption of worker / GDP')
    cr          ${c^r}$ ( long_name = 'consumption of retiree / GDP')           
    tauw        $\tilde{\tau}$ ( long_name = 'health care, pension, education cost / GDP')
    N           ${N^f}$ ( long_name = 'number of input firms')
    stoyw       ${\gamma^{yw}}$ ( long_name = 'share of R\&D worker')        
    PiF         ${\pi^F}$ ( long_name = 'profits of financial intermediary / GDP')
    Tw          ${\tilde{T}^w}$ ( long_name = 'present value of education, health, pension / GDP')           
    hw          ${h^w}$ ( long_name = 'present value of workers labor income / GDP')
    Dr          $\tilde{D}^r$ ( long_name = 'present value of retirees dividends / GDP')
    Dw          $\tilde{D}^w$ ( long_name = 'present value of workers dividends / GDP')
    ep          ${\epsilon}$ ( long_name = 'retiree MPC adjustment factor')
    varsig      ${\varsigma}$ ( long_name = 'MPC of worker')
    zetar       ${\zeta^{r}}$ ( long_name = 'retirees / workers')
    zetay       ${\zeta^{y}}$ ( long_name = 'youth / workers')
 
    gw          ${g^w}$ ( long_name = 'growth rate of workers')
    g           ${g}$ ( long_name = 'growth rate of GDP')
    gE          ${g^{\xi}}$ ( long_name = 'growth rate of average effective unit of labor')
    iy          ${i^y}$ ( long_name = 'education investment / average effective unit of labor')
    gpc         ${g_{dypc}}$ ( long_name = 'disposable income per capita growth')
    zz          ${\mathfrak{Z}}$ ( long_name = 'local variable for symbolic briefness')
    far         ${fa^r}$ ( long_name = 'financial assets of retirees / GDP')
    faw         ${fa^w}$ ( long_name = 'financial assets of workers / GDP')
    dr          $\tilde{d}^r$ ( long_name = 'dividends of retirees / GDP')
    dw          $\tilde{d}^w$ ( long_name = 'dividends of workers / GDP')
    mu          ${\mu}$ ( long_name = 'markup of input firms')
    k           ${k}$ ( long_name = 'aggregate fixed capital / GDP')
    u           ${u}$ ( long_name = 'capital utilization rate')
    del         ${\delta}$ ( long_name = 'depreciation rate')
 
    delprime    ${\delta^\prime}$ ( long_name = 'differentiation of depreciation rate')
    gM          ${g^M}$ ( long_name = 'growth rate of aggregate intermediate composite goods')
    v           ${v}$ ( long_name = 'aggregate value of adopted goods / GDP')
    j           ${j}$ ( long_name = 'aggregate value of new ideas / GDP')
    lam         ${\lambda}$ ( long_name = 'probability of success of adoption investment')
    gA          ${g^A}$ ( long_name = 'growth rate of adopted goods')
    za          ${z^a}$ ( long_name = 'number of aggregate new ideas / number of adopted goods')
    PiA         ${\pi^{A}}$ ( long_name = 'profits for adpoters / GDP')
    PiRD        ${\pi^{RD}}$ ( long_name = 'profits for R\&D sector')
    fa          ${fa}$ ( long_name = 'aggregate financial assets / GDP')
    n           ${n}$ ( long_name = 'growth rate of young population')
    gn          ${g^n}$ ( long_name = 'growth rate of total population')
    gy          ${g^y}$ ( long_name = 'growth rate of disposable income')
    gamma       ${\gamma}$ ( long_name = 'probability of retiree survival rate')
    OMEGAY      ${\omega^{y}}$ ( long_name = 'probability of staying young')
    fert        ${fert}$ ( long_name = 'fertility')
    psi         ${\psi}$ ( long_name = 'operation cost / GDP')
    tauwE       $\tilde{\tau}^E$ ( long_name = 'education cost / GDP')
    tauwA       $\tilde{\tau}^A$ ( long_name = 'pension and health care cost / GDP')
    ay          ${ay}$ ( long_name = 'average labor income / GDP')
    tpe         ${tpe}$ ( long_name = 'total payment of pensions / GDP')
    Pe          ${Pe}$ ( long_name = 'present value of life long pension for retirees / GDP')
    he          ${he}$ ( long_name = 'aggregate health expenditure / GDP')
    en          ${en}$ ( long_name = 'population growth shock')
    ey          ${ey}$ ( long_name = 'share of workers shock')
    er          ${er}$ ( long_name = 'share of retirees shock')
    shockn      ${shockn}$ ( long_name = 'sequence of population shocks')
    shocky      ${shocky}$ ( long_name = 'sequence of share of workers shocks')
    shockr      ${shockr}$ ( long_name = 'sequence of share of retirees shocks')
    shareW      ${shareW}$ ( long_name = 'workers / population')
    shareR      ${shareR}$ ( long_name = 'retirees / population')      
    r_star      ${r^*}$ ( long_name = 'foreign real interest rate')
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
Init_gdpratio       ${\mathfrak{K}}$ ( long_name = 'steady state GDP ratio \: Home GDP / Foreign GDP ')
R_SS                ${R_SS}$ ( long_name = 'steady state of real interest rate')
ZETAYSS             ${ZETAYSS}$ ( long_name = 'steady state of young / worker ')
ZETARSS             ${ZETARSS}$ ( long_name = 'steady state of retiree / worker ')
SHINNOVW            ${SHINNOVW}$ ( long_name = 'share of innovation workers')
YINNOVSH            ${\kappa}$ ( long_name = 'scale parameter to match new young innovators')
ETAR                ${\eta^r}$ ( long_name = 'replacement ratio')
DELTAHE             ${\delta_{HE}}$ ( long_name = 'share of health expenditure to GDP per capita')
NP                  ${n_p}$ ( long_name = 'average working years')
FERTSS              ${FERTSS}$ ( long_name = 'steady state of fertility')
RHOYW               ${\rho^{yw}}$ ( long_name = 'importance of young innovators in aggregate new ideas')
LAMY                ${\lam^{yw}}$ ( long_name = 'rate of no longer active in innovation sector')
PSISS               ${PSISS}$ ( long_name = 'steady state of operation cost')
GSS                 ${GSS}$ ( long_name = 'steady state of growth rate')
PERS                 
RATIODEL            ${\epsilon^{\delta^{\prime}}}$ ( long_name = 'elasticity of delta prime to capital utilization')
OMEGAR              ${\omega^w}$ ( long_name = 'rate of staying workers')
RHOU                ${\rho_U}$ ( long_name = 'preference parameter')
BBETA               ${\beta}$ ( long_name = 'subjective discount factor')
ALPHA               ${\alpha}$ ( long_name = 'fixed capital share of added value')
GAMMAI              ${\gamma_I}$ ( long_name = 'intermediate good share')
VARNU               ${\vartheta}$ ( long_name = 'markup of intermediate firms')
BMEGA               ${BMEGA}$ ( long_name = 'scale parameter of operation cost')
CHI                 ${\chi}$ ( long_name = 'scale parameter in innovation process')
RHO                 ${\rho}$ ( long_name = 'R\&D elasticity of new technology creation in equilibrium')
PHI                 ${\phi}$ ( long_name = 'survival rate of new ideas or prototypes')
ELASMU              ${\epsilon_{\mu}}$ ( long_name = 'elasticity of markup of input firms to number of input firms')
ELASLAM             ${\epsilon_{\lambda}}$ ( long_name = 'elasticity of \lambda')
DELPRIMESS          ${DELPRIMESS}$ ( long_name = 'steady state of \delta^{prime}')
DELSS               ${DELSS}$ ( long_name = 'steady state of \delta')
MUSS                ${MUSS}$ ( long_name = 'steady state of \mu')
LAMSS               ${LAMSS}$ ( long_name = 'steady state of \lambda')
USS                 ${USS}$ ( long_name = 'steady state of capital utilization')
VARPISS             ${VARPISS}$ ( long_name = 'steady state of \varpi')
ZASS                ${ZASS}$ ( long_name = 'steady state of z_a')
KSS                 ${KSS}$ ( long_name = 'steady state of k')
NSS                 ${NSS}$ ( long_name = 'steady state of g^n')
GAMMASS             ${GAMMASS}$ ( long_name = 'steady state of \gamma')
RHOE                ${\rho_E}$ ( long_name = 'obsolescence of labor skills')
CHIE                ${\chi_E}$ ( long_name = 'scale parameter in average effective units process')
drs_1 drs_2 drs_3 drs_4 drs_5 drs_6 drs_7 drs_8 drs_9 drs_10 drs_11 drs_12 drs_13 drs_14 drs_15 drs_16 drs_17 drs_18 drs_19 drs_20 drs_21 drs_22 drs_23 drs_24 drs_25 drs_26 drs_27 drs_28 drs_29 drs_30 drs_31 drs_32 drs_33 drs_34 drs_35 drs_36 drs_37 drs_38 drs_39 drs_40 
dws_1 dws_2 dws_3 dws_4 dws_5 dws_6 dws_7 dws_8 dws_9 dws_10 dws_11 dws_12 dws_13 dws_14 dws_15 dws_16 dws_17 dws_18 dws_19 dws_20 dws_21 dws_22 dws_23 dws_24 dws_25 dws_26 dws_27 dws_28 dws_29 dws_30 dws_31 dws_32 dws_33 dws_34 dws_35 dws_36 dws_37 dws_38 dws_39 dws_40 
gn_1 gn_2 gn_3 gn_4 gn_5 gn_6 gn_7 gn_8 gn_9 gn_10 gn_11 gn_12 gn_13 gn_14 gn_15 gn_16 gn_17 gn_18 gn_19 gn_20 gn_21 gn_22 gn_23 gn_24 gn_25 gn_26 gn_27 gn_28 gn_29 gn_30 gn_31 gn_32 gn_33 gn_34 gn_35 gn_36 gn_37 gn_38 gn_39 gn_40  
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

Init_gdpratio=.5;
load paramFinal_ext1_US_Kor_Demo;
load vecSSFinal_ext1_US_Kor_Demo;
load paramFinal_ext1_US;
load vecSSFinal_ext1_US;
load endpoint;
load pred_param_2country_Copy_US_Kor_Demo;
load pred_param_2Country_US;

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
%set_param_value('OMEGAY',omegay)
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
hw = w + (OMEGAR/(r*zz))*(g(+1)/gw)*hw(+1); %present value of gains from human capital (workers)
Tw = tauw + (OMEGAR/(r*zz))*(g(+1)/gw)*Tw(+1); %present value of transfers (workers)
Dr = dr + Dr(+1)*gamma*g(+1)*zetar(-1)/(r*zetar*gw); %dividends to retirees from financial profits
ay = (1/NP)*(w(-1)*(1-OMEGAR)) + (1-1/NP)*ay(-1)*gw(-2)/g; %average labour income -earning reference for pensions
tpe = ETAR*ay+ gamma(-1)*(gE(-1)/g)*tpe(-1); %total pension - newly + pensions of retirees who did so in previous periods
Pe = tpe + Pe(+1)*gamma*g(+1)*zetar(-1)/(r*zetar*gw); %Present value of pension
Dw = dw + (OMEGAR/(r*zz))*(g(+1)/gw)*Dw(+1) + (((1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU))/(r*zz))*(g(+1)/(zetar*gw))*(Dr(+1)+Pe(+1)); %dividends to workers
cw = varsig*(r(-1)*faw(-1)/g + hw + Dw - Tw); %consumption of workers
cr = ep*varsig*(r(-1)*far(-1)/g + Dr + Pe); %consumption of retirees
1- ep*varsig = ((BBETA*r)^(1/(1-RHOU))*gamma/r)*(ep*varsig/(ep(+1)*varsig(+1))); 
1- varsig = ((BBETA*r*zz)^(1/(1-RHOU))/(r*zz))*(varsig/varsig(+1));
zz = OMEGAR + (1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU);
he = DELTAHE*(zetar(-1)/(1+zetar(-1)+zetay(-1)));
tauwA = tpe + he;
tauwE = iy*w;
tauw = tauwE + tauwA;

%population dynamics
gw = OMEGAR + (1-OMEGAY)*zetay(-1);
n = zetay/zetay(-1)*gw; %evolution of worker population
gw*zetar = (1-OMEGAR) + gamma*zetar(-1); %evolution of retirees population
gn = (n*zetay(-1) + gw + gw*zetar)*(1+zetar(-1)+zetay(-1))^(-1); %evolution of population
gE = (OMEGAR + (1-OMEGAY)*zetay(-1)*(RHOE + CHIE/2*iy^2))/gw;
varsig^(-1/RHOU) = varsig(+1)^(-1/RHOU)*BBETA*(1-OMEGAY)*zetay(-1)*CHIE*iy*w(+1)*g(+1)/(w*gw); %investment in labour skills
fert = n - OMEGAY;

%production
(1-ALPHA)*(1-GAMMAI) = mu*w; %eq'm wage
ALPHA*(1-GAMMAI) = mu*(rk + del)*(k(-1)/g); %rent of capital
ALPHA*(1-GAMMAI) = mu*delprime*(k(-1)/g)*(u); %utilization rate
g = (mu/mu(-1))*gM*(gA(-1))^(1-VARNU); 
g = (N^(mu-1))/(N(-1)^(mu(-1)-1))*(g(-1)*u*(k(-1))/(u(-1)*k(-2)))^(ALPHA*(1-GAMMAI))*((gE(-1)*gw(-1))^((1-ALPHA)*(1-GAMMAI)))*(gM)^GAMMAI;
((mu-1)/mu)*(N^(-mu)) = BMEGA*v; %number of firms
mu = MUSS*(1+ ELASMU*(N - 1)); %mark-up
del  = DELSS + delprime*(u - USS); %depreciation rate
delprime = DELPRIMESS + RATIODEL*DELPRIMESS*(u - USS)/USS;
invG = inv/inv(-1)*g;

%innovators/adoptors
gA*za/za(-1) = (stoyw)^(RHOYW)*CHI*(s/psi)^RHO + PHI; %evolution of invented goods
stoyw = YINNOVSH*(1-OMEGAY)*zetay(-1)/(1+zetay(-1)+zetar(-1)) + ((1-LAMY)*OMEGAR/gn(-1))*stoyw(-1); % intensity to transform invented goods into adopted goods
gA = lam*PHI*(za(-1)-1)+PHI; % evolution of adopted goods
s = (g(+1)/r)*PHI*j(+1)*(1 - PHI*za(-1)/(za*gA)); %investment in r and d
v = (1-1/VARNU)*GAMMAI/mu + (g(+1)/gA)*(PHI/r)*v(+1);
varpi = ELASLAM*lam*za(-1)*(g(+1)/gA)*(PHI/r)*(v(+1) - j(+1)/za); %investment in adoption
j= -varpi + za(-1)*(g(+1)/gA)*(PHI/r)*(lam*v(+1) + (1-lam)*j(+1)/za);
lam = LAMSS*(1+ELASLAM*((varpi - VARPISS)/VARPISS  - (za(-1) - ZASS)/ZASS - (psi - PSISS)/PSISS));
PiA = (1-1/VARNU)*GAMMAI/mu -  PHI*j*(1 - PHI*za(-2)/(za(-1)*gA(-1))) - r(-1)*varpi(-1)*(1 -1/za(-2))/g; %profits from adoption
PiRD = PHI*j*(1 - PHI*za(-2)/(za(-1)*gA(-1))) - r(-1)*s(-1)/g; %profits from invention
psi = v;

%financial intermediary
r = (rk(+1)+1); %ex ante rate of return
dr = PiF*far(-1)/fa(-1); %financial dividends to retirees
dw = PiF*faw(-1)/fa(-1) + SHINNOVW*(PiA + PiRD); %financial dividends to workers
b = s +  varpi*(1 -1/za(-1)) ; %total bank loans
PiF = (rk + 1)*(k(-1)/g) + (b(-1)*r(-1)+FB(-1)*r_star(-1))/g - fa(-1)*r(-1)/g - k - b -FB + fa + (1-SHINNOVW)*(PiA + PiRD); %financial profits

%r(1) =r_star(1);
%not working
r(1)-r_star(1) = r-r_star;


%market clearing conditions
k = (1-del)*(k(-1)/g) + inv; %evolution of investment 
y = (1-GAMMAI/(VARNU*mu)) - N*BMEGA*psi; %total output
FB = y -( c + inv + s + varpi*(1-1/za(-1)) + tauwE + he);
%current account
%y = c + inv + s + varpi*(1-1/za(-1)) + tauwE + he; %output identity
c = cr + cw; %total consumption
fa = k + b + FB ; %asset markets clearing (financial assets of ertirees and workers is equalized to future loans and capital stock 
far = far(-1)*r(-1)/g + dr + tpe - cr + (1-OMEGAR)*(faw(-1)*r(-1)/g +w+dw-cw - tauw) ; %flow of assets
fa  = far+faw; %financial assets


%exogenous variables
gpc = (y/y(-1))*g/gn(-1);
gy = (y/y(-1))*g;
%/g???
gn = NSS + en; %population growth 
shareW = 1/(1+zetay+zetar);
shareR = zetar/(1+zetay+zetar);
1/(1+zetay+zetar)  = 1/(1+ZETAYSS+ZETARSS) + ey; %share of workers in pop
zetar/(1+zetay+zetar)  = ZETARSS/(1+ZETAYSS+ZETARSS) + er; %share of retirees



%shocks
%shockR = delall(-1)*Rh_2+	delall(-2)*Rh_3+	delall(-3)*Rh_4+	delall(-4)*Rh_5+	delall(-5)*Rh_6+	delall(-6)*Rh_7+	delall(-7)*Rh_8+	delall(-8)*Rh_9+	delall(-9)*Rh_10+	delall(-10)*Rh_11+	delall(-11)*Rh_12+	delall(-12)*Rh_13+	delall(-13)*Rh_14+	delall(-14)*Rh_15+	delall(-15)*Rh_16+	delall(-16)*Rh_17+	delall(-17)*Rh_18+	delall(-18)*Rh_19+	delall(-19)*Rh_20+	delall(-20)*Rh_21+	delall(-21)*Rh_22+	delall(-22)*Rh_23+	delall(-23)*Rh_24+	delall(-24)*Rh_25+	delall(-25)*Rh_26+	delall(-26)*Rh_27+	delall(-27)*Rh_28+	delall(-28)*Rh_29+	delall(-29)*Rh_30+	delall(-30)*Rh_31+	delall(-31)*Rh_32+	delall(-32)*Rh_33+	delall(-33)*Rh_34+	delall(-34)*Rh_35+	delall(-35)*Rh_36+	delall(-36)*Rh_37+	delall(-37)*Rh_38+	delall(-38)*Rh_39+	delall(-39)*Rh_40;
%shockR = delall*Rh_1+	delall(-1)*Rh_2+	delall(-2)*Rh_3+	delall(-3)*Rh_4+	delall(-4)*Rh_5+	delall(-5)*Rh_6+	delall(-6)*Rh_7+	delall(-7)*Rh_8+	delall(-8)*Rh_9+	delall(-9)*Rh_10+	delall(-10)*Rh_11+	delall(-11)*Rh_12+	delall(-12)*Rh_13+	delall(-13)*Rh_14+	delall(-14)*Rh_15+	delall(-15)*Rh_16+	delall(-16)*Rh_17+	delall(-17)*Rh_18+	delall(-18)*Rh_19+	delall(-19)*Rh_20+	delall(-20)*Rh_21+	delall(-21)*Rh_22+	delall(-22)*Rh_23+	delall(-23)*Rh_24+	delall(-24)*Rh_25+	delall(-25)*Rh_26+	delall(-26)*Rh_27+	delall(-27)*Rh_28+	delall(-28)*Rh_29+	delall(-29)*Rh_30+	delall(-30)*Rh_31+	delall(-31)*Rh_32+	delall(-32)*Rh_33+	delall(-33)*Rh_34+	delall(-34)*Rh_35+	delall(-35)*Rh_36+	delall(-36)*Rh_37+	delall(-37)*Rh_38+	delall(-38)*Rh_39+	delall(-39)*Rh_40;


en = shockn*(gn_1-NSS) +shockn(-1)*(gn_2-NSS)+shockn(-2)*(gn_3-NSS)+shockn(-3)*(gn_4-NSS)+shockn(-4)*(gn_5-NSS)+shockn(-5)*(gn_6-NSS)+shockn(-6)*(gn_7-NSS)+shockn(-7)*(gn_8-NSS)+shockn(-8)*(gn_9-NSS)+shockn(-9)*(gn_10-NSS)+shockn(-10)*(gn_11-NSS)+shockn(-11)*(gn_12-NSS)+shockn(-12)*(gn_13-NSS)+shockn(-13)*(gn_14-NSS)+shockn(-14)*(gn_15-NSS)+shockn(-15)*(gn_16-NSS)+shockn(-16)*(gn_17-NSS)+shockn(-17)*(gn_18-NSS)+shockn(-18)*(gn_19-NSS)+shockn(-19)*(gn_20-NSS)+shockn(-20)*(gn_21-NSS)+shockn(-21)*(gn_22-NSS)+shockn(-22)*(gn_23-NSS)+shockn(-23)*(gn_24-NSS)+shockn(-24)*(gn_25-NSS)+shockn(-25)*(gn_26-NSS)+shockn(-26)*(gn_27-NSS)+shockn(-27)*(gn_28-NSS)+shockn(-28)*(gn_29-NSS)+shockn(-29)*(gn_30-NSS)+shockn(-30)*(gn_31-NSS)+shockn(-31)*(gn_32-NSS)+shockn(-32)*(gn_33-NSS)+shockn(-33)*(gn_34-NSS)+shockn(-34)*(gn_35-NSS)+shockn(-35)*(gn_36-NSS)+shockn(-36)*(gn_37-NSS)+shockn(-37)*(gn_38-NSS)+shockn(-38)*(gn_39-NSS)+shockn(-39)*(gn_40-NSS);
er = shockr;
ey = shocky;
shocky = shocky(-1) + delall*dws_1 + delall(-1)*dws_2+delall(-2)*dws_3+delall(-3)*dws_4+delall(-4)*dws_5+delall(-5)*dws_6+delall(-6)*dws_7+delall(-7)*dws_8+delall(-8)*dws_9+delall(-9)*dws_10+delall(-10)*dws_11+delall(-11)*dws_12+delall(-12)*dws_13+delall(-13)*dws_14+delall(-14)*dws_15+delall(-15)*dws_16+delall(-16)*dws_17+delall(-17)*dws_18+delall(-18)*dws_19+delall(-19)*dws_20+delall(-20)*dws_21+delall(-21)*dws_22+delall(-22)*dws_23+delall(-23)*dws_24+delall(-24)*dws_25+delall(-25)*dws_26+delall(-26)*dws_27+delall(-27)*dws_28+delall(-28)*dws_29+delall(-29)*dws_30+delall(-30)*dws_31+delall(-31)*dws_32+delall(-32)*dws_33+delall(-33)*dws_34+delall(-34)*dws_35+delall(-35)*dws_36+delall(-36)*dws_37+delall(-37)*dws_38+delall(-38)*dws_39+delall(-39)*dws_40; 
shockr = shockr(-1) + delall*dws_1 + delall(-1)*drs_2+delall(-2)*drs_3+delall(-3)*drs_4+delall(-4)*drs_5+delall(-5)*drs_6+delall(-6)*drs_7+delall(-7)*drs_8+delall(-8)*drs_9+delall(-9)*drs_10+delall(-10)*drs_11+delall(-11)*drs_12+delall(-12)*drs_13+delall(-13)*drs_14+delall(-14)*drs_15+delall(-15)*drs_16+delall(-16)*drs_17+delall(-17)*drs_18+delall(-18)*drs_19+delall(-19)*drs_20+delall(-20)*drs_21+delall(-21)*drs_22+delall(-22)*drs_23+delall(-23)*drs_24+delall(-24)*drs_25+delall(-25)*drs_26+delall(-26)*drs_27+delall(-27)*drs_28+delall(-28)*drs_29+delall(-29)*drs_30+delall(-30)*drs_31+delall(-31)*drs_32+delall(-32)*drs_33+delall(-33)*drs_34+delall(-34)*drs_35+delall(-35)*drs_36+delall(-36)*drs_37+delall(-37)*drs_38+delall(-38)*drs_39+delall(-39)*drs_40;  
shockn = delall;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%Foreign%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


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
PiF_star = (rk_star + 1)*(k_star(-1)/g_star) + (b_star(-1)*r_star(-1)-gdpratio*FB(-1)*g(-1)/g_star(-1)*r(-1))/g_star - fa_star(-1)*r_star(-1)/g_star - k_star - b_star + gdpratio*FB*g/g_star + fa_star + (1-SHINNOVW_star)*(PiA_star + PiRD_star); %financial profits



%market clearing conditions
k_star = (1-del_star)*(k_star(-1)/g_star) + inv_star; %evolution of investment 
y_star = (1-GAMMAI_star/(VARNU_star*mu_star)) - N_star*BMEGA_star*psi_star; %total output
gdpratio = Init_gdpratio*(delall 
+ g(-1)/g_star(-1)*delall(-1)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*delall(-2)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*delall(-3)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*delall(-4)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*delall(-5)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*delall(-6)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*delall(-7)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*delall(-8)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*delall(-9)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*delall(-10)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*delall(-11)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*delall(-12)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*delall(-13)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*delall(-14)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*delall(-15)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*delall(-16)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*delall(-17)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*delall(-18)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*delall(-19)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*delall(-20)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*delall(-21)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*delall(-22)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*delall(-23)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*delall(-24)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*delall(-25)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*delall(-26)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*delall(-27)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*delall(-28)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*delall(-29)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*delall(-30)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*delall(-31)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*delall(-32)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*delall(-33)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*delall(-34)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*g(-35)/g_star(-35)*delall(-35)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*g(-35)/g_star(-35)*g(-36)/g_star(-36)*delall(-36)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*g(-35)/g_star(-35)*g(-36)/g_star(-36)*g(-37)/g_star(-37)*delall(-37)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*g(-35)/g_star(-35)*g(-36)/g_star(-36)*g(-37)/g_star(-37)*g(-38)/g_star(-38)*delall(-38)
+ g(-1)/g_star(-1)*g(-2)/g_star(-2)*g(-3)/g_star(-3)*g(-4)/g_star(-4)*g(-5)/g_star(-5)*g(-6)/g_star(-6)*g(-7)/g_star(-7)*g(-8)/g_star(-8)*g(-9)/g_star(-9)*g(-10)/g_star(-10)*g(-11)/g_star(-11)*g(-12)/g_star(-12)*g(-13)/g_star(-13)*g(-14)/g_star(-14)*g(-15)/g_star(-15)*g(-16)/g_star(-16)*g(-17)/g_star(-17)*g(-18)/g_star(-18)*g(-19)/g_star(-19)*g(-20)/g_star(-20)*g(-21)/g_star(-21)*g(-22)/g_star(-22)*g(-23)/g_star(-23)*g(-24)/g_star(-24)*g(-25)/g_star(-25)*g(-26)/g_star(-26)*g(-27)/g_star(-27)*g(-28)/g_star(-28)*g(-29)/g_star(-29)*g(-30)/g_star(-30)*g(-31)/g_star(-31)*g(-32)/g_star(-32)*g(-33)/g_star(-33)*g(-34)/g_star(-34)*g(-35)/g_star(-35)*g(-36)/g_star(-36)*g(-37)/g_star(-37)*g(-38)/g_star(-38)*g(-39)/g_star(-39)*delall(-39) );


-gdpratio*FB*g/g_star = y_star -( c_star + inv_star + s_star + varpi_star*(1-1/za_star(-1)) + tauwE_star + he_star);
%current account : Note " - FB " here!!
%y = c + inv + s + varpi*(1-1/za(-1)) + tauwE + he; %output identity
c_star = cr_star + cw_star; %total consumption
fa_star = k_star + b_star - gdpratio*FB*g/g_star ; %asset markets clearing (financial assets of ertirees and workers is equalized to future loans and capital stock 
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

gdpratio = 0;
FB = 0;
r= R_SS;
gy = g_SS;
tauwA = tauwA_SS;
tauwE = tauwE_SS;
tpe = tpe_SS;
he = he_SS;
ay = ay_SS;
Pe = Pe_SS;
Tw = Tw_SS;
tauw = tauw_SS;
hw = hw_SS;
Dr = Dr_SS;
Dw = Dw_SS;
cw = cw_SS;
cr = cr_SS;
ep = Ep_SS;
varsig = varsig_SS;
zetar = zetar_SS;
zetay = zetay_SS;
g = g_SS;
gw = gw_SS;
zz = Z_SS;
far = far_SS;
faw = faw_SS;
dr = dr_SS;
dw = dw_SS;
w = w_SS;
mu = mu_SS;
k = k_SS;
u = U_SS;
del  = delta;
delprime = DELPRIMESS;
invG = g_SS;
gM = gm_SS;
N = 1;
rk = rk_SS;
s = s_SS;
v = v_SS;
j = j_SS;
varpi = varpi_SS;
lam =  lambda_SS;
gA = ga_SS;
gE = gE_SS;
iy = iy_SS;
za = za_SS;
PiA = PiA_SS; 
PiRD = 0;
psi = psi_SS;
b = b_SS;
PiF = PiF_SS;
y = y_SS;
c = c_SS;
inv = inv_SS;
fa = fa_SS;
n = n_SS;
gn = n_SS;
gamma = gamma_SS;
gpc = g_SS/n_SS;
stoyw = stoyw_SS;
en = 0;
fert = fert_SS;
OMEGAY = omegay;
shareW = 1/(1+ZETARSS+ZETAYSS);
shareR =  ZETARSS/(1+ZETARSS+ZETAYSS);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%foreign%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%egamma = 0;
%shockn_star = 0;
%shockg = 0;
%shocku = 0;
%deln = 0;
%delg = 0;
end;
steady;


shocks;
var delall; stderr 1; % set standard deviation

%var delg; stderr 0.005; % set standard deviation to be (newgamma-oldgamma)*(1-PERS) %Longevity shock
%var deln; stderr 0.00; % pop shock 
%var delu; stderr 0.000; % no longer used
end;

check;
//options_.nograph=1;
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
