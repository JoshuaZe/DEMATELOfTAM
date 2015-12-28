function [ T,TL,TM,TR ] = generateTotalInfluence( N,NL,NM,NR )
    T=N*inv(eye(size(N))-N);
    TL=NL*inv(eye(size(NL))-NL);
    TM=NM*inv(eye(size(NM))-NM);
    TR=NR*inv(eye(size(NR))-NR);
end