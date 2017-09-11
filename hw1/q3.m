function q3(s)
s
m=block(s,1,4)
se
c=block(se,1,4)
corim=block(cori,1,4)
corim=text2int(corim)
for i=1:4
    for j=1:4
        mint(i,j)=text2int(m(i,j))
    end
end
for i=1:4
    for j=1:4
        cint(i,j)=text2int(c(i,j))
    end
end
dete=round(det(mint))
detemodinv=powermod(dete,-1,26)
m2=detemodinv*dete*inv(mint)
m2=mod(round(m2),26)
Amod26=mod(cint*m2,26)
deteAmod26=round(det(Amod26))
detemodinvAmod26=powermod(deteAmod26,-1,26)
A2=detemodinvAmod26*deteAmod26*inv(Amod26)
A2=mod(round(A2),26)
pt=mod(A2*corim,26)
plit=block(pt,-1,4)
int2text(plit)
