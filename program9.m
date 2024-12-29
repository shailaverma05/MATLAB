% Dimensions of the box
length = 24; % in inches
width = 12;  % in inches
height = 4;  % in inches

% Specific weight of aluminum
specific_weight = 0.101; % lb/in^3

% Weight of the box
desired_weight = 15; % in pounds

% Solve for thickness x using a simple formula
syms x % Define x as a symbolic variable
inner_length = length - 2*x; % Inner length after accounting for thickness
inner_width = width - 2*x;   % Inner width after accounting for thickness
inner_height = height - x;   % Inner height after accounting for thickness

% Volume of aluminum (outer volume - inner volume)
outer_volume = length * width * height; 
inner_volume = inner_length * inner_width * inner_height;
aluminum_volume = outer_volume - inner_volume;

% Expression for weight of the box
box_weight = aluminum_volume * specific_weight;

% Solve for x when box_weight equals desired_weight
thickness_solution = solve(box_weight == desired_weight, x);

% Display the result
disp('The possible thickness values for the box are:');
disp(double(thickness_solution));
