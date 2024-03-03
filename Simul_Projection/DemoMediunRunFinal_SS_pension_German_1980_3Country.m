% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code generates the steady state for the model with pension and
% health expenditure



function flag = DemoMediunRunFinal_SS_pension_Kor
x0_R = 1.1;
finalR_SS = fsolve(@RunDemoMediumRunFinal_SS,x0_R);
R_SS_star01 = finalR_SS;
[test, par,vecSS, vectest] = RunDemoMediumRunFinal_SS(finalR_SS);
flag = 'done';


function [test, par, vecSS, testvec] = RunDemoMediumRunFinal_SS(GuessR_SS)
global bbeta_star01 R_SS_star01 omegar_star01 omegay_star01 rhoU_star01 Epvarsig_SS_star01 stoyw_SS_star01 rhs_obj %zeta_SS Ep_SS PiF_SS rk_SS varnu c_SS varsig_SS fa_SS Epvarsig_SS Z_SS bbeta R_SS omega rhoU Epvarsig_SS phi g_SS gN_SS gak_SS lambda_SS vk_SS zak_SS gac_SS zac_SS vc_SS PsiTilde_SS pk_SS gammaI yk_SS muc_SS muk_SS bc bk gamma gk_SS w_SS rho

%set key parameters values
bbeta_star01 = 0.96;
g_SS_star01 = 1 + 0.064; % 과거10년 평균

%gN_SS = 0.9855;
gN_SS_star01 = 1 + 0.01; %원래 수치
gw_SS_star01 = gN_SS_star01;

gE_SS_star01 = 1+0.005;
rhoE_star01 = 0.9;
n_star01 = gN_SS_star01; %growth rate of population
n_SS_star01 = n_star01;
delta_star01 = 0.08;
ratiodel_star01 = 1/3;
alpha_star01 = 1/3;
U_SS_star01 = 0.8;
mu_SS_star01 =  1.1;
elasmu_star01 = -1;
rho_star01 =0.9;
varnu_star01 = 1/0.6;
lambda_SS_star01 = 0.1;
s_SS_star01 = 0.008; %25년 평균에 절반
gammaI_star01 = 0.5;
phi_star01 = 0.85;
rhoU_star01 = -3;
%TotalResearchersUS = 1.351903194; %OECD
%TotalResearchersUS = 4.232; %UN
%TotalPopUS = 317.719000;
%TotalResearchersEU =  3.573;	
%TotalPopEU = 337.5;
%TotalResearchersEU/TotalPopEU
stoyw_SS_star01  = 1800/1000000; %Share of Workers in R&D in the US.
%stoyw_SS = TotalResearchersUS/TotalPopUS; %Share of Workers in R&D in the US.
shinnovw_star01  = 0.01; %10% of profits go to workers who are in innovation
sig_star01  = 1/(1-rhoU_star01 ); %elasticity of substitution utility = 0.25 as in Gertler
omegar_star01  = 1 -1/(40);%1 -1/(45); %set such that individuals work for 45 years 
omegay_star01  = 1 - 1/20;%1 - 1/15; % set such that young take 15 years (school) to become worker
gamma_star01  = 1-1/10;%1 - 1/10; %set such that retirees live for 10 years on average
fert_SS_star01  = n_SS_star01  - omegay_star01 ;
deltaHE_star01  = 0.1;%2000 kor(WB data)
%deltaHE = 0.12;%0;%0.12;
np_star01  = 25;
etar_star01  = 0.4;%0;%0.4;
%__________________________________________________
%solve for steadystate



R_SS_star01  = GuessR_SS; %(1/bbeta)*(g_SS/gN_SS)^(1-rhoU)-0.025;


Epvarsig_SS_star01  = 1 - gamma_star01 *(bbeta_star01 *R_SS_star01 )^(1/(1-rhoU_star01 ))/R_SS_star01 ;
x0_varsig = Epvarsig_SS_star01 /1.1; %initial guess of varsig_SS
[vecvarsig,fval,exitflag] = fsolve(@Findvarsig,x0_varsig);
varsig_SS_star01  = vecvarsig;
Ep_SS_star01  = Epvarsig_SS_star01 /varsig_SS_star01 ;
Z_SS_star01  = omegar_star01  + (1-omegar_star01 )*(Ep_SS_star01 )^((rhoU_star01  - 1)/rhoU_star01 );
zetay_SS_star01  = (n_star01 -omegar_star01 )/(1-omegay_star01 );
zetar_SS_star01  = (1-omegar_star01 )/(gN_SS_star01 -gamma_star01 );

replac_SS_star01  = 40*0.45*fert_SS_star01 *zetay_SS_star01 ;
% ntilde*Ny = total number of children borned each year
%(Nw*0.45)*(15/40) = number of woman at steady state who are in childbearing
%age. They have 15 periods to bear children. thus
%ntilde*Ny = (Nw*0.45)*(15/40)*replac_SS/15

aveage = 40;
lamy_star01  = 1/(aveage-20+1);%1/3; %1/3; 1; % 20% of the young that become workers in the past 15 years contribute to innovation effort
yinnovsh_star01  = (1-(1-lamy_star01 )*omegar_star01 /gN_SS_star01 )*stoyw_SS_star01 /((1-omegay_star01 )*zetay_SS_star01 /(1+zetar_SS_star01 +zetay_SS_star01 ));
newyoung = yinnovsh_star01 *(1-omegay_star01 )*zetay_SS_star01 /(1+zetay_SS_star01 +zetar_SS_star01 );

load RelatAgeDist_Jones_1Y.txt
RelatAgeDist_Jones_1Y = RelatAgeDist_Jones_1Y/RelatAgeDist_Jones_1Y(1,1);
Jon = RelatAgeDist_Jones_1Y';
Jon1 = Jon;
%given lamy and stoyw_SS find rho_yw
rhs_obj = 0;
popinnov = 0;
for iii = 1:1:43
    shareinnov(iii) =  newyoung*((1-lamy_star01)*omegar_star01/gN_SS_star01)^(iii-1);
    popinnov = popinnov + shareinnov(iii);
end
rhs_obj = rhs_obj +  sum(shareinnov.^(Jon(1:end)));
rhs_obj = rhs_obj + (stoyw_SS_star01-popinnov);
% figure(41)
% z = 20:1:62;
% hold on
% yyaxis left
% plot(z, shareinnov, '-o', 'LineWidth', 2);
% axis([20 62 0 0.005])
% ylabel(texlabel('Share of Workers in R&D - S_{Gamma, j}'))
% yyaxis right
% z = 20:1:62;
% plot(z, Jon(1:end), '-.', 'LineWidth', 2);
% axis([20 62 1 max(Jon)+1])
% ylabel(texlabel('Relative Productivity - Phi_j'))
% xlabel('Age')
% hold off
rhoyw_star01  = log(rhs_obj)/log(stoyw_SS_star01 )-1;

g_SS_star01  = (g_SS_star01 -1)*(1+zetar_SS_star01 +zetay_SS_star01 )+1; %adjust growth rate to working age person since 0.024 is growth adjusted per population thus when adjusted for entire economy gives result

iy_SS_star01  = ((gw_SS_star01 ^(-1))*(g_SS_star01 *2*bbeta_star01 *(1-omegay_star01 )*zetay_SS_star01 )*((gE_SS_star01 *gw_SS_star01  - omegar_star01 )/((1-omegay_star01 )*zetay_SS_star01 ) - rhoE_star01 ));
chiE_star01  = gw_SS_star01 /g_SS_star01 *(iy_SS_star01 *(bbeta_star01 *(1-omegay_star01 )*zetay_SS_star01 ))^(-1);

rk_SS_star01  = R_SS_star01  - 1;%rk_SS = g_SS- gp_SS;
w_SS_star01  = (1-alpha_star01 )*(1-gammaI_star01 )/(mu_SS_star01 );
k_SS_star01  = g_SS_star01 *alpha_star01 *(1-gammaI_star01 )/(mu_SS_star01 *(rk_SS_star01 +delta_star01 )); % Put a plus tauK after rk_SS to include capital tax
delprime_star01  = alpha_star01 *(1-gammaI_star01 )/(mu_SS_star01 *U_SS_star01 *(k_SS_star01 /g_SS_star01 ));
gm_SS_star01  = ((gE_SS_star01 *gw_SS_star01 )^(((1-alpha_star01 )*(gammaI_star01 -1)))*g_SS_star01 *(g_SS_star01 )^((alpha_star01 )*(gammaI_star01 -1)))^(1/gammaI_star01 );
ga_SS_star01  = (g_SS_star01/gm_SS_star01)^(1/(1-varnu_star01));
za_SS_star01 = (ga_SS_star01 - phi_star01)/(lambda_SS_star01*phi_star01)+1;
v_SS_star01 = ((1-1/varnu_star01)*gammaI_star01/mu_SS_star01)/(1-phi_star01*g_SS_star01/(ga_SS_star01*R_SS_star01));
j_SS_star01 = (s_SS_star01*R_SS_star01/(phi_star01*g_SS_star01))/(1-phi_star01/ga_SS_star01);
varpi_SS_star01 = g_SS_star01*phi_star01/(ga_SS_star01*R_SS_star01)*(j_SS_star01*(1-lambda_SS_star01) + lambda_SS_star01*(v_SS_star01*za_SS_star01))-j_SS_star01;
el_SS_star01 = varpi_SS_star01*ga_SS_star01*R_SS_star01/(phi_star01*g_SS_star01*lambda_SS_star01*(v_SS_star01*za_SS_star01-j_SS_star01));
PiA_SS_star01 = ((1-1/varnu_star01)*gammaI_star01/mu_SS_star01)- R_SS_star01*(s_SS_star01 + varpi_SS_star01*(1 - 1/za_SS_star01))/g_SS_star01;

inv_SS_star01 = -k_SS_star01*(1-delta_star01)/g_SS_star01 + k_SS_star01;
tauwE_SS_star01 = iy_SS_star01*w_SS_star01;
y_SS_star01 = (1-gammaI_star01/(mu_SS_star01*varnu_star01)) - ((mu_SS_star01-1)/mu_SS_star01);
he_SS_star01 = deltaHE_star01*(zetar_SS_star01/(1+zetar_SS_star01+zetay_SS_star01));
c_SS_star01 = y_SS_star01 - (inv_SS_star01 + s_SS_star01 + varpi_SS_star01 - varpi_SS_star01/za_SS_star01) - tauwE_SS_star01 - he_SS_star01;
b_SS_star01 = s_SS_star01 + varpi_SS_star01 - varpi_SS_star01/za_SS_star01;
fa_SS_star01 = k_SS_star01+b_SS_star01;

%PiF_SS = (rk_SS +1)*k_SS/g_SS + (R_SS/g_SS)*(b_SS - fa_SS) -k_SS - b_SS + fa_SS ; 
PiF_SS_star01 = (rk_SS_star01 +1)*k_SS_star01/g_SS_star01 + (R_SS_star01/g_SS_star01)*(b_SS_star01 - fa_SS_star01) -k_SS_star01 - b_SS_star01 + fa_SS_star01 + (1-shinnovw_star01)*PiA_SS_star01; 

ay_SS_star01 = (1/np_star01)*w_SS_star01*(1-omegar_star01)/(1-(1-1/np_star01)*gw_SS_star01/g_SS_star01);
tpe_SS_star01 = etar_star01*ay_SS_star01/(1-gamma_star01*gE_SS_star01/g_SS_star01);
tauwA_SS_star01 = tpe_SS_star01 + he_SS_star01;
tauw_SS_star01 = tauwE_SS_star01 + tauwA_SS_star01;
hw_SS_star01 = w_SS_star01/(1 - omegar_star01*g_SS_star01/(R_SS_star01*gw_SS_star01*Z_SS_star01));
far_SS_star01 = (fa_SS_star01*(1-omegar_star01)/omegar_star01 +(1-Epvarsig_SS_star01*(1-gamma_star01*g_SS_star01/(R_SS_star01*gN_SS_star01))^(-1))*tpe_SS_star01)/(1 + (Epvarsig_SS_star01-1)*R_SS_star01/g_SS_star01 + (Epvarsig_SS_star01*(1-gamma_star01*g_SS_star01/(R_SS_star01*gN_SS_star01))^(-1)-1)*(PiF_SS_star01/fa_SS_star01)+ (1-omegar_star01)/omegar_star01);
dr_SS_star01 = PiF_SS_star01*far_SS_star01/fa_SS_star01;
Dr_SS_star01 = dr_SS_star01*(1-gamma_star01*g_SS_star01/(R_SS_star01*gw_SS_star01))^(-1);
Pe_SS_star01 = tpe_SS_star01*(1-gamma_star01*g_SS_star01/(R_SS_star01*gw_SS_star01))^(-1);
faw_SS_star01 = fa_SS_star01 - far_SS_star01;
%dw_SS = PiF_SS*faw_SS/fa_SS ;
dw_SS_star01 = PiF_SS_star01*faw_SS_star01/fa_SS_star01 + shinnovw_star01*PiA_SS_star01;
Tw_SS_star01 = tauw_SS_star01/(1 - omegar_star01*g_SS_star01/(R_SS_star01*gN_SS_star01*Z_SS_star01));
Dw_SS_star01 = (dw_SS_star01 + (1/zetar_SS_star01)*((Dr_SS_star01+Pe_SS_star01)/(R_SS_star01*Z_SS_star01))*(g_SS_star01/gw_SS_star01)*(1-omegar_star01)*(Ep_SS_star01)^((rhoU_star01 - 1)/rhoU_star01))*((1-omegar_star01*g_SS_star01/(R_SS_star01*Z_SS_star01*gw_SS_star01))^(-1));


cr_SS_star01 = Epvarsig_SS_star01*(far_SS_star01*R_SS_star01/g_SS_star01+Dr_SS_star01 + Pe_SS_star01);
cw_SS_star01 = varsig_SS_star01*(faw_SS_star01*R_SS_star01/g_SS_star01+hw_SS_star01+Dw_SS_star01 - Tw_SS_star01);
test = cw_SS_star01 + cr_SS_star01  - c_SS_star01;
gamma_SS_star01 = gamma_star01;


psi_SS_star01 = v_SS_star01;
chi_star01 = (ga_SS_star01 - phi_star01)*((psi_SS_star01/s_SS_star01)^rho_star01)/((stoyw_SS_star01)^(rhoyw_star01));
Bmega_star01 = ((mu_SS_star01-1)/mu_SS_star01)*(1/psi_SS_star01);


test3 = (omegar_star01)*(faw_SS_star01*R_SS_star01/g_SS_star01+w_SS_star01-cw_SS_star01+ dw_SS_star01 - tauw_SS_star01)-faw_SS_star01;
test4 = (w_SS_star01-c_SS_star01+PiF_SS_star01 - tauw_SS_star01+tpe_SS_star01)/(1-R_SS_star01/g_SS_star01)-fa_SS_star01;
test5 =  (bbeta_star01*R_SS_star01)^(1/(1-rhoU_star01))*Epvarsig_SS_star01*(far_SS_star01*R_SS_star01/g_SS_star01+Dr_SS_star01) - Epvarsig_SS_star01*((R_SS_star01/gamma_star01)*((1-Epvarsig_SS_star01)*far_SS_star01*R_SS_star01/g_SS_star01 + dr_SS_star01 - Epvarsig_SS_star01*Dr_SS_star01 )+ Dr_SS_star01*g_SS_star01/gN_SS_star01);
test6 = dw_SS_star01 + (omegar_star01/(R_SS_star01*Z_SS_star01))*(g_SS_star01/n_SS_star01)*Dw_SS_star01 + ((1-omegar_star01)*Ep_SS_star01^((rhoU_star01-1)/rhoU_star01)/(R_SS_star01*Z_SS_star01))*(g_SS_star01/(zetar_SS_star01*n_SS_star01))*(Dr_SS_star01+Pe_SS_star01) - Dw_SS_star01;
test7 = -far_SS_star01 + far_SS_star01*R_SS_star01/g_SS_star01 + dr_SS_star01 + tpe_SS_star01 - cr_SS_star01 + (1-omegar_star01)*(faw_SS_star01*R_SS_star01/g_SS_star01 +w_SS_star01+dw_SS_star01-cw_SS_star01 - tauw_SS_star01); 


par = [bbeta_star01 ratiodel_star01 delta_star01 alpha_star01 rho_star01 varnu_star01 gammaI_star01 phi_star01 Bmega_star01 chi_star01 ratiodel_star01 elasmu_star01 rhoU_star01 gamma_star01 omegar_star01 omegay_star01 delprime_star01 el_SS_star01 chiE_star01 rhoE_star01];
vecSS = [ psi_SS_star01 w_SS_star01 k_SS_star01 g_SS_star01  gw_SS_star01 gE_SS_star01 iy_SS_star01 tauw_SS_star01 Tw_SS_star01 ga_SS_star01 c_SS_star01 y_SS_star01 mu_SS_star01 rk_SS_star01  U_SS_star01  R_SS_star01 lambda_SS_star01 el_SS_star01  s_SS_star01 za_SS_star01  v_SS_star01  j_SS_star01  varpi_SS_star01 b_SS_star01 fa_SS_star01 PiF_SS_star01 Z_SS_star01 Epvarsig_SS_star01 Ep_SS_star01 varsig_SS_star01 zetar_SS_star01 zetay_SS_star01 faw_SS_star01 far_SS_star01 cr_SS_star01 cw_SS_star01 hw_SS_star01 gm_SS_star01 gamma_SS_star01 n_SS_star01 Dr_SS_star01 Dw_SS_star01 dr_SS_star01 dw_SS_star01 PiA_SS_star01 inv_SS_star01 fert_SS_star01];
testvec = [ test  test3 test4 test5 test6 test7];

%here the information on the new demongraphic conditions after transition
%are set

newn = 1 + 0.005;%0.5% population growth instead of 1%
newgamma = 1 - 1/20; % such that retirees live for 10 more years
tau = 20; %number of years for demographic transition 
TT = 200; % numer of periods from intial point when economy is assumed to have reached steady state, used to compute the perfect foresight solution
stepn =  (newn-n_SS_star01)/tau;
stepgam = (newgamma-gamma_SS_star01)/tau;
%save endpoint newn newgamma tau TT  stepn stepgam


save paramFinal_ext1_German gN_SS_star01 rhoyw_star01 bbeta_star01 ratiodel_star01 delta_star01 alpha_star01 rho_star01 varnu_star01 gammaI_star01 phi_star01 Bmega_star01 chi_star01 ratiodel_star01 elasmu_star01 phi_star01 rhoU_star01 gamma_star01 omegar_star01 omegay_star01 delprime_star01 el_SS_star01 chiE_star01 rhoE_star01 lamy_star01 yinnovsh_star01 etar_star01 deltaHE_star01 np_star01 shinnovw_star01
save vecSSFinal_ext1_German w_SS_star01 k_SS_star01 g_SS_star01  gw_SS_star01 gE_SS_star01 iy_SS_star01 tauw_SS_star01 Tw_SS_star01 ga_SS_star01 c_SS_star01 y_SS_star01 mu_SS_star01 rk_SS_star01  U_SS_star01  R_SS_star01 lambda_SS_star01 el_SS_star01  s_SS_star01 za_SS_star01  v_SS_star01  j_SS_star01  varpi_SS_star01 b_SS_star01 fa_SS_star01 PiF_SS_star01 Z_SS_star01 Epvarsig_SS_star01 Ep_SS_star01 varsig_SS_star01 zetar_SS_star01 zetay_SS_star01 faw_SS_star01 far_SS_star01 cr_SS_star01 cw_SS_star01 hw_SS_star01 gm_SS_star01 gamma_SS_star01 n_SS_star01 Dr_SS_star01 Dw_SS_star01 dr_SS_star01 dw_SS_star01 PiA_SS_star01 inv_SS_star01 psi_SS_star01 stoyw_SS_star01 fert_SS_star01 replac_SS_star01 tauwA_SS_star01 tauwE_SS_star01 ay_SS_star01 tpe_SS_star01 Pe_SS_star01 he_SS_star01



function y = Findvarsig(x)
global  bbeta_star01 R_SS_star01 omegar_star01 rhoU_star01 Epvarsig_SS_star01
y = 1 - bbeta_star01^(1/(1-rhoU_star01))*(R_SS_star01*(omegar_star01 + (1-omegar_star01)*(Epvarsig_SS_star01/x)^((rhoU_star01 - 1)/rhoU_star01)))^(rhoU_star01/(1-rhoU_star01)) -x;

function y = Findrhoyw(x)
global  stoyw_SS_star01 rhs_obj
y = stoyw_SS_star01^(x+1) - rhs_obj;
