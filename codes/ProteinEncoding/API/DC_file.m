% Dipeptide Composition Descriptor
% This function calculates the Dipeptide Composition descriptor (Dim 400) by
% invoking function DC
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=DC_file(data)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=DC(str);  
 end

end