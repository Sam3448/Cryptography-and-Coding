function q4(s)
len=size(s);
limit=round(len(1,2)*0.06);
index=[];
for i=1:(len(1,2)-1)
    a=coinc(s,i);
    if a>=limit
        index=[index, i];
    end
end
lenIndex=size(index);
mincd=index(1,1);
count=1;
for i=2:lenIndex(1,2)
    if gcd(mincd,index(1,i))~=mincd
        count=count+1;
        mincd=index(1,count);
        i=count+1;
    end
end
vigciphermatrix=block(s,1,mincd);
lenMatrix=size(vigciphermatrix);
row=lenMatrix(1,1);
col=lenMatrix(1,2);
Key=[];
for i=1:row
    [count,freq]=zfrequency(vigciphermatrix(i,:));
    comp=corr(freq);
    for j=1:26
       if comp(j,1)>0.055
          Key=[Key,(j-1)]; 
       end
    end
end
palintext=vigenere(s,-Key)
Key