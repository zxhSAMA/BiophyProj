function Epigenetic_Bistability
%global n gamma0 lamda
% n=1;
% gamma0=0.6;
% lamda=0.15;
format long;
global rou ita alpha lamda gamma0 n
rou=1;
ita=rou*0.05;
alpha=1;
lamda=alpha*0.15;
gamma0=alpha*0.6;
n=4;

figure('name','solve the static equation');
for i=0:0.001:0.1
    ita=i;
y0=[1,1];
options=odeset('AbsTol',1e-6);
tspan=0:0.01:100;
[t,var]=ode45(@Epi_delta,tspan,y0,options);

plot(t,var(:,1),'r',t,var(:,2),'b');
legend('S','A');
% axis([0,1,0,1]);
axis([0,100,0,1]);
title(['n=4 ','ita=',num2str(i,3)]);
xlabel('t'),ylabel('degree of acetylation & probability of occupation by Sir complex');
% pause(0.01);
saveas(gcf,[num2str(1000*i),'.jpg']);
end

% var(1)==S;var(2)==A
function dy=Epi_delta(t,var)
%global n gamma0 lamda
%alpha=(lamda+gamma0*var(1))^2/((1-var(1))*((gamma0+lamda)*(n-1)*var(1)-lamda*(1-var(1))));
%rou
global rou ita alpha lamda gamma0 n
dy=zeros(2,1);
dy(1)=rou*(1-var(1))*(1-var(2))^n-ita*var(1);
dy(2)=alpha*(1-var(2))*(1-var(1))*1-(lamda+gamma0*var(1))*var(2);




