function F = subSequences(seq,L)

seqLength = size(seq,2);
F = zeros(L,40);

    for i= 1:L

        x = floor(i/L*seqLength);
        S{i,1} = seq(1,1:x);


    end
    
    for i= 1:L
        
        F(i,:) = distFeature(S{i,1});
    end
    
        F = reshape(F',[1,200]);
    
end