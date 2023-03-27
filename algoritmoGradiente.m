function [ resp ] = algoritmoGradiente( x , e )
% Algoritmo de Dire��o de busca por vetor gradiente
% Anda no sentido contr�rio ao vetor gradiente no ponto

% Alfa � o passo para o proximo x
x(:,1)=x;
i= 1;
% Ou condi��o de parada igual a norm(g)
while i<=27
    g= gradiente('f',x(:,i),e);
    alfa= aurea('f', x(:,i), e, -g);
    x(:,i+1)= x(:,i)+(alfa*(-g));
    i= i+1;
end

resp=x
%i
 
