% MINIMISEERIMISÜLESANNE TRAHVIFUNKTSIOONIDE MEETODIGA
clear
% Nivoojooned ja D raja
[X,Y]=meshgrid(-1.5:0.01:1.5,-1.5:0.01:1.5);
Z = X.^2+3*Y.^2+X.*Y+7*X-10*Y+2;
contour(X,Y,Z,30)
xlabel('x')
ylabel('y')
grid on
hold on
ezplot('x^2+y^2-1')
hold off
% Minimeeritav funktsioon (koos trahvifunktsiooniga) 
% ning selle täpsus 
sigma=50;
f=@(x,y)x^2+3*y^2+x*y+7*x-10*y+2 ...
    +1/sigma*exp(sigma*(x^2+y^2-1));
eta=1e-3;
% Alglähend ja fiktiivne eelmine lähend
x=-0.7;
y=0.7;
%x=-0.6;
%y=0.6;
xvana=1;
yvana=1;
% Sammupikkuse algväärtus ja vähendamistegur 
% ning tsükli iteratsioonide arv
t=2;
xi=0.5;
k=0;
% Iteratsioonitsükkel
while norm(x-xvana, 2) >= eta
    v1=-(2*x+y+7+2*x*exp(sigma*(x^2+y^2-1)));
    v2=-(6*y+x-10+2*y*exp(sigma*(x^2+y^2-1)));
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
f(x,y);
u=[x;y];
upsilon = norm(u,2)
v=[x/upsilon;y/upsilon]
f(v(1),v(2))
nuu = norm(v,2)
k
