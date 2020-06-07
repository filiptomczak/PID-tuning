clear;
clc;
%%%
global Kp;
global Ki;
global Kd;

Kp=0;
Ki=0;
Kd=0;

%%%
tic 
display('obliczam...')
pops=10;
dim=3;
strl=20;
x_bound=[0,100;0,10;0,10];
pm=0.1;
pop=encoding(pops,strl,dim);
pop=decoding(pop,strl,dim,x_bound);
[choice_number,choice_k]=min(pop(:,strl*dim+1));
choice=pop(choice_k);

for i=1:20 %iteracje
    new_pop=cross_over(pop,pops,strl,dim);
    pop=mutation(new_pop,strl,dim,pm);
    pop=decoding(pop,strl,dim,x_bound);
    [number,k]=min(pop(:,strl*dim+1)); %choose min funname value
    
    if choice_number>number
        choice_number=number;
        choice_k=k;
        choice=pop(choice_k,:);
    end
    pop=selection(pop,pops,strl,dim);
    [number,m]=min(pop(:,strl*dim+1));
    pop(m,:)=choice;
end
[value,x]=result(pop,strl,dim,x_bound);
Kp=x(1)
Ki=x(2)
Kd=x(3)
wIAE=value
toc
