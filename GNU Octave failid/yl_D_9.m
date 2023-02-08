clear
% Algandmed:
A=[ -3.6  -3.4  -3.5  4.4  4.5  4.6
     1.2   1.09  1.4  6.7  6.9  6.5]';
B=[75.8 74.3 76.1 -33.5 -32.0 -36.0]';
% Maatriksite dimesioon:
n=length(A)
for i=1:n
    alpha_l1(i)=A(i,1);
    alpha_l2(i)=A(i,2);
end
%Maatriksi U elemendid
alpha_11=sum(alpha_l1.^2);
alpha_12=sum(alpha_l1.*alpha_l2);
alpha_21=alpha_12;
alpha_22=sum(alpha_l2.^2);
%Maatriksi V elemendid
beta_1=sum(B.*alpha_l1');
beta_2=sum(B.*alpha_l2');

U=[ alpha_11 alpha_12
    alpha_21 alpha_22]
V=[beta_1 beta_2]'
disp('(x,y) vastused:')
X=linsolve(U,V)
