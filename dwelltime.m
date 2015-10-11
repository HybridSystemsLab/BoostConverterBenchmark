% dual time---avergae of tao1 and tao2
% require to run sf_find for inputs

function [dtime0, dtime1] = dwelltime(x, jstart, t, j)
% initialize the parameters
swi = []; % the two column array stores the steps swtiches happen
k = 2; % row number of swi

% assign swi(1,1) based on first switch after enters ss
if x(jstart,4) > 0.5 % if the 1st switch q+ = 0
    jtao = find(x(jstart:end,4) < 0.5,1,'first');
    swi(1,1) = jtao;
    temp = x(jtao:end,:,:,:);
elseif x(jstart,4) < 0.5 % if the 1st switch q+ = 1
    swi(1,1) = 1; % Not useful entree
    temp = x(jstart:end,:,:,:);
end
 jtao = jstart - 1 + find(temp(:,4) > 0.5,1,'first'); % the next/1st switch q+ = 1
 swi(1,2) = jtao;

% complete array swi
while(1)  
    clear temp
    temp = x(jtao:end,:,:,:);   
    jtao = jtao - 1 + find(temp(:,4) < 0.5,1,'first'); % the next switch q+ = 0
    swi(k,1) = jtao;
    if  jtao == find(j == max(j),1,'first') % check if at the last jump
        break;
    end 
    clear temp
    temp = x(jtao:end,:,:,:);
    jtao = jtao -1 + find(temp(:,4) > 0.5,1,'first'); % the next switch q+ = 1
    if  jtao == find(j == max(j),1,'first') % check if at the last jump
        break;
    end 
    swi(k,2) = jtao;
    k = k + 1;
end

num = max(size(swi));
dtime = zeros(num-2,2);
for i = 2:num - 1
    dtime(i-1,1)= t(swi(i+1,1))-t(swi(i,2));
    dtime(i-1,2)= t(swi(i,2))-t(swi(i,1));    
end
dtime0 = mean(dtime(:,1));
dtime1 = mean(dtime(:,2));

end