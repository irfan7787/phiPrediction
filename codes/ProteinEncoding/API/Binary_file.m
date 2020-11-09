%Binary 
%This function calculates the Binary descriptor (Dim 20*N) by invoking
%function Binary
%The input data is a cell contains all the sequences
%Return a cell includes converted vectors
%Written by KeMeng
%Supervised by ZhangWen

function [result]=Binary_file(data)
 
 [l,m]=size(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=Binary(str);  
 end

end