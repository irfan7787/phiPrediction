% Quasi-Sequence-Order Descriptor
% This function calculates the Quasi-Sequence-Order descriptor
% (Dim:40+maxlag*2) by invoking function QSO
% The maximum lag, default is 5
% The weighting factor, default is 0.1
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=QSO_file(data,maxlag)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=QSO(str,maxlag);
     
 end

end