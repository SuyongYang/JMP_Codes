% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code runs the predictions for each country and produces the projection
% figures for the bechmark model

vecpos = [22 13 12 7]; %US Japan Italy France
vecpos2 = [4 1 9 18]; % Canada Australia Greece Spain
vecpos3=[22 4 4];
grop = 3;
% if grop==1
% load shadedarea1_g1
% load shadedarea2_g1
% load Estpath_g1
% else
% load shadedarea1_g2
% load shadedarea2_g2
% load Estpath_g2
% end

% Australia	1
% Austria	2
% Belgium	3
% Canada	4
% Denmark	5
% Finland	6
% France	7
% Germany	8
% Greece	9
% Iceland	10
% Ireland	11
% Italy	12
% Japan	13
% Netherlands	14
% New Zealand	15
% Norway	16
% Portugal	17
% Spain	18
% Sweden	19
% Switzerland	20
% United Kingdom	21
% United States of America	22

load EconData.csv;

for i = 1:1:3
    
if grop == 1;
flag = vecpos(i);
elseif grop ==2;
    flag=vecpos2(i);
else 
    flag=vecpos3(i);
end    
DataCountry = EconData(1+45*(flag-1):45+45*(flag-1),:);
logOutput = log(DataCountry(1:40,3));
Outputg = diff(logOutput);
g_ini = nanmean(Outputg); %Growth
r_ini = nanmean(DataCountry(1:40,4));%Real rate
if flag ==8 %Germany
    g_ini =  0.0211;
    r_ini= 0.012;
end
if i ==1
country_flag  = parampredic_US2017_Median(flag);
% pop UN 2019 version
else
country_flag  = parampredic_Canada2017_Median(flag);
% pop UN2019
end
country(i,:) = country_flag;
    

if flag ==22
    DemoMediunRunFinalPred_SS_US2019
    dynare DemoMediumRunFinal_newpred_US2019 noclearall
    %load pred_param
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
t = 2005:1:2034;
actualg(i,:) = g+(g_ini-g(6));
actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini - r(6));
SetRstarShock(actualr(i,:),r_ini);
elseif flag == 4 & i == 2
DemoMediunRunFinalPred_SS_Canada2019
dynare DemoMediumRunFinal_newpred_Canada2019 noclearall
%load pred_param
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
t = 2005:1:2034;
actualg(i,:) = g+(g_ini-g(6));
actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini - r(6));
    
else
    DemoMediunRunFinalPred_SS_Canada_SOE

dynare DemoMediumRun_Canada_SOE noclearall
%load pred_param
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
ca = oo_.irfs.ca_delall;
t = 2005:1:2034;
actualg(i,:) = g+(g_ini-g(6));
actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini - r(6));

end
end



figure(101)
hold on
for i = 1:1:3;
if i == 1 | i ==2
subplot(3,2,i,'Fontsize', 4);
p(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-k','LineWidth', 2)
set(gca,'fontsize',6)
if i==1
ylabel('Output Growth')
end
title(country(i,:), 'Fontsize', 8)
hold on
subplot(3,2,i+2,'Fontsize', 4);
plot(t(6:end-4),actualr(i,6:end-4),'-k','LineWidth', 2)
set(gca,'fontsize',6)
if i==1
ylabel('Real Interest Rate')
end
xlabel('Years')
else
hold on
subplot(3,2,i-1,'Fontsize', 4);
plot(t(6:end-4),actualgy(i,6:end-4),'-.b','LineWidth', 2)
set(gca,'fontsize',6)

hold on
subplot(3,2,i+2-1,'Fontsize', 4);
p(i)=plot(t(6:end-4),actualr(i,6:end-4),'-.b','LineWidth', 2)
set(gca,'fontsize',6)

hold on 
subplot(3,2, i+4-1,'Fontsize', 4);
plot(t(1:end),[0 ca(1:end-1)],'-.b','LineWidth', 2)
set(gca,'fontsize',6)
ylabel('current account')
hold on
subplot(3,2, i+4-1,'Fontsize', 4);
zero = t.*0;
plot(t(1:end),zero(1:end),'-k','LineWidth', .5)
set(gca,'fontsize',6)


%text( -0.5,1.5,country)
end

end
lgd=legend(p,{'United States of America','Closed Canada','Small Open Canada'},'Position',[0.27 0.15 0.01 0.01])
%lgd.Layout.Tile = 3;

hold off

