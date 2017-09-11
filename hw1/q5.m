mod=5
freq=[0.05,0.20,0.25,0.35,0.15]
len=size(freq)
result=[]
for i=0:len(1,2)-1
    freqshift=transpose([freq(mod-i+1:mod) freq(1:mod-i)]);
    result=[result,freq*freqshift];
end
result