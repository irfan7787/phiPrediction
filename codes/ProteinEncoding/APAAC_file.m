%Amphiphilic Pseudo Amino Acid Composition Descriptor
%This function calculates the Amphiphilic Pseudo Amino Acid Composition
%Descriptor (Dim: 20+2*lambda) by invoking function APAAC
%The lambda, default is 5
%The input data is a cell contains all the sequences
%Return a cell includes converted vectors
%Written by KeMeng
%Supervised by ZhangWen

function [result]=APAAC_file(data,lambda)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=APAAC(str,lambda);    
 end

end