% =========================================================
% Assignment 1.0: ELEC8540 Automotive Sensor Systems
% Author: Taarun Dev Karthikeyan
% =========================================================
img = imread('lena.bmp'); % Reading the Image
noise_var = [0.01, 0.05, 0.1, 0.5, 1]; % Noise variance list

tech = ["Sobel", "Prewitt","log","Canny"];
k=1;

for i = 1:4
    im=edge(img,tech(i));
    subplot(2,2,k)
    imshow(im);
    title(tech(i));
    k = k+1;
end
