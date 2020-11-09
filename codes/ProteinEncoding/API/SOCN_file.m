% Sequence-Order-Coupling Numbers
% This function calculates the Sequence-Order-Coupling Numbers (Dim:2*maxlag) 
% by invoking function SOCN
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=SOCN_file(data,maxlag)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=SOCN(str,maxlag); 
 end

end