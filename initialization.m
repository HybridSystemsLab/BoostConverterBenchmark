%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initialization for Boost converter simulator
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear all , clc, %close all                                                             
      
% initial conditions  
E = 5;
q0 = 1;
x0 = [vC0;iL0;E;q0];%[0;5;E;q0];
w0 = [0;100;0];
Tpwm = 0.2;
          
% physical variables
L = 0.2;  % Conductance
C = 0.1;  % Capacitance
R = 3; % Resistance

Vdes = 7; % Desired output voltage
Ides = Vdes^2/(E*R); % Desired inductance
% vareps = 0.1; % varepsilon in paper
eps = vareps/1.3; % rho in paper
K0 = 0;  % in (0,E/Vdes)
K1 = 0;  % in (0,1-E/Vdes)

%tau = 0.01;
%PW = 100*(1-E/Vdes);
% simulation horizon                                                  
T = 15;                                                                 
J = 1e8;                                                                 
                                                                        
% rule for jumps                                                        
% rule = 1 -> priority for jumps                                        
% rule = 2 -> priority for flows                                        
% rule = 3 -> no priority, random selection when simultaneous conditions
rule = 1;                                                               
                                                                        
%solver tolerances
RelTol = 1e-5;
MaxStep = .0005;

% CONTROL METHOD (For postprocesing purposes only)
% control = 1 -> ideal control minimum Vdot
% control = 2 -> ideal control Vdot=0
% control = 3 -> hysteresis control minimun Vdot
% control = 4 -> hysteresis control Vdot=0
control = 4;