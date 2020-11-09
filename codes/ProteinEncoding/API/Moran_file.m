%Moran Autocorrelation Descriptor
%This function calculates the Moran descriptor (Dim 8*nlag) by invoking
%function Moran
%nlag is the maximum lag in sequence. It is less than the length of sequence
%8 properties are used in this function, as listed below:
%   AccNo. CIDH920105
%   AccNo. BHAR880101
%   AccNo. CHAM820101
%   AccNo. CHAM820102
%   AccNo. CHOC760101
%   AccNo. BIGC670101
%   AccNo. CHAM810101
%   AccNo. DAYM780201
% The input data is a cell contains all the sequences
% Return a cell includes converted vectors
% Written by KeMeng
% Supervised by ZhangWen

function [result]=Moran_file(data,nlag)
 
 l=length(data);
 result=cell(l,1);

 for j=1:l
     str=data{j};
     result{j}=Moran(str,nlag);
     
 end

end