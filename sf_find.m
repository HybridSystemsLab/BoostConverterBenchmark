function [jstart, sf] = sf_find(x,j,t,Vdes,eps)
% find the first jump
fj = find(j == 2, 1, 'first');

% make the local max or local min list
num = max(size(t));
local_max = [];
local_min = [];
kmax = 1;
kmin = 1;
for i = fj: num
    if x(i,1) >= x(i-1,1) && x(i,1) >= x(i-1,1)
        local_max(kmax,1) = x(i,1);
        local_max(kmax,2) = i;
        kmax = kmax + 1;
    elseif x(i,1) <= x(i-1,1) && x(i,1) <= x(i-1,1)
        local_min(kmin,1) = x(i,1);
        local_min(kmin,2) =  i;
        kmin = kmin + 1;
    end
end

jmin = find( abs(local_min(:,1) - Vdes)  <= Vdes* eps,1, 'first');
jmax = find( abs(local_max(:,1) - Vdes)  <= Vdes* eps,1, 'first');

% when to start count the jumps?
jstart = max(local_min(jmin,2),local_max(jmax,2));

% the switching frequency during eps ss
sf = (max(j)-j(jstart) + 1)/(max(t) - t(jstart)); 
end