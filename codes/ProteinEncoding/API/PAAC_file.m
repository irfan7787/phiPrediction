% Pseudo Amino Acid Composition Descriptor
% This function calculates the Pseudo Amino Acid Composition Descriptor
% (Dim: 20+lambda) by invoking function PAAC
% The lambda, default is 5
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=PAAC_file(data,lambda)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=PAAC(str,lambda);   
 end

end