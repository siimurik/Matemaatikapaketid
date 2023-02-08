function y = pol1(c,x)
y=0;
m = length(c);
for i = 1:m
    y = y+c(i)*x.^(i-1);
end