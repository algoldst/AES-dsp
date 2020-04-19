function [hn, n] = unit_sample_response(Bk, Ak, length)
%function [hn, n] = unit_sample_response(Bk, Ak, length)
%   Returns the unit sample response of the system described by the given 
%	Bk and Akk coefficients.
%		Bk, Ak = coefficients
%		length = length of response to compute

% Get the unit sample sequence of desired length
[dn, n] = unit_sample(length);

% Run the sequence dn through a filter with the given Bk/Ak coefficients.
hn = filter(Bk, Ak, dn);

end