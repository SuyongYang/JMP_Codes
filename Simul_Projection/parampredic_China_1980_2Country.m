% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code imports the UN prediction data for each country to be used as
% input.
%function [pred_param] = parampredic(flag)

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

% load ProjecPopData.csv;
% load HistPopData.txt;
% Countries = fileread('listcountries.txt');

%get weights
% mh = size(HistPopData,1);
% mp = size(ProjecPopData,1);
% Popweights = zeros(mh+mp,3);
% for i = 1:mh
%     sumpop = sum(HistPopData(i,1:end));
%     Popweights(i,1) = sum(HistPopData(i,1:4))/sumpop;
%     Popweights(i,2) = sum(HistPopData(i,5:12))/sumpop;
%     Popweights(i,3) = sum(HistPopData(i,13:end))/sumpop;
% end
% for i = 1:mp
%     sumpop = sum(ProjecPopData(i,1:end));
%     Popweights(mh+i,1) = sum(ProjecPopData(i,1:4))/sumpop;
%     Popweights(mh+i,2) = sum(ProjecPopData(i,5:12))/sumpop;
%     Popweights(mh+i,3) = sum(ProjecPopData(i,13:end))/sumpop;
% end
% 


% i = flag;
% totpophist = sum(HistPopData(:,1:end),2);
% totpopproj = sum(ProjecPopData(:,1:end),2);
% totpop = [totpophist(1+16*(i-1):16+16*(i-1)); totpopproj(1+85*(i-1):85+85*(i-1))];
% DW(:,:) = [Popweights(1+16*(i-1):16+16*(i-1),:); Popweights(mh+1+85*(i-1):mh+85+85*(i-1),:)]; 

totpop = [  986132.214
1000089.228
1014022.211
1027948.989
1042431.401
1058171.973
1075589.363
1095014.106
1116095.475
1137724.234
1158357.393
1176883.681
1192897.277
1206711.243
1218817.059
1230020.026
1240920.539
1251636.178
1261996.017
1271982.349
1281514.833
1290550.767
1299129.747
1307352.256
1315303.522
1323084.639
1330776.38
1338408.644
1345993.891
1353569.48
1361169.41
1368810.604
1376497.633
1384206.408
1391883.335
1399453.966
1406847.868
1414049.353
1421021.794
1427647.789
1433783.692
1439323.856 ]
%start 1979
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 1980=0
gN_SS = 1 + 0.01;
%testgpop = gN_SS-1+difgpop;
DW = [0.45309319	0.0734768614
0.457936858	0.0748927025
0.464095136	0.0763442725
0.470102854	0.0775126235
0.476350053	0.0785243901
0.483109044	0.079508306
0.490285345	0.0805124725
0.496414843	0.0812938888
0.502684256	0.0820092941
0.509013845	0.0827466333
0.515645323	0.0836734557
0.522844623	0.0849155584
0.527960324	0.0858687541
0.535727103	0.0874013801
0.544481534	0.0892595006
0.551872671	0.0910639515
0.556768505	0.092626586
0.563949297	0.0947259292
0.567009904	0.0963066066
0.567831188	0.0975845656
0.569150427	0.0988760697
0.572146334	0.100314263
0.573316675	0.101376756
0.576123966	0.10266323
0.58029868	0.104181895
0.585139898	0.10586137
0.590368851	0.107718354
0.596705871	0.109833469
0.60385074	0.112051482
0.610728931	0.114596571
0.616049439	0.117850384
0.618986165	0.122004751
0.619335908	0.126941557
0.617379865	0.13271641
0.613902719	0.138909868
0.610148485	0.144870587
0.60690028	0.150240847
0.603850595	0.155194705
0.601233998	0.159632435
0.598717582	0.16387576
0.595781903	0.168408788
0.592135867	0.173537266];
% 1979 start
dDW_3g = diff(DW);
% 1980 start

for iii = 1:length(gpop)-1
                %dd_old = 1+gpop(5+iii) ;
                dd = gN_SS + difgpop(1+iii);
                eval(['gn_' num2str(iii) '= dd;'])
                dd = dDW_3g(1+iii,1) ;
                eval(['dws_' num2str(iii) '= dd;'])
                dd = dDW_3g(1+iii,2) ;
                eval(['drs_' num2str(iii) '= dd;'])
end

save pred_param_China_1980 drs_1 drs_2 drs_3 drs_4 drs_5 drs_6 drs_7 drs_8 drs_9 drs_10 drs_11 drs_12 drs_13 drs_14 drs_15 drs_16 drs_17 drs_18 drs_19 drs_20 drs_21 drs_22 drs_23 drs_24 drs_25 drs_26 drs_27 drs_28 drs_29 drs_30 drs_31 drs_32 drs_33 drs_34 drs_35 drs_36 drs_37 drs_38 drs_39 drs_40 dws_1 dws_2 dws_3 dws_4 dws_5 dws_6 dws_7 dws_8 dws_9 dws_10 dws_11 dws_12 dws_13 dws_14 dws_15 dws_16 dws_17 dws_18 dws_19 dws_20 dws_21 dws_22 dws_23 dws_24 dws_25 dws_26 dws_27 dws_28 dws_29 dws_30 dws_31 dws_32 dws_33 dws_34 dws_35 dws_36 dws_37 dws_38 dws_39 dws_40 gn_1 gn_2 gn_3 gn_4 gn_5 gn_6 gn_7 gn_8 gn_9 gn_10 gn_11 gn_12 gn_13 gn_14 gn_15 gn_16 gn_17 gn_18 gn_19 gn_20 gn_21 gn_22 gn_23 gn_24 gn_25 gn_26 gn_27 gn_28 gn_29 gn_30 gn_31 gn_32 gn_33 gn_34 gn_35 gn_36 gn_37 gn_38 gn_39 gn_40
%pred_param = Countries(1+15*(i-1):15+15*(i-1));






