clc;
clear all;
tic
Kd=1;
Kp=1;
Ki=1;
n=1000;
t=0:1:n-1;

obiektK=[2];
T=5;
Eps=0.1;

obiektDen=[T^2 T*Eps 1];
obiektTf=tf(obiektK, obiektDen);

l=1;
for Kd=1:1:10
    for Kp=1:1:30
        for Ki=1:1:10
            sim('regPID')
            iae(l,:)=[IAE(end),Kd,Kp,Ki];
            c(l,:)=IAE(end);
            l=l+1;
        end
    end
end
    
A=sortrows(iae,1);
minIAE=A(1,1)
optKp=A(1,3)
optKi=A(1,4)
optKd=A(1,2)



toc


% PIDgain=[Kd Kp Ki];
% PIDden=[1 0];
% PIDreg=tf(PIDgain,PIDden);
% %  
% % plot(iae)
% % 
% sim('regulatorPID')
% 
% subplot(3,1,1)
% plot(t,y_wy,'b',t,uchyb,'r')
% legend('y(t)','e(t)')
% subplot(3,1,2)
% plot(t,IAE,'b',t,ISE,'r')
% legend('IAE','ISE','ITAE')
% subplot(3,1,3)
% plot(t,ITAE,'g')
% legend('ITAE')