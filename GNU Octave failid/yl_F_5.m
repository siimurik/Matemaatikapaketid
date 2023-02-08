% CAUCHY ‹LESANNE ADAM-BASHFORDI MEETODIGA
clear
% Algfunktsioon ja algtingimused
f=@(x,y)y*exp(1.5*x-y);
x0=2;
y0=7;
% Lıik [2,10] koos sammupikkusega
X=10;
h=0.05;
% x v‰‰rtuste vahemik ja iteratsioonide arv
x=x0:h:X;
n=(X-x0)/h;
% Esimene algl‰hend
y(1)=y0;
% Runge-Kutta meetoditest on kasutatud 
% Heuni meetodit teise algl‰hendi leidmiseks
y(2)=y(1)+h/2*(f(x(1),y(1))+...
    f(x(2),y(1)+h*f(x(1),y(1))));
for i=2:n
    y(i+1)=y(i)+3*h/2*f(x(i),y(i))-h/2*f(x(i-1),y(i-1));
end
plot(x,y)
grid on
xlabel('x')
ylabel('y')
