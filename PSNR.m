function ratio = PSNR(img1, img2)
    [rows, cols, depth] = size(img1);
    MSE = zeros(1, depth);
    ratio = 0;
    
    for i=1:depth
        MSE(i) = sum(sum((img1( :, :, i) - img2( :, :, i)) .^ 2)) / rows / cols;
        ratio = ratio + MSE(i);
    end
    
    ratio = ratio / depth;
    ratio = 10 * log10(1 / ratio);
    %ratio = 10 * log10(255^2 / ratio);
end