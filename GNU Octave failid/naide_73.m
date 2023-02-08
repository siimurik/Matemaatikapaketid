clear
% Algandmed
x=[-2 -1 0 1 2];
y=[1 2 4 3 1];
kappa=[1 1 1 2 2];
% Maatriks ja parem pool
for i=1:4
    for j=1:4
        A(i,j)=sum(kappa.*x.^(i+j-2));
    end
    b(i)=sum(kappa.*y.*x.^(i-1));
end
% Süsteemi lähendamine
c=A\b'