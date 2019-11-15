% function[child1,child2]=cross_running(parent1,parent2,strl,dim)
% %cpoint=round(((strl-1)*rand(1,dim))+1);
% % for j=1:dim
% %    child1((j-1)*strl)=[parent1((j-1)*strl+1:(j-1)*strl+cpoint(j)),parent2((j-1)*strl+cpoint(j)+1:j*strl)];
% %    child2((j-1)*strl)=[parent2((j-1)*strl+1:(j-1)*strl+cpoint(j)),parent1((j-1)*strl+cpoint(j)+1:j*strl)];
% % end
% cpoint2 = floor(rand*10) ;
% child1= [parent1(1:cpoint2), parent2(cpoint2+1:9)];
% child2= [parent2(1:cpoint2), parent1(cpoint2+1:9)];