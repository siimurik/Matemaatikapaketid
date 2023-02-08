% MINIMISEERIMIS�LESANNE GRADIENTMEETODIGA
clear
% Funktsiooni ja selle gradiendi komponendid ja selle t�psus
f =@(x)(x(1)+1)^2+(x(2)-4)^2+(x(3)+5)^2+x(1)^4+2*x(2)^4+3*x(3)^4;
f1=@(x)2*(2*x(1)^3+x(1)+1);
f2=@(x)2*(4*x(2)^3+x(2)-4);
f3=@(x)2*(6*x(3)^3+x(3)+5);
eta=1e-4;
% Algl�hend ja fiktiivne eelmine l�hend
x=[0,0,0]';
xvana=[1,1,1]';
% Sammupikkuse algv��rtus ja v�hendamistegur ning
% ts�kli iteratsioonide ja korrigeeringute arv
t=1.5;
xi=0.5;
k=0;
n=0;
% Iteratsioonid gradientmeetodiga
while norm(x-xvana, 1) >= eta
    v=-[f1(x),f2(x),f3(x)]';
    % Uue l�hendi leidmine
    xuus=x+t*v;
    % Sammupikkuse v�hendamine ja l�hendi 
    % korrigeerimine (vajaduse korral)
    while f(xuus) >= f(x)
        t=t*xi;
        xuus=x+t*v;
        n=n+1;
    end
    xvana=x;
    x=xuus;
    k=k+1;
end
disp('L�pptulemus:')
x
disp('Iteratsioonide arv:')
k
disp('Korrigeeringute arv:')
n