%
% 1D radioactive decay
%
% Solve the Equation dN/dt = -N/tau

N_uranium_initial = 1000; %initial number of uranium atoms
npoints = 100;            %Discretizise time into 100 intervals
dt = 1E7;                 %time step in years
tau = 4.4E9;              %mean lifetime of U238

N_uranium_zeros = zeros(npoints, 1);  %initalizes N_uranium,
                                      %a vector of dimension npoints X1,
                                      %to being all zeros
time = zeros(npoints, 1); %this initializes the vector time to being all zeros

N_uranium(1) = N_uranium_initial; %the initial condition, first entry in the
                                  %vector N_uranium is N_uranium_initial
time(1) = 0;                      %Initialize time

for step = 1 : (npoints-1)  %loop over the timesteps and calculate the numerical solution
  N_uranium(step+1) = N_uranium(step) - (N_uranium(step)/tau)*dt;
  time(step+1) = time(step) + dt;
end
%For comparison, calculate the analytical solution
t = 0:1E8:10E9;
N_analytical = N_uranium_initial*exp(-t/tau);

plot(time, N_uranium, 'r', t, N_analytical, 'b');
xlabel('Time in years')
ylabel('Number of atoms')
