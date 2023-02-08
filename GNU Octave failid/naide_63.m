% Näide 6.3 lk 126
% Interpoleerida Runge funktsiooni lõigul [-1,1]
% sammuga h=0.2 splainiga ruumist S^(3,2)
%====================Lahendus=====================
% 1. tabeli loomine
f = @(x)1/(1+25*x^2);
a = -1;
b = 1;
n = 10;
h = (b-a)/n;
for i = 1:n+1
    x(i) = a+h*(i-1);
    y(i) = f(x(i));
end

% 2. Süsteemi koostamine ülesande lahendamiseks:
% moodustame nullidest koosneva maatriksi
A = zeros(n+3,n+3);
% ja täidame nullist erinevate
% elementidega maatriksi 3 diagonaali
% ja parema poole vektori
A(1,2) = 1;
A(n+3,n+2) = 1;
d(1) = y(1)/6;
d(n+3) = y(n+1)/6;
for i = 2:n+2;
    A(i,i-1) = 1;
    A(i,i) = 4;
    A(i,i+1) = 1;
    d(i) = y(i-1);
end

% lahendame süsteemi
c = A\d'

% 3. graafiku joonestamine:
% tihendatud võrk käsu plot jaoks
ngraafik = 100;
hgraafik = (b-a)/ngraafik;
% arvutame interpolandi väärtused
% tihendatud võrgul
for i = 1:ngraafik+1
    xgraafik(i) = a+hgraafik*(i-1);
    ygraafik(i) = 0;
    for j = 1:n+3
        ygraafik(i) = ygraafik(i)+c(j)*...
            B32((xgraafik(i)-a-(j-2)*h)/h);
    end
end
% plotime graafiku
plot(xgraafik,ygraafik,x,y,'*')
grid on
xlabel('x')
ylabel('y')