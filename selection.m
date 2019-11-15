function selected=selection(pop,pops,strl,dim)
pops_new=size(pop,1); %10
r=rand(1,pops); %losowa liczba do selekcji
fit=pop(:,dim*strl+1); %wartosci funkcji celu
fit=fit/sum(fit); %wartosci wzgledem sumy
fit=cumsum(fit); %skumulowana wartosc fit, kolejne wiersze to suma poprzednich
for i=1:pops
    for j=1:pops_new
        if r(i)<=fit(j); %r(1)<=fit(3), 0. 
            selected(i,:)=pop(j,:);
            break;
        end
    end
end
