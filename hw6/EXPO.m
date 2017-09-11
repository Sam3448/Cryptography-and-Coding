function d12=EXPO(a,k,n)
s=0;b=0;
while mod(k,2)==0
   s=s+1;
   k=k/2;
end
b=k;
ui=powermod(a,b,n);
uj=powermod(ui,2,n);
while uj~=1 
    ui=uj;
    uj=mod(ui^2,n);
end
d12=[];
if ui~=mod(-1,n)
   d12=[d12,gcd(ui-1,n)];
   d12=[d12,n/d12(1,1)];
end
end