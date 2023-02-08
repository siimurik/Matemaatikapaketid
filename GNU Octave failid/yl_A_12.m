% Süsteemi lahendid Newtoni meetodiga
clear
F=@(x)[sin(x(1)-x(2))+x(2)-4
       x(1)+(x(1)-x(2)+5)^2];
J=@(x)[cos(x(1)-x(2))     -cos(x(1)-x(2))+1
       2*x(1)+11-2*x(2)   2*(x(2)-x(1)-5)];
x=[1;1];
xv=[0;0];
k=0;
while norm(x-xv,inf)>=10e-8
    xu=x-inv(J(x))*F(x);
	xv=x;
	x=xu;
	k=k+1;
end
disp('vastus')
format long
x
k
%Kontrolliks:
%sin(x(1)-x(2))+x(2)-4
%x(1)+(x(1)-x(2)+5)^2