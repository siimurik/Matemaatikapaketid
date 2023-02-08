% MINIMISEERIMIS�LESANNE GRADIENTMEETODIGA
clear
% Funktsiooni ja selle gradiendi komponendid ja selle t�psus
f=@(x,y)(x+y)^4+exp(x)+exp(3*y);
f1=@(x,y)4*(x+y)^3+exp(x);
f2=@(x,y)4*(x+y)^3+3*exp(3*y);
eta=1e-3;
% Algl�hend ja fiktiivne eelmine l�hend
x=0;
y=0;
xvana=1;
yvana=1;
% Sammupikkuse algv��rtus ja v�hendamistegur ning 
% ts�kli iteratsioonide ja korrigeeringute arv
t=2;
xi=0.5;
k=0;
n=0;
% Iteratsioonid gradientmeetodiga
while sqrt((x-xvana)^2+(y-yvana)^2) >= eta
    v1=-f1(x,y);
    v2=-f2(x,y);
    % Uue l�hendi leidmine
    xuus=x+t*v1;
    yuus=y+t*v2;
    % Sammupikkuse v�hendamine ja l�hendi 
    % korrigeerimine (vajaduse korral)
    while f(xuus, yuus) >= f(x,y)
        t=t*xi;
        xuus=x+t*v1;
        yuus=y+t*v2;
        n=n+1;
    end
    xvana=x;
    yvana=y;
    x=xuus;
    y=yuus;
    k=k+1;
end
disp('L�pptulemus')
x
y
k
n