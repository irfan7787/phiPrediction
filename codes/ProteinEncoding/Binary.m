%Binary 
%This function calculates the Binary descriptor (Dim 20*N)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return : a length N vector
%Written by KeMeng
%Supervised by ZhangWen

function [BI]=Binary(str)
len=length(str);
result=cell(1,len);
C=['A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I',  'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V'];

T={[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1],[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0],[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0],[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0],[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0],[0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0], [0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0],[0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0],[0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0],[0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0],[0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0], [0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0],[0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0],[0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0],[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]};
lc=length(C);
for i=1:len
    for t=1:lc
        if strcmp(str(i),C(t))==1
            result{i}=T{t};
        end
    end
end
       
BI=cell2mat(result);

end