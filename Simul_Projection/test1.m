clear
load EconData.csv;

A=[22 13 12 7 4 21 8];
%B=['Us' 'Jp' 'It' 'Fr' 'Ca' 'Uk' 'Ger'];
C=[];
T=[];
for i = 1:1:7
    C(i,1)=A(i);
    C(i,2)=1+45*(A(i)-1);
    C(i,3)=45+45*(A(i)-1);
    T = [T ;EconData(C(i,2):C(i,3),4)];
end