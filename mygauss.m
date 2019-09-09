function [filtered_image, M, N] = mygauss(image) 

fft_image = fft2(image);

fftshift_image = fftshift(fft_image);
[M, N] = size(image);
filter = fspecial( 'gaussian', [M,N] ,2);
fft_filter = fft2 (filter); 

fftshift_filter = fftshift(fft_filter);

fftshift_filtered_image = fftshift_filter.*fftshift_image;

fft_filtered_image = ifftshift(fftshift_filtered_image);
filtered_image = fftshift(real(ifft2(fft_filtered_image)));


end