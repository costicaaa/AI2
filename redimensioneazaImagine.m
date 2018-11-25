function imgRedimensionata = redimensioneazaImagine(img,parametri)
%redimensioneaza imaginea
%
%input: img - imaginea initiala
%       parametri - stuctura de defineste modul in care face redimensionarea
%
% output: imgRedimensionata - imaginea redimensionata obtinuta


optiuneRedimensionare = parametri.optiuneRedimensionare;
metodaSelectareDrum = parametri.metodaSelectareDrum;
ploteazaDrum = parametri.ploteazaDrum;
culoareDrum = parametri.culoareDrum;

switch optiuneRedimensionare
    
    case 'micsoreazaLatime'
        imgRedimensionata = micsoreazaLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        
    case 'micsoreazaInaltime'
        img = imrotate(img, 90);
        imgRedimensionataRotita = micsoreazaLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        imgRedimensionata = imrotate(imgRedimensionataRotita, -90);
        
    case 'maresteLatime'
        imgRedimensionata = maresteLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        
    case 'maresteInaltime'
        img = imrotate(img, 90);
        imgRedimensionataRotita = maresteLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        imgRedimensionata = imrotate(imgRedimensionataRotita, -90);
        
    case 'maresteAmbele'
        imgRedimensionata = maresteLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        
        img = imrotate(imgRedimensionata, 90);
        imgRedimensionataRotita = maresteLatime(img,parametri.nrPixeli,metodaSelectareDrum,...
            ploteazaDrum,culoareDrum);
        imgRedimensionata = imrotate(imgRedimensionataRotita, -90);
        
    case 'amplificaContinut'
        
        
    case 'eliminaObiect'
        %completati aici codul vostru
        
end