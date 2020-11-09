%Quasi-Sequence-Order Descriptor
%This function calculates the Quasi-Sequence-Order descriptor (Dim: 40+maxlag*2)
%The maximum lag, default is 5
%The weighting factor, default is 0.1
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return : a length (40+maxlag*2) vector
%Written by KeMeng
%Supervised by ZhangWen

function [qso]=QSO(str,maxlag)
len=length(str);
result=zeros(1,40+maxlag*2);f=zeros(1,20);w=0.1;
tao=SOCN(str,maxlag);tau1=tao(1:maxlag);tau2=tao((maxlag+1):2*maxlag);
T={'A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I',  'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V'};
for j=1:len
    for k=1:20
        if strcmp(str(j),T(k))==1
            f(k)=f(k)+1;
        end
    end
end
 Xr1 = f./(1 + (w * sum(tau1)));
 Xr2 = f./(1 + (w * sum(tau2)));
 result(1:20)=Xr1;result(21:40)=Xr2;
 Xd1 = (w .* tau1)./(1 + (w * sum(tau1)));
 Xd2 = (w .* tau2)./(1 + (w * sum(tau2)));
 result(41:(40+maxlag))=Xd1;result((41+maxlag):(40+maxlag*2))=Xd2;
 qso=result;
end



