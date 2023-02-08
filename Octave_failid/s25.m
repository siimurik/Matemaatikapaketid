% Harilik iteratsioonimeetod
% Algne funktsioon: x = sqrt(cos(x/5)+x^4)-8-x)
clear
t = -4:0.1:4;
plot (t, sqrt(cos(t/5)+t.^4)-8-t);
xlabel ("t");
ylabel ("sqrt(cos(t/5)+t^4)-8-t");
grid on
% x = (64-16*x+x*x-cos(x/5))^(1/4)
g = @(x)(64-16*x+x*x-cos(x/5))^(1/4);
x = 1.5;
xvana = 1;
k=0;
while abs(x-xvana) >= 1e-5
  xvana=x;
  x=g(x);
  k=k+1;
end
disp('Vastused:')
x
k