function new_pop=cross_over(pop,pops,strl,dim)
match=round(rand(1,pops)*(pops-1))+1; %wybór które elementy zostan¹ rodzicami
for i=1:pops
    [child1,child2]=cross_running(pop(i,:),pop(match(i),:),strl,dim); %cross_running(parent1,parent2,strl,dim)
    new_pop(2*i-1:2*i,:)=[child1;child2];
end

function [child1,child2]=cross_running(parent1,parent2,strl,dim)
cpoint=round(((strl-1)*rand(1,dim))+1); %wartosc domyslna z przedzialu od 1-9

for j=1:dim
    child1((j-1)*strl+1:j*strl)=[parent1((j-1)*strl+1:(j-1)*strl+cpoint(j)),parent2((j-1)*strl+cpoint(j)+1:j*strl)];
    %child (1:8...9:16..17:24:) i jest maks=3 a strl = 8
    child2((j-1)*strl+1:j*strl)=[parent2((j-1)*strl+1:(j-1)*strl+cpoint(j)),parent1((j-1)*strl+cpoint(j)+1:j*strl)];
end

% cpoint2 = floor(rand*10) ;
% cpoint = (8-1)*rand(1,3)+1
% child1= [parent1(1:cpoint2), parent2(cpoint2+1:9)]; 
% child2= [parent2(1:cpoint2), parent1(cpoint2+1:9)];
