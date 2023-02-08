% CAUCHY ÜLESANNE ADAM-BASHFORDI MEETODIGA
clear
% Algfunktsioon ja algtingimused
f=@(x,y)y/(cos(x)+4);
x0=5;
y0=2;
% Lõik [5,12] koos sammupikkusega
X=12;
h=0.2;
% x väärtuste vahemik ja iteratsioonide arv
x=x0:h:X;
n=(X-x0)/h;
% Esimene alglähend
y(1)=y0;
% Runge-Kutta meetoditest on kasutatud 
% Ralstoni meetodit teise alglähendi leidmiseks
y(2)=y(1)+h/3*f(x(1),y(1))+2*h/3*f(x(1)+3*h/4,y(1)+3*h/4*f(x(1),y(1)));
% Põhitsükkel Adam-Bashfordi meetodiga
for i=2:n
    y(i+1)=y(i)+3*h/2*f(x(i),y(i))-h/2*f(x(i-1),y(i-1));
end
plot(x,y)
grid on
xlabel('x')
ylabel('y')
