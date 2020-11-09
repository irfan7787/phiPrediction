%% This function can be used to find sequence of protenin according to its uniProtID 
% author : irfan kösesoy
% date : 15.01.2020
%%
bacillusAll = load('BacillusAnthracis1392.mat');
homoSapiensAll=load('homoSapiens9606.mat');
yersiniaAll = load('YersiniaPestis632.mat');

load('yersiniaHH.mat');
load('yersiniaPP.mat');
load('bacillusHH.mat');
load('bacillusPP.mat');

bacillusPPseq = findSequence(bacillusAll.pName,bacillusPP);

yersiniaHHseq = findSequence(homoSapiensAll.pName,yersiniaHH);
yersiniaPPseq = findSequence(yersiniaAll.pName,yersiniaPP);
bacillusHHseq = findSequence(homoSapiensAll.pName,bacillusHH);

% FbacillusHH_AAP = genFeatureMatrix(bacillusHHseq,'AAP',1);
% FyersiniaHH_AAP = genFeatureMatrix(yersiniaHHseq,'AAP',1);
% FyersiniaPP_AAP = genFeatureMatrix(yersiniaPPseq,'AAP',1);







