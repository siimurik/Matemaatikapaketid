% Newtoni meetod
clear
t = -2:0.1:2;
plot(t, t.^4-3*t.^2+t+1)
grid on
f = @(x)x^4-3*x^2+x+1;
df = @(x)4*x^3-6*x+1;
%x = 1.3;
%x = 1.1
%x = -0.5
x = -1.8
xvana = -2;
k = 0;
while abs(x-xvana) >= 1e-5
  xvana = x;
  x = x - f(x)/df(x);
  k = k + 1;
end
disp('Vastused:')
x
k
