%Check and return the position of the first uncommon amino acid
%data is a cell
%row, column is the position
%Written by KeMeng
%Supervised by ZhangWen

function [row,column]=ProteinCheck(data)
len=length(data);
row=0;column=0;
str='ARNDCEQGHILKMFPSTWYV';
for i=1:len
    temp=data{i};
    len_row=length(temp);
    for t=1:len_row
        if isempty(strfind(str,temp(t)))
            row=i;column=t;
            break;
        end
    end
end
end

