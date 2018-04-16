function img_mask = Mask(img, mask)
    idct_mask = @(block_struct) mask .* block_struct.data;
    img_mask = blockproc(img, [8, 8], idct_mask);
end