function [DFT, F] = plot_DFT_mag(x,fsample,figure_num)
%[DFTx, Fd] = plot_DFT_mag(x,fsample,figure_num);
% Input arguments are:
%   x = time domain samples of a discrete-time sequence
%   fsample = sampling frequency (samples / second)
%   figure_num = number of the figure to use for the two plots
%               and the outputs are:
%   DFT = DFT spectrum values (complex)
%               [same # samples as x]
%   F = Digital frequency values for each DFT sample

%% Debug

% % Test Case 1
% fanalog=7.05;
% fsample = 1e3;
% phase = 0;
% A = 1;
% n = 0:199;
% x = A.*cos(2*pi*fanalog/fsample*n + phase);


% Test Case 12
% fsample = 1e3;
% [pole,zero,HF,Fd,x,n] = show_filter_responses([1],[0.2 0.2 0.2 0.2 0.2],fsample,40,40,figure_num*10+1);
% [x, n] = unit_sample_response([0.2 0.2 0.2 0.2 0.2], [1], 40, figure_num*10+1);
%% 
% Find the DFT and normalize magnitude
num_samples = length(x);
DFT = fft(x)/num_samples;

% Create figure and 2 subplots fot digital and analog
%
%
%

% Note: If you get "Warning: Using only real component" for the plots, do
% not ignore it! FFT() returns a complex-valued vector. We want to view the
% magnitude of it, so make sure you plot abs(DFT), not DFT, on the y-axis.
% One idea might be to just add a line defining a DFT_mag variable on line
% 31, and use that to plot.

% Create array for digital frequency x axis
% FFT returns from F = [0, 1) <-- Does not include F=1
%
%
%

% Stem-plot linear (normalized) DFT magnitudes vs digital frequency
%
%
%

% Stem-plot linear DFT magnitude vs analog frequency
%
%
%

end