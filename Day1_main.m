%% Day 1 - Main
% Run this file to see the results of the unit sample response for a given
% system.
% Dependencies: 
%		unit_sample_response()
%		unit_sample()

% Setup our system coefficients — these will be explained next time!
Ak = [1 .5 -.3];
Bk = [1 0 1 .5 1];

% Get the unit sample response
[hn, n] = unit_sample_response(Bk, Ak, 60);

% Plot it
stem(n, hn); % Make a stem plot
title('Unit Sample Response');
xlabel('Index [n]');
ylabel('Amplitude');
