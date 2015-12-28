function [ X,XL,XM,XR ] = init( H,n )
    X=zeros(n);
    XL=X;XM=X;XR=X;
    for k=1:H
        X(:,:,k)=load([num2str(k),'.txt']);
        %NO=0,VL=1,L=2,H=3,VH=4
        %NO=(0,0.1,0.3)
        %VL=(0.1,0.3,0.5)
        %L=(0.3,0.5,0.7)
        %H=(0.5,0.7,0.9)
        %VH=(0.7,0.9,1.0)
        for i=1:n
            for j=1:n
                if X(i,j,k)==0
                    XL(i,j,k)=0;
                    XM(i,j,k)=0.1;
                    XR(i,j,k)=0.3;
                end
                if X(i,j,k)==1
                    XL(i,j,k)=0.1;
                    XM(i,j,k)=0.3;
                    XR(i,j,k)=0.5;
                end
                if X(i,j,k)==2
                    XL(i,j,k)=0.3;
                    XM(i,j,k)=0.5;
                    XR(i,j,k)=0.7;
                end
                if X(i,j,k)==3
                    XL(i,j,k)=0.5;
                    XM(i,j,k)=0.7;
                    XR(i,j,k)=0.9;
                end
                if X(i,j,k)==4
                    XL(i,j,k)=0.7;
                    XM(i,j,k)=0.9;
                    XR(i,j,k)=1.0;
                end
            end
        end
    end
end

