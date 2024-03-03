%syms nl gw zey zer proby probw probr

proby = 0.95;
probw = 0.975;
probr = 0.9;
nl=linspace(0,.1,100)
for i = 1:length(nl)
gw(i) = nl(i)+proby;
zey(i) = (gw(i) - probw)/(1-proby);
zer(i) = (1-probw)/(gw(i)-probr);
end

plot(nl,gw,'k',nl,zey,'b',nl,zer,'r')
legend('pop growth','young dep ratio','old dep ratio')
grid on
