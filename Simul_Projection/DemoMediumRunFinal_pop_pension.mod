% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code produces the result for aging shock keeping population constant with the extension of pension and 
% health expentiture for retirees.

var r, rk,  w, b,  y, varpi, s, inv,c, cw,  cr,  tauw, N, stoyw, PiF,Tw,  hw, Dr, Dw,  ep, varsig, zetar, zetay, gw, g, gE, iy, gpc, zz, far, faw, dr, dw,  mu, k, u, del, delprime, gM,   v, j,  lam, gA, za, PiA, PiRD,  fa, n , gn, gy, gamma, egamma, fert, psi, tauwE, tauwA, ay, tpe, Pe, he, shockg;
varexo delg; 
parameters SHINNOVW, YINNOVSH, ETAR, DELTAHE, NP, FERTSS, RHOYW, LAMY, PSISS, GSS, PERS, RATIODEL, OMEGAR, OMEGAY, RHOU, BBETA, ALPHA, GAMMAI, VARNU, BMEGA, CHI, RHO, PHI, ELASMU, ELASLAM, DELPRIMESS, DELSS, MUSS, LAMSS, USS, VARPISS, ZASS, KSS, NSS, GAMMASS, RHOE, CHIE;


load paramFinal_ext1;
load vecSSFinal_ext1;
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
set_param_value('NP',np)
set_param_value('DELTAHE',deltaHE)
set_param_value('ETAR',etar)
set_param_value('SHINNOVW',shinnovw)

model;

%households
hw = w + (OMEGAR/(r*zz))*(g(+1)/gw)*hw(+1); %present value of gains from human capital (workers)
Tw = tauw + (OMEGAR/(r*zz))*(g(+1)/gw)*Tw(+1); %present value of transfers (workers)
Dr = dr + Dr(+1)*gamma*g(+1)*zetar(-1)/(r*zetar*gw); %dividends to retirees from financial profits
ay = (1/NP)*(w(-1)*(1-OMEGAR)) + (1-1/NP)*ay(-1)*gw(-1)/g; %average labour income -earning reference for pensions
tpe = ETAR*ay+ gamma(-1)*(gE(-1)/g(-1))*tpe(-1); %total pension - newly + pensions of retirees who did so in previous periods
Pe = tpe + Pe(+1)*gamma*g(+1)*zetar(-1)/(r*zetar*gw); %Present value of pension
Dw = dw + (OMEGAR/(r*zz))*(g(+1)/gw)*Dw(+1) + (((1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU))/(r*zz))*(g(+1)/(zetar*gw))*(Dr(+1)+Pe(+1)); %dividends to workers
cw = varsig*(r(-1)*faw(-1)/g + hw + Dw - Tw); %consumption of workers
cr = ep*varsig*(r(-1)*far(-1)/g + Dr + Pe); %consumption of retirees
1- ep*varsig = ((BBETA*r)^(1/(1-RHOU))*gamma/r)*(ep*varsig/(ep(+1)*varsig(+1))); 
1- varsig = ((BBETA*r*zz)^(1/(1-RHOU))/(r*zz))*(varsig/varsig(+1));
zz = OMEGAR + (1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU);
he = DELTAHE*(zetar/(1+zetar+zetay));
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

%innovators/adoptors
gA*za/za(-1) = (stoyw)^(RHOYW)*CHI*(s/psi)^RHO + PHI; %evolution of invented goods
stoyw = YINNOVSH*(1-OMEGAY)*zetay(-1)/(1+zetay(-1)+zetar(-1)) + ((1-LAMY)*OMEGAR/gn)*stoyw(-1); % intensity to transform invented goods into adopted goods
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
b = s +  varpi*(1 -1/za(-1)); %total bank loans
PiF = (rk + 1)*(k(-1)/g) + b(-1)*r(-1)/g - fa(-1)*r(-1)/g - k - b + fa + (1-SHINNOVW)*(PiA + PiRD); %financial profits

%market clearing conditions
k = (1-del)*(k(-1)/g) + inv; %evolution of investment 
y = (1-GAMMAI/(VARNU*mu)) - N*BMEGA*psi; %total output
y = c + inv + s + varpi*(1-1/za(-1)) + tauwE + he; %output identity
c = cr + cw; %total consumption
fa = k + b; %asset markets clearing (financial assets of ertirees and workers is equalized to future loans and capital stock 
far = far(-1)*r(-1)/g + dr + tpe - cr + (1-OMEGAR)*(faw(-1)*r(-1)/g +w+dw-cw - tauw) ; %flow of assets
fa  = far+faw; %financial assets

%exogenous variables
gn = NSS;% + en;
gy = (y/y(-1))*g; 
%fert = FERTSS + en;
gpc = (y/y(-1))*g(-1)/gn(-1); 
gamma = GAMMASS + egamma;

%shocks
%en = PERS*en(-1) + shockn;
egamma = PERS*egamma(-1) + shockg;
%shockn = shockn(-1) + deln; %pop growth shock
shockg = shockg(-1) + delg; %gamma shock
%shocku = shocku(-1) + delu; % this shock is non longer used
end;


initval;
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
r = R_SS;
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
%en = 0;
egamma = 0;
%shockn = 0;
shockg = 0;
%shocku = 0;
%deln = 0;
delg = 0;
fert = fert_SS;
end;
steady;


shocks;
var delg; stderr 0.005; % set standard deviation to be (newgamma-oldgamma)*(1-PERS) %Longevity shock
%var deln; stderr 0.00; % pop shock 
%var delu; stderr 0.000; % no longer used
end;

check;
options_.nograph=1;
options_.solve_algo=1;
stoch_simul(irf  = 100, order=1);
save Case11oo_ oo_
save Case11M_ M_


