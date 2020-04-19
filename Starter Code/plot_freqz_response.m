function plot_freqz_response(HF, Fd, fsample, figure_num)
%function plot_freqz_response(HF, Fd, fsample, figure_num)
% Plots complex HF vs Fd  on a linear and logarithmic scale.
% This can be tedious to do repeatedly, so it makes sense to use a function.

%% Plot 1: Linear Scale w/ Digital Frequency

% Create first figure for plot
figure (figure_num)

% Plot the magnitude of HF on a linear magnitude scale
%
%
%

% Plot the Phase Angle vs Frequency     
% Normalize angle radian values by pi radians
%
%
%

%% Plot 2: Logarithmic (dB) Scale w/Analog Frequency

% Create new figure for second plot
figure (figure_num+1)

% Plot the magnitude of HF on a logarithmic (dB) magnitude scale
%
%
%

% Plot the Phase Angle vs Frequency     
% Normalize angle radian values by pi radians
%
%
%



end
