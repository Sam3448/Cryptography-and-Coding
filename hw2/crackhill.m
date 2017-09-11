function [plaintext]=crackhill(snippetplaintext,ciphertext,blocklength)
dimension=blocklength*blocklength;
cipherMatrixAll=text2int(block(ciphertext, 1, blocklength));
count=1;
keepLooping = true;
while keepLooping
    snippetMatrix=block(snippetplaintext(count:count+dimension-1), 1, blocklength);
    cipherMatrix=block(ciphertext(count:count+dimension-1), 1, blocklength);
    snippetMatrix=text2int(snippetMatrix);
    cipherMatrix=text2int(cipherMatrix);
    count = count + blocklength;
    dete=round(det(snippetMatrix));
    if mod(dete,2)==0
       continue; 
    end
    detemodinv=powermod(dete,-1,26);
    m2=detemodinv*dete*inv(snippetMatrix);
    m2=mod(round(m2),26);
    Amod26=mod(cipherMatrix*m2,26);
    deteAmod26=round(det(Amod26));
    if mod(deteAmod26,2)==0
       continue; 
    end
    detemodinvAmod26=powermod(deteAmod26,-1,26);
    A2=detemodinvAmod26*deteAmod26*inv(Amod26);
    A2=mod(round(A2),26);
    plaintextMatrix=mod(A2*cipherMatrixAll,26);
    plaintext=int2text(block(plaintextMatrix,-1,blocklength));
    break;
end
end