function [dn, n] = unit_sample(length)
%function [dn, n] = unit_sample(length)
%   Returns unit sample sequence for desired length

% Get our "x" axis (n = indices)
n = [0:1:length-1];

%  Make the unit sample sequence (1 followed by infinite number of zeros)
dn = [1 zeros(1, length-1)]; % Total length should be equal to "length" input arg.

end

