% MATLAB program to generate a random order for six singers

% Clear workspace to avoid conflicts
clear; clc;

% List of singers
singers = {'John', 'Mary', 'Tracy', 'Mike', 'Katie', 'David'};

% Generate a random permutation of indices for the singers
randomOrder = randperm(length(singers));

% Display the random order
fprintf('The random order of singers is:\n');
for i = 1:length(randomOrder)
    fprintf('%d. %s\n', i, singers{randomOrder(i)});
end
