function block = NxN(size)
    block = zeros(size, size);
    for i=1:size
        for j=1:size
            if i == 1
                C = 1 / sqrt(2);
            else
                C = 1;
            end
            
            block(i, j) = sqrt(2/size) * C * cos((2*j-1) * (i-1) * pi / (2*size));
        end
    end
    
end