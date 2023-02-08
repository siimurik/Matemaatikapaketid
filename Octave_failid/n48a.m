clear
% Harilik iteratsioonimeetod
% G komponendid ja
% kriteeriumis kasutatav täpsus
g1 = @(x)1/1.1*(10-x(2));
g2 = @(x)1/1.3*(11-x(1)-x(3)-x(4));
g3 = @(x)1/1.1*(-x(2));
g4 = @(x)1/1.1*(2-x(2));
eta = 1e-5
% Alglähend ja fiktiivne eelmine lähend
x = [0,0,0,0]';
xu = [0,0,0,0]';
xvana = [-1,-1,-1,-1]';
% Iteratsioonitsükkel
k = 0;
while norm(x-xvana, inf) >= eta
  xu(1) = 1/1.1*(10-x(2));
  xu(2) = 1/1.3*(11-x(1)-x(3)-x(4));
  xu(3) = 1/1.1*(-x(2));
  xu(4) = 1/1.1*(2-x(2));
  xvana = x;
  x = xu;
  k = k + 1;
end
disp('Vastus h.i.m korral:')
x
disp('Iteratsioonide arv:')
k
