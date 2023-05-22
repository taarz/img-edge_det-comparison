% Function to find Mean Square Error between two Images
function mse = MSE(img1, img2)
    % Compute the squared difference between the images
    diff = double(img1) - double(img2);
    squaredDiff = diff.^2;

    % Calculate the mean squared error
    mse = sum(squaredDiff(:)) / numel(img1);
end
