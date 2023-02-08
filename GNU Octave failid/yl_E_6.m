clear
% Simpsoni valem
a=4;
b=7;
f=@(x)exp(0.3.*x)./(x.^3+x.^2+10);
%%
n=40;
h=(b-a)/n;
x=a:h:b;
y=f(x);
%
simpson=0;
for i=1:n/2
    simpson=simpson+y(2*i-1)+4*y(2*i)+y(2*i+1);
end
simpson=simpson*h/3