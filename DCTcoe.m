function output = DCTcoe(input, dir)
    block = NxN(8);
    
    if dir == 0
        dctFunc = @(block_struct) block * block_struct.data * block';
    else
        dctFunc = @(block_struct) block' * block_struct.data * block;
    end
    
    output = blockproc(input, [8, 8], dctFunc);
end