% INTERPOLEERIMINE NEWTONI INTERPOLATSIOONIPOLÜNOOMIGA
clear
x=-2:2;
y=[6 -14 -6 -6 22];
%%
c=[3 0 -7 4 -6]
Phi=@(x)pol(c,x)
fplot(Phi, [-2,2])
hold on
plot(x,y,'*')
grid on
xlabel('x')
ylabel('y')
hold off