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

totpop = [51585058	51764822	51836239	51744876	51628117	51558034	51500029	51447504	51397309	51348388	51300095	51250905	51199019	51142848	51082971	51018619	50947857	50868691	50774771	50660209	50524704	50368731	50193281	49998451	49784159	49551362	49300187	49029906	48739019	48426874	48093212	47737283	47358532	46957061	46534046	46090617	45628975	45151722	44660957	44159136	43649074	43134131	42617053	42099995	41585534	41074913	40569298	40069340	39574865	39085966	38602940	38126347	37655867]
%start 2018
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 2019=0
gN_SS = 0.9890;
%testgpop = gN_SS-1+difgpop;
DW = [0.67468983	0.67500999	0.672507973	0.670288417	0.666234215	0.661206147	0.655764776	0.648276017	0.639673684	0.633893765	0.627300495	0.622396307	0.615902641	0.610309422	0.60480014	0.598709405	0.590423833	0.583284186	0.575386682	0.567553186	0.559248957	0.550917096	0.543514978	0.536671286	0.530050734	0.523102594	0.515847435	0.507345537	0.499176132	0.491350959	0.485025808	0.480501226	0.477457283	0.474746343	0.472738369	0.471242965	0.46967919	0.46795336	0.466072279	0.462785323	0.459164288	0.455632895	0.452080039	0.448263711	0.444725803	0.441379243	0.438675325	0.435594846	0.432912026	0.432137202	0.432076624	0.431814121	0.432068262
0.174489345	0.182626437	0.193738805	0.204631856	0.217028291	0.22969365	0.241740854	0.255079333	0.268120516	0.280447674	0.293814739	0.304404381	0.316415711	0.327089626	0.338879369	0.350830645	0.364420922	0.379069691	0.393711397	0.408019379	0.422710661	0.437429484	0.451921902	0.4661159	0.4774672	0.489816345	0.49995713	0.512489316	0.524578285	0.536225588	0.546931758	0.557585483	0.566071009	0.575028003	0.582799935	0.590192815	0.59753216	0.603915594	0.60973156	0.616535795	0.623790301	0.631102038	0.639830445	0.648844946	0.657605575	0.664964792	0.670131906	0.674447745	0.678345485	0.67987909	0.680414497	0.681471661	0.682389493]'
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






