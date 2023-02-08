clear
% Q on juhtme soojusvõimsus pikkusühiku kohta [W/m]
Q = 42;
% kappa on isolatsioonikihi soojusjuhtivus [W/(m*K)]
kappa = 0.19;
% k on konvektiivne soojusülekande kordaja [m^2*K/W]
k = 0.035;
% T_out on välistemperatuur [K]
T_out = 28.85+273;
% r on (ilma isolatsioonita) juhtme ristlõike raadius [m]
r = 4*10^-3;
f=@(x)Q./(2.*pi).*(1./kappa.*sqrt((r+x)./r).*log((r+x)./r)...
    +k./(r+x))+T_out;
fplot(f, [0,0.01])
xlabel('x, [m]')
ylabel('T, [K]')
grid on
%return
a=0;
b=0.002;
c=b-2/(1+sqrt(5))*(b-a);
d=a+2/(1+sqrt(5))*(b-a);
k=0;
while (b-a)>=2e-7
    if f(c)<f(d)
        b=d;
        d=c;
        c=b-2/(1+sqrt(5))*(b-a);
    else
        a=c;
        c=d;
        d=a+2/(1+sqrt(5))*(b-a);
    end
    k=k+1;
end
x=(a+b)/2;
y=f(x);
disp('vastus')
x
y
k