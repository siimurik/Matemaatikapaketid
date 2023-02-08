clear
% Sisestame püsitakistused, elektromotoorjõu ja muutuva takistuse:
R1 = 5;
R2 = 10;
E = 10;
R3 =1e-5:9.9:60;

 % Kirjutame voolude arvutamiseks vajalikud seosed:
 I1 = E./(R1+(R2.*R3)./(R2+R3))
 I1 = E./(R1+(R2.*R3)./(R2+R3))