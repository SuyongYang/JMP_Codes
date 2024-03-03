% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code runs the predictions for each country and produces the projection
% figures in case working population is used as congestion factor.

DemoMediunRunFinalPred_SS_VNw
vecpos = [22 13 12 7]; %US Japan Italy France
vecpos2 = [4 1 9 19]; % Canada Australia Greece Sweden
grop = 1;
if grop==1
load shadedarea1_g1
load shadedarea2_g1
load Estpath_g1
else
load shadedarea1_g2
load shadedarea2_g2
load Estpath_g2
end

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

for i = 1:1:4
    
if grop == 1;
flag = vecpos(i);
else
flag = vecpos2(i);
end    

DataCountry = EconData(1+45*(flag-1):45+45*(flag-1),:);
logOutput = log(DataCountry(1:40,3));
Outputg = diff(logOutput);
g_ini = nanmean(Outputg); %Growth
r_ini = nanmean(DataCountry(1:40,4));%Real rate

country_flag  = parampredic(flag);
country(i,:) = country_flag;
dynare DemoMediumRunFinal_newpred_VNw noclearall
load pred_param
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
end



figure(100)
hold on
for i = 1:1:4;
subplot(2,4,i,'Fontsize', 4);
shadedplot(t(6:end-4),shadedarea11(i,1:21),shadedarea12(i,1:21),[200/255 200/255 200/255],'k')
hold on
plot(t(6:end-4),EstPath1(i,1:21),'-b','LineWidth', 2)
hold on
plot(t(6:end-4),actualgy(i,6:end-4),'-.k','LineWidth', 2)
set(gca,'fontsize',6)
if i==1
ylabel('Output Growth')
end
title(country(i,:), 'Fontsize', 8)
hold on
subplot(2,4,i+4,'Fontsize', 4);
[ha, hb, hc] = shadedplot(t(6:end-4),shadedarea21(i,1:21),shadedarea22(i,1:21),[200/255 200/255 200/255],'k')
hold on
h1 = plot(t(6:end-4),EstPath2(i,1:21),'-b','LineWidth', 2)
hold on
h2 = plot(t(6:end-4),actualr(i,6:end-4),'-.k','LineWidth', 2)
set(gca,'fontsize',6)
if i==1
ylabel('Real Interest Rate')
end
xlabel('Years')
text( -0.5,1.5,country)
end
if i == 4
h = legend([h1 h2 ha(2)], texlabel('Estimated Projection'), texlabel('Model Projection'),texlabel('One-sided 90% Interval') );
set(h,'Position', [0.5 0.01 0.05 0.05], 'Orientation', 'horizontal','Box', 'off');
end
hold off


%clear all

%Print Preview - after best fit set width 8.25 heigh 4.5
%This code run the predictions for each country
