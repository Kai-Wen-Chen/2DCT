function img_decomp = IdctTwo(img, n)
    mask = zeros(8, 8);
    
    for i=1:n
        for j=1:n
            mask(i, j) = 1;
        end
    end
    
    img_mask = Mask(img, mask);
    img_decomp = DCTcoe(img_mask, 1);
end