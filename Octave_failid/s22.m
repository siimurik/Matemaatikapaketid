% Harilik iteratsioonimeetod
% Algne funktsioon: x = 5 - exp(x)
clear
t = -4:0.1:4;
plot (t, t-5+exp(t));
xlabel ("t");
ylabel ("t-5+exp(t)");
grid on
% x = ln(5-x)
g = @(x)log(5-x);
x = 1;
xvana = 2;
k=0;
while abs(x-xvana) >= 1e-5
  xvana=x;
  x=g(x);
  k=k+1;
end
disp('Vastused:')
x
k