clear
%Gaussi kvadratuurvalem solmede arvuga n=4
x=[-0.9062 -0.5385 0 0.5385 0.9062];
A=[0.2369 0.4768 0.5689 0.4768 0.2369];
%x=[-0.8611 -0.3400 0.3400 0.8611];
%A=[0.3479 0.6521 0.6521 0.3479];
%%
f=@(x)exp(x.^2-x);
y=f(x);
%
Gauss=A*y'
% WolframAlpha has gone nuts
WolframAlpha = 3.588792794066972583593937771996084092748877119474288069502;
Vahe = abs(WolframAlpha-Gauss)