syms nl;% proby probr gw gr; %zer %zey;
proby = 1-1/20;
probw = 1-1/40 ;%0.975
probr = 1-1/10;
A=[nl + proby 0 0;
    1-proby probw 0;
    0 1-probw probr];
[V D]=eig(A);
zey_list=[];
zer_list=[];
gn_list=[];
nl_list=[];
for i = 1:10
zey = 0.1*i;
zey_list=[zey_list zey];
nl=vpasolve(V(1,3)/V(2,3)== zey,nl);
% %nl = 141/2000
nl_list=[nl_list nl];
zer=eval(V(3,3)/V(2,3));
gn=D(3,3);
gn=eval(gn);
gn_list=[gn_list gn];
zer=eval(zer);
zer_list=[zer_list zer];
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% extract zey zer from shareW shareR

% shareW = 1/(1+zey+zer);
% shareR = zer / (1+zey+zer) = zer*shareW;
% 1980 : shareW 0.50355134, shareR 0.0381922567

% syms zer zey;
% zer = vpasolve(0.0381922567 == zer*0.50355134,zer)
% zey = vpasolve(0.50355134 == 1/(1+zer+zey),zey)
% % 1980 : zey 0.91 , zer 0.076
%  






%2019 _ 65 retiree
%  zey=solve(0.67468983  == 1/(1+zey+zer),zey)
%  zer=solve(0.174489345 == zer / (1+zey+zer),zer)
%  zey=subs(zey)

% zey = 0.2235z
% zer = 0.2586

%zey = 0.2109
%zer= 0.2706

% proby = 0.95
% probw = 0.9778
% probr = 0.9
% A=[nl + proby 0 0;
%     1-proby probw 0;
%     0 1-probw probr];
% [V D]=eig(A)
% nl=solve((((20*nl + 1)*(5000*nl - 139))/111)/((5000*nl)/111 + 250/111) == zey,nl) 
% zer01=1/((5000*nl)/111 + 250/111)
% 
% gw = probw+(1-proby)*zey
% 
% %gw=solve(gw*zer == ((1-probw) + probr*zer), gw)
% %eval(gw) =     1.2298
% 
% nl=gw-proby
%nl=0.06;
%x=[0.91 ;1 ;0.0758];


%nl=solve(5*(4*nl+1)*(40*nl-1)/(40*nl+10) == zey,nl) 

%nl = 141/2000
%zer01=1/(40*nl+10)

% x=linspace(1,18,18)
% y=[]
% for i = 1:18
% y(i)=19/18*(x(i)-1)+1
% end
