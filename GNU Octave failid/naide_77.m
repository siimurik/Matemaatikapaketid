clear

A=[ 3  2  1  3
   -1  1 -3  2]';
B=[5 -3 -10 -6]';
for i=1:4
    alpha_l1(i)=A(i,1);
    alpha_l2(i)=A(i,2);
end
alpha_11=sum(alpha_l1.^2)
alpha_12=sum(alpha_l1.*alpha_l2)
alpha_21=alpha_12
alpha_22=sum(alpha_l2.^2)

beta_1=sum(B.*alpha_l1')
beta_2=sum(B.*alpha_l2')

U=[ alpha_11 alpha_12
    alpha_21 alpha_22]
V=[beta_1 beta_2]'
disp('(x,y) vastused:')
X=linsolve(U,V)