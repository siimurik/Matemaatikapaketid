disp("mjengite jarvude vjäärtjused:")
U=[ 1.0  1/6
   -1.0  2.0];
V=[29-7 4]';
A=linsolve(U,V)

disp("Kanga meetri hind:")
upsilon=[ 4.0  3.0
          1.0  4.0];
vu=[31.9 20.0]';
alpha=linsolve(upsilon,vu)

disp("Ristküliku mõõtmed:")
a =  [  1  1
        1 -0.6 ];
b = [136  0]';
rk = linsolve(a, b)

disp("Vanemate vanused:")
q = [ 1.0   1.0
      1.5  -1.0];
w = [70   (1.5*30-30)]';
e = linsolve(q,w)

disp("Väärakad ristsummaga")
r = [ 1.0  1.0
      1.0 -1.0];
t = [7 -3]';
y = linsolve(r, t)

disp("Uus ristkülik:")
u = [ 2.0  2.0
      2.0  2*1.25];
i = [82.0 (82+24-2*6)]';
o = linsolve(u, i)

disp("Huvitav murd:")
s = [ 5.0  -3.0
      2.0  -1.0];
d = [(3.0-5.0) (-1.0+2.0)]';
f = linsolve(s, d)
disp("Kontroll:")
%(f(1,1)+1.0)/(f(2,1)+1.0) == 0.60000
(f(1,1)-1.0)/(f(2,1)-1.0) == 1/2 