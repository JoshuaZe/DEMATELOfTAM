function [ lamda ] = generateLamda( A )
    lamda=max(max(sum(A,1)),max(sum(A,2)));
end