function q6a
result=[];
for x=0:61
   product=abs(p(x));
   result=[result,isprime(product)];
end
result
end
