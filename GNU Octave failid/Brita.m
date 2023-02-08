clear
y=@(x)2.*x+2./(x-1);
#fplot(y, [-4,4])
#hold on
#plot(x,y,'*')
#grid on
#xlabel('x')
#ylabel('y')
#hold off

U=[1.0  1.0
   1.07 0.93];
V=[10 10]';
A=linsolve(U,V);

x=1-8/9
S33=(1-2*x+x^2)/(x-3)*(((x+2)**2-x**2)/(4*x**2-4)+3/(x-x^2))
disp("")
x=-2/3
S34=((x+1)/(1-2*x+x**2)-1/(x-1))*(x-1)/x-2*x/(x-1)
disp("")
a=-4/3
S35=(1/(1-a)+1/(a**2-1))/(a-(1-2*a**2)/(1-a)+1)