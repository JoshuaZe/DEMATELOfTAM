function [ Ts,TLs,TMs,TRs ]=allTotalInfluence( Ns,NLs,NMs,NRs )
    for k=1:size(Ns,3)
       [ Ts(:,:,k),TLs(:,:,k),TMs(:,:,k),TRs(:,:,k) ]=...
        generateTotalInfluence(Ns(:,:,k),NLs(:,:,k),NMs(:,:,k),NRs(:,:,k)); 
    end
end