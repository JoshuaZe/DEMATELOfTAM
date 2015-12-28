clear all;
close all;
clc;

global H %总受访者人数
global n %总测量维度
H=10;
n=12;
%初始化
[ X,XL,XM,XR ]=init(H,n);
%计算均值矩阵
A=calculateAverage(X);
AL=calculateAverage(XL);AM=calculateAverage(XM);AR=calculateAverage(XR);
%标准化矩阵
lamda=generateLamda(AM);
[ N,NL,NM,NR ]=calculateNormalize(A,AL,AM,AR,lamda);
[ Ns,NLs,NMs,NRs ]=allNormalize(X,XL,XM,XR);
%计算综合影响关系矩阵
[ T,TL,TM,TR ] = generateTotalInfluence(N,NL,NM,NR);
[ Ts,TLs,TMs,TRs ]=allTotalInfluence(Ns,NLs,NMs,NRs);
%CFCS算法模糊数转化成精确数
TLs(:,:,H+1)=TL;TMs(:,:,H+1)=TM;TRs(:,:,H+1)=TR;
crispT=doCFCS(TL,TM,TR,TLs,TRs);