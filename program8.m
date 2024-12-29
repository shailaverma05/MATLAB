function [max_height, max_distance] = projectileTrajectory(v, angle)
    g = 9.81; % Gravity in m/s^2
    angle_rad = deg2rad(angle); % Convert angle to radians

    % Calculate max height and distance
    max_height = (v^2 * sin(angle_rad)^2) / (2 * g);
    max_distance = (v^2 * sin(2 * angle_rad)) / g;

    % Time and trajectory
    t = linspace(0, 2 * v * sin(angle_rad) / g, 100);
    x = v * cos(angle_rad) * t;
    y = v * sin(angle_rad) * t - 0.5 * g * t.^2;

    % Plot
    plot(x, y, 'b', 'LineWidth', 2);
    xlabel('Distance (m)'); ylabel('Height (m)');
    title('Projectile Trajectory'); grid on;
end
% Call the function
[max_height, max_distance] = projectileTrajectory(230, 39);