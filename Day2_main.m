%% Day 2 - Main
% Run this file to see how we can use the code we wrote today!

% Dependencies: 
%		unit_sample_response()
%		unit_sample()

%% Setup

% Set our Bk & Ak values for example filter
Bk = [1 .3 .7 .2]
Ak = [1 .2]

% Set other constants for debug
fsample = 40e3
num_f_points = 500;
num_n_points = 20;

%% Create a filter using Bk's / Ak's, and plot its characteristics.

% Get the filter
[zero,pole,HF,Fd,hn,n] = show_filter_response(Bk, Ak, fsample, num_f_points, num_n_points, 1);

%% Create the same filter using the zeros/poles from the previous filter analysis.
% This should get us the same filter and Bk's/Ak's as we started with.
[Bk,Ak,HF,Fd,hn,n] = show_filter_response_pz(zero, pole, 1, fsample, num_f_points, num_n_points, 5);
Bk
Ak

% Compare the outputs in Figures 1-4 and 5-8! They should be identical.


