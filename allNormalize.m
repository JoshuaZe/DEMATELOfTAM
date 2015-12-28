function [ Ns,NLs,NMs,NRs ]=allNormalize( X,XL,XM,XR )
    for k=1:size(X,3)
       lamda=generateLamda(XM(:,:,k));
       [ Ns(:,:,k),NLs(:,:,k),NMs(:,:,k),NRs(:,:,k) ]=...
          calculateNormalize(X(:,:,k),XL(:,:,k),XM(:,:,k),XR(:,:,k),lamda); 
    end
end

