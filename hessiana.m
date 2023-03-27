function [ h ] = hessiana(x , e)
% Calcula aq matriz hessiana

% gravar n�mero de linhas n e colunas c do vetor coluna x
[n,c]=size(x);

for i=1:n
    xfinal=x;
    xfinal(i)=x(i)+e;    
    h(:,i)=((gradiente('f',xfinal,e))-(gradiente('f',x,e)))/e;
end

