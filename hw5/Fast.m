function res=Fast(a,k,n)
res=1;
ch=dec2bin(k);
last=mod(a,n);
len=length(ch);
if ch(len-1:len-1)=='1'
   res=res*last; 
end
for i=len-1:-1:1
    last=mod(last*last,n);
    if(ch(i:i)=='1')
        res=res*last;
    end
end
res=mod(res,n);
end