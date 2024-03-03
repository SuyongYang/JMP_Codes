% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code imports the UN prediction data for each country to be used as
% input.
totpop = [227339.321
229476.36
231636.065
233821.851
236030.236
238256.849
240499.822
242763.137
245052.78
247372.258
249725.809
252120.309
254539.371
256990.608
259532.13
262241.204
265163.741
268335.008
271713.634
275175.309
278548.148
281710.914
284607.992
287279.312
289815.567
292354.663
294993.509
297758.977
300608.425
303486.022
306307.565
309011.469
311584.051
314043.885
316400.539
318673.422
320878.312
323015.992
325084.758
327096.263
329064.917
331002.646]
%start 1979
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 1980=0
gN_SS = 1 + 0.01;
%testgpop = gN_SS-1+difgpop;
DW = [0.517088326	0.158250429
0.520763995	0.160158393
0.524755508	0.161708027
0.528522845	0.163215178
0.531956097	0.164600784
0.53501824	0.165803208
0.537696344	0.166806984
0.539261597	0.16760398
0.540510812	0.168222066
0.541537831	0.168624968
0.542477085	0.168768707
0.543423664	0.1686565
0.543999576	0.16802143
0.54459698	0.167161607
0.54520312	0.166197099
0.545846022	0.165266737
0.546559701	0.164449147
0.547018356	0.163565397
0.547825237	0.162902746
0.548739386	0.162446813
0.549531943	0.162159987
0.550158703	0.162052021
0.550859454	0.162489074
0.551182777	0.162963047
0.551291046	0.163683105
0.551328265	0.164917116
0.551273225	0.166796846
0.549653245	0.169263333
0.547993517	0.172328743
0.546238123	0.175873056
0.544351489	0.179711089
0.542370711	0.183749115
0.540688233	0.187779891
0.539471202	0.191963009
0.538430044	0.196285566
0.537210088	0.200770826
0.535600243	0.205439176
0.533517105	0.210196008
0.531023863	0.2149013
0.528341294	0.219560588
0.525748116	0.224179902
0.523351768	0.228753295];
% 1979 start
dDW_3g = diff(DW);
% 1980 start

for iii = 1:length(gpop)-1
                %dd_old = 1+gpop(5+iii) ;
                dd = gN_SS + difgpop(1+iii);
                eval(['gn_' num2str(iii) '_star= dd;'])
                dd = dDW_3g(1+iii,1) ;
                eval(['dws_' num2str(iii) '_star= dd;'])
                dd = dDW_3g(1+iii,2) ;
                eval(['drs_' num2str(iii) '_star= dd;'])
end

save pred_param_US_1980 gn_1_star	gn_2_star	gn_3_star	gn_4_star	gn_5_star	gn_6_star	gn_7_star		gn_8_star		gn_9_star	gn_10_star	gn_11_star	gn_12_star	gn_13_star	gn_14_star	gn_15_star	gn_16_star	gn_17_star	gn_18_star	gn_19_star	gn_20_star	gn_21_star	gn_22_star	gn_23_star	gn_24_star	gn_25_star	gn_26_star	gn_27_star	gn_28_star	gn_29_star	gn_30_star	gn_31_star	gn_32_star	gn_33_star	gn_34_star	gn_35_star	gn_36_star	gn_37_star	gn_38_star	gn_39_star	gn_40_star dws_1_star	dws_2_star	dws_3_star	dws_4_star	dws_5_star	dws_6_star	dws_7_star		dws_8_star		dws_9_star	dws_10_star	dws_11_star	dws_12_star	dws_13_star	dws_14_star	dws_15_star	dws_16_star	dws_17_star	dws_18_star	dws_19_star	dws_20_star	dws_21_star	dws_22_star	dws_23_star	dws_24_star	dws_25_star	dws_26_star	dws_27_star	dws_28_star	dws_29_star	dws_30_star	dws_31_star	dws_32_star	dws_33_star	dws_34_star	dws_35_star	dws_36_star	dws_37_star	dws_38_star	dws_39_star	dws_40_star drs_1_star	drs_2_star	drs_3_star	drs_4_star	drs_5_star	drs_6_star	drs_7_star		drs_8_star		drs_9_star	drs_10_star	drs_11_star	drs_12_star	drs_13_star	drs_14_star	drs_15_star	drs_16_star	drs_17_star	drs_18_star	drs_19_star	drs_20_star	drs_21_star	drs_22_star	drs_23_star	drs_24_star	drs_25_star	drs_26_star	drs_27_star	drs_28_star	drs_29_star	drs_30_star	drs_31_star	drs_32_star	drs_33_star	drs_34_star	drs_35_star	drs_36_star	drs_37_star	drs_38_star	drs_39_star	drs_40_star

%pred_param = Countries(1+15*(i-1):15+15*(i-1));




