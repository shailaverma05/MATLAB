% Given data
v0 = 250; % Initial velocity (m/s)
theta = 65; % Launch angle (degrees)
wind_speed = 30; % Wind speed (m/s)
g = 9.81; % Gravitational acceleration (m/s²)

% Time of flight and range (no wind)
time_of_flight = 2 * v0 * sind(theta) / g;
t = linspace(0, time_of_flight, 100); % Time array
x_no_wind = v0 * cosd(theta) * t; % Horizontal distance
y_no_wind = v0 * sind(theta) * t - 0.5 * g * t.^2; % Vertical distance

% With wind
x_with_wind = x_no_wind + wind_speed * t; % Adding wind effect
y_with_wind = y_no_wind;

% Plot trajectories
figure;
plot(x_no_wind, y_no_wind, 'b', 'LineWidth', 1.5); hold on;
plot(x_with_wind, y_with_wind, 'r', 'LineWidth', 1.5);
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
legend('No Wind', 'With Wind');
title('Projectile Trajectories');
grid on;
