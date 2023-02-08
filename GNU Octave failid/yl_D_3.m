% NELJANDA ASTME LÄHEND VÄHIMRUUTUDE MÕTTES
clear
h=3.0;
x=0.0:h:21.0;
y = [-3 6 9 10 8 5 -4 -12];
kappa = [2 2 2 2 1 1 1 1];
%%
% Kuna tegemist on neljanda astme lähendiga,
% siis m=4 ning süsteem koosneb viiest võrrandist
m=4;
for i=1:m+1
    for j=1:m+1
        A(i,j)=sum(kappa.*x.^(i+j-2));
    end
    b(i)=sum(kappa.*y.*x.^(i-1));
end
A
b
%%
c = A\b'
%c(5)
%%
xg = 0:0.01:21;
%yg = c(1)+c(2).*x+c(3).*x.^2+c(4).*x.^3+c(5).*x.^4;
yg = pol1(c,xg);
plot(xg,yg,x,y,'*')
grid on