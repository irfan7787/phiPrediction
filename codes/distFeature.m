function f = distFeature(seq)


f = zeros(1,40);

seq = regexprep(seq,'[^ARNDCQEGHILKMFPSTWYV]','');
n = length(seq);
for i=1:n
   
      
    v = aa2int(seq(i));
   
     
   
    f(v) = f(v)+i/n;
   % disp(f(v));
end
s2 = fliplr(seq);

for i=1:n
   
    v = aa2int(s2(i));
    f(v+20) = f(v+20)+i/n;
    
end
    

end
