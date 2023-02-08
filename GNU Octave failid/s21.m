% Harilik iteratsioonimeetod
% Algne funktsioon: x = sin(x) + 6
clear
t = 0:0.1:10;
plot (t, sin(t)+6-t);
xlabel ("t");
ylabel ("sin(t)+6-t");
grid on
g = @(x)sin(x)+6;
% Otsime lähendit, kust funktisoon lõikab y=0 telge
x = 5;
% x-st erinev arv
xvana = 1;
k=0;
while abs(x-xvana)/abs(x) >= 1e-4
  xvana=x;
  x=g(x);
  k=k+1;
end
x
k