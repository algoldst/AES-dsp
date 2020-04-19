function plot_freqz_response(HF, Fd, fsample, figure_num)
%function plot_freqz_response(HF, Fd, fsample, figure_num)
% Plots complex HF vs Fd  on a linear and logarithmic scale.
% This can be tedious to do repeatedly, so it makes sense to use a function.

%% DEBUG
% Fd = frequencies;
% HF = HF_values;
% fsample = 44.1e3;
% figure_num = 1;

%% Plot 1: Linear Scale w/ Digital Frequency

% Create first figure for plot
figure (figure_num)

% Plot the magnitude of HF on a linear magnitude scale
subplot(2,1,1)
plot(Fd, abs(HF)); % Magnitude plot
xlabel('Digital Frequency');
ylabel('Magnitude');
title('Magnitude Response vs Digital Frequency')

% Plot the Phase Angle vs Frequency     
% Normalize angle radian values by pi radians
subplot(2,1,2)
plot(Fd, angle(HF)/pi); % Phase plot
xlabel('Digital Frequency');
ylabel('Phase [normalized by /pi]');
title('Magnitude Response vs Digital Frequency')


%% Plot 2: Logarithmic (dB) Scale w/Analog Frequency

% Create new figure for second plot
figure (figure_num+1)

% Plot the Magnitude [dB] vs Analog Frequency
% Plot the magnitude of HF on a logarithmic (dB) magnitude scale
subplot(2,1,1)
fa = Fd*fsample;
plot(fa, 20*log10(abs(HF))); % Magnitude plot
xlabel('Analog Frequency [Hz]');
ylabel('Magnitude [dB]');
title('Magnitude Response vs Digital Frequency')

% Plot the Phase Angle vs Analog Frequency
% Normalize angle radian values by pi radians
subplot(2,1,2)
plot(Fd, angle(HF)/pi); % Phase plot
xlabel('Analog Frequency [Hz]');
ylabel('Phase [normalized by /pi]');
title('Magnitude Response vs Digital Frequency')



end
