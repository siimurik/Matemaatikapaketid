clear
% Harilik iteratsioonimeetod G komponendid 
% ja kriteeriumis kasutatav täpsus
g1=@(x)1/1.1*(10-x(2));
g2=@(x)1/3.1*(11-x(1)-x(3)-x(4));
g3=@(x)1/1.1*(-x(2));
g4=@(x)1/1.1*(2-x(2));
eta = 1e-5;
% Alglähend ja fiktiivne eelmine lähend
x=[0,0,0,0]';
xvana=[-1,-1,-1,-1]';
% Iteratsioonitsükkel
k=0;
while norm(x-xvana,inf) >= eta
    xvana = x;
    x(1)=g1(xvana);
    x(2)=g2(xvana);
    x(3)=g3(xvana);
    x(4)=g4(xvana);
    k=k+1;
end
disp('Vastus h.i.m korral')
disp(x)
disp('Iteratsioonide arv')
disp(k)
disp('Kontroll:')
1.1*x(1)+x(2)-10.0
x(1)+3.1*x(2)+x(3)+x(4)-11.0
x(2)+1.1*x(3)
x(2)+1.1*x(4)-2.0