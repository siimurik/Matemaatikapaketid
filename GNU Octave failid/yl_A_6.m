clear
%Funktsioonidest koosneb maatriks:
F=@(x)[x(1)+5*x(3)-2
       x(2)^4-exp(-x(3))-x(3)-4
       x(1)+x(2)^3-2];
%Jakobiaani maatriks:
J=@(x)[1    0           5
       0    4*x(2)^3    exp(-x(3))-1
       1    3*x(2)^2    -2];
%Algandmed:
x=[1;1;1];
xv=[0;0;0];
k=0;
%Põhitsükkel, mis arvutab x-i väärtused:
while norm(x-xv,1)>=10e-7
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
%f1_x = x(1)+5*x(3)-2
%f2_x = x(2)^4-exp(-x(3))-x(3)-4
%f3_x = x(1)+x(2)^3-2