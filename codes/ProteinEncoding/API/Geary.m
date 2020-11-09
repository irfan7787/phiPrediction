%Geary Autocorrelation Descriptor
%This function calculates the Geary descriptor (Dim 8*nlag)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
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
%Return dc: a length 8*nlag vector
%Written by KeMeng
%Supervised by ZhangWen

function [geary]=Geary(str,nlag)
len=length(str);AU=zeros(1,nlag);temp=1;
result=zeros(1,nlag*8);
t1=zeros(1,len);t2=zeros(1,len);t3=zeros(1,len);t4=zeros(1,len);t5=zeros(1,len);t6=zeros(1,len);t7=zeros(1,len);t8=zeros(1,len);
 C={'A', 'R', 'N', 'D', 'C', 'E', 'Q', 'G', 'H', 'I',  'L', 'K', 'M', 'F', 'P', 'S', 'T', 'W', 'Y', 'V'};
 %AccNo. CIDH920105
 prop1=[0.02 -0.42 -0.77 -1.04 0.77 -1.14 -1.1 -0.8 0.26 1.81 1.14 -0.41 1 1.35 -0.09 -0.97 -0.77 1.71 1.11 1.13];
 prop1=zscore(prop1,1);
 for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t1(n)=prop1(i);
       end
     end
 end

 p=mean(t1);
 for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t1(j)-t1(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t1(j)-p)^2;
end 
 for d=1:nlag
     if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
 %AccNo. BHAR880101
 prop2=[0.357 0.529 0.463 0.511 0.346 0.497 0.493 0.544 0.323 0.462 0.365 0.466 0.295 0.314 0.509 0.507 0.444 0.305 0.42 0.386];
 prop2=zscore(prop2,1);
 for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t2(n)=prop2(i);
       end
     end
 end
 p=mean(t2);
  for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t2(j)-t2(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t2(j)-p)^2;
end 
 for d=1:nlag
     if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
 %AccNo. CHAM820101
 prop3=[ 0.046 0.291 0.134 0.105 0.128 0.151 0.18 0 0.23 0.186 0.186 0.219 0.221 0.29 0.131 0.062 0.108 0.409 0.298 0.14]; 
 prop3=zscore(prop3,1);
 for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t3(n)=prop3(i);
       end
     end
 end
 
p=mean(t3);
 for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t3(j)-t3(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t3(j)-p)^2;
end 
 for d=1:nlag
     if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
 %AccNo. CHAM820102
 prop4=[ -0.368 -1.03 0 2.06 4.53 1.77 0.731 -0.525 0 0.791 1.07 0 0.656 1.06 -2.24 -0.524 0 1.6 4.91 0.401];
  prop4=zscore(prop4,1); 
 for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t4(n)=prop4(i);
       end
     end
 end
 
 p=mean(t4);
  for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t4(j)-t4(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t4(j)-p)^2;
end 
 for d=1:nlag
    if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
%AccNo. CHOC760101
 prop5=[ 115 225 160 150 135 190 180 75 195 175 170 200 185 210 145 115 140 255 230 155];
 prop5=zscore(prop5,1);
 for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t5(n)=prop5(i);
       end
     end
 end
 
 
 p=mean(t5);
 for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t5(j)-t5(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t5(j)-p)^2;
end 
 for d=1:nlag
    if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
 %AccNo. BIGC670101
prop6=[52.6 109.1 75.7 68.4 68.3 84.7 89.7 36.3 91.9 102 102 105.1 97.7 113.9 73.6 54.9 71.2 135.4 116.2 85.1];
prop6=zscore(prop6,1); 
for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t6(n)=prop6(i);
       end
     end
 end
 
 
  p=mean(t6);
  for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t6(j)-t6(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t6(j)-p)^2;
end 
 for d=1:nlag
    if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
%AccNo. CHAM810101
prop7=[0.52 0.68 0.76 0.76 0.62 0.68 0.68 0 0.7 1.02 0.98 0.68 0.78 0.7 0.36 0.53 0.5 0.7 0.7 0.76];
prop7=zscore(prop7,1); 
for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t7(n)=prop7(i);
       end
     end
 end

 
  p=mean(t7);
 for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t7(j)-t7(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t7(j)-p)^2;
end 
 for d=1:nlag
   if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
 AU=zeros(1,nlag);
 
%AccNo. DAYM780201
prop8=[100 65 134 106 20 102 93 49 66 96 40 56 94 41 56 120 97 18 41 74];
prop8=zscore(prop8,1); 
for n=1:len
     for i=1:20
       if strcmp(str(n), C(i))
        t8(n)=prop8(i);
       end
     end
 end

 
 p=mean(t8);
 for d=1:nlag
     for j=1:(len-d)
       AU(d)=AU(d)+(t8(j)-t8(j+d))^2;
     end
     AU(d)=AU(d)/(2*(len-d));
 end
 AD=0;
for j=1:len
    AD=AD+(t8(j)-p)^2;
end 
 for d=1:nlag
    if AD~=0
    result(temp)=(len-1)*AU(d)/AD;temp=temp+1;
    else
     result(temp)=0;
     end
 end
geary=result;
end