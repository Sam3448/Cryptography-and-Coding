function temp=Div(M,N)
count=0;
for i=1:N
    n1=floor(rand()*M)+1;
    n2=floor(rand()*M)+1;
    if(gcd(n1,n2)==1) 
        count=count+1;
    end
end
temp=count/N
end