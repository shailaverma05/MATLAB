% Given data
r = 120; % Crank length in mm
l = 250; % Connecting rod length in mm
theta = linspace(0, 2*pi, 360); % Crank angle from 0 to 2π radians
omega = 500 * 2 * pi / 60; % Angular velocity (rad/s)

% Position, velocity, and acceleration calculations
x = r * cos(theta) + sqrt(l^2 - (r * sin(theta)).^2); % Position
v = -r * omega * sin(theta) - (r^2 * omega * cos(theta) .* sin(theta)) ./ sqrt(l^2 - (r * sin(theta)).^2); % Velocity
a = -r * omega^2 * cos(theta) - (r^2 * omega^2 * (2 * sin(theta).^2 - cos(theta).^2)) ./ sqrt(l^2 - (r * sin(theta)).^2); % Acceleration

% Plot
figure;
plot(theta * 180 / pi, x, 'b', 'LineWidth', 1.5); hold on;
plot(theta * 180 / pi, v, 'r', 'LineWidth', 1.5);
plot(theta * 180 / pi, a, 'g', 'LineWidth', 1.5);
xlabel('Crank Angle (°)');
ylabel('Values');
legend('Position (mm)', 'Velocity (mm/s)', 'Acceleration (mm/s²)');
title('Piston Motion vs Crank Angle');
grid on;
