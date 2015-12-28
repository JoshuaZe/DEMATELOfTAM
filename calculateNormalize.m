function [ N,NL,NM,NR ] = calculateNormalize( A,AL,AM,AR,lamda )
    N=A/lamda;
    NL=AL/lamda;
    NM=AM/lamda;
    NR=AR/lamda;
end