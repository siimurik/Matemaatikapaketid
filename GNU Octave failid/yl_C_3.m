% INTERPOLEERIMINE NEWTONI INTERPOLATSIOONIPOLÜNOOMIGA
clear
x=0:4;
y=[15 -4 -43 -60 11];
%%
c=[1 1 -20 -1 15]
Phi=@(x)pol(c,x)
fplot(Phi, [0,4])
hold on
plot(x,y,'*')
grid on
xlabel('x')
ylabel('y')
hold off