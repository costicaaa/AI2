function img = maresteLatime(img,numarPixeliLatime,metodaSelectareDrum,ploteazaDrum,culoareDrum)

img2 = img;
for i = 1:numarPixeliLatime
    
    disp(['Adaugam drumul vertical numarul ' num2str(i) ...
        ' dintr-un total de ' num2str(numarPixeliLatime)]);
    
    %calculeaza energia dupa ecuatia (1) din articol
    E = calculeazaEnergie(img2);
    
    %alege drumul vertical care conecteaza sus de jos
    drum = selecteazaDrumVertical(E,metodaSelectareDrum);
    
    %afiseaza drum
    if ploteazaDrum
        ploteazaDrumVertical(img,E,drum,culoareDrum);
        pause(1);
        close(gcf);
    end

    img2 = eliminaDrumVertical(img2, drum);
    %adauga drumul in imagine
    img = adaugaDrumVertical(img,drum);
end


