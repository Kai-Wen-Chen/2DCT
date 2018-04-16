function img_Iyiq = Iyiq(img)
    mat = [0.257, 0.504, 0.098; -0.148, -0.291, 0.439; 0.439, -0.368, -0.071];
    %mat = [1.164, -0.002, 1.596; 1.164, -0.391, -0.813; 1.164, 2.018, -0.001];
    [rows, cols, depth] = size(img);
    img_Iyiq = zeros(size(img));
    YIQ = zeros(3, 1);
    
    for i=1:rows
        for j=1:cols
            for k=1:depth
                YIQ(k, 1) = img(i, j, k);
            end
            img_Iyiq(i, j, :) = inv(mat) * YIQ;
        end
    end
end