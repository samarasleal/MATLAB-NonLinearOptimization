function [ n ] = algoritmoNewton( x, e)
% Calcula pt mínino a partir do vetor gradiente corrigido (matriz hessiana)
% c é críterio de parada = norma do vetor c= norm(x)
% Anda só uma vez na direção
x(:,1)=x;

g=gradiente('f',x(:,1),e);
c=norm(g);
k=0;
i=1;
while c~=0
    g= gradiente('f',x(:,i),e);
    h= hessiana(x(:,i),e);
    x(:,i+1)= x(:,i)-(inv(h))*g;
    c= norm(g);
    k=k+1;
    i=i+1;
end




