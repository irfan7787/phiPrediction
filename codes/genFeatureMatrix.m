function featureMatrix = genFeatureMatrix(seqList,encodingMethod,label)

    [m,n] = size(seqList);
    
    
    
    if(strcmp(encodingMethod,'AAC'))
    
        for i=1:m
            f1 = AAC(seqList{i,3}); 
            f2 = AAC(seqList{i,4});
            featureMatrix(i,:) = [f1 f2 label];        
        end
            
    end
    
    if(strcmp(encodingMethod,'AAP'))
    
        for i=1:m
       
            f1 = AAP(seqList{i,3}); 
            f2 = AAP(seqList{i,4});
            featureMatrix(i,:) = [f1 f2 label]; 
        
        end
        
    end
    
    if(strcmp(encodingMethod,'APAAC'))
    
        for i=1:m
       
            f1 = APAAC(seqList{i,3}); 
            f2 = APAAC(seqList{i,4});
            featureMatrix(i,:) = [f1 f2 label]; 
        
        end
        
    end
    
    if(strcmp(encodingMethod,'Binary'))
    
        for i=1:m
       
             f1 = Binary(hProteins{seqList(i,1),2}); 
            f2 = Binary(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end

    if(strcmp(encodingMethod,'CTDC'))
    
        for i=1:m
       
              f1 = CTDC(hProteins{seqList(i,1),2}); 
            f2 = CTDC(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end
    
    if(strcmp(encodingMethod,'CTDD'))
    
        for i=1:m
       
             f1 = CTDD(hProteins{seqList(i,1),2}); 
            f2 = CTDD(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end

    if(strcmp(encodingMethod,'CTDT'))
    
        for i=1:m
       
             f1 = CTDT(hProteins{seqList(i,1),2}); 
            f2 = CTDT(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end
    
    if(strcmp(encodingMethod,'CTriad'))
    
        for i=1:m
       
            f1 = CTriad(hProteins{seqList(i,1),2}); 
            f2 = CTriad(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end
    
    if(strcmp(encodingMethod,'DC'))
    
        for i=1:m
       
            f1 = DC(hProteins{seqList(i,1),2}); 
            f2 = DC(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end
    
    if(strcmp(encodingMethod,'kMer'))
    
        for i=1:m
       
            f1 = kMer(hProteins{seqList(i,1),2}); 
            f2 = kMer(pProteins{seqList(i,2),2});
            featureMatrix(i,:) = [f1 f2];
        
        end
        
    end
    
    if(strcmp(encodingMethod,'LBE'))
    
        for i=1:m
             
            f1 = subSequences(seqList{i,3},5);
            f2 = subSequences(seqList{i,4},5);
            featureMatrix(i,:) = [f1 f2 label];
        
        end
        
    end
    
    
end