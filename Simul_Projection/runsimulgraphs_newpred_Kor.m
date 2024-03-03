% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code runs the predictions for each country and produces the projection
% figures for the bechmark model

DemoMediunRunFinalPred_SS
% vecpos = [22 13 12 7]; %US Japan Italy France
% vecpos2 = [4 1 9 18]; % Canada Australia Greece Spain
% grop = 1;
% if grop==1
% load shadedarea1_g1
% load shadedarea2_g1
% load Estpath_g1
% else
% load shadedarea1_g2
% load shadedarea2_g2
% load Estpath_g2
% end

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

%load EconData.csv;

%for i = 1:1:4
    
% if grop == 1;
% flag = vecpos(i);
% else
% flag = vecpos2(i);
% end    
% 
% DataCountry = EconData(1+45*(flag-1):45+45*(flag-1),:);

%Outputg = [];
%start
%kor_longterm_growth = hpfilter(0.01*[7.5	5.6	0.6	9.4	6.6	5.6	2.3	6.9	3.9	9	9.5	7.3	12	9.1	13.2	14.6	10.1	10.5	7.2	14.9	9.5	7.8	13.2	12.3	11	8.7	-1.6	7.2	8.3	13.4	10.6	7.8	11.3	12.7	12	7.1	9.9	10.8	6.2	6.9	9.3	9.6	7.9	6.2	-5.1	11.5	9.1	4.9	7.7	3.1	5.2	4.3	5.3	5.8	3	0.8	6.8	3.7	2.4	3.2	3.2	2.8	2.9	3.2	2.9	2.2	-0.9],100)
%kor_longterm_real_r = hpfilter([0.0477201133	0.122282058	0.120081025	0.0790142453	0.144453151	0.151256031	0.127148619	0.120236268	0.103366161	0.0817153205	0.0839572237	0.0592788778	0.0720917811	0.0970277179	0.10149715	0.144067396	0.122809492	0.09481845	0.105460561	0.104794358	0.105516347	0.10096588	0.146323481	0.0403460552	0.0342399942	0.0351043162	0.0271292709	0.0246701787	0.0246781135	0.0237145326	0.0310385017	0.0278394837	0.0360195558	0.0072529373	0.00443678589	0.0215019312	0.0251572636	0.020358238	0.0203148443	0.0122589996	0.00506780774	0.00625793183	0.0135700571	0.0136002081],100)

g_ini = 0.0839; %Growth
r_ini = 0.1027;%Real rate
if flag ==8 %Germany
    g_ini =  0.0211;
    r_ini= 0.012;
end
parampredic_Kor;
%country(i,:) = country_flag;
dynare DemoMediumRunFinal_newpred noclearall
load pred_param
load CasePredoo_
%input initial rate and growth
g = oo_.irfs.g_delall;
gy = oo_.irfs.gy_delall;
sw = oo_.irfs.shareW_delall;
r = oo_.irfs.r_delall;
t = 1980:1:2071;
actualg(i,:) = g+(g_ini);
%actualgy(i,:) = gy+(g_ini-gy(6));
actualr(i,:) = r+(r_ini);
%end



figure(101)
%hold on
%for i = 1:1:4;
%subplot(2,4,i,'Fontsize', 4);
%shadedplot(t(6:end-4),shadedarea11(i,1:21),shadedarea12(i,1:21),[200/255 200/255 200/255],'k')
%hold on
%plot(t(1:end-4),EstPath1(i,1:21),'-b','LineWidth', 2)
%hold on
plot(t(1:length(actualg)),actualg(1:end),'-.k','LineWidth', 2)
%set(gca,'fontsize',6)
%if i==1
ylabel('Output Growth')
%end
%title(country(i,:), 'Fontsize', 8)
%hold on
% subplot(2,4,i+4,'Fontsize', 4);
% [ha, hb, hc] = shadedplot(t(6:end-4),shadedarea21(i,1:21),shadedarea22(i,1:21),[200/255 200/255 200/255],'k')
% hold on
% h1 = plot(t(6:end-4),EstPath2(i,1:21),'-b','LineWidth', 2)
% hold on
plot(t(1:length(actualr)),actualr(1:end),'-.k','LineWidth', 2)
% set(gca,'fontsize',6)
% if i==1
ylabel('Real Interest Rate')
% end
% xlabel('Years')
% text( -0.5,1.5,country)
% end
% if i == 4
% h = legend([h1 h2 ha(2)], texlabel('Estimated Projection'), texlabel('Model Projection'),texlabel('One-sided 90% Interval') );
% set(h,'Position', [0.5 0.01 0.05 0.05], 'Orientation', 'horizontal','Box', 'off');
% end
% hold off


%clear all

%Print Preview - after best fit set width 8.25 heigh 4.5
%This code run the predictions for each country


