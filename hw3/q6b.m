function q6b
result=[];
for x=0:19
   product=abs(p2(x));
   result=[result,isprime(product)];
end
result
end
