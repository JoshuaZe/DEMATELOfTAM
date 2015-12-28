function [ crispT ] = doCFCS( TL,TM,TR,TLs,TRs )
    crispT=zeros(size(TL));
    xl=crispT;
    xm=crispT;
    xr=crispT;
    xls=crispT;
    xrs=crispT;
    x=crispT;
    %normalization
    for i=1:size(TL,1)
        for j=1:size(TL,2)
            delta=max(TRs(i,j,:))-min(TLs(i,j,:));
            xl(i,j)=(TL(i,j)-min(TLs(i,j,:)))/delta;
            xm(i,j)=(TM(i,j)-min(TLs(i,j,:)))/delta;
            xr(i,j)=(TR(i,j)-min(TLs(i,j,:)))/delta;
        end
    end
    %compute ls rs normalized value
    for i=1:size(TL,1)
        for j=1:size(TL,2)
            xls(i,j)=xm(i,j)/(1+xm(i,j)-xl(i,j));
            xrs(i,j)=xr(i,j)/(1+xr(i,j)-xm(i,j));
        end
    end
    %compute total normalized crisp values
    for i=1:size(TL,1)
        for j=1:size(TL,2)
            x(i,j)=[xls(i,j)*(1-xls(i,j))+xrs(i,j)*xrs(i,j)]/...
                [1-xls(i,j)+xrs(i,j)];
        end
    end
    %compute crisp values
    for i=1:size(TL,1)
        for j=1:size(TL,2)
            delta=max(TRs(i,j,:))-min(TLs(i,j,:));
            crispT(i,j)=min(TLs(i,j,:))+x(i,j)*delta;
        end
    end
end