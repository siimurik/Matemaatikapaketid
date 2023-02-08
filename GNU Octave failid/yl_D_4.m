% NELJANDA ASTME LÄHEND VÄHIMRUUTUDE MÕTTES
clear
h=1.0;
x=10.0:h:17.0;
y = [81 43 30 26 27 31 45 85];
kappa = [1 1 1 1 2 2 2 2];
%%
% Kuna tegemist on neljanda astme lähendiga,
% siis m=4 ning süsteem koosneb viiest võrrandist
for i=1:5
    for j=1:5
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
xg = 10:0.001:17;
yg = pol1(c,xg);
plot(xg,yg,x,y,'*')
grid on
