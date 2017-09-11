function m=Rabin(p,q,c)
m=[];
n=[p,q]
b=[powermod(c,(p+1)/4,p),powermod(c,(q+1)/4,q);-powermod(c,(p+1)/4,p),powermod(c,(q+1)/4,q);
    powermod(c,(p+1)/4,p),-powermod(c,(q+1)/4,q);-powermod(c,(p+1)/4,p),-powermod(c,(q+1)/4,q)]
for i=1:4
   m=[m;CMT(b(i,:),n)] ;
end
end