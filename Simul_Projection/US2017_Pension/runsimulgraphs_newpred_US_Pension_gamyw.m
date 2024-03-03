% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code runs the predictions for each country and produces the projection
% figures for the bechmark model

%Pop_Merge 
%If there is some issue with pop merge...

Demo_SS_US2019_Pension
vecpos = [22 13 12 7]; %US Japan Italy France


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
flag = vecpos(1);
index = {'Upper99', 'Upper84', 'Median', 'Lower84', 'Lower99','EduTaxOnly'};
for i = 1:1:6
DemoMediunRunFinalPred_SS_US2019

DataCountry = EconData(1+45*(flag-1):45+45*(flag-1),:);
logOutput = log(DataCountry(1:40,3));
Outputg = diff(logOutput);
g_ini = nanmean(Outputg); %Growth
r_ini = nanmean(DataCountry(1:40,4));%Real rate
if flag ==8 %Germany
    g_ini =  0.0211;
    r_ini= 0.012;
end

if i==6
tempIndex=string(index(i));
country_flag  = eval(append('parampredic_US2017_', tempIndex, '(flag);'))
%country_flag  = parampredic_US2019(flag);
country = country_flag;
dynare DemoMediumRunFinal_newpred_US2019 noclearall
%load pred_param_US2019
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
gamyw = oo_.irfs.stoyw_delall;


t = 2005:1:2034;
actualg(i,:) = g+(g_ini-g(6));
actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini - r(6));    
actualgamyw(i,:) = gamyw;

else

tempIndex=string(index(i));
country_flag  = eval(append('parampredic_US2017_', tempIndex, '(flag);'))
%country_flag  = parampredic_US2019(flag);
country = country_flag;
dynare Demo_US2019_Pension noclearall
%load pred_param_US2019
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
gamyw = oo_.irfs.stoyw_delall;

t = 2005:1:2034;
actualg(i,:) = g+(g_ini-g(6));
actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini - r(6));
actualgamyw(i,:) = gamyw;

end
end



%figure(101)
%hold on
for i = 1:1:6;
subplot(2,1,1,'Fontsize', 4);
hold on
if i==1
p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-b','LineWidth', 2)
elseif i==2 
p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-g','LineWidth', 2)
elseif i==3
    p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-k','LineWidth', 2)
elseif i==4
    p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-m','LineWidth', 2)
elseif i==5
    p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-r','LineWidth', 2)
else
    p1(i)=plot(t(6:end-4),actualgy(i,6:end-4),'-.c','LineWidth', 2)
end

    ylim([0.015 0.03])
set(gca,'fontsize',6)
%legend(p1(i),string(index(i)),'Location','bestoutside');

if i==1
ylabel('Output Growth')
end
title(country, 'Fontsize', 8)
hold on

subplot(2,1,2,'Fontsize', 4);
hold on
if i==1
p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-b','LineWidth', 2)
%p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-b','LineWidth', 2)

elseif i==2 
p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-g','LineWidth', 2)
%p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-g','LineWidth', 2)

elseif i==3
    p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-k','LineWidth', 2)
%    p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-k','LineWidth', 2)

elseif i==4
    p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-m','LineWidth', 2)
%    p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-m','LineWidth', 2)

elseif i==5

    p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-r','LineWidth', 2)
%    p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-r','LineWidth', 2)
else
%    p2(i)=plot(t(6:end-4),actualgamyw(i,6:end-4),'-.c','LineWidth', 2)
%    p2(i)=plot(t(6:end-4),actualgamyw(i,1:end-9),'-.c','LineWidth', 2)

end
%legend(p2(i),string(index(i)),'Location','west');
set(gca,'fontsize',6)
if i==1
ylabel('gamyw')
end
xlabel('Years')



% subplot(2,1,2,'Fontsize', 4);
% hold on
% if i==1
% p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-b','LineWidth', 2)
% elseif i==2 
% p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-g','LineWidth', 2)
% elseif i==3
%     p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-k','LineWidth', 2)
% elseif i==4
%     p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-m','LineWidth', 2)
% elseif i==5
%     p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-r','LineWidth', 2)
% else
%     p2(i)=plot(t(6:end-4),actualr(i,6:end-4),'-.c','LineWidth', 2)
% end
% %legend(p2(i),string(index(i)),'Location','west');
% set(gca,'fontsize',6)
% if i==1
% ylabel('Real Interest Rate')
% end
% xlabel('Years')

end
legend(p1,{string(index(1)),string(index(2)),string(index(3)),string(index(4)),string(index(5)),string(index(6))},'Location','southwest')
%legend(p2,{string(index(1)),string(index(2)),string(index(3)),string(index(4)),string(index(5)),string(index(6))},'Location','best')
legend(p2(1:5),{string(index(1)),string(index(2)),string(index(3)),string(index(4)),string(index(5))},'Location','best')
%legend('Aksoy Benchmark Model Projection' ,-1);
%set(h,'Position', [.5 0.01 0.05 0.05], 'Orientation', 'horizontal','Box', 'on');
%to the right, bottom up, the right, box height
hold off

% if i == 4
% h = legend([h1 h2 ha(2)], texlabel('Estimated Projection'), texlabel('Model Projection'),texlabel('One-sided 90% Interval') );
% set(h,'Position', [0.5 0.01 0.05 0.05], 'Orientation', 'horizontal','Box', 'off');
% end
% hold off

%clear all

%Print Preview - after best fit set width 8.25 heigh 4.5
%This code run the predictions for each country


