%Conjoint Triad Descriptor
%This function calculates the Conjoint Triad Descriptor (Dim: 343)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return : a length 343 vector
%Written by KeMeng
%Supervised by ZhangWen

function [ctriad]=CTriad(str)
load CTIndex;
load  CTDict;
l_I=length(CTDict);len=length(str);
result=zeros(1,343);
for j=1:(len-2)
    for k=1:l_I
    if strcmp(str(j:(j+2)),CTDict{k})==1
        temp=CTIndex(k);
        result(temp)=result(temp)+1;
        break;
    end
    end
end
%centralization
data_max=max(result);
data_min=min(result);
for j=1:343
    result(j)=(result(j)-data_min)/data_max;
end
ctriad=result;
end

