% Given data
balance = 300000; % Initial balance ($)
withdrawal = 25000; % First withdrawal ($)
interest_rate = 0.05; % Interest rate (5%)
inflation_rate = 0.02; % Inflation rate (2%)

% Initialize variables
year = 0; % Start from year 0
balances = []; % To store yearly balances
withdrawals = []; % To store yearly withdrawals

% Loop until the balance runs out
while balance > 0
    year = year + 1; % Increment year
    balances(end + 1) = balance; % Save current balance
    withdrawals(end + 1) = withdrawal; % Save current withdrawal
    
    % Update balance and withdrawal
    balance = balance + balance * interest_rate - withdrawal; % Add interest, subtract withdrawal
    withdrawal = withdrawal + withdrawal * inflation_rate; % Increase withdrawal due to inflation
end

% Plot results
plot(1:year, balances, 'b', 'LineWidth', 1.5); hold on;
plot(1:year, withdrawals, 'r', 'LineWidth', 1.5);
xlabel('Year');
ylabel('Amount ($)');
legend('Balance', 'Withdrawals');
title('Retirement Savings Over Time');
grid on;
