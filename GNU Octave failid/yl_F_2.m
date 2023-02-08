% CAUCHY ÜLESANNE TRAPETSVALEMI MEETODIGA
clear
% Algfunktsioon ja algtingimused
f=@(x,y)cos(3*y-x^2);
x0=-1;
y0=4;
% Lõik [-1,1] koos sammupikkusega
X=1;
h=0.02;
% x väärtuste vahemik ja iteratsioonide arv
x=x0:h:X;
n=(X-x0)/h;
% Esimene alglähend
y(1)=y0;
% Runge-Kutta meetoditest on kasutatud 
% trapetsvalemi meetodit ülesande lahendamiseks
for i=1:n
    g=@(z)z-y(i)-h/2*(f(x(i),y(i))+f(x(i+1),z));
    y(i+1)=fzero(g,y(i));
end
plot(x,y)
grid on
xlabel('x')
ylabel('y')
