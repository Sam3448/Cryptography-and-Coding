function q2(a,n)
if gcd(a,n)~=1
    disp('No inverse of a')
end
result=Euclid(max(a,n),min(a,n))
q=-result(1,2)
x=mod(result(1,3),min(a,n))
end
