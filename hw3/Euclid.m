function [result]=Euclid(a,b)
d=gcd(a,b);
aj_2=max(a,b);
aj_1=min(a,b);
aj=mod(aj_2,aj_1);
qj_1=floor(max(a,b)/min(a,b));
xj_2=1; xj_1=0; 
yj_2=0; yj_1=1;
count=2;
while aj~=0
    xj=xj_2+qj_1*xj_1;
    yj=yj_2+qj_1*yj_1;
    qj=floor(aj_1/aj);
    aj_2=aj_1;
    aj_1=aj;
    aj=mod(aj_2,aj_1);
    xj_2=xj_1; xj_1=xj;
    yj_2=yj_1; yj_1=yj;
    qj_1=qj;
    count=count+1;
end
xj_1=power(-1,count-1)*xj_1;
yj_1=power(-1,count)*yj_1;
result=[d,xj_1,yj_1];
end
