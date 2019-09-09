close;

I = imread('Color.jpg');
figure(1),imshow(I),title('immagine originale');
if length(unique(I)) > 255
    
    [r,g,b] = imsplit(I);
 
    [r, ~, ~] = mygauss(r);
    [g, ~, ~] = mygauss(g);
    [b, M, N] = mygauss(b);
    
    final_image = uint8(cat(3, r, g, b));
    figure(2),imshow(final_image),title('immagine a colori con filtro applicato');

else
    [bn, M, N] = mygauss(I);
    figure(2),imshow(uint8(bn)),title('immagine in bianco e nero con filtro applicato');
end






