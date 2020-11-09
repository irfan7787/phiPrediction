% Amino Acid Pairs
% This function figures out Amino Acid Pairs Descriptor (Dim:400) by
% invoking function AAP
% datasets LBtop are developed by Raghava GPS(2013) 
% Input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [aap]=AAP_file(data)
 l=length(data);
 result=cell(l,1);
 
  for j=1:l
     str=data{j};
     result{j}=AAP(str);    
  end
 aap=result;
end
