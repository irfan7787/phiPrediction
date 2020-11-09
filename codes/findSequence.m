function data = findSequence(seqAll,list)


[rn, cn] = size(list);
k = 1;
for i=1:rn 
   
    
    
    [ri1, ci2] = find(strcmp(seqAll,list(i,1)));
    [ri2, ci2] = find(strcmp(seqAll,list(i,1)));
    if  ~isempty(ri1) && ~isempty(ri2)
    data(k,1) = list(i,1);
    data(k,2) = list(i,2);
    data(k,3) = seqAll(ri1,2);
    data(k,4) = seqAll(ri2,2);
    data(k,5) = {1};
    k=k+1;
    end
    
end



end









