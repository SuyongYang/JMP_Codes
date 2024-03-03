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

totpop = [51585058	51764822	51836239	51746354	51681041	51723946	51805467	51907580	52011928	52118537	52225941	52332409	52436351	52535374	52629387	52716138	52794344	52864087	52919668	52954023	52966831	52957944	52928429	52880033	52811923	52723058	52613976	52484844	52334076	52160393	51962726	51741583	51497363	51227952	50935020	50622111	50289772	49939568	49575205	49200399	48819485	48434671	48048756	47664869	47283754	46906053	46533527	46165464	45800032	45438610	45081589	44727926	44377603]
%start 2018
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 2019=0
gN_SS = 0.9855;
%testgpop = gN_SS-1+difgpop;
DW = [0.608991193	0.604924769	0.598922966	0.59172339	0.585865405	0.578396996	0.573381763	0.566304574	0.559245122	0.55275339	0.54630874	0.537504264	0.529493576	0.521533396	0.514164757	0.506780144	0.499288257	0.493325138	0.488008126	0.482367714	0.476013281	0.469117797	0.460511968	0.451657093	0.442922236	0.435523865	0.429760678	0.425381887	0.421343715	0.418018745	0.415255235	0.412541398	0.409808265	0.407189848	0.403669715	0.400160831	0.397025463	0.394140955	0.391164797	0.388441301	0.385856754	0.383787989	0.38137081	0.379269856	0.378801692	0.379005477	0.379132878	0.37980188	0.380551546	0.380721813	0.380080569	0.379961839	0.379789237
0.240187982	0.252711658	0.267323812	0.283171893	0.297150671	0.311709629	0.322444676	0.334299769	0.344743979	0.356736222	0.368914693	0.382396901	0.39494966	0.407037685	0.419743935	0.432062076	0.44396019	0.456518298	0.467683244	0.478884805	0.49069883	0.50303556	0.517762071	0.533037016	0.545928805	0.55854833	0.567528578	0.57646295	0.58495096	0.592619615	0.600229056	0.609429402	0.617957467	0.627032074	0.636438682	0.645849321	0.65461474	0.661886102	0.668402218	0.674135509	0.67970799	0.684754605	0.691294942	0.697430785	0.701833129	0.704364232	0.705509449	0.704956133	0.704248154	0.703693863	0.703696536	0.703446209	0.703586739]';
% 2018 start
dDW_3g = diff(DW);
% 2019 start

for iii = 1:length(gpop)-1
                %dd_old = 1+gpop(5+iii) ;
                dd = gN_SS + difgpop(1+iii);
                eval(['gn_' num2str(iii) '= dd;'])
                dd = dDW_3g(1+iii,1) ;
                eval(['dws_' num2str(iii) '= dd;'])
                dd = dDW_3g(1+iii,2) ;
                eval(['drs_' num2str(iii) '= dd;'])
end

save pred_param drs_1 drs_2 drs_3 drs_4 drs_5 drs_6 drs_7 drs_8 drs_9 drs_10 drs_11 drs_12 drs_13 drs_14 drs_15 drs_16 drs_17 drs_18 drs_19 drs_20 drs_21 drs_22 drs_23 drs_24 drs_25 drs_26 drs_27 drs_28 drs_29 drs_30 drs_31 drs_32 drs_33 drs_34 drs_35 drs_36 drs_37 drs_38 drs_39 drs_40 dws_1 dws_2 dws_3 dws_4 dws_5 dws_6 dws_7 dws_8 dws_9 dws_10 dws_11 dws_12 dws_13 dws_14 dws_15 dws_16 dws_17 dws_18 dws_19 dws_20 dws_21 dws_22 dws_23 dws_24 dws_25 dws_26 dws_27 dws_28 dws_29 dws_30 dws_31 dws_32 dws_33 dws_34 dws_35 dws_36 dws_37 dws_38 dws_39 dws_40 gn_1 gn_2 gn_3 gn_4 gn_5 gn_6 gn_7 gn_8 gn_9 gn_10 gn_11 gn_12 gn_13 gn_14 gn_15 gn_16 gn_17 gn_18 gn_19 gn_20 gn_21 gn_22 gn_23 gn_24 gn_25 gn_26 gn_27 gn_28 gn_29 gn_30 gn_31 gn_32 gn_33 gn_34 gn_35 gn_36 gn_37 gn_38 gn_39 gn_40
%pred_param = Countries(1+15*(i-1):15+15*(i-1));






