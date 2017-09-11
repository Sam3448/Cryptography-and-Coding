function q2(s2)
s2int=text2int(s2)
for i=1:25
    if gcd(i,26)==1
        for j=1:25
            i
            j
            ss=mod(invmodn(i,26)*(s2int-j),26);
            int2text(ss)
        end
    end
end
