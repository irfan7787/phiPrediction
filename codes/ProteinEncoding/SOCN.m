%Sequence-Order-Coupling Numbers
%This function calculates the Sequence-Order-Coupling Numbers (Dim: 2* maxlag)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return : a length (2maxlag) vector
%Written by KeMeng
%Supervised by ZhangWen

function [socn]=SOCN(str,maxlag) 
len=length(str);
DistMat1 =csvread('Schneider-Wrede.csv');data=zeros(1,len);data2=zeros(1,len);
DistMat2 =csvread('Grantham.csv');
C={'A', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L',  'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'Y'};
result=zeros(maxlag*2,1);n=1;
j=1;
while j<=len
    for k=1:20
        if strcmp(str(j),C(k))==1
            data(j)=k;
        end
    end
   
    if data(j)==0
        disp('error,exists unusual amino acids');disp(str(j));
        
    end
     j=j+1;
end

for d=1:maxlag
    for j=1:(len-d)
        result(n)=result(n)+(DistMat1(data(j),data(j+d)))^2;
    end
    n=n+1;
end
T={'A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I',  'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V'};
for j=1:len
    for k=1:20
        if strcmp(str(j),T(k))==1
            data2(j)=k;
        end
    end
end
for d=1:maxlag
    for j=1:(len-d)
        result(n)=result(n)+(DistMat2(data2(j),data2(j+d)))^2;%sum
    end
    n=n+1;
end
socn=result';
end