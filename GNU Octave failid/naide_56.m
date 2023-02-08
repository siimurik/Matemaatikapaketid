% MINIMISEERIMISÜLESANNE KIIREIMA LANGUSE MEETODIGA
clear
% Gradiendi komponendid ja selle täpsus
% f=@(x,y)(x+y)^4+exp(x)+exp(3*y)
f1=@(x,y)4*(x+y)^3+exp(x);
f2=@(x,y)4*(x+y)^3+3*exp(3*y);
eta=1e-3;
% Alglähend ja fiktiivne eelmine lähend
% koos iteratsioonide arvuga
x=0;
y=0;
xvana=1;
yvana=1;
k=0;
% Iteratsioonid gradientmeetodiga
%while norm(x-xvana, 2) >= eta
while sqrt((x-xvana)^2+(y-yvana)^2) >= eta
    v1=-f1(x,y);
    v2=-f2(x,y);
    % Optimaalsema sammupikkuse leidmine Newtoni meetodiga
    % Selleks tuleb defineerida g_n 1. ja 2. tuletis
    gntul=@(t)4*(x+t*v1+y+t*v2)^3*(v1+v2)+...
        exp(x+t*v1)*v1+exp(3*(y+t*v2))*3*v2;
    gntul2=@(t)12*(x+t*v1+y+t*v2)^2*(v1+v2)^2+...
        exp(x+t*v1)*v1^2+exp(3*(y+t*v2))*9*v2^2;
    % Alglähend ja fiktiivne eelmine lähend
    % Newtoni meetodi jaoks
    t=0;
    tvana=1;
    % Iteratsioonid Newtoni meetodiga kuni
    % täpsuseni 1e-6
    while abs(t-tvana) >= 1e-6
        tvana=t;
        t=t-gntul(t)/gntul2(t);
    end
    xvana=x;
    yvana=y;
    % Uue lähendi arvutamine
    x=x+t*v1;
    y=y+t*v2;
    k=k+1;
end
disp('Lõpptulemus')
x
y
k