function [ resp ] = algoritmoElipsoidal(x)
% Algoritmo elipsoidal : Calcula subgradiente, particiona região em 2

[n,c]=size(x);
% Q Matriz hessiana que define o elipsóide
Q(:,:,1)=eye(n);
Id=eye(n);
k=1;
x(:,k)=x;
volume=(4/3)*pi*sqrt(det(Q(:,:,1)));
%volumeB=pi*det(sqrt(Q(:,:,1)))
while volume>0.01
    % Retorna o valor e a posição da restrição mais violada no ponto
    if r(x)~=0
        r0=r(x(:,k));
        if max(r0)>0        
            [v,id]=max(r0);
            % calcular gradiente da restrição mais violada
            for i=1:n
                xfinal =x(:,k)+0.01*Id(:,i);
                rfinal=r(xfinal);
                g(i,1)=(max(rfinal) - v)/0.001;   
            end
        else
            g=gradiente('f',x(:,k),0.001)
        end 
    else
        g=gradiente('f',x(:,k),0.001);
    end
    x(:,k+1)= x(:,k)-(1/n+1)*((Q(:,:,k)*g)/(g'*Q(:,:,k)*g)^0.5);
    Q(:,:,k+1)=(n^2/(n^2-1))*(Q(:,:,k)-(((2/(n+1))*Q(:,:,k)*g*(Q(:,:,k)*g)')/(g'*Q(:,:,k)*g)));
    volume=(4/3)*pi*sqrt(det(Q(:,:,k+1)));
    k = k+1;
end
x