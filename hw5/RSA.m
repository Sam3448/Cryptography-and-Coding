function plain=RSA(n,e,c)
plain=0;
pq=factor(n);
phi=(pq(1)-1)*(pq(2)-1);
d=invmodn(e,phi);
plain=powermod(c,d,n);
end