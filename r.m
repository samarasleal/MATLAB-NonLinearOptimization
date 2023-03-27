function [ resp ] = r(x)

% Exemplo 2 restrições de igualdade
% resp = [(x(1,1)-3)^2+(x(2,1)-3)^2-9-0.001 3-x(2,1)-0.001];

% Exemplo 2 restrições de desigualdade 
% resp = [x(1,1)+x(2,1) (x(1,1)^2)+(x(2,1)^2)-4];

% Exemplo 1 restrição de igualdade
% resp = [x(2,1)^2-1-0.001];

%resp=0;

% Restrição Prova Prática de desigualdade
% resp = [(x(1,1)-2)^2+(x(2,1)-2)^2-1];

% Trabalho Prático - Rodrigo
%resp = [(x(1,1)+3)^2+(x(2,1)+3)^2-1];
resp= [x(1,1)-15];