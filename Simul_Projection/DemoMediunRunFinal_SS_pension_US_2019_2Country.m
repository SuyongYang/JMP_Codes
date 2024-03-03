% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code generates the steady state for the model with pension and
% health expenditure



function flag = DemoMediunRunFinal_SS_pension_Kor
x0_R = 1.1;
finalR_SS = fsolve(@RunDemoMediumRunFinal_SS,x0_R);
R_SS_star = finalR_SS;
[test, par,vecSS, vectest] = RunDemoMediumRunFinal_SS(finalR_SS);
flag = 'done';


function [test, par, vecSS, testvec] = RunDemoMediumRunFinal_SS(GuessR_SS)
global bbeta_star R_SS_star omegar_star omegay_star rhoU_star Epvarsig_SS_star stoyw_SS_star rhs_obj %zeta_SS Ep_SS PiF_SS rk_SS varnu c_SS varsig_SS fa_SS Epvarsig_SS Z_SS bbeta R_SS omega rhoU Epvarsig_SS phi g_SS gN_SS gak_SS lambda_SS vk_SS zak_SS gac_SS zac_SS vc_SS PsiTilde_SS pk_SS gammaI yk_SS muc_SS muk_SS bc bk gamma gk_SS w_SS rho

%set key parameters values
bbeta_star = 0.96;
g_SS_star = 1 + 0.022; % 과거 40년 평균

%gN_SS = 0.9855;
gN_SS_star = 1 + 0.01; %원래 수치
gw_SS_star = gN_SS_star;

gE_SS_star = 1+0.005;
rhoE_star = 0.9;
n_star = gN_SS_star; %growth rate of population
n_SS_star = n_star;
delta_star = 0.08;
ratiodel_star = 1/3;
alpha_star = 1/3;
U_SS_star = 0.8;
mu_SS_star =  1.1;
elasmu_star = -1;
rho_star =0.9;
varnu_star = 1/0.6;
lambda_SS_star = 0.1;
s_SS_star = 0.015; %25년 평균에 절반
gammaI_star = 0.5;
phi_star = 0.85;
rhoU_star = -3;
%TotalResearchersUS = 1.351903194; %OECD
TotalResearchersUS = 4.232; %UN
TotalPopUS = 317.719000;
%TotalResearchersEU =  3.573;	
%TotalPopEU = 337.5;
%TotalResearchersEU/TotalPopEU
stoyw_SS_star  = TotalResearchersUS/TotalPopUS; %Share of Workers in R&D in the US.
%stoyw_SS = TotalResearchersUS/TotalPopUS; %Share of Workers in R&D in the US.
shinnovw_star  = 0.01; %10% of profits go to workers who are in innovation
sig_star  = 1/(1-rhoU_star ); %elasticity of substitution utility = 0.25 as in Gertler
omegar_star  = 1 -1/(40);%1 -1/(45); %set such that individuals work for 45 years 
omegay_star  = 1 - 1/20;%1 - 1/15; % set such that young take 15 years (school) to become worker
gamma_star  = 1-1/10;%1 - 1/10; %set such that retirees live for 10 years on average
fert_SS_star  = n_SS_star  - omegay_star ;
deltaHE_star  = 0.1;%2000 kor(WB data)
%deltaHE = 0.12;%0;%0.12;
np_star  = 25;
etar_star  = 0.4;%0;%0.4;
%__________________________________________________
%solve for steadystate



R_SS_star  = GuessR_SS; %(1/bbeta)*(g_SS/gN_SS)^(1-rhoU)-0.025;


Epvarsig_SS_star  = 1 - gamma_star *(bbeta_star *R_SS_star )^(1/(1-rhoU_star ))/R_SS_star ;
x0_varsig = Epvarsig_SS_star /1.1; %initial guess of varsig_SS
[vecvarsig,fval,exitflag] = fsolve(@Findvarsig,x0_varsig);
varsig_SS_star  = vecvarsig;
Ep_SS_star  = Epvarsig_SS_star /varsig_SS_star ;
Z_SS_star  = omegar_star  + (1-omegar_star )*(Ep_SS_star )^((rhoU_star  - 1)/rhoU_star );
zetay_SS_star  = (n_star -omegar_star )/(1-omegay_star );
zetar_SS_star  = (1-omegar_star )/(gN_SS_star -gamma_star );

replac_SS_star  = 40*0.45*fert_SS_star *zetay_SS_star ;
% ntilde*Ny = total number of children borned each year
%(Nw*0.45)*(15/40) = number of woman at steady state who are in childbearing
%age. They have 15 periods to bear children. thus
%ntilde*Ny = (Nw*0.45)*(15/40)*replac_SS/15

aveage = 40;
lamy_star  = 1/(aveage-20+1);%1/3; %1/3; 1; % 20% of the young that become workers in the past 15 years contribute to innovation effort
yinnovsh_star  = (1-(1-lamy_star )*omegar_star /gN_SS_star )*stoyw_SS_star /((1-omegay_star )*zetay_SS_star /(1+zetar_SS_star +zetay_SS_star ));
newyoung = yinnovsh_star *(1-omegay_star )*zetay_SS_star /(1+zetay_SS_star +zetar_SS_star );

load RelatAgeDist_Jones_1Y.txt
RelatAgeDist_Jones_1Y = RelatAgeDist_Jones_1Y/RelatAgeDist_Jones_1Y(1,1);
Jon = RelatAgeDist_Jones_1Y';
Jon1 = Jon;
%given lamy and stoyw_SS find rho_yw
rhs_obj = 0;
popinnov = 0;
for iii = 1:1:43
    shareinnov(iii) =  newyoung*((1-lamy_star)*omegar_star/gN_SS_star)^(iii-1);
    popinnov = popinnov + shareinnov(iii);
end
rhs_obj = rhs_obj +  sum(shareinnov.^(Jon(1:end)));
rhs_obj = rhs_obj + (stoyw_SS_star-popinnov);
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
rhoyw_star  = log(rhs_obj)/log(stoyw_SS_star )-1;

g_SS_star  = (g_SS_star -1)*(1+zetar_SS_star +zetay_SS_star )+1; %adjust growth rate to working age person since 0.024 is growth adjusted per population thus when adjusted for entire economy gives result

iy_SS_star  = ((gw_SS_star ^(-1))*(g_SS_star *2*bbeta_star *(1-omegay_star )*zetay_SS_star )*((gE_SS_star *gw_SS_star  - omegar_star )/((1-omegay_star )*zetay_SS_star ) - rhoE_star ));
chiE_star  = gw_SS_star /g_SS_star *(iy_SS_star *(bbeta_star *(1-omegay_star )*zetay_SS_star ))^(-1);

rk_SS_star  = R_SS_star  - 1;%rk_SS = g_SS- gp_SS;
w_SS_star  = (1-alpha_star )*(1-gammaI_star )/(mu_SS_star );
k_SS_star  = g_SS_star *alpha_star *(1-gammaI_star )/(mu_SS_star *(rk_SS_star +delta_star )); % Put a plus tauK after rk_SS to include capital tax
delprime_star  = alpha_star *(1-gammaI_star )/(mu_SS_star *U_SS_star *(k_SS_star /g_SS_star ));
gm_SS_star  = ((gE_SS_star *gw_SS_star )^(((1-alpha_star )*(gammaI_star -1)))*g_SS_star *(g_SS_star )^((alpha_star )*(gammaI_star -1)))^(1/gammaI_star );
ga_SS_star  = (g_SS_star/gm_SS_star)^(1/(1-varnu_star));
za_SS_star = (ga_SS_star - phi_star)/(lambda_SS_star*phi_star)+1;
v_SS_star = ((1-1/varnu_star)*gammaI_star/mu_SS_star)/(1-phi_star*g_SS_star/(ga_SS_star*R_SS_star));
j_SS_star = (s_SS_star*R_SS_star/(phi_star*g_SS_star))/(1-phi_star/ga_SS_star);
varpi_SS_star = g_SS_star*phi_star/(ga_SS_star*R_SS_star)*(j_SS_star*(1-lambda_SS_star) + lambda_SS_star*(v_SS_star*za_SS_star))-j_SS_star;
el_SS_star = varpi_SS_star*ga_SS_star*R_SS_star/(phi_star*g_SS_star*lambda_SS_star*(v_SS_star*za_SS_star-j_SS_star));
PiA_SS_star = ((1-1/varnu_star)*gammaI_star/mu_SS_star)- R_SS_star*(s_SS_star + varpi_SS_star*(1 - 1/za_SS_star))/g_SS_star;

inv_SS_star = -k_SS_star*(1-delta_star)/g_SS_star + k_SS_star;
tauwE_SS_star = iy_SS_star*w_SS_star;
y_SS_star = (1-gammaI_star/(mu_SS_star*varnu_star)) - ((mu_SS_star-1)/mu_SS_star);
he_SS_star = deltaHE_star*(zetar_SS_star/(1+zetar_SS_star+zetay_SS_star));
c_SS_star = y_SS_star - (inv_SS_star + s_SS_star + varpi_SS_star - varpi_SS_star/za_SS_star) - tauwE_SS_star - he_SS_star;
b_SS_star = s_SS_star + varpi_SS_star - varpi_SS_star/za_SS_star;
fa_SS_star = k_SS_star+b_SS_star;

%PiF_SS = (rk_SS +1)*k_SS/g_SS + (R_SS/g_SS)*(b_SS - fa_SS) -k_SS - b_SS + fa_SS ; 
PiF_SS_star = (rk_SS_star +1)*k_SS_star/g_SS_star + (R_SS_star/g_SS_star)*(b_SS_star - fa_SS_star) -k_SS_star - b_SS_star + fa_SS_star + (1-shinnovw_star)*PiA_SS_star; 

ay_SS_star = (1/np_star)*w_SS_star*(1-omegar_star)/(1-(1-1/np_star)*gw_SS_star/g_SS_star);
tpe_SS_star = etar_star*ay_SS_star/(1-gamma_star*gE_SS_star/g_SS_star);
tauwA_SS_star = tpe_SS_star + he_SS_star;
tauw_SS_star = tauwE_SS_star + tauwA_SS_star;
hw_SS_star = w_SS_star/(1 - omegar_star*g_SS_star/(R_SS_star*gw_SS_star*Z_SS_star));
far_SS_star = (fa_SS_star*(1-omegar_star)/omegar_star +(1-Epvarsig_SS_star*(1-gamma_star*g_SS_star/(R_SS_star*gN_SS_star))^(-1))*tpe_SS_star)/(1 + (Epvarsig_SS_star-1)*R_SS_star/g_SS_star + (Epvarsig_SS_star*(1-gamma_star*g_SS_star/(R_SS_star*gN_SS_star))^(-1)-1)*(PiF_SS_star/fa_SS_star)+ (1-omegar_star)/omegar_star);
dr_SS_star = PiF_SS_star*far_SS_star/fa_SS_star;
Dr_SS_star = dr_SS_star*(1-gamma_star*g_SS_star/(R_SS_star*gw_SS_star))^(-1);
Pe_SS_star = tpe_SS_star*(1-gamma_star*g_SS_star/(R_SS_star*gw_SS_star))^(-1);
faw_SS_star = fa_SS_star - far_SS_star;
%dw_SS = PiF_SS*faw_SS/fa_SS ;
dw_SS_star = PiF_SS_star*faw_SS_star/fa_SS_star + shinnovw_star*PiA_SS_star;
Tw_SS_star = tauw_SS_star/(1 - omegar_star*g_SS_star/(R_SS_star*gN_SS_star*Z_SS_star));
Dw_SS_star = (dw_SS_star + (1/zetar_SS_star)*((Dr_SS_star+Pe_SS_star)/(R_SS_star*Z_SS_star))*(g_SS_star/gw_SS_star)*(1-omegar_star)*(Ep_SS_star)^((rhoU_star - 1)/rhoU_star))*((1-omegar_star*g_SS_star/(R_SS_star*Z_SS_star*gw_SS_star))^(-1));


cr_SS_star = Epvarsig_SS_star*(far_SS_star*R_SS_star/g_SS_star+Dr_SS_star + Pe_SS_star);
cw_SS_star = varsig_SS_star*(faw_SS_star*R_SS_star/g_SS_star+hw_SS_star+Dw_SS_star - Tw_SS_star);
test = cw_SS_star + cr_SS_star  - c_SS_star;
gamma_SS_star = gamma_star;


psi_SS_star = v_SS_star;
chi_star = (ga_SS_star - phi_star)*((psi_SS_star/s_SS_star)^rho_star)/((stoyw_SS_star)^(rhoyw_star));
Bmega_star = ((mu_SS_star-1)/mu_SS_star)*(1/psi_SS_star);


test3 = (omegar_star)*(faw_SS_star*R_SS_star/g_SS_star+w_SS_star-cw_SS_star+ dw_SS_star - tauw_SS_star)-faw_SS_star;
test4 = (w_SS_star-c_SS_star+PiF_SS_star - tauw_SS_star+tpe_SS_star)/(1-R_SS_star/g_SS_star)-fa_SS_star;
test5 =  (bbeta_star*R_SS_star)^(1/(1-rhoU_star))*Epvarsig_SS_star*(far_SS_star*R_SS_star/g_SS_star+Dr_SS_star) - Epvarsig_SS_star*((R_SS_star/gamma_star)*((1-Epvarsig_SS_star)*far_SS_star*R_SS_star/g_SS_star + dr_SS_star - Epvarsig_SS_star*Dr_SS_star )+ Dr_SS_star*g_SS_star/gN_SS_star);
test6 = dw_SS_star + (omegar_star/(R_SS_star*Z_SS_star))*(g_SS_star/n_SS_star)*Dw_SS_star + ((1-omegar_star)*Ep_SS_star^((rhoU_star-1)/rhoU_star)/(R_SS_star*Z_SS_star))*(g_SS_star/(zetar_SS_star*n_SS_star))*(Dr_SS_star+Pe_SS_star) - Dw_SS_star;
test7 = -far_SS_star + far_SS_star*R_SS_star/g_SS_star + dr_SS_star + tpe_SS_star - cr_SS_star + (1-omegar_star)*(faw_SS_star*R_SS_star/g_SS_star +w_SS_star+dw_SS_star-cw_SS_star - tauw_SS_star); 


par = [bbeta_star ratiodel_star delta_star alpha_star rho_star varnu_star gammaI_star phi_star Bmega_star chi_star ratiodel_star elasmu_star rhoU_star gamma_star omegar_star omegay_star delprime_star el_SS_star chiE_star rhoE_star];
vecSS = [ psi_SS_star w_SS_star k_SS_star g_SS_star  gw_SS_star gE_SS_star iy_SS_star tauw_SS_star Tw_SS_star ga_SS_star c_SS_star y_SS_star mu_SS_star rk_SS_star  U_SS_star  R_SS_star lambda_SS_star el_SS_star  s_SS_star za_SS_star  v_SS_star  j_SS_star  varpi_SS_star b_SS_star fa_SS_star PiF_SS_star Z_SS_star Epvarsig_SS_star Ep_SS_star varsig_SS_star zetar_SS_star zetay_SS_star faw_SS_star far_SS_star cr_SS_star cw_SS_star hw_SS_star gm_SS_star gamma_SS_star n_SS_star Dr_SS_star Dw_SS_star dr_SS_star dw_SS_star PiA_SS_star inv_SS_star fert_SS_star];
testvec = [ test  test3 test4 test5 test6 test7];

%here the information on the new demongraphic conditions after transition
%are set

newn = 1 + 0.005;%0.5% population growth instead of 1%
newgamma = 1 - 1/20; % such that retirees live for 10 more years
tau = 20; %number of years for demographic transition 
TT = 200; % numer of periods from intial point when economy is assumed to have reached steady state, used to compute the perfect foresight solution
stepn =  (newn-n_SS_star)/tau;
stepgam = (newgamma-gamma_SS_star)/tau;
%save endpoint newn newgamma tau TT  stepn stepgam


save paramFinal_ext1_US gN_SS_star rhoyw_star bbeta_star ratiodel_star delta_star alpha_star rho_star varnu_star gammaI_star phi_star Bmega_star chi_star ratiodel_star elasmu_star phi_star rhoU_star gamma_star omegar_star omegay_star delprime_star el_SS_star chiE_star rhoE_star lamy_star yinnovsh_star etar_star deltaHE_star np_star shinnovw_star
save vecSSFinal_ext1_US w_SS_star k_SS_star g_SS_star  gw_SS_star gE_SS_star iy_SS_star tauw_SS_star Tw_SS_star ga_SS_star c_SS_star y_SS_star mu_SS_star rk_SS_star  U_SS_star  R_SS_star lambda_SS_star el_SS_star  s_SS_star za_SS_star  v_SS_star  j_SS_star  varpi_SS_star b_SS_star fa_SS_star PiF_SS_star Z_SS_star Epvarsig_SS_star Ep_SS_star varsig_SS_star zetar_SS_star zetay_SS_star faw_SS_star far_SS_star cr_SS_star cw_SS_star hw_SS_star gm_SS_star gamma_SS_star n_SS_star Dr_SS_star Dw_SS_star dr_SS_star dw_SS_star PiA_SS_star inv_SS_star psi_SS_star stoyw_SS_star fert_SS_star replac_SS_star tauwA_SS_star tauwE_SS_star ay_SS_star tpe_SS_star Pe_SS_star he_SS_star



function y = Findvarsig(x)
global  bbeta_star R_SS_star omegar_star rhoU_star Epvarsig_SS_star
y = 1 - bbeta_star^(1/(1-rhoU_star))*(R_SS_star*(omegar_star + (1-omegar_star)*(Epvarsig_SS_star/x)^((rhoU_star - 1)/rhoU_star)))^(rhoU_star/(1-rhoU_star)) -x;

function y = Findrhoyw(x)
global  stoyw_SS_star rhs_obj
y = stoyw_SS_star^(x+1) - rhs_obj;
