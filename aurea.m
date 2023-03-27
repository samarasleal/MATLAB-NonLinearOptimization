function [ alfa ] = aurea(func, x, ep, g)
% Recebe direção que vou andar (gradiente g)
% Retorna o alfa: Quantos passos na direção contrária do gradiente
a= 0;
b= 1;
while(b-a)> ep
    xa= b-(0.618*(b-a));
    xb= a+(0.618*(b-a));
    fa= feval(func,x+(xa*g));
    fb= feval(func,x+(xb*g));
    if fa< fb
        b= xb;
    else
        a= xa;
    end
end
alfa=(a+b)/2;


