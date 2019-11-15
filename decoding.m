function pop=decoding(pop,strl,dim,x_bound)

pops=size(pop,1);
temp=2.^(strl-1:-1:0)/(2^strl-1);
for i=1:dim
    bound(i)=x_bound(i,2)-x_bound(i,1); %bound(1)=x_bound(1,2)-x_bound(1,1) czyli np bound(1)=3-0
end
for i=1:pops
    for j=1:dim
        m(:,j)=pop(i,strl*(j-1)+1:strl*j); %pop(1,1:8) pop(1,9:16) pop(1,17:24)
    end
    x=temp*m; %m to macierz w ktorej kolumny to wart x1,x2 i x3, wymnazamy przez potegi dwójki
    x=x.*bound+x_bound(:,1)' ;%mnozymy przez granice 
    
    pop(i,dim*strl+1)=funname(x); %do macierzy populacji dopisujemy wartosc funkcji celu

end
