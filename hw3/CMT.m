function x=CMT(b,n)
    x=0;
    N=1;
    for i=1:length(n)
        N=N*n(i);
    end
    for i=1:length(b)
        bi=b(i);
        Ni=N/n(i);
        Nic=invmodn(Ni,n(i));
        x=x+bi*Ni*Nic;
    end
    x=mod(x,N);
end