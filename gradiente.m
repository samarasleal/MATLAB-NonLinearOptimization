function [ g ] = gradiente( func, x, e )
% Calcula o vetor gradiente : Dire��o de busca

% gravar n�mero de linhas n e colunas c do vetor coluna x
[n,c]=size(x);

% Id = Identidade = base can�nica para o n�mero n de linhas de x
Id=eye(n);

% Valor inicial de f(x)
% Fun��o feval ('nome da fun��o', entrada)
yinicial=feval(func,x);

% Para o n�mero de linhas de x (ou seja, n�mero de par�metros de entrada de x, ex: x1 e x2)
for i=1:n
    xfinal =x+e*Id(:,i);
    yfinal=feval(func,xfinal);
    g(i,1)=(yfinal - yinicial)/e;   
end
% Retorna o vetor gradiente
