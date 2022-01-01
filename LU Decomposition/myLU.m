function [L,U,LU] =myLU(A)
clc;

    [n,m]=size(A);

    L=zeros(length(A)); 
    U=zeros(length(A)); 

    if n==m 
        for j=1:length(A)
            for i=1:length(A)
                sum=0;
                q=j-1;
                for k=1:q
                    sum=sum+(L(i,k)*U(k,j));
                end
                if i==j
                    U(i,j)=1;
                end
                if i >=j
                    L(i,j)=A(i,j)-sum; 
                else
                    U(i,j)=(1/L(i,i))*(A(i,j)-sum); 
                end
            end
        end
    else
    end
    if n==m
        A
        L
        U
        LU=L*U
        
    else
        disp('Matris kare değil')
    end

end


