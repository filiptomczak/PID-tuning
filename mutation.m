function new_pop=mutation(new_pop,strl,dim,pm)
new_pops=size(new_pop,1);
for i=1:new_pops
    if rand<pm   %jeœli losowa liczba < od pm(np 0.05) to wtedy zachodzi mutacja
        mpoint=round(rand(1,dim)*(strl-1))+1; %losowa liczba z przedzialu od 1-8
        %mpoint2=round((strl-1)*rand()+1);
        %new_pop
        for j=1:dim
            new_pop( i,(j-1)*strl+mpoint(j) ) = 1-new_pop(i,(j-1)*strl+mpoint(j));%new_pop(1,mpoint)=1-new_pop(1,mpoint)
            %jesli wartosc new_pop(1,mpoint)=1 to zostanie zmieniona na 0 i na odwrót
        end
    end
end