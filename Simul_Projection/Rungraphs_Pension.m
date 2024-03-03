% Demographic Structure and Macroeconomic Trends - Aksoy, Basso, Smith, Grasl 
% This code runs the aging simulation for all cases and produces figure 7 of
% the paper.


parampredic_Kor_1980;
flag = DemoMediunRunFinal_SS_pension_Kor_1980
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980

% 인구 중위 전망치
parampredic_Kor_2019;
flag = DemoMediunRunFinal_SS_pension_Kor_2019
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980

% 인구 고위 전망치
parampredic_Kor_2019_better;
flag = DemoMediunRunFinal_SS_pension_Kor_2019_better
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980

% 인구 저위 전망치
parampredic_Kor_2019_worse;
flag = DemoMediunRunFinal_SS_pension_Kor_2019_worse
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980

% 인구 중위 전망치 + 정년연장 개혁 (60 -> 65)
parampredic_Kor_2019_retiree_65;
flag = DemoMediunRunFinal_SS_pension_Kor_2019_retiree_65
dynare DemoMediumRunFinal_pop_pension_Kor

% 인구 중위 전망치 + rhoyw = 0
parampredic_Kor_2019;
flag = DemoMediunRunFinal_SS_pension_Kor_2019_rhoyw_0
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980

% 인구 중위 전망치(미국_대충)
parampredic_US_unreal_2019;
flag = DemoMediunRunFinal_SS_pension_US_unreal_2019
dynare DemoMediumRunFinal_pop_pension_Kor
% from 1980



% clear all
% load Case1oo_
% gn = oo_.irfs.gn_delg;
% zetay = oo_.irfs.zetay_delg;
% zetar = oo_.irfs.zetar_delg;
% stoyw = oo_.irfs.stoyw_delg;
% gA = oo_.irfs.gA_delg;
% g = oo_.irfs.g_delg;
% gy = oo_.irfs.gy_delg;
% za = oo_.irfs.za_delg;
% gE = oo_.irfs.gE_delg;
% cw = oo_.irfs.cw_delg;
% cr = oo_.irfs.cr_delg;
% inv = oo_.irfs.inv_delg;
% varsig = oo_.irfs.varsig_delg;
% r = oo_.irfs.r_delg;
% 
% labels = char('Young Dependency Ratio (zeta^y)', 'Old Dependency Ratio (zeta^r)', 'Workers in Innovation (gamma^{yw})','    Technological growth (g^A)', '    Output Growth (g)', '   Human capital growth (g^{xi})', 'Interest Rate', 'Investment', 'MPC workers');
% var = [ zetay' zetar' stoyw' gA' gy' gE' r' inv' varsig'];
% m = size(gn,2);
% t = 1:1:m;
% figure(55)
% for i = 1:1:9;
% subplot(3,3,i,'Fontsize', 8);
% plot(t,var(:,i)','-.k','LineWidth', 2)
% title(texlabel(labels(i,:)),'Fontsize', 8)
% hold on
% end
% 
% load Case2oo_
% gn = oo_.irfs.gn_delg;
% zetay = oo_.irfs.zetay_delg;
% zetar = oo_.irfs.zetar_delg;
% stoyw = oo_.irfs.stoyw_delg;
% gA = oo_.irfs.gA_delg;
% g = oo_.irfs.g_delg;
% gy = oo_.irfs.gy_delg;
% za = oo_.irfs.za_delg;
% gE = oo_.irfs.gE_delg;
% cw = oo_.irfs.cw_delg;
% cr = oo_.irfs.cr_delg;
% inv = oo_.irfs.inv_delg;
% varsig = oo_.irfs.varsig_delg;
% r = oo_.irfs.r_delg;
% 
% labels = char('Young Dependency Ratio (zeta^y)', 'Old Dependency Ratio (zeta^r)', 'Workers in Innovation (gamma^{yw})','      Technological growth (g^A)', '      Output Growth (g)', '     Human capital growth (g^{xi})', 'Interest Rate', 'Investment', 'MPC workers');
% var = [ zetay' zetar' stoyw' gA' gy' gE' r' inv' varsig'];
% m = size(gn,2);
% t = 1:1:m;
% figure(55)
% for i = 1:1:9;
% subplot(3,3,i,'Fontsize', 8);
% plot(t,var(1:m,i)','.b','LineWidth', 2)
% title(texlabel(labels(i,:)),'Fontsize', 8)
% hold on
% end
% 
% clear all
% load Case13oo_
% gn = oo_.irfs.gn_delg;
% zetay = oo_.irfs.zetay_delg;
% zetar = oo_.irfs.zetar_delg;
% stoyw = oo_.irfs.stoyw_delg;
% gA = oo_.irfs.gA_delg;
% g = oo_.irfs.g_delg;
% gy = oo_.irfs.gy_delg;
% za = oo_.irfs.za_delg;
% gE = oo_.irfs.gE_delg;
% cw = oo_.irfs.cw_delg;
% cr = oo_.irfs.cr_delg;
% inv = oo_.irfs.inv_delg;
% varsig = oo_.irfs.varsig_delg;
% r = oo_.irfs.r_delg;
% 
% labels = char('Young Dependency Ratio (zeta^y)', 'Old Dependency Ratio (zeta^r)', 'Workers in Innovation (gamma^{yw})','    Technological growth (g^A)', '    Output Growth (g)', '   Human capital growth (g^{xi})', 'Interest Rate', 'Investment', 'MPC workers');
% var = [ zetay' zetar' stoyw' gA' gy' gE' r' inv' varsig'];
% m = size(gn,2);
% t = 1:1:m;
% figure(55)
% for i = 1:1:9;
% subplot(3,3,i,'Fontsize', 8);
% plot(t,var(:,i)',':r','LineWidth', 2)
% title(texlabel(labels(i,:)),'Fontsize', 8)
% hold on
% end
% 
% clear all
% load Case11oo_
% gn = oo_.irfs.gn_delg;
% zetay = oo_.irfs.zetay_delg;
% zetar = oo_.irfs.zetar_delg;
% stoyw = oo_.irfs.stoyw_delg;
% gA = oo_.irfs.gA_delg;
% g = oo_.irfs.g_delg;
% gy = oo_.irfs.gy_delg;
% za = oo_.irfs.za_delg;
% gE = oo_.irfs.gE_delg;
% cw = oo_.irfs.cw_delg;
% cr = oo_.irfs.cr_delg;
% inv = oo_.irfs.inv_delg;
% varsig = oo_.irfs.varsig_delg;
% r = oo_.irfs.r_delg;
% 
% 
% labels = char('   Young Dependency Ratio (zeta^y)', '   Old Dependency Ratio (zeta^r)', '        Innovation workers (gamma^{yw})','           Technological growth (g^A)', '       Output growth (g)', '        Human capital growth (g^{xi})', '    Interest Rate', '    Investment', '    MPC workers');
% var = [ zetay' zetar' stoyw' gA' gy' gE' r' inv' varsig'];
% m = size(gn,2);
% t = 1:1:m;
% figure(55)
% for i = 1:1:9;
% subplot(3,3,i,'Fontsize', 8);
% plot(t,var(:,i)','-g','LineWidth', 1)
% set(gca,'fontsize',8)
% title(texlabel(labels(i,:)),'Fontsize', 8)
% hold on
% if i == 9
% h = legend(texlabel('Benchmark'), texlabel('No AS Channel (rho_{yw}  =   0)'), texlabel('Shifting Age Distribution'), texlabel('Pension and Health'));
% set(h,'Position', [0.5 0.02 0.05 0.05], 'Orientation', 'horizontal','Box', 'off');
% end
% %if i == 1
% %hold on
% %axis([0 100 -0.001 0.001])
% %hold off
% %end
% 
% end