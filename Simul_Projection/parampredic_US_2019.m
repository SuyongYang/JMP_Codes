% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code imports the UN prediction data for each country to be used as
% input.
totpop = [327096.263
329064.917
331002.646
332907.8788
334797.9486
336675.0991
338541.5737
340399.616
342251.4695
344099.3779
345945.5845
347792.3331
349641.867
351493.879
353337.858
355160.7421
356949.4694
358690.978
360374.9185
362001.7921
363574.8127
365097.1941
366572.15
368002.857
369392.3421
370743.595
372059.6054
373343.363
374598.1464
375828.3897
377038.8157
378234.1475
379419.108
380598.2698
381775.6042
382954.9324
384140.0753
385334.854
386542.3525
387762.707
388995.3163
390239.5796
391494.896
392760.3432
394033.7144
395312.4813
396594.1159
397876.09
399155.6501
400429.1415
401692.6839
402942.3971
404174.401
405385.2926
406573.5779
407738.2398
408878.2615
409992.626
411080.7435
412143.7327
413183.139
414200.5082
415197.386
416175.3894
417136.4217
418082.4573
419015.4708
419937.437
420850.4843
421757.3572
422660.9542
423564.1736
424469.914
425380.624
426296.9535
427219.1024
428147.2709
429081.659
430022.4667
430969.8941
431924.1413
432885.4082
433853.895]
%start 2018
gpop = diff(log(totpop));
difgpop = gpop - gpop(1);
%start 2019=0
gN_SS = 1+0.01;
%testgpop = gN_SS-1+difgpop;
DW = [0.528341294	0.219560588
0.525748116	0.224179902
0.523351768	0.228753295
0.520224531	0.233298337
0.517631927	0.2373842
0.515505525	0.241048581
0.513778589	0.244328136
0.512385978	0.247258552
0.511264056	0.249874602
0.510350627	0.252210208
0.509584865	0.254298478
0.508907261	0.256171754
0.508259584	0.257861645
0.507596985	0.259395151
0.506923844	0.260783211
0.506256377	0.262032841
0.505610372	0.263151056
0.505001216	0.264144832
0.504439614	0.265027043
0.50391886	0.265834131
0.503428138	0.266607715
0.502956863	0.267388629
0.502494666	0.268216994
0.502030682	0.269126186
0.501551506	0.270124782
0.501043262	0.271215202
0.500492275	0.272399854
0.499885062	0.273681129
0.499207004	0.275062515
0.498438465	0.276551922
0.497558766	0.278158244
0.4965475	0.279890218
0.495384539	0.281756416
0.494064276	0.28375259
0.492638008	0.28582404
0.491170606	0.287904091
0.489726204	0.289926803
0.488368202	0.291826973
0.487143002	0.293556914
0.4860316	0.295136404
0.484999047	0.296601673
0.484010811	0.297988529
0.483032785	0.299332347
0.482034609	0.300665165
0.480999548	0.302007054
0.479914365	0.303374971
0.478765969	0.30478569
0.477541412	0.306255799
0.476239557	0.307790354
0.474905782	0.309349095
0.473596442	0.310881046
0.47236713	0.312335928
0.471272722	0.313664128
0.470354834	0.314828481
0.469604455	0.31583941
0.469000223	0.316718933
0.468521062	0.317488777
0.468146176	0.318170396
0.467854005	0.318785037
0.467619157	0.31935393
0.467415509	0.319898115
0.467217218	0.320438403
0.466998701	0.320995388
0.466739538	0.321585037
0.466439124	0.322205501
0.466101748	0.322850542
0.465731662	0.323513969
0.465333078	0.324189641
0.464909952	0.324871922
0.464465332	0.325557068
0.464002028	0.32624181
0.463522841	0.326922889
0.463030555	0.327597056
0.462527945	0.328261745
0.462017749	0.328917096
0.46150268	0.32956392
0.46098543	0.330203017
0.460468668	0.330835183
0.459955041	0.331461203
0.459447174	0.332081858
0.458947669	0.33269792
0.458459106	0.333310153
0.457984041	0.333919314];
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






