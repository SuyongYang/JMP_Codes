% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code imports the UN prediction data for each country to be used as
% input.
function [pred_param] = parampredic(flag)

%Flag is the number that refers to the country
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

load ProjecPopData.csv;
load HistPopData.txt;
Countries = fileread('listcountries.txt');

%get weights
mh = size(HistPopData,1);
mp = size(ProjecPopData,1);
Popweights = zeros(mh+mp,3);
for i = 1:mh
    sumpop = sum(HistPopData(i,1:end));
    Popweights(i,1) = sum(HistPopData(i,1:4))/sumpop;
    Popweights(i,2) = sum(HistPopData(i,5:12))/sumpop;
    Popweights(i,3) = sum(HistPopData(i,13:end))/sumpop;
end
for i = 1:mp
    sumpop = sum(ProjecPopData(i,1:end));
    Popweights(mh+i,1) = sum(ProjecPopData(i,1:4))/sumpop;
    Popweights(mh+i,2) = sum(ProjecPopData(i,5:12))/sumpop;
    Popweights(mh+i,3) = sum(ProjecPopData(i,13:end))/sumpop;
end



i = flag;
totpophist = sum(HistPopData(:,1:end),2);
totpopproj = sum(ProjecPopData(:,1:end),2);
totpop = [totpophist(1+16*(i-1):16+16*(i-1)); totpopproj(1+85*(i-1):85+85*(i-1))];
DW(:,:) = [Popweights(1+16*(i-1):16+16*(i-1),:); Popweights(mh+1+85*(i-1):mh+85+85*(i-1),:)]; 
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
gN_SS = 1 + 0.01;
%testgpop = gN_SS-1+difgpop;
dDW_3g = diff(DW);
for iii = 1:31
                dd_old = 1+gpop(5+iii) ;
                dd = gN_SS + difgpop(5+iii);
                eval(['gn_' num2str(iii) '= dd;'])
                dd = dDW_3g(5+iii,2) ;
                eval(['dws_' num2str(iii) '= dd;'])
                dd = dDW_3g(5+iii,3) ;
                eval(['drs_' num2str(iii) '= dd;'])
end
sw_ini = DW(5,2);
% t = 2005:1:2035;
% subplot(1,3,1,'Fontsize', 4);
% plot(t,gpop(5:35)*100','-k','LineWidth', 1)
% title('Population Growth (in %)','Fontsize', 6)
% subplot(1,3,2,'Fontsize', 4);
% plot(t,DW(5:35,2)','-k','LineWidth', 1)
% title('Share of Workers','Fontsize', 6)
% subplot(1,3,3,'Fontsize', 4);
% plot(t,DW(5:35,3)','-k','LineWidth', 1)
% title('Share of Retirees','Fontsize', 6)

save pred_param_US2019 sw_ini drs_1 drs_2 drs_3 drs_4 drs_5 drs_6 drs_7 drs_8 drs_9 drs_10 drs_11 drs_12 drs_13 drs_14 drs_15 drs_16 drs_17 drs_18 drs_19 drs_20 drs_21 drs_22 drs_23 drs_24 drs_25 drs_26 drs_27 drs_28 drs_29 drs_30 dws_1 dws_2 dws_3 dws_4 dws_5 dws_6 dws_7 dws_8 dws_9 dws_10 dws_11 dws_12 dws_13 dws_14 dws_15 dws_16 dws_17 dws_18 dws_19 dws_20 dws_21 dws_22 dws_23 dws_24 dws_25 dws_26 dws_27 dws_28 dws_29 dws_30 gn_1 gn_2 gn_3 gn_4 gn_5 gn_6 gn_7 gn_8 gn_9 gn_10 gn_11 gn_12 gn_13 gn_14 gn_15 gn_16 gn_17 gn_18 gn_19 gn_20 gn_21 gn_22 gn_23 gn_24 gn_25 gn_26 gn_27 gn_28 gn_29 gn_30
pred_param = Countries(1+15*(i-1):15+15*(i-1));






