% import a fasta file and split it into headers and data
% header is the introduction section in the fasta file and data is a cell
% contains all the sequences
% Written by KeMeng
% Supervised by ZhangWen

function [header,data]=importfile(filename)
% All the fasta files are supposed to be stored in data file
if isempty(strfind(filename,'.'))
    filename=strcat(filename,'.fasta');
end
filename=strcat('.\data\',filename);
 original=fastaread(filename);
 num=length(original);
 data=cell(num,1);
 header=cell(num,1);
 for i=1:num
     data{i}=original(i).Sequence;
     header{i}=original(i).Header;
 end
end