*Objective*
This repository contains simulation files (using Simulink and Matlab) and data generated for paper "Hybrid Feedback Control Methods for Robust and Global Power Conversion.” Specifically, this is for the hybrid control of DC/DC Boost Converters as a benchmark test for other possible comparisons in control for similar circuitry system.


*File List*
benchmark_test.m % runs the benchmark test proposed in the paper
initiallization.m %Initializes paramters, 
load.m % load data from test results in Matlab work space and perform post processing
HyEQsimulator_contr_Vdot0lines_w_hysteresis.mdl % Simulink module to run one simulation
sf_find.m % more post processing items


Codes are built using Matlab/Simulink 2015a. Other builds are untested.