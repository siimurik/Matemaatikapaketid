function y=pol(c, x)
y=0;
n=length(c);
for i=1:n
    y=y+c(i)*x.^(n-i);
end