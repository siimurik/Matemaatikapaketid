clear
h=10;
% t(min) = x
x=0-h:h:60+h
% T(°C) = y
y=[30 51 68 79 85.5 89 90]
%%%
n=length(y)-1;
A=zeros(n+3,n+3);
A(1,2)=1;
b(1)=y(1)/6;
for i=2:n+2
    A(i,i-1)=1;
    A(i,i)=4;
    A(i,i+1)=1;
    b(i)=y(i-1);
end
A(n+3,n+2)=1;
b(n+3)=y(n+1)/6;
%%
% c=inv(A)*b';
c=A\b'
%%
xg=0:0.001:60;
for j=1:length(xg)
    yg(j)=0;
    for i=1:length(c)
        yg(j)=yg(j)+c(i)*B32((xg(j)-x(i))/h);
    end
end
%%
plot(xg,yg,x(2:n+2),y,'o')
xlabel('x')
ylabel('y')
grid on

% Vastus tesiele osale:
disp('Ligikaudne temperatuur ajahetkel 54 min:')
yg(54001)