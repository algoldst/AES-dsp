function [zero,pole,HF,Fd,hn,n] = show_filter_response(Bk,Ak,fsample,num_of_f_points,num_of_n_points,figure_num)
%function [zero,pole,HF,Fd,hn,n] = show_filter_response(Bk,Ak,fsample,num_of_f_points,num_of_n_points,figure_num)
% where the arguments are:
% Ak = a list of the Ak coefficients of the filter difference equation (coefficients of the “y” terms)
% Bk = a list of the Bk coefficients of the filter difference equation (coefficients of the “x” terms)
% fsample = sampling frequency (samples / second)
% num_of_f_points = the # of points for the freq. response plot
% num_of_n_points = the # of points for the unit sample response plot
% figure_num = number of the 1st figure to use for plots
% the function returns the following information:
% poles = a list of the complex pole locations (z values) for the Transfer Function (the roots of the H(z)
% denominator polynomial)
% zeros = a list of the complex zero locations (z values) for the Transfer Function (the roots of the H(z)
% numerator polynomial)
% HF = the complex DTFT frequency response values (linear scale)
% Fd = digital frequencies that match the freq response values
%  hn – has the unit sample response sequence values
%  n – has the corresponding sample indices (0 to [num_of_n_points – 1]); 

%% Function Placeholders (for test/debug)
% Comment this section out when finished debugging.
% clc; clear all;
% Ak = [1 0.7]
% Bk = [1 3 6]
% figure_num = 1;
% num_of_f_points = 15;
% num_of_n_points = 20;
% fsample = 1000;

%% BEGIN FUNCTION

% Pole Zero
% Start with finding the maximum length of Ak and Bk and make same length
if (length(Ak) > length(Bk))
    zero_pad = zeros(1, length(Ak) - length(Bk));
    Bk = cat(2, Bk, zero_pad);
elseif (length(Ak) < length(Bk))
    zero_pad = zeros(1, length(Bk) - length(Ak));
    Ak = cat(2, Ak, zero_pad);
end


% Get poles and zeros from Bk's and Ak's
zero = roots(Bk)
pole = roots(Ak)

%plot zero/pole diagram
figure(figure_num) % Make a new figure for this plot
zplane(Bk, Ak);
title('Pole / Zero Map')

%% Get Frequency Response
[HF, W] = freqz(Bk, Ak, num_of_f_points); % H(F) evaluated at all the frequencies in Fd
Fd = W/2/pi; % Digital frequency axis from [0,0.5]

% Plot the frequency response
plot_freqz_response(HF, Fd, fsample, figure_num+1)


%% Plot the Unit Sample Response 
[hn n] = unit_sample_response(Bk, Ak, num_of_n_points);
figure(figure_num+3);
stem(n, hn)         % Make a stem plot
title('Unit Sample Response')
xlabel('Index [n]')
ylabel('Magnitude')

end