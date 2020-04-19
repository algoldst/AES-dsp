function [Bk,Ak,HF,Fd,hn,n]=show_filter_response_pz(zero,pole,K,fsample,num_of_f_points,num_of_n_points,figure_num);
%function [Bk,Ak,HF,Fd,hn,n]=show_filter_response_pz(zero,pole,K,fsample,num_of_f_points,num_of_n_points,figure_num);
% where the arguments are:
% poles = a list of the Z plane locations (complex values) for all the POLES of the filter (a row vector)
% zeros = a list of the Z plane locations (complex values) for all the ZEROS of the filter (a row vector)
% K = Multiplier constant for the transfer function (which you should multiply H(z) by)
% fsample = sampling frequency (samples / second)
% num_of_f_points = the # of points for the freq. response plot
% num_of_n_points = the # of points for the unit sample response plot
% figure_num = number of the 1st figure to use for plots
% and the function returns the following information:
% Ak = a list of the Ak coefficients of the filter difference equation (coefficients of the “y” terms)
% Bk = a list of the Bk coefficients of the filter difference equation (coefficients of the “x” terms)
% HF = the DTFT frequency response values (linear scale)
% Fd = digital frequencies that match the freq response values
%  hn – has the unit sample response sequence values
%  n – has the corresponding sample indices (0 to [num_of_n_points – 1]); 

%% Function Placeholders (for test/debug)
% Comment this section out when finished debugging.
% clear all; format shortg;
% zero = [-1 j -j]
% pole = [0]
% K=1.1
% figure_num = 1;
% num_of_f_points = 25e3;
% num_of_n_points = 20;
% fsample = 50e3;


%% BEGIN FUNCTION

% Find Ak and Bk from pole/zero
Bk = poly(zero)
Ak = poly(pole)


% Get filter response
[zero,pole,HF,Fd,hn,n] = show_filter_response(Bk, Ak, fsample, num_of_f_points, num_of_n_points, figure_num);


end