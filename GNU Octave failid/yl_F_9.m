% Cauchy ülesanne trapetsvalemi meetodiga
clear
% Algfunktsioon ja algtingimused
f1=@(x,y,z)z;
f2=@(x,y,z)y^2-x*(x+z);
x0=0;
y0=1;
z0=0;
% Lõik [0,3] koos sammupikkusega
X=3;
h=0.001;
x=x0:h:X;
n=(X-x0)/h;
y(1)=y0;
z(1)=z0;
% Peatsükkel
for i=1:n
    y(i+1)=y(i)+h*f1(x(i),y(i),z(i));
    z(i+1)=z(i)+h*f2(x(i),y(i),z(i));
end
plot(x,y)
grid on
xlabel('x')
ylabel('y')