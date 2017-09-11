function result1 = q1(x)
result1=q1;
for i=1:25
    result1=[result1; shift(q1,i)];
end
for i=0:25
    mod(26-i,26)
    result1(i+1,:)
end