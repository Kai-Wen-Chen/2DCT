function img_yiq = yiq(img)
    mat = [0.257, 0.504, 0.098; -0.148, -0.291, 0.439; 0.439, -0.368, -0.071];
    [rows, cols, depth] = size(img);
    img_yiq = zeros(size(img));
    RGB = zeros(3, 1);
    
    for i=1:rows
        for j=1:cols
            for k=1:depth
                RGB(k, 1) = img(i, j, k);
            end
            img_yiq(i, j, :) = mat * RGB;
        end
    end
end