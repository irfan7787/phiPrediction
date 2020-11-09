%Dipeptide Composition Descriptor
%This function calculates the Dipeptide Composition descriptor (Dim 400)
%The input parameter str represents a string, for example: 'SAFLGIPFAEPPMGPRRFLPPEPKQ'
%Return dc: a length 400 vector
%Written by KeMeng
%Supervised by ZhangWen

function [dc]=DC(str)
len=length(str);
result=zeros(1,400);
C = {'AA', 'RA', 'NA', 'DA', 'CA', 'EA', 'QA', 'GA', 'HA', 'IA', 
             'LA', 'KA', 'MA', 'FA', 'PA', 'SA', 'TA', 'WA', 'YA', 'VA', 
             'AR', 'RR', 'NR', 'DR', 'CR', 'ER', 'QR', 'GR', 'HR', 'IR', 
             'LR', 'KR', 'MR', 'FR', 'PR', 'SR', 'TR', 'WR', 'YR', 'VR', 
             'AN', 'RN', 'NN', 'DN', 'CN', 'EN', 'QN', 'GN', 'HN', 'IN', 
             'LN', 'KN', 'MN', 'FN', 'PN', 'SN', 'TN', 'WN', 'YN', 'VN', 
             'AD', 'RD', 'ND', 'DD', 'CD', 'ED', 'QD', 'GD', 'HD', 'ID', 
             'LD', 'KD', 'MD', 'FD', 'PD', 'SD', 'TD', 'WD', 'YD', 'VD',
             'AC', 'RC', 'NC', 'DC', 'CC', 'EC', 'QC', 'GC', 'HC', 'IC', 
             'LC', 'KC', 'MC', 'FC', 'PC', 'SC', 'TC', 'WC', 'YC', 'VC', 
             'AE', 'RE', 'NE', 'DE', 'CE', 'EE', 'QE', 'GE', 'HE', 'IE', 
             'LE', 'KE', 'ME', 'FE', 'PE', 'SE', 'TE', 'WE', 'YE', 'VE', 
             'AQ', 'RQ', 'NQ', 'DQ', 'CQ', 'EQ', 'QQ', 'GQ', 'HQ', 'IQ', 
             'LQ', 'KQ', 'MQ', 'FQ', 'PQ', 'SQ', 'TQ', 'WQ', 'YQ', 'VQ', 
             'AG', 'RG', 'NG', 'DG', 'CG', 'EG', 'QG', 'GG', 'HG', 'IG', 
             'LG', 'KG', 'MG', 'FG', 'PG', 'SG', 'TG', 'WG', 'YG', 'VG',
             'AH', 'RH', 'NH', 'DH', 'CH', 'EH', 'QH', 'GH', 'HH', 'IH', 
             'LH', 'KH', 'MH', 'FH', 'PH', 'SH', 'TH', 'WH', 'YH', 'VH', 
             'AI', 'RI', 'NI', 'DI', 'CI', 'EI', 'QI', 'GI', 'HI', 'II', 
             'LI', 'KI', 'MI', 'FI', 'PI', 'SI', 'TI', 'WI', 'YI', 'VI', 
             'AL', 'RL', 'NL', 'DL', 'CL', 'EL', 'QL', 'GL', 'HL', 'IL', 
             'LL', 'KL', 'ML', 'FL', 'PL', 'SL', 'TL', 'WL', 'YL', 'VL', 
             'AK', 'RK', 'NK', 'DK', 'CK', 'EK', 'QK', 'GK', 'HK', 'IK', 
             'LK', 'KK', 'MK', 'FK', 'PK', 'SK', 'TK', 'WK', 'YK', 'VK',
             'AM', 'RM', 'NM', 'DM', 'CM', 'EM', 'QM', 'GM', 'HM', 'IM', 
             'LM', 'KM', 'MM', 'FM', 'PM', 'SM', 'TM', 'WM', 'YM', 'VM', 
             'AF', 'RF', 'NF', 'DF', 'CF', 'EF', 'QF', 'GF', 'HF', 'IF', 
             'LF', 'KF', 'MF', 'FF', 'PF', 'SF', 'TF', 'WF', 'YF', 'VF', 
             'AP', 'RP', 'NP', 'DP', 'CP', 'EP', 'QP', 'GP', 'HP', 'IP', 
             'LP', 'KP', 'MP', 'FP', 'PP', 'SP', 'TP', 'WP', 'YP', 'VP', 
             'AS', 'RS', 'NS', 'DS', 'CS', 'ES', 'QS', 'GS', 'HS', 'IS', 
             'LS', 'KS', 'MS', 'FS', 'PS', 'SS', 'TS', 'WS', 'YS', 'VS',
             'AT', 'RT', 'NT', 'DT', 'CT', 'ET', 'QT', 'GT', 'HT', 'IT', 
             'LT', 'KT', 'MT', 'FT', 'PT', 'ST', 'TT', 'WT', 'YT', 'VT', 
             'AW', 'RW', 'NW', 'DW', 'CW', 'EW', 'QW', 'GW', 'HW', 'IW', 
             'LW', 'KW', 'MW', 'FW', 'PW', 'SW', 'TW', 'WW', 'YW', 'VW', 
             'AY', 'RY', 'NY', 'DY', 'CY', 'EY', 'QY', 'GY', 'HY', 'IY', 
             'LY', 'KY', 'MY', 'FY', 'PY', 'SY', 'TY', 'WY', 'YY', 'VY', 
             'AV', 'RV', 'NV', 'DV', 'CV', 'EV', 'QV', 'GV', 'HV', 'IV', 
             'LV', 'KV', 'MV', 'FV', 'PV', 'SV', 'TV', 'WV', 'YV', 'VV'};


 C=C';C=C(:);        
 lc=400;         
 for i=1:(len-1)
    for t=1:lc
        if strcmp(str(i:i+1),C(t))==1
            result(t)=result(t)+1;
        end
    end   
 end
 for t=1:lc
 result(t)= result(t)/(len-1);
 end
 dc=result;
end
