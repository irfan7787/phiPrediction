% Conjoint Triad Descriptor
% This function calculates the Conjoint Triad Descriptor (Dim: 343) by
% invoking function CTriad
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=CTriad_file(data)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=CTriad(str); 
 end

end