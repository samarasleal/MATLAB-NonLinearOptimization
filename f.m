function [ y ] = f( x )
% Trabalho Prático - Rodrigo
% Parte IB
% y = sin((x(1,1)^2)+(x(2,1)^2));
% Parte IIB
%y = (x(1,1)-2)*(2*x(1,1) + 0.3*x(2,1) - 4.3) + (x(2,1)-1)*(0.2*x(1,1) + 4*x(2,1) - 22/5);

% Restrição
%r = (x(1,1)+3)^2+(x(2,1)+3)^2-1;

%y = (x(1,1)-3)^2+(x(2,1)-2)^2;
%r=x(2,1)^2-1-0.001;
% Utilizar penalidade e barreira para algoritmo Quasi-Newton
% Penalidade
%p=100;
%if r>0
%    y = y+(p*r);
%end

% Barreira
%alfa=0.01;
%if r<=0
%    y = y+(-alfa/r);
%end
%y = 1800*(7/(56250*x(1,1)) + 0.09)^(1/2) - 453
%y = 1800*(133/(10800000*x) + 9/100)^(1/2) - 453
%y = 1800*(7/(450000*x) + 0.09)^(1/2) - 453
y = 1800*(1/(1125*x(1,1)^2) + 0.09)^(1/2) - 453

