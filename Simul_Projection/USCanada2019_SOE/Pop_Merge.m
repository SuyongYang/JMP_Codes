%%History and Projected Pop Data merge
%%History : 2000-2019
%%Project : 2020-2100

totpop01=table2array(readtable('ByAgeHist2000_2019.xlsx'));

for i = 1:9
    name= sprintf("ByAgeProj2019Lower.%d.xlsx",50+i*5);
    totpop02=table2array(readtable(name));;
    totpop=[totpop01;totpop02]
    name= sprintf("ByAgeProj2019LowerMerge.%d.xlsx",50+i*5);
    writematrix(totpop,name)
    name= sprintf("ByAgeProj2019Upper.%d.xlsx",50+i*5);
    totpop02=table2array(readtable(name));;
    totpop=[totpop01;totpop02]
    name= sprintf("ByAgeProj2019UpperMerge.%d.xlsx",50+i*5);
    writematrix(totpop,name)
end

