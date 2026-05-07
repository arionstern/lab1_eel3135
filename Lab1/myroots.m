function r = myroots(n, a)
% myroots: Find all the nth roots of the complex number a
%
% Input Args:
%   n: a positive integer specifying the nth roots
%   a: a complex number whose nth roots are to be returned
%
% Output:
%   r: 1xn vector containing all the nth roots of a 

r = zeros(1, n); % create a 1xn vector filled with 0

if a == 0 %handle 0 case
    r(:) = 0; %all nth roots of 0 are 0
    return
end

A = abs(a);  % Compute magnitude A of complex number a
phi = angle(a);  % Compute phase angle of complex number a
rootMag = A^(1/n);  % Compute the magnitude of each nth root

for k = 0:n-1        % Loop over k to generate all n distinct roots
   r(k+1) = rootMag * exp(1j*(phi + 2*pi*k)/n); % Compute kth root using polar form formula 
end


end
