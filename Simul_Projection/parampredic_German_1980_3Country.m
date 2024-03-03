% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code imports the UN prediction data for each country to be used as
% input.
totpop = [78438.171
78283.101
78107.86
77926.016
77770.21
77682.293
77691.591
77806.136
78015.742
78307.525
78660.301
79053.984
79490.831
79963.166
80428.557
80832.928
81138.653
81323.666
81399.25
81402.671
81389.935
81400.883
81453.894
81535.124
81614.371
81646.474
81602.739
81472.235
81277.836
81065.751
80899.961
80827.001
80855.629
80972.629
81174.373
81450.37
81787.411
82193.77
82658.409
83124.413
83517.046
83783.945]
%start 1979
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 1980=0
gN_SS = 1 + 0.01;
%testgpop = gN_SS-1+difgpop;
DW = [0.5292199	0.194948018
0.536503951	0.19324315
0.541558955	0.192904478
0.546778177	0.193824576
0.552024445	0.195547923
0.557138781	0.197312893
0.562061588	0.198691362
0.566319821	0.200070943
0.570553851	0.201312333
0.574393585	0.202361293
0.577564393	0.203227636
0.579889332	0.203948469
0.580388888	0.204719523
0.58043147	0.205195227
0.579840603	0.205747444
0.578345374	0.206897157
0.575879193	0.208940935
0.57218269	0.213390774
0.567241553	0.218446448
0.561894744	0.223784193
0.557246311	0.228873767
0.553858881	0.233369901
0.550767137	0.237328973
0.549152731	0.240791735
0.548729071	0.243782912
0.548981135	0.246366708
0.549561749	0.24865223
0.549844754	0.251419272
0.550540101	0.253732284
0.551360229	0.255828334
0.551920093	0.258080409
0.551874911	0.260741977
0.550698802	0.262898035
0.548971616	0.265452564
0.546765246	0.268406952
0.544229486	0.271614027
0.541423227	0.274937276
0.538581841	0.276982367
0.535608567	0.279016234
0.532393221	0.281100908
0.528840376	0.283469329
0.524934998	0.286347223];
% 1979 start
dDW_3g = diff(DW);
% 1980 start

for iii = 1:length(gpop)-1
                %dd_old = 1+gpop(5+iii) ;
                dd = gN_SS + difgpop(1+iii);
                eval(['gn_' num2str(iii) '_star01= dd;'])
                dd = dDW_3g(1+iii,1) ;
                eval(['dws_' num2str(iii) '_star01= dd;'])
                dd = dDW_3g(1+iii,2) ;
                eval(['drs_' num2str(iii) '_star01= dd;'])
end

save pred_param_German_1980 gn_1_star01	gn_2_star01	gn_3_star01	gn_4_star01	gn_5_star01	gn_6_star01	gn_7_star01		gn_8_star01		gn_9_star01	gn_10_star01	gn_11_star01	gn_12_star01	gn_13_star01	gn_14_star01	gn_15_star01	gn_16_star01	gn_17_star01	gn_18_star01	gn_19_star01	gn_20_star01	gn_21_star01	gn_22_star01	gn_23_star01	gn_24_star01	gn_25_star01	gn_26_star01	gn_27_star01	gn_28_star01	gn_29_star01	gn_30_star01	gn_31_star01	gn_32_star01	gn_33_star01	gn_34_star01	gn_35_star01	gn_36_star01	gn_37_star01	gn_38_star01	gn_39_star01	gn_40_star01 dws_1_star01	dws_2_star01	dws_3_star01	dws_4_star01	dws_5_star01	dws_6_star01	dws_7_star01		dws_8_star01		dws_9_star01	dws_10_star01	dws_11_star01	dws_12_star01	dws_13_star01	dws_14_star01	dws_15_star01	dws_16_star01	dws_17_star01	dws_18_star01	dws_19_star01	dws_20_star01	dws_21_star01	dws_22_star01	dws_23_star01	dws_24_star01	dws_25_star01	dws_26_star01	dws_27_star01	dws_28_star01	dws_29_star01	dws_30_star01	dws_31_star01	dws_32_star01	dws_33_star01	dws_34_star01	dws_35_star01	dws_36_star01	dws_37_star01	dws_38_star01	dws_39_star01	dws_40_star01 drs_1_star01	drs_2_star01	drs_3_star01	drs_4_star01	drs_5_star01	drs_6_star01	drs_7_star01		drs_8_star01		drs_9_star01	drs_10_star01	drs_11_star01	drs_12_star01	drs_13_star01	drs_14_star01	drs_15_star01	drs_16_star01	drs_17_star01	drs_18_star01	drs_19_star01	drs_20_star01	drs_21_star01	drs_22_star01	drs_23_star01	drs_24_star01	drs_25_star01	drs_26_star01	drs_27_star01	drs_28_star01	drs_29_star01	drs_30_star01	drs_31_star01	drs_32_star01	drs_33_star01	drs_34_star01	drs_35_star01	drs_36_star01	drs_37_star01	drs_38_star01	drs_39_star01	drs_40_star01

%pred_param = Countries(1+15*(i-1):15+15*(i-1));




