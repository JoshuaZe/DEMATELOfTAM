clear all;
close all;
clc;

global H %���ܷ�������
global n %�ܲ���ά��
H=10;
n=12;
%��ʼ��
[ X,XL,XM,XR ]=init(H,n);
%�����ֵ����
A=calculateAverage(X);
AL=calculateAverage(XL);AM=calculateAverage(XM);AR=calculateAverage(XR);
%��׼������
lamda=generateLamda(AM);
[ N,NL,NM,NR ]=calculateNormalize(A,AL,AM,AR,lamda);
[ Ns,NLs,NMs,NRs ]=allNormalize(X,XL,XM,XR);
%�����ۺ�Ӱ���ϵ����
[ T,TL,TM,TR ] = generateTotalInfluence(N,NL,NM,NR);
[ Ts,TLs,TMs,TRs ]=allTotalInfluence(Ns,NLs,NMs,NRs);
%CFCS�㷨ģ����ת���ɾ�ȷ��
TLs(:,:,H+1)=TL;TMs(:,:,H+1)=TM;TRs(:,:,H+1)=TR;
crispT=doCFCS(TL,TM,TR,TLs,TRs);