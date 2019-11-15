clc;clear;
Kp=0;
t1=5;
t2=7;
n=100;
t=1;
for i=0:0.1:10
    Kp=i;
    sim('regP')
    iae(t,:)=[Kp,IAE(end)];
    t=t+1;
end

A=sortrows(iae,1);
minIAE=A(101,2)
optKp=A(101,1)