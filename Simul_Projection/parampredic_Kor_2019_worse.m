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

totpop = [51585058	51764822	51836239	51743377	51581974	51421339	51267773	51102147	50920838	50734700	50544905	50349433	50146768	49936537	49719514	49496348	49266678	49027442	48771583	48494522	48197713	47883821	47552504	47204039	46838702	46457399	46061832	45650159	45220930	44773803	44309781	43830727	43333088	42816471	42283063	41730103	41160211	40576779	39980084	39373755	38760612	38141870	37520917	36900918	36282257	35665419	35055223	34451803	33853527	33263003	32679120	32101574	31531097]
%start 2018
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 2019=0
gN_SS = 0.9855;
%testgpop = gN_SS-1+difgpop;
DW = [0.608991193	0.604924769	0.598922966	0.591757434	0.585982983	0.578735066	0.57422623	0.567918213	0.561811807	0.556329337	0.550916695	0.543084865	0.536075745	0.529102869	0.522723673	0.516282676	0.509675302	0.504675892	0.500367437	0.495694978	0.490218052	0.48409255	0.476036951	0.467587869	0.458769886	0.450748782	0.443988072	0.438192691	0.432414283	0.427341296	0.422786202	0.418163313	0.413440533	0.408772129	0.402970877	0.397174553	0.391787059	0.386648186	0.381390519	0.376455306	0.371738196	0.367733386	0.363374648	0.359502438	0.357757264	0.35690642	0.355989463	0.355811828	0.355774717	0.355020622	0.353249292	0.352202263	0.351041608
0.240187982	0.252711658	0.267323812	0.283188185	0.297396024	0.312432451	0.323696428	0.336215991	0.347394106	0.360112665	0.373060272	0.387395981	0.400803956	0.413813998	0.427503093	0.440897175	0.453968664	0.467737007	0.480057373	0.492451642	0.505555149	0.519317913	0.53571772	0.552725139	0.567236171	0.581458553	0.591758508	0.601942745	0.611616811	0.620384804	0.629141227	0.639771045	0.649718617	0.660416735	0.671730735	0.683147391	0.694017506	0.703474492	0.712336547	0.720556625	0.728839834	0.736714849	0.746644758	0.756331807	0.764113269	0.769848042	0.774176019	0.776609834	0.779035313	0.781842397	0.785472926	0.788825464	0.792795918]';
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






