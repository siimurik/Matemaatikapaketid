function y=B32(x)
if x<-2
    y=0;
elseif x<-1
    y=(x+2)^3;
elseif x<0
    y=1+3*(x+1)+3*(x+1)^2-3*(x+1)^3;
elseif x<1
    y=1+3*(1-x)+3*(1-x)^2-3*(1-x)^3;
elseif x<2
    y=(2-x)^3;
else
    y=0;
end