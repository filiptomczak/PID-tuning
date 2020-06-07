function[value,x]=result(pop,strl,dim,x_bound)
[value,k]=min(pop(:,strl*dim+1)); %choose best fitness
temp=2.^(strl-1:-1:0)/(2^strl-1); 
for i=1:dim
    bound(i)=x_bound(i,2)-x_bound(i,1);
end
for j=1:dim
    m(:,j)=pop(k,strl*(j-1)+1:strl*j);
end
x=temp*m ;
x=x.*bound+x_bound(:,1)' ;
