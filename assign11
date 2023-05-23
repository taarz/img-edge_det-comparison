% =========================================================
% Assignment 1.1: ELEC8540 Automotive Sensor Systems
% Author: Taarun Dev Karthikeyan
%
% Date: 23-05-2022
% Desc.: To analyze the performance of Canny Edge detector 
% (in terms of detected edges) with varying threshold value .
% =========================================================
img = imread('lena.bmp'); % Reading the Image
ref_img = edge(img,"Canny",0.1,1); % Reference Image using Canny Edge Detector

k=1; % Init for subplot constant

for sigma = 1:5 % Selecting sigma 1 to 5
    for thresh = 0.1:0.1:0.9 % Selecting Threshold 0 < thresh < 1
        % Producing edge image with loop thresh and sigma
        im1 = edge(img,"Canny",thresh,sigma); 
        
        % Finding RMSE and printing
        mse1 = MSE(ref_img,im1);
        disp([num2str(sigma), '|',num2str(thresh),'|', num2str(sqrt(mse1))]);
       
        % Display the edge image
        subplot(5,9,k)
        imshow(im1);
        title(sprintf('Sig: %d Thr: %s', sigma, num2str(thresh)));

        k=k+1;
    end
end
