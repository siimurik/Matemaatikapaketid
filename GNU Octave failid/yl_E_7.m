clear
% Simpsoni valem
a=1;
b=2;
f=@(x)(sin(x)-2).^3;
%%
n=20;
h=(b-a)/n;
x=a:h:b;
y=f(x);
%
simpson=0;
for i=1:n/2
    simpson=simpson+y(2*i-1)+4*y(2*i)+y(2*i+1);
end
simpson=simpson*h/3
% WolframAlpha poolt saadud vastus
tapne_vb=-1.14190975213467
vahe=abs(simpson-tapne_vb)