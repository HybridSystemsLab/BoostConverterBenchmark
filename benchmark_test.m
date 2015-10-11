% to find the number of switches per second after entering epsilon ball

%% rho = 0.1, vareps = 1.3/0.1
clear
clc
% Initial condition 1 (IC1)
vareps = 0.1; % rho for V seperation
iL0 = 5; 
vC0 = 0;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter10_1.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC2
vareps = 0.1; % rho for V seperation
iL0 = 3; 
vC0 = 4;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter10_2.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC3
vareps = 0.1; % rho for V seperation
iL0 = 2; 
vC0 = 6;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter10_3.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC4
vareps = 0.1; % rho for V seperation
iL0 = 3; 
vC0 = 8;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter10_4.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC5
vareps = 0.1; % rho for V seperation
iL0 = 0; 
vC0 = 5;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter10_5.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

%% rho = 0.05, vareps = 1.3/0.05

clear
clc
% Initial condition 1 (IC1)
vareps = 0.05; % rho for V seperation
iL0 = 5; 
vC0 = 0;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter5_1.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC2
vareps = 0.05; % rho for V seperation
iL0 = 3; 
vC0 = 4;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter5_2.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC3
vareps = 0.05; % rho for V seperation
iL0 = 2; 
vC0 = 6;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t, j);
save('converter5_3.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC4
vareps = 0.05; % rho for V seperation
iL0 = 3; 
vC0 = 8;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter5_4.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC5
vareps = 0.05; % rho for V seperation
iL0 = 0; 
vC0 = 5;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter5_5.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

%% rho = 0.01, vareps = 1.3/0.01

clear
clc
% Initial condition 1 (IC1)
vareps = 0.01; % rho for V seperation
iL0 = 5; 
vC0 = 0;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter1_1.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC2
vareps = 0.01; % rho for V seperation
iL0 = 3; 
vC0 = 4;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter1_2.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC3
vareps = 0.01; % rho for V seperation
iL0 = 2; 
vC0 = 6;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter1_3.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC4
vareps = 0.01; % rho for V seperation
iL0 = 3; 
vC0 = 8;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter1_4.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

clear
clc
% IC5
vareps = 0.01; % rho for V seperation
iL0 = 0; 
vC0 = 5;
initialization
sim('HyEQsimulator_contr_Vdot0lines_w_hysteresis')
[jstart, sf] = sf_find(x,j,t,Vdes,eps);
[dtime0, dtime1] = dwelltime(x, jstart, t,j);
save('converter1_5.mat','x','j','t','x0','eps','sf','dtime0', 'dtime1')

%% table of data!
% load('converter1_1.mat'); 
% list_sf(1,3) = sf; 
% list_dtime0(1,3) = dtime0;
% list_dtime1(1,3) = dtime1;
% load('converter1_2.mat'); 
% list_sf(2,3) = sf;
% list_dtime0(2,3) = dtime0;
% list_dtime1(2,3) = dtime1;
% load('converter1_3.mat'); 
% list_sf(3,3) = sf;
% list_dtime0(3,3) = dtime0;
% list_dtime1(3,3) = dtime1;
% load('converter1_4.mat'); 
% list_sf(4,3) = sf;
% list_dtime0(4,3) = dtime0;
% list_dtime1(4,3) = dtime1;
% load('converter1_5.mat'); 
% list_sf(5,3) = sf;
% list_dtime0(5,3) = dtime0;
% list_dtime1(5,3) = dtime1;

% load('converter5_1.mat'); 
% list_sf(1,2) = sf;
% list_dtime0(1,2) = dtime0;
% list_dtime1(1,2) = dtime1;
% load('converter5_2.mat'); 
% list_sf(2,2) = sf;
% list_dtime0(2,2) = dtime0;
% list_dtime1(2,2) = dtime1;
% load('converter5_3.mat'); 
% list_sf(3,2) = sf;
% list_dtime0(3,2) = dtime0;
% list_dtime1(3,2) = dtime1;
% load('converter5_4.mat'); 
% list_sf(4,2) = sf;
% list_dtime0(4,2) = dtime0;
% list_dtime1(4,2) = dtime1;
% load('converter5_5.mat'); 
% list_sf(5,2) = sf;
% list_dtime0(5,2) = dtime0;
% list_dtime1(5,2) = dtime1;
% 
% load('converter10_1.mat'); 
% list_sf(1,1) = sf;
% list_dtime0(1,1) = dtime0;
% list_dtime1(1,1) = dtime1;
% load('converter10_2.mat'); 
% list_sf(2,1) = sf;
% list_dtime0(2,1) = dtime0;
% list_dtime1(2,1) = dtime1;
% load('converter10_3.mat'); 
% list_sf(3,1) = sf;
% list_dtime0(3,1) = dtime0;
% list_dtime1(3,1) = dtime1;
% load('converter10_4.mat'); 
% list_sf(4,1) = sf;
% list_dtime0(4,1) = dtime0;
% list_dtime1(4,1) = dtime1;
% load('converter10_5.mat'); 
% list_sf(5,1) = sf;
% list_dtime0(5,1) = dtime0;
% list_dtime1(5,1) = dtime1;


% display list_sf;
% display list_dtime0;
% display list_dtime1;
