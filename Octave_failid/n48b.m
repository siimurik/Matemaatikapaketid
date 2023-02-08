clear
% Seideli iteratsioonimeetod
% G komponendid ja
% kriteeriumis kasutatav täpsus
g1 = @(x)1/1.1*(10-x(2));
g2 = @(x)1/1.3*(11-x(1)-x(3)-x(4));
g3 = @(x)1/1.1*(-x(2));
g4 = @(x)1/1.1*(2-x(2));
eta = 1e-5
% Alglähend ja fiktiivne eelmine lähend
x = [0,0,0,0]';
xvana = [-1,-1,-1,-1]';
% Iteratsioonitsükkel
k = 0;
while norm(x-xvana, inf) >= eta
  xvana = x;
  x(1) = g1(xvana);
  x(2) = g2([x(1),xvana(2),xvana(3),xvana(4)]);
  x(3) = g3([x(1),x(2),xvana(3),xvana(4)]);
  x(4) = g4([x(1),x(2),x(3),xvana(4)]);
  k = k + 1;
end
disp('Vastus Seideli m. korral:')
x
disp('Iteratsioonide arv:')
k