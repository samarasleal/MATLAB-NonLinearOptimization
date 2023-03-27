function [ y ] = fOld( x )
% Trabalho Prático - Rodrigo
y = sin((x(1,1)^2)+(x(2,1)^2))

% Aula Pratica 01: gradiente
% y=((x(1,1)-1)^2)+x(2,1)^2+x(3,1);

% Aula Pratica 02: Algoritmo Gradiente x*=[-1.5 2.5]
% y= (2*x(1,1)^2)+(x(2,1)^2)+(2*x(1,1)*x(2,1))+x(1,1)-(2*x(2,1))+3;

% Aula Pratica 03: Algoritmo Newton
% Ponto inicial x=[0 0 0]  e= 0.00001 x*=[3 1 0]
% y = (x(1,1)^2) + (x(2,1)^2) + (2*(x(3,1)^2)) + x(1,1)*x(2,1) + x(1,1)*x(3,1) - 7*x(1,1) - 5*x(2,1) - 3*x(3,1) + 13;

% Aula Pratica 04: Algoritmo QuasiNewton 
% y = (2*x(1,1)^2)+ (4*x(2,1)^2);

% Aula Pratica 05

% 1- Exemplo 2 restrições de igualdade x* =[0 3]
% y = x(1,1)+x(2,1);

% 2- Exemplo 2 restrições de desigualdade x* =[-2 0]
% y = 5*x(1,1);

% 3- Exemplo 1 restrição de igualdade x*=[3 1]
% y = (x(1,1)-3)^2+(x(2,1)-2)^2;
% r = [x(2,1)^2-1-0.001];

% Prova Prática
%y = 100*((x(1,1)^2)-(x(2,1)^2)) + (1-x(1,1)^2);
%r = (x(1,1)-2)^2+(x(2,1)-2)^2-1;
% Prova Prática Função
%if r>0
%    y = y+2000*r;
%end
end

