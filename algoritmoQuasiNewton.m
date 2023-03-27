function [ qn ] = algoritmoQuasiNewton( x, e, beta)
% Algoritmo de correção
% Usa o Newton modificado + realiza o cálculo recursivo da hessiana (positiva definida)

% gravar número de linhas n e colunas c do vetor coluna x
[n,c]=size(x);
h(:,:,1)=eye(n);
% Pegar o primeiro valor de xo
x(:,1)=x;
g(:,1)=gradiente('f',x(:,1),e);
% Inicializar v e r
v=[];
r=[];
i=1;
cont=0;

while norm(g(:,i)) > 0.01
    d= -h(:,:,i)*g(:,i);
    alfa= aurea('f', x(:,i), 0.001, -g(:,i));
    x(:,i+1)= (x(:,i))+(alfa*d);
    g(:,i+1)= gradiente('f',x(:,i+1),0.001);
    
    v(:,i)= (x(:,i)- x(:,i+1));
    r(:,i)= (g(:,i)- g(:,i+1));
    
    cDFP = ( v(:,i) * v(:,i)' )/( v(:,i)' * r(:,i) ) - (h(:,:,i) * r(:,i) * r(:,i)' * h(:,:,i)) / (r(:,i)' * h(:,:,i) * r(:,i));    
    cBFGS = (1 + (r(:,i)' * h(:,:,i) * r(:,i)) / (r(:,i)' * v(:,i))) * (v(:,i) * v(:,i)') / (v(:,i)' * r(:,i)) -  (v(:,i) * r(:,i)' * h(:,:,i) +  h(:,:,i) * r(:,i) * v(:,i)') / (r(:,i)' * v(:,i));
    
    c=((1-beta)*cDFP) + (beta*cBFGS);
    h(:,:,i+1) = h(:,:,i) + c;
    i=i+1;
    cont=cont+1;
end
qn=x
%cont
%x(:,i)


