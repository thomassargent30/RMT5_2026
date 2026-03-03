clear;

beta = 0.75;
dividend = [0 1]';

init= [0.5 0.5]';
I = eye(2);

Prob_a = [0.5 0.5
          2/3 1/3];
Prob_b = [2/3 1/3
          1/4 3/4];

Dist_a = init;
for i= 1:100;
     Dist_a = Prob_a' * Dist_a;
end;
Dist_a

Dist_b = init;
for i= 1:100;
     Dist_b = Prob_b' * Dist_b;
end;
Dist_b

Price_a = beta.* inv(I-beta.*Prob_a) * Prob_a * dividend

Price_b = beta.* inv(I-beta.*Prob_b) * Prob_b * dividend

P_old = init;
P     = init;
for i=1:100;
   P(1) = beta*max(Prob_a(1,1)*(dividend(1)+P_old(1))  ...
                  +Prob_a(1,2)*(dividend(2)+P_old(2)), ...
                   Prob_b(1,1)*(dividend(1)+P_old(1))  ...
                  +Prob_b(1,2)*(dividend(2)+P_old(2)));

   P(2) = beta*max(Prob_a(2,1)*(dividend(1)+P_old(1))  ...
                  +Prob_a(2,2)*(dividend(2)+P_old(2)), ...
                   Prob_b(2,1)*(dividend(1)+P_old(1))  ...
                  +Prob_b(2,2)*(dividend(2)+P_old(2)));

  P_old = P;
end;
P

P_max_a = [beta*(Prob_a(1,1)*(dividend(1)+P(1))   ...
                +Prob_a(1,2)*(dividend(2)+P(2)))  ...
           beta*(Prob_a(2,1)*(dividend(1)+P(1))   ...
                +Prob_a(2,2)*(dividend(2)+P(2))) ]

P_max_b = [beta*(Prob_b(1,1)*(dividend(1)+P(1))   ...
                +Prob_b(1,2)*(dividend(2)+P(2)))  ...
           beta*(Prob_b(2,1)*(dividend(1)+P(1))   ...
                +Prob_b(2,2)*(dividend(2)+P(2))) ]

%Agent a's return if true transition prob is Prob_a(1,1) 
%(earns 1/beta=1.33333)
(Prob_a(1,1)*dividend(1)  ...
+ (1-Prob_a(1,1))*(dividend(2)+P(2)))/  ...
((1-beta*Prob_a(1,1))*P(1))

%Agent b's return if true transition prob is Prob_b(2,2) 
%(earns 1/beta=1.33333)
(Prob_b(2,2)*dividend(2)  ...
+(1-Prob_b(2,2))*(dividend(1)+P(1)))/   ...
           ((1-beta*Prob_b(2,2))*P(2))




%%TRUE probabilities

P11 = [];
P22 = [];


for i=1:19
  Prob(1,1)=0.05*i;
  Prob(1,2)=1-Prob(1,1);
  P11(i)=Prob(1,1);

  for j=1:19
     Prob(2,2)=0.05*j;
     Prob(2,1)=1-Prob(2,2);
     P22(j)=Prob(2,2);

     Dist = init;
     for k= 1:100;
       Dist = Prob' * Dist;
     end;

    Dist_record(i,j) = Dist(2);



    Pay_a = Dist(1)*(Prob(1,1)*dividend(1)          ...
                    +Prob(1,2)*(dividend(2)+P(2)))  ...
          - Dist(2)*Prob(2,1)*P(1);

    Pay_b = Dist(2)*(Prob(2,2)*dividend(2)          ...
                    +Prob(2,1)*(dividend(1)+P(1)))  ...
          - Dist(1)*Prob(1,2)*P(2);

    Fund_period = Dist(1)*(Prob(1,1)*dividend(1)    ...
                          +Prob(1,2)*dividend(2))   ...
                + Dist(2)*(Prob(2,2)*dividend(2)    ...
                          +Prob(2,1)*dividend(1));


    Util_a = Dist(1)*0.5*(- P(1))       ...
           + Dist(2)*0.5*(P(2));

    Util_b = Dist(1)*0.5*(P(1))       ...
           + Dist(2)*0.5*(-P(2));

    Util_sell_all = Dist(1)*0.5*(P(1))       ...
                  + Dist(2)*0.5*(P(2));



    Fund = 0;  %%Dist(1)*dividend(1) + Dist(2)*dividend(2);



    Utility_a(i,j)   = Util_a + beta * Pay_a/(1-beta);
    Utility_b(i,j)   = Util_b + beta * Pay_b/(1-beta);
    Fundamental(i,j) = Fund + beta * Fund_period/(1-beta);

    Max_a_b(i,j) = max(Utility_a(i,j),Utility_b(i,j));

    if Util_sell_all > Max_a_b(i,j)
        Dummy_sell_all(i,j) = 1;
    else
        Dummy_sell_all(i,j) = 0;
    end


    R_a(i,j) = (Prob(1,1)*dividend(1)               ...
              + (1-Prob(1,1))*(dividend(2)+P(2)))/  ...
              ((1-beta*Prob(1,1))*P(1));

    R_b(i,j) = (Prob(2,2)*dividend(2)               ...
              + (1-Prob(2,2))*(dividend(1)+P(1)))/  ...
              ((1-beta*Prob(2,2))*P(2));
  end;
end;


Share_a = Utility_a./Fundamental;
Share_b = Utility_b./Fundamental;


Rnet_a = (R_a-1).*100;
Rnet_b = (R_b-1).*100;


mesh(P22,P11,Share_a)
zlabel('Share of agent a','Fontsize',16);
xlabel('\pi(2,2)','Fontsize',16);
ylabel('\pi(1,1)','Fontsize',16);
set(gca,'Fontsize',18);
axis([0 1 0 1 -2 2]);
view(-37.5, 30);                           %37.5, 30
%print -deps HK_PVshare_a.eps
%pause;


P11_50 = ones(size(P22)).*0.5;
P22_75 = ones(size(P22)).*0.75;


mesh(P22,P11,Share_b,'LineStyle',':')
%shading interp
colormap gray;
zlabel('Share of agent b','Fontsize',16);
xlabel('P(2,2)','Fontsize',16);
ylabel('P(1,1)','Fontsize',16);
text(.85,.35,Share_b(7,17)+.1,'I', ...
    'FontSize',16);
text(.85,.55,Share_b(11,17)+.1,'II', ...
    'FontSize',16);
text(.40,.35,Share_b(7,8)+.1,'IV', ...
    'FontSize',16);
text(.40,.55,Share_b(11,8)+.1,'III', ...
    'FontSize',16);
set(gca,'Fontsize',18);
%grid on;
%set(gca,'GridLineStyle','-')
axis([0 1 0 1 -0.25 2]);
hold on;
contour3(P22,P11,Share_b,[0.5 0.5], ...
      'LineWidth',1,'LineStyle','--','color','black');
plot3(P22,P11_50,Share_b(10,:),'LineWidth',1, ...
                                 'color','black');
plot3(P22_75,P11,Share_b(:,15),'LineWidth',1, ...
                                 'color','black');
hold off;
view(-37.5, 30);                           %37.5, 30
print -deps HK_PVshare_b.eps
pause;



mesh(P22,P11,Rnet_a)
zlabel('Return of agent a','Fontsize',16);
xlabel('\pi(2,2)','Fontsize',16);
ylabel('\pi(1,1)','Fontsize',16);
set(gca,'Fontsize',18);
axis([0 1 0 1 -100 100]);
view(-37.5, 30);                           %37.5, 30
%%%print -deps HK_return_a.eps
%pause;

mesh(P22,P11,Rnet_b)
zlabel('Return of agent b','Fontsize',16);
xlabel('\pi(2,2)','Fontsize',16);
ylabel('\pi(1,1)','Fontsize',16);
set(gca,'Fontsize',18);
axis([0 1 0 1 -100 100]);
view(-37.5, 30);                           %37.5, 30
%%%print -deps HK_return_b.eps
%pause;


plot(P11,Rnet_a,'-',[0 .5],[33 33],'--',   ...
                    [.5 .5],[-100 33],'--')
ylabel('Net return of agent a (%)','Fontsize',16);
xlabel('P(1,1)','Fontsize',16);
set(gca,'Fontsize',18);
axis([0 1 -80 80]);
text(.5,39,'(0.5, 33%)','FontSize',16);
print -deps HK_rr_a.eps
pause;

plot(P22,Rnet_b(1,:),'-',[0 .75],[33 33],'--',   ...
                         [.75 .75],[-100 33],'--')
ylabel('Net return of agent b (%)','Fontsize',16);
xlabel('P(2,2)','Fontsize',16);
set(gca,'Fontsize',18);
axis([0 1 -80 80]);
text(.49,40,'(0.75, 33%)','FontSize',16);
print -deps HK_rr_b.eps
pause;


