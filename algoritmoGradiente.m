function [ resp ] = algoritmoGradiente( x , e )
% Algoritmo de Direção de busca por vetor gradiente
% Anda no sentido contrário ao vetor gradiente no ponto

% Alfa é o passo para o proximo x
x(:,1)=x;
i= 1;
% Ou condição de parada igual a norm(g)
while i<=27
    g= gradiente('f',x(:,i),e);
    alfa= aurea('f', x(:,i), e, -g);
    x(:,i+1)= x(:,i)+(alfa*(-g));
    i= i+1;
end

resp=x
%i
 
