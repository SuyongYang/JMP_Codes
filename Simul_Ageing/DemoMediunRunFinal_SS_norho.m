% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code generates the steady state for the economy in which demographic
% profile does not impact innovation
function flag = DemoMediunRunFinal_SS_norho
x0_R = 1.1;
finalR_SS = fsolve(@RunDemoMediumRunFinal_SS_norho,x0_R);
R_SS = finalR_SS;
[test, ~,vecSS, vectest] = RunDemoMediumRunFinal_SS_norho(finalR_SS);
flag = 'done';


function [test, par, vecSS, testvec] = RunDemoMediumRunFinal_SS_norho(GuessR_SS)
global bbeta R_SS omegar omegay rhoU Epvarsig_SS stoyw_SS rhs_obj %zeta_SS Ep_SS PiF_SS rk_SS varnu c_SS varsig_SS fa_SS Epvarsig_SS Z_SS bbeta R_SS omega rhoU Epvarsig_SS phi g_SS gN_SS gak_SS lambda_SS vk_SS zak_SS gac_SS zac_SS vc_SS PsiTilde_SS pk_SS gammaI yk_SS muc_SS muk_SS bc bk gamma gk_SS w_SS rho

%set key parameters values
bbeta = 0.96;
g_SS = 1+0.024;%0.024;
gN_SS = 1 + 0.01;
gw_SS = gN_SS;
gE_SS = 1+0.005;
rhoE = 0.9;
n = gN_SS; %growth rate of population
n_SS = n;
delta = 0.08;
ratiodel = 1/3;
alpha = 1/3;
U_SS = 0.8;
mu_SS =  1.1;
elasmu = -1;
rho =0.9;
varnu = 1/0.6;
lambda_SS = 0.1;
s_SS = 0.012;
gammaI = 0.5;
phi = 0.85;
rhoU = -3;
%TotalResearchersUS = 1.351903194; %OECD
TotalResearchersUS = 4.232; %UN
TotalPopUS = 317.719000;
%TotalResearchersEU =  3.573;	
%TotalPopEU = 337.5;
%TotalResearchersEU/TotalPopEU
stoyw_SS = TotalResearchersUS/TotalPopUS; %Share of Workers in R&D in the US.
shinnovw = 0.01; %10% of profits go to workers who are in innovation
sig = 1/(1-rhoU); %elasticity of substitution utility = 0.25 as in Gertler
omegar = 1 -1/(40);%1 -1/(45); %set such that individuals work for 45 years 
omegay = 1 - 1/20;%1 - 1/15; % set such that young take 15 years (school) to become worker
gamma = 1 - 1/10;%1 - 1/10; %set such that retirees live for 10 years on average
fert_SS = n_SS - omegay;
%__________________________________________________
%solve for steadystate


R_SS = GuessR_SS; %(1/bbeta)*(g_SS/gN_SS)^(1-rhoU)-0.025;


Epvarsig_SS = 1 - gamma*(bbeta*R_SS)^(1/(1-rhoU))/R_SS;
x0_varsig = Epvarsig_SS/1.1; %initial guess of varsig_SS
[vecvarsig,fval,exitflag] = fsolve(@Findvarsig,x0_varsig);
varsig_SS = vecvarsig;
Ep_SS = Epvarsig_SS/varsig_SS;
Z_SS = omegar + (1-omegar)*(Ep_SS)^((rhoU - 1)/rhoU);
zetay_SS = (n-omegar)/(1-omegay);
zetar_SS = (1-omegar)/(gN_SS-gamma);

replac_SS = 40*0.45*fert_SS*zetay_SS;
% ntilde*Ny = total number of children borned each year
%(Nw*0.45)*(15/40) = number of woman at steady state who are in childbearing
%age. They have 15 periods to bear children. thus
%ntilde*Ny = (Nw*0.45)*(15/40)*replac_SS/15

aveage = 40;
lamy = 1/((aveage-20+1)*omegar);
yinnovsh = (1-(1-lamy)*omegar/gN_SS)*stoyw_SS/((1-omegay)*zetay_SS/(1+zetar_SS+zetay_SS));
newyoung = yinnovsh*(1-omegay)*zetay_SS/(1+zetay_SS+zetar_SS);

% load RelatAgeDist_Jones_1Y.txt
% RelatAgeDist_Jones_1Y = RelatAgeDist_Jones_1Y/RelatAgeDist_Jones_1Y(1,1);
% Jon = RelatAgeDist_Jones_1Y';
% Jon1 = Jon;
% %given lamy and stoyw_SS find rho_yw
% rhs_obj = 0;
% popinnov = 0;
% for iii = 1:1:43
%     shareinnov(iii) =  newyoung*((1-lamy)*omegar/gN_SS)^(iii-1);
%     popinnov = popinnov + shareinnov(iii);
% end
% rhs_obj = rhs_obj +  sum(shareinnov.^(Jon(1:end)));
% rhs_obj = rhs_obj + (stoyw_SS-popinnov);
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
%rhoyw = log(rhs_obj)/log(stoyw_SS)-1;
rhoyw = 0;

g_SS = (g_SS-1)*(1+zetar_SS+zetay_SS)+1; %adjust growth rate to working age person since 0.024 is growth adjusted per population thus when adjusted for entire economy gives result

iy_SS = ((gw_SS^(-1))*(g_SS*2*bbeta*(1-omegay)*zetay_SS)*((gE_SS*gw_SS - omegar)/((1-omegay)*zetay_SS) - rhoE));
chiE = gw_SS/g_SS*(iy_SS*(bbeta*(1-omegay)*zetay_SS))^(-1);

rk_SS = R_SS - 1;%rk_SS = g_SS- gp_SS;
w_SS = (1-alpha)*(1-gammaI)/(mu_SS);
k_SS = g_SS*alpha*(1-gammaI)/(mu_SS*(rk_SS+delta));
delprime = alpha*(1-gammaI)/(mu_SS*U_SS*(k_SS/g_SS));
gm_SS = ((gE_SS*gw_SS)^(((1-alpha)*(gammaI-1)))*g_SS*(g_SS)^((alpha)*(gammaI-1)))^(1/gammaI);
ga_SS = (g_SS/gm_SS)^(1/(1-varnu));
za_SS = (ga_SS - phi)/(lambda_SS*phi)+1;
v_SS = ((1-1/varnu)*gammaI/mu_SS)/(1-phi*g_SS/(ga_SS*R_SS));
j_SS = (s_SS*R_SS/(phi*g_SS))/(1-phi/ga_SS);
varpi_SS = g_SS*phi/(ga_SS*R_SS)*(j_SS*(1-lambda_SS) + lambda_SS*(v_SS*za_SS))-j_SS;
el_SS = varpi_SS*ga_SS*R_SS/(phi*g_SS*lambda_SS*(v_SS*za_SS-j_SS));
PiA_SS = ((1-1/varnu)*gammaI/mu_SS)- R_SS*(s_SS + varpi_SS*(1 - 1/za_SS))/g_SS;

inv_SS = -k_SS*(1-delta)/g_SS + k_SS;
tauw_SS = iy_SS*w_SS;
y_SS = (1-gammaI/(mu_SS*varnu)) - ((mu_SS-1)/mu_SS);
c_SS = y_SS - (inv_SS + s_SS + varpi_SS - varpi_SS/za_SS) - tauw_SS;
b_SS = s_SS + varpi_SS - varpi_SS/za_SS;
fa_SS = k_SS+b_SS;

PiF_SS = (rk_SS +1)*k_SS/g_SS + (R_SS/g_SS)*(b_SS - fa_SS) -k_SS - b_SS + fa_SS + (1-shinnovw)*PiA_SS; 

hw_SS = w_SS/(1 - omegar*g_SS/(R_SS*gw_SS*Z_SS));
far_SS = (fa_SS*(1-omegar)/omegar)/(1 + (Epvarsig_SS-1)*R_SS/g_SS + (Epvarsig_SS*(1-gamma*g_SS/(R_SS*gN_SS))^(-1)-1)*PiF_SS/fa_SS+ (1-omegar)/omegar);
dr_SS = PiF_SS*far_SS/fa_SS;
Dr_SS = dr_SS*(1-gamma*g_SS/(R_SS*gw_SS))^(-1);
faw_SS = fa_SS - far_SS;
dw_SS = PiF_SS*faw_SS/fa_SS + shinnovw*PiA_SS;;
Tw_SS = tauw_SS/(1 - omegar*g_SS/(R_SS*gN_SS*Z_SS));
Dw_SS = (dw_SS + (1/zetar_SS)*(Dr_SS/(R_SS*Z_SS))*(g_SS/gw_SS)*(1-omegar)*(Ep_SS)^((rhoU - 1)/rhoU))*((1-omegar*g_SS/(R_SS*Z_SS*gw_SS))^(-1));
                                                                                                        
cr_SS = Epvarsig_SS*(far_SS*R_SS/g_SS+Dr_SS);
cw_SS = varsig_SS*(faw_SS*R_SS/g_SS+hw_SS+Dw_SS - Tw_SS);
test = cw_SS + cr_SS  - c_SS;
gamma_SS = gamma;

psi_SS = v_SS;
chi = (ga_SS - phi)*((psi_SS/s_SS)^rho)/((stoyw_SS)^(rhoyw));
Bmega = ((mu_SS-1)/mu_SS)*(1/psi_SS);

test3 = (omegar)*(faw_SS*R_SS/g_SS+w_SS-cw_SS+ dw_SS - tauw_SS)-faw_SS;
test4 = (w_SS-c_SS+PiF_SS - tauw_SS)/(1-R_SS/g_SS)-fa_SS;
test5 =  (bbeta*R_SS)^(1/(1-rhoU))*Epvarsig_SS*(far_SS*R_SS/g_SS+Dr_SS) - Epvarsig_SS*((R_SS/gamma)*((1-Epvarsig_SS)*far_SS*R_SS/g_SS + dr_SS - Epvarsig_SS*Dr_SS )+ Dr_SS*g_SS/gN_SS);
test6 =dw_SS + (omegar/(R_SS*Z_SS))*(g_SS/n_SS)*Dw_SS + ((1-omegar)*Ep_SS^((rhoU-1)/rhoU)/(R_SS*Z_SS))*(g_SS/(zetar_SS*n_SS))*Dr_SS - Dw_SS;

par = [bbeta ratiodel delta alpha rho varnu gammaI phi Bmega chi ratiodel elasmu phi rhoU gamma omegar omegay delprime el_SS chiE rhoE];
vecSS = [ psi_SS w_SS k_SS g_SS  gw_SS gE_SS iy_SS tauw_SS Tw_SS ga_SS c_SS y_SS mu_SS rk_SS  U_SS  R_SS lambda_SS el_SS  s_SS za_SS  v_SS  j_SS  varpi_SS b_SS fa_SS PiF_SS Z_SS Epvarsig_SS Ep_SS varsig_SS zetar_SS zetay_SS faw_SS far_SS cr_SS cw_SS hw_SS gm_SS gamma_SS n_SS Dr_SS Dw_SS dr_SS dw_SS PiA_SS inv_SS fert_SS];
testvec = [ test  test3 test4 test5 test6];

%here the information on the new demongraphic conditions after transition
%are set

newn = 1 + 0.005;%0.5% population growth instead of 1%
newgamma = 1 - 1/20; % such that retirees live for 10 more years
tau = 20; %number of years for demographic transition 
TT = 200; % numer of periods from intial point when economy is assumed to have reached steady state, used to compute the perfect foresight solution
stepn =  (newn-n_SS)/tau;
stepgam = (newgamma-gamma_SS)/tau;
save endpoint newn newgamma tau TT  stepn stepgam

save paramFinal_norho gN_SS rhoyw bbeta ratiodel delta alpha rho varnu gammaI phi Bmega chi ratiodel elasmu phi rhoU gamma omegar omegay delprime el_SS chiE rhoE lamy yinnovsh shinnovw
save vecSSFinal_norho w_SS k_SS g_SS  gw_SS gE_SS iy_SS tauw_SS Tw_SS ga_SS c_SS y_SS mu_SS rk_SS  U_SS  R_SS lambda_SS el_SS  s_SS za_SS  v_SS  j_SS  varpi_SS b_SS fa_SS PiF_SS Z_SS Epvarsig_SS Ep_SS varsig_SS zetar_SS zetay_SS faw_SS far_SS cr_SS cw_SS hw_SS gm_SS gamma_SS n_SS Dr_SS Dw_SS dr_SS dw_SS PiA_SS inv_SS psi_SS stoyw_SS fert_SS replac_SS



function y = Findvarsig(x)
global  bbeta R_SS omegar rhoU Epvarsig_SS
y = 1 - bbeta^(1/(1-rhoU))*(R_SS*(omegar + (1-omegar)*(Epvarsig_SS/x)^((rhoU - 1)/rhoU)))^(rhoU/(1-rhoU)) -x;

function y = Findrhoyw(x)
global  stoyw_SS rhs_obj
y = stoyw_SS^(x+1) - rhs_obj;

