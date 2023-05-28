% =========================================================
% Assignment 1: ELEC8540 Automotive Sensor Systems
% Author: Taarun Dev Karthikeyan
%
% Date: 22-05-2022
% Desc.: To Compare Sobel, Prewitt, Laplacian of Gaussian, 
% and Canny edge detector on lena image provided.
% =========================================================
img = imread('lena.bmp'); % Reading the Image
noise_var = [0.01, 0.05, 0.1, 0.5, 1]; % Noise variance list

ref_img = edge(img,"Canny",0.1,1); % Reference Image using Canny Edge Detector
k=1;

for i = 1:5
    % Adding Gaussian noise to the given Image
    disp(["Noise_var: ", num2str(noise_var(i))])
    im = imnoise(img,"gaussian",0,noise_var(i));

    % RMSE of Sobel Edge Detector with noise vs the reference image
    im1 = edge(im,"Sobel");
    mse1 = MSE(ref_img,im1);
    disp(["Sobel", num2str(sqrt(mse1))]);
    % Display
    subplot(5,4,k)
    imshow(im1);
    title(['Sobel with noise variance: ', num2str(noise_var(i))]);
    k=k+1;

    % RMSE of Prewitt Edge Detector with noise vs the reference image
    im2 = edge(im,"Prewitt");
    mse2 = MSE(ref_img,im2);
    disp(["Prewitt", num2str(sqrt(mse2))]);
    % Display
    subplot(5,4,k)
    imshow(im2);
    title(['Prewitt with noise variance: ', num2str(noise_var(i))]);
    k=k+1;

    % RMSE of Laplacian of Gaussian Edge Detector with noise vs the reference image
    im3 = edge(im,"log");
    mse3 = MSE(ref_img,im3);
    disp(["Laplacian of Gaussian", num2str(sqrt(mse3))]);
    % Display
    subplot(5,4,k)
    imshow(im3);
    title(['LoG with noise variance: ', num2str(noise_var(i))]);
    k=k+1;

    % RMSE of Canny Edge Detector with noise vs the reference image
    im4 = edge(im,"Canny");
    mse4 = MSE(ref_img,im4);
    disp(["Canny", num2str(sqrt(mse4))]);
    % Display
    subplot(5,4,k)
    imshow(im4);
    title(['Canny with noise variance: ', num2str(noise_var(i))]);
    k=k+1;

end
