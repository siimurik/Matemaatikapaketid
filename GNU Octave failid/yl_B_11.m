% MINIMISEERIMISÜLESANNE TRAHVIFUNKTSIOONIDE MEETODIGA
clear
% Nivoojooned ja D raja
[X,Y]=meshgrid(-2:0.01:2,-2:0.01:2);
Z = (X-3).^2+(Y-2).^2+X.*Y;
contour(X,Y,Z,100)
xlabel('x')
ylabel('y')
grid on
hold on
ezplot('4*x^2+y^2-1')
hold off
% Minimeeritav funktsioon (koos trahvifunktsiooniga) 
% ning selle täpsus 
sigma=50;
f=@(x,y)(x-3)^2+(y-2)^2+x*y ...
    +1/sigma*exp(sigma*(4*x^2+y^2-1));
eta=1e-4;
% Alglähend ja fiktiivne eelmine lähend
x=0.35;
%x=0.37;
y=0.7;
xvana=1;
yvana=1;
% Sammupikkuse algväärtus ja vähendamistegur 
% ning tsükli iteratsioonide arv
t=2;
xi=0.5;
k=0;
% Iteratsioonitsükkel
while norm(x-xvana, 1) >= eta
    v1=-(x*(8*exp(sigma*(4*x^2+y^2-1))+2)+y-6);
    v2=-(2*(y*exp(sigma*(4*x^2+y^2-1))+y-2)+x);
    xuus=x+t*v1;
    yuus=y+t*v2;
    while f(xuus, yuus) >= f(x,y)
        t=t*xi;
        xuus=x+t*v1;
        yuus=y+t*v2;
    end
    xvana=x;
    yvana=y;
    x=xuus;
    y=yuus;
    k=k+1;
end
disp('Lõpptulemus')
f(x,y)
u=[x;y]
upsilon = norm(u,2)
%v=[x/upsilon;y/upsilon]
%f(v(1),v(2))
k