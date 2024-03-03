% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code generates the projections inputing demographic changes based on UN data for benchmark model

var ca, rstar, r, rk,  w, b,  y, varpi, s, inv,c, cw, cwper, cr, crper, tauw, N, stoyw, PiF,Tw,  hw, Dr, Dw,  ep, varsig, zetar, zetay, gw, g, gE, iy, gpc, gy, zz, far, faw, dr, dw,  mu, k, u, del, delprime, gM,   v, j,  lam, gA, za, PiA, PiRD,  fa, n , gn, gamma, er, ey, en, psi, shockr, shocky, shockn, fert, omegay, shareW, shareR;
varexo delall;
parameters R_SS,SHINNOVW, YINNOVSH, OMEGAR, ZETAYSS, ZETARSS, REPLACSS, RHOYW, LAMY, PSISS, GSS, PERS, RATIODEL, OMEGAYSS, RHOU, BBETA, ALPHA, GAMMAI, VARNU, BMEGA, CHI, RHO, PHI, ELASMU, ELASLAM, DELPRIMESS, DELSS, MUSS, LAMSS, USS, VARPISS, ZASS, KSS, NSS, GAMMASS, RHOE, CHIE, gn_1, gn_2, gn_3, gn_4, gn_5, gn_6, gn_7, gn_8, gn_9, gn_10, gn_11, gn_12, gn_13, gn_14, gn_15, gn_16, gn_17, gn_18, gn_19, gn_20, gn_21, gn_22, gn_23, gn_24, gn_25, gn_26, gn_27, gn_28, gn_29, gn_30, dws_1, dws_2, dws_3, dws_4, dws_5, dws_6, dws_7, dws_8, dws_9, dws_10, dws_11, dws_12, dws_13, dws_14, dws_15, dws_16, dws_17, dws_18, dws_19, dws_20, dws_21, dws_22, dws_23, dws_24, dws_25, dws_26, dws_27, dws_28, dws_29, dws_30, drs_1, drs_2, drs_3, drs_4, drs_5, drs_6, drs_7, drs_8, drs_9, drs_10, drs_11, drs_12, drs_13, drs_14, drs_15, drs_16, drs_17, drs_18, drs_19, drs_20, drs_21, drs_22, drs_23, drs_24, drs_25, drs_26, drs_27, drs_28, drs_29, drs_30, Rh_1	Rh_2	Rh_3	Rh_4	Rh_5	Rh_6	Rh_7	Rh_8	Rh_9	Rh_10	Rh_11	Rh_12	Rh_13	Rh_14	Rh_15	Rh_16	Rh_17	Rh_18	Rh_19	Rh_20	Rh_21	Rh_22	Rh_23	Rh_24	Rh_25	Rh_26	Rh_27	Rh_28	Rh_29	Rh_30	Rstar_SS;


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


model;

%households
hw = w + (OMEGAR/(r*zz))*(g(+1)/gw)*hw(+1); %present value of gains from human capital (workers)
Tw = tauw + (OMEGAR/(r*zz))*(g(+1)/gw)*Tw(+1); %present value of transfers (workers)
Dr = dr + Dr(+1)*gamma*g(+1)*zetar(-1)/(r*zetar*gw); %dividends to retirees from financial profits
Dw = dw + (OMEGAR/(r*zz))*(g(+1)/gw)*Dw(+1) + (((1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU))/(r*zz))*(g(+1)/(zetar*gw))*Dr(+1); %dividends to workers
cw = varsig*(r(-1)*faw(-1)/g + hw + Dw - Tw); %consumption of workers
cr = ep*varsig*(r(-1)*far(-1)/g + Dr); %consumption of retirees
1- ep*varsig = ((BBETA*r)^(1/(1-RHOU))*gamma/r)*(ep*varsig/(ep(+1)*varsig(+1))); 
1- varsig = ((BBETA*r*zz)^(1/(1-RHOU))/(r*zz))*(varsig/varsig(+1));
zz = OMEGAR + (1-OMEGAR)*ep(+1)^((RHOU-1)/RHOU);
cwper = cw*(1+zetay+zetar);
%??
crper = cr*(1+zetay+zetar)/zetar;
%??



%population dynamics
gw = OMEGAR + (1-omegay)*zetay(-1);
n = zetay/zetay(-1)*gw; %evolution of young population
gw*zetar = (1-OMEGAR) + gamma*zetar(-1); %evolution of retirees population
% right
gn = (n*zetay(-1) + gw + gw*zetar)*(1+zetar(-1)+zetay(-1))^(-1); %evolution of population
% right
gE = (OMEGAR + (1-omegay)*zetay(-1)*(RHOE + CHIE/2*iy^2))/gw;
tauw = iy*w;
varsig^(-1/RHOU) = varsig(+1)^(-1/RHOU)*BBETA*(1-omegay(+1))*zetay*CHIE*iy*w(+1)*g(+1)/(w*gw*gE*n); %investmert in labour skills
%correction : varsig^(-1/RHOU) = varsig(+1)^(-1/RHOU)*BBETA*(1-omegay(+1))*zetay(-1)*CHIE*iy*w(+1)*g(+1)/(w*gw); %investmert in labour skills
fert = n - omegay;
%replac = 40*0.45*fert*zetay;




%production
(1-ALPHA)*(1-GAMMAI) = mu*w; %eq'm wage
ALPHA*(1-GAMMAI) = mu*(rk + del)*(k(-1)/g); %rert of capital
ALPHA*(1-GAMMAI) = mu*delprime*(k(-1)/g)*(u); %utilization rate
g = (mu/mu(-1))*gM*(gA(-1))^(1-VARNU); 
g = (N^(mu-1))/(N(-1)^(mu(-1)-1))*(g(-1)*u*(k(-1))/(u(-1)*k(-2)))^(ALPHA*(1-GAMMAI))*((gE(-1)*gw(-1))^((1-ALPHA)*(1-GAMMAI)))*(gM)^GAMMAI;
((mu-1)/mu)*(N^(-mu)) = BMEGA*v; %number of firms
mu = MUSS*(1+ ELASMU*(N - 1)); %mark-up
del  = DELSS + delprime*(u - USS); %depreciation rate
delprime = DELPRIMESS + RATIODEL*DELPRIMESS*(u - USS)/USS;

%innovators/adoptors
gA*za/za(-1) = (stoyw)^(RHOYW)*CHI*(s/psi)^RHO + PHI; %evolution of inverted goods
stoyw = YINNOVSH*(1-omegay)*zetay(-1)/(1+zetay(-1)+zetar(-1)) + ((1-LAMY)*OMEGAR/gn)*stoyw(-1); % intersity to transform inverted goods into adopted goods
gA = lam*PHI*(za(-1)-1)+PHI; % evolution of adopted goods
s = (g(+1)/r)*PHI*j(+1)*(1 - PHI*za(-1)/(za*gA)); %investmert in r and d
v = (1-1/VARNU)*GAMMAI/mu + (g(+1)/gA)*(PHI/r)*v(+1);
varpi = ELASLAM*lam*za(-1)*(g(+1)/gA)*(PHI/r)*(v(+1) - j(+1)/za); %investmert in adoption
j= -varpi + za(-1)*(g(+1)/gA)*(PHI/r)*(lam*v(+1) + (1-lam)*j(+1)/za);
lam = LAMSS*(1+ELASLAM*((varpi - VARPISS)/VARPISS  - (za(-1) - ZASS)/ZASS - (psi - PSISS)/PSISS));
PiA = (1-1/VARNU)*GAMMAI/mu -  PHI*j*(1 - PHI*za(-2)/(za(-1)*gA(-1))) - r(-1)*varpi(-1)*(1 -1/za(-2))/g; %profits from adoption
% addtional term last..not exactly..
PiRD = PHI*j*(1 - PHI*za(-2)/(za(-1)*gA(-1))) - r(-1)*s(-1)/g; %profits from invertion
psi = v;


%financial intermediary
r = rk(1)+1; %ex ante rate of return
dr = PiF*far(-1)/fa(-1); %financial dividends to retirees
dw = PiF*faw(-1)/fa(-1) + SHINNOVW*(PiA + PiRD); %financial dividends to workers
%Shinnovw???
b = s +  varpi*(1 -1/za(-1)); %total bank loans
PiF = (rk + 1)*(k(-1)/g) + b(-1)*r(-1)/g + ca(-1)*rstar(-1)/g - fa(-1)*r(-1)/g - k - b - ca + fa + (1-SHINNOVW)*(PiA + PiRD); %financial profits
%Shinnovw??

%market clearing conditions
k = (1-del)*(k(-1)/g) + inv; %evolution of investmert 
y = (1-GAMMAI/(VARNU*mu)) - N*BMEGA*psi; %total output
y = c + inv + s + varpi*(1-1/za(-1)) + ca + tauw; %output identity
c = cr + cw; %total consumption
fa = k + b + ca; %asset markets clearing (financial assets of retirees and workers is equalized to future loans and capital stock 
far = far(-1)*r(-1)/g + dr - cr + (1-OMEGAR)*(faw(-1)*r(-1)/g +w+dw-cw - tauw) ;
fa  = far+faw; %financial assets

#shockR = delall*Rh_1+	delall(-1)*Rh_2+	delall(-2)*Rh_3+	delall(-3)*Rh_4+	delall(-4)*Rh_5+	delall(-5)*Rh_6+	delall(-6)*Rh_7+	delall(-7)*Rh_8+	delall(-8)*Rh_9+	delall(-9)*Rh_10+	delall(-10)*Rh_11+	delall(-11)*Rh_12+	delall(-12)*Rh_13+	delall(-13)*Rh_14+	delall(-14)*Rh_15+	delall(-15)*Rh_16+	delall(-16)*Rh_17+	delall(-17)*Rh_18+	delall(-18)*Rh_19+	delall(-19)*Rh_20+	delall(-20)*Rh_21+	delall(-21)*Rh_22+	delall(-22)*Rh_23+	delall(-23)*Rh_24+	delall(-24)*Rh_25+	delall(-25)*Rh_26+	delall(-26)*Rh_27+	delall(-27)*Rh_28+	delall(-28)*Rh_29+	delall(-29)*Rh_30;
rstar = Rstar_SS + shockR;
%r = R_SS + delall*(rstar-R_SS) + delall(-1)*(rstar-R_SS)+ delall(-2)*(rstar-R_SS)+ delall(-3)*(rstar-R_SS)+ delall(-4)*(rstar-R_SS)+ delall(-5)*(rstar-R_SS)+ delall(-6)*(rstar-R_SS)+ delall(-7)*(rstar-R_SS)+ delall(-8)*(rstar-R_SS)+ delall(-9)*(rstar-R_SS)+ delall(-10)*(rstar-R_SS)+ delall(-11)*(rstar-R_SS)+ delall(-12)*(rstar-R_SS)+ delall(-13)*(rstar-R_SS)+ delall(-14)*(rstar-R_SS)+ delall(-15)*(rstar-R_SS)+ delall(-16)*(rstar-R_SS)+ delall(-17)*(rstar-R_SS)+ delall(-18)*(rstar-R_SS)+ delall(-19)*(rstar-R_SS)+ delall(-20)*(rstar-R_SS)+ delall(-21)*(rstar-R_SS)+ delall(-22)*(rstar-R_SS)+ delall(-23)*(rstar-R_SS)+ delall(-24)*(rstar-R_SS)+ delall(-25)*(rstar-R_SS)+ delall(-26)*(rstar-R_SS)+ delall(-27)*(rstar-R_SS)+ delall(-28)*(rstar-R_SS)+ delall(-29)*(rstar-R_SS)+ delall(-30)*(rstar-R_SS);
%not work
%r(1)-rstar(1) = r -rstar; 
%work!!!!
%r = R_SS +	delall*(Rstar_SS-R_SS+Rh_2)+	delall(-1)*(Rstar_SS-R_SS+Rh_3)+	delall(-2)*(Rstar_SS-R_SS+Rh_4)+	delall(-3)*(Rstar_SS-R_SS+Rh_5)+	delall(-4)*(Rstar_SS-R_SS+Rh_6)+	delall(-5)*(Rstar_SS-R_SS+Rh_7)+	delall(-6)*(Rstar_SS-R_SS+Rh_8)+	delall(-7)*(Rstar_SS-R_SS+Rh_9)+	delall(-8)*(Rstar_SS-R_SS+Rh_10)+	delall(-9)*(Rstar_SS-R_SS+Rh_11)+	delall(-10)*(Rstar_SS-R_SS+Rh_12)+	delall(-11)*(Rstar_SS-R_SS+Rh_13)+	delall(-12)*(Rstar_SS-R_SS+Rh_14)+	delall(-13)*(Rstar_SS-R_SS+Rh_15)+	delall(-14)*(Rstar_SS-R_SS+Rh_16)+	delall(-15)*(Rstar_SS-R_SS+Rh_17)+	delall(-16)*(Rstar_SS-R_SS+Rh_18)+	delall(-17)*(Rstar_SS-R_SS+Rh_19)+	delall(-18)*(Rstar_SS-R_SS+Rh_20)+	delall(-19)*(Rstar_SS-R_SS+Rh_21)+	delall(-20)*(Rstar_SS-R_SS+Rh_22)+	delall(-21)*(Rstar_SS-R_SS+Rh_23)+	delall(-22)*(Rstar_SS-R_SS+Rh_24)+	delall(-23)*(Rstar_SS-R_SS+Rh_25)+	delall(-24)*(Rstar_SS-R_SS+Rh_26)+	delall(-25)*(Rstar_SS-R_SS+Rh_27)+	delall(-26)*(Rstar_SS-R_SS+Rh_28)+	delall(-27)*(Rstar_SS-R_SS+Rh_29)+	delall(-28)*(Rstar_SS-R_SS+Rh_30);
%not work
r = r + delall*(rstar-r) + delall(-1)*(rstar-r)+ delall(-2)*(rstar-r)+ delall(-3)*(rstar-r)+ delall(-4)*(rstar-r)+ delall(-5)*(rstar-r)+ delall(-6)*(rstar-r)+ delall(-7)*(rstar-r)+ delall(-8)*(rstar-r)+ delall(-9)*(rstar-r)+ delall(-10)*(rstar-r)+ delall(-11)*(rstar-r)+ delall(-12)*(rstar-r)+ delall(-13)*(rstar-r)+ delall(-14)*(rstar-r)+ delall(-15)*(rstar-r)+ delall(-16)*(rstar-r)+ delall(-17)*(rstar-r)+ delall(-18)*(rstar-r)+ delall(-19)*(rstar-r)+ delall(-20)*(rstar-r)+ delall(-21)*(rstar-r)+ delall(-22)*(rstar-r)+ delall(-23)*(rstar-r)+ delall(-24)*(rstar-r)+ delall(-25)*(rstar-r)+ delall(-26)*(rstar-r)+ delall(-27)*(rstar-r)+ delall(-28)*(rstar-r)+ delall(-29)*(rstar-r)+ delall(-30)*(rstar-r);
%not work
%r = r  + delall(-1)*(rstar-r)+ delall(-2)*(rstar-r)+ delall(-3)*(rstar-r)+ delall(-4)*(rstar-r)+ delall(-5)*(rstar-r)+ delall(-6)*(rstar-r)+ delall(-7)*(rstar-r)+ delall(-8)*(rstar-r)+ delall(-9)*(rstar-r)+ delall(-10)*(rstar-r)+ delall(-11)*(rstar-r)+ delall(-12)*(rstar-r)+ delall(-13)*(rstar-r)+ delall(-14)*(rstar-r)+ delall(-15)*(rstar-r)+ delall(-16)*(rstar-r)+ delall(-17)*(rstar-r)+ delall(-18)*(rstar-r)+ delall(-19)*(rstar-r)+ delall(-20)*(rstar-r)+ delall(-21)*(rstar-r)+ delall(-22)*(rstar-r)+ delall(-23)*(rstar-r)+ delall(-24)*(rstar-r)+ delall(-25)*(rstar-r)+ delall(-26)*(rstar-r)+ delall(-27)*(rstar-r)+ delall(-28)*(rstar-r)+ delall(-29)*(rstar-r)+ delall(-30)*(rstar-r);
%not work
%r=r;



%exogenous variables
gpc = (y/y(-1))*g(-1)/gn(-1);
gy = (y/y(-1))*g;
%/g???
gn = NSS + en; %population growth 
shareW = 1/(1+zetay+zetar);
shareR = zetar/(1+zetay+zetar);
1/(1+zetay+zetar)  = 1/(1+ZETAYSS+ZETARSS) + ey; %share of workers in pop
zetar/(1+zetay+zetar)  = ZETARSS/(1+ZETAYSS+ZETARSS) + er; %share of retirees

%shocks
en = shockn*(gn_1-NSS) +shockn(-1)*(gn_2-NSS)+shockn(-2)*(gn_3-NSS)+shockn(-3)*(gn_4-NSS)+shockn(-4)*(gn_5-NSS)+shockn(-5)*(gn_6-NSS)+shockn(-6)*(gn_7-NSS)+shockn(-7)*(gn_8-NSS)+shockn(-8)*(gn_9-NSS)+shockn(-9)*(gn_10-NSS)+shockn(-10)*(gn_11-NSS)+shockn(-11)*(gn_12-NSS)+shockn(-12)*(gn_13-NSS)+shockn(-13)*(gn_14-NSS)+shockn(-14)*(gn_15-NSS)+shockn(-15)*(gn_16-NSS)+shockn(-16)*(gn_17-NSS)+shockn(-17)*(gn_18-NSS)+shockn(-18)*(gn_19-NSS)+shockn(-19)*(gn_20-NSS)+shockn(-20)*(gn_21-NSS)+shockn(-21)*(gn_22-NSS)+shockn(-22)*(gn_23-NSS)+shockn(-23)*(gn_24-NSS)+shockn(-24)*(gn_25-NSS)+shockn(-25)*(gn_26-NSS)+shockn(-26)*(gn_27-NSS)+shockn(-27)*(gn_28-NSS)+shockn(-28)*(gn_29-NSS)+shockn(-29)*(gn_30-NSS);
er = shockr;
ey = shocky;
shocky = shocky(-1) + delall*dws_1 + delall(-1)*dws_2+delall(-2)*dws_3+delall(-3)*dws_4+delall(-4)*dws_5+delall(-5)*dws_6+delall(-6)*dws_7+delall(-7)*dws_8+delall(-8)*dws_9+delall(-9)*dws_10+delall(-10)*dws_11+delall(-11)*dws_12+delall(-12)*dws_13+delall(-13)*dws_14+delall(-14)*dws_15+delall(-15)*dws_16+delall(-16)*dws_17+delall(-17)*dws_18+delall(-18)*dws_19+delall(-19)*dws_20+delall(-20)*dws_21+delall(-21)*dws_22+delall(-22)*dws_23+delall(-23)*dws_24+delall(-24)*dws_25+delall(-25)*dws_26+delall(-26)*dws_27+delall(-27)*dws_28+delall(-28)*dws_29+delall(-29)*dws_30; 
shockr = shockr(-1) + delall*dws_1 + delall(-1)*drs_2+delall(-2)*drs_3+delall(-3)*drs_4+delall(-4)*drs_5+delall(-5)*drs_6+delall(-6)*drs_7+delall(-7)*drs_8+delall(-8)*drs_9+delall(-9)*drs_10+delall(-10)*drs_11+delall(-11)*drs_12+delall(-12)*drs_13+delall(-13)*drs_14+delall(-14)*drs_15+delall(-15)*drs_16+delall(-16)*drs_17+delall(-17)*drs_18+delall(-18)*drs_19+delall(-19)*drs_20+delall(-20)*drs_21+delall(-21)*drs_22+delall(-22)*drs_23+delall(-23)*drs_24+delall(-24)*drs_25+delall(-25)*drs_26+delall(-26)*drs_27+delall(-27)*drs_28+delall(-28)*drs_29+delall(-29)*drs_30; 
shockn = delall;
end;


initval;
rstar=Rstar_SS;
ca=0;
omegay =OMEGAYSS;
Tw  =  Tw_SS;
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
shareW = shareW_SS;
shareR = shareR_SS;
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
gy = g_SS;
stoyw = stoyw_SS;
er = 0;
ey = 0;
en = 0;
shockr = 0;
shocky = 0;
shockn = 0;
delall = 0;
fert = fert_SS;
%replac = replac_SS;
end;
steady;


shocks;
var delall; stderr 1; % set standard deviation
end;

check;
%options_.nograph=1;
stoch_simul(irf  = 30, order=1);
save CasePredoo_ oo_
save CasePredM_ M_

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


