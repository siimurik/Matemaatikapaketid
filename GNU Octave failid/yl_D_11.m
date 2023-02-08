clear
% Algandmed:
A=[  0.13   2.3   -1.5   0.56   3.1    -1.9
    45.0  -16.0  -99.0  13.0  -18.0  -123.0 ]';
B=[-7 11 21 -6.6 15.3 33]';
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
