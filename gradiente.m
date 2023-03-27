function [ g ] = gradiente( func, x, e )
% Calcula o vetor gradiente : Direção de busca

% gravar número de linhas n e colunas c do vetor coluna x
[n,c]=size(x);

% Id = Identidade = base canônica para o número n de linhas de x
Id=eye(n);

% Valor inicial de f(x)
% Função feval ('nome da função', entrada)
yinicial=feval(func,x);

% Para o número de linhas de x (ou seja, número de parâmetros de entrada de x, ex: x1 e x2)
for i=1:n
    xfinal =x+e*Id(:,i);
    yfinal=feval(func,xfinal);
    g(i,1)=(yfinal - yinicial)/e;   
end
% Retorna o vetor gradiente
