function [DFT_mag, F] = plot_DFT_mag(x,fsample,figure_num)
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
% fanalog=405;
% fsample = 1e3;
% phase = 0;
% A = 1;
% n = 0:199;
% x = A.*cos(2*pi*fanalog/fsample*n + phase);
% 
% figure(100);
% plot(x);


% Test Case 12
% fsample = 1e3;
% [pole,zero,HF,Fd,x,n] = show_filter_responses([1],[0.2 0.2 0.2 0.2 0.2],fsample,40,40,figure_num*10+1);
% [x, n] = unit_sample_response([0.2 0.2 0.2 0.2 0.2], [1], 40, figure_num*10+1);
%% 
% Find the DFT and normalize magnitude
num_samples = length(x);
DFT = fft(x)/num_samples;
DFT_mag = abs(DFT);
% Create figure and 2 subplots for digital and analog
figure(figure_num);
subplot(2,1,1);


% Create array for digital frequency x axis
% FFT returns from F = [0, 1) <-- Does not include F=1
F = 0 : 1/num_samples : 1-(1/num_samples);


% Stem-plot linear (normalized) DFT magnitudes vs digital frequency
stem(F, DFT_mag, '.');
title('DFT Magnitude vs Digital Frequency');
xlabel("Digital Frequency");
ylabel("Magnitude (Normalized)");
%

% Stem-plot linear DFT magnitude vs analog frequency
subplot(2,1,2)
f = F*fsample;
stem(f, DFT_mag, '.');
title('DFT Magnitude vs Analog Frequency');
xlabel("Analog Frequency");
ylabel("Magnitude (Normalized)");


end