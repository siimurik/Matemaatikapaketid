clear
% Simpsoni valem
a=0;
b=10;
f=@(x)sqrt(x+1)./(x+3).^3;
%%
n=100;
h=(b-a)/n;
x=a:h:b;
y=f(x);
%
simpson=0;
for i=1:n/2
    simpson=simpson+y(2*i-1)+4*y(2*i)+y(2*i+1);
end
simpson=simpson*h/3