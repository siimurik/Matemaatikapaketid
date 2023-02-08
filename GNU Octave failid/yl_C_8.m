% INTERPOLEERIMINE KUUPSPLAINIGA RUUMIST S3,2
clear
h=0.4;
x=0-h:h:2.0+h
y=[5.0 4.4 3.2 3.8 3.0 2.1]
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
xg=0.0:0.001:2.0;
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
