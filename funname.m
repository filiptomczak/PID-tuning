function y=funname(x)
global Kp;
global Ki;
global Kd;
Kp=x(1);
Ki=x(2);
Kd=x(3);

 sim('regPID')
   y=IAE(end);
%    iae(t,:)=[Kp,IAE(end)];
%    t=t+1;
%    A=sortrows(iae,1)
   