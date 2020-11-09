function mat2arff(name,data)

[m,n] = size(data);

fileID = fopen(name,'w');

fprintf(fileID,'@relation flag\n\n');

for i= 1:n-1
   
  fprintf(fileID,'@attribute feature%d numeric\n',i);  
    
end

fprintf(fileID,'@attribute label {0,1}\n');  
fprintf(fileID,'\n@data \n\n');




for i=1:m
   for j= 1:n
     
     if(j<n)
       
          fprintf(fileID,'%.4f,',data(i,j)); 
     else
        fprintf(fileID,'%d',data(i,j));   
         
     end
    
       
       
       
   end
   fprintf(fileID,'\n');   
end




fclose(fileID);

end
