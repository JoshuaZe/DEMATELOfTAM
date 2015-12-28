function [ A ] = calculateAverage( X )
    A=zeros(size(X,1));
    for k=1:size(X,3)
        A=A+X(:,:,k);
    end
    A=A/size(X,3);
end

