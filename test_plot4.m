% Load the data
load ..\data\lab4\kalmanfilter\r_move_q_0

% Extract the measurements
time = measurements(1, :);
pKal = measurements(2, :);
pDotKal = measurements(3, :);
eKal = measurements(4, :);
eDotKal = measurements(5, :);
lamKal = measurements(6, :);
lamDotKal = measurements(7, :);

pEncoder = measurements(13, :);
pDotEncoder = measurements(14, :);
eEncoder = measurements(15, :);
eDotEncoder = measurements(16, :);
lamEncoder = measurements(17, :);
lamDotEncoder = measurements(18, :);

% Create a figure with 6 subplots
figure;

% Subplot 1: Position (p)
subplot(6, 1, 1);
hold on;
plot(time, pKal, 'DisplayName', 'pKal');
plot(time, pEncoder, 'DisplayName', 'pEncoder');
hold off;
title('Position');
ylabel('p');
grid on;
legend;

% Subplot 2: Velocity (pDot)
subplot(6, 1, 2);
hold on;
plot(time, pDotKal, 'DisplayName', 'pDotKal');
plot(time, pDotEncoder, 'DisplayName', 'pDotEncoder');
hold off;
title('Velocity');
ylabel('pDot');
grid on;
legend;

% Subplot 3: Error (e)
subplot(6, 1, 3);
hold on;
plot(time, eKal, 'DisplayName', 'eKal');
plot(time, eEncoder, 'DisplayName', 'eEncoder');
hold off;
title('Error');
ylabel('e');
grid on;
legend;

% Subplot 4: Error Velocity (eDot)
subplot(6, 1, 4);
hold on;
plot(time, eDotKal, 'DisplayName', 'eDotKal');
plot(time, eDotEncoder, 'DisplayName', 'eDotEncoder');
hold off;
title('Error Velocity');
ylabel('eDot');
grid on;
legend;

% Subplot 5: Angle (lam)
subplot(6, 1, 5);
hold on;
plot(time, lamKal, 'DisplayName', 'lamKal');
plot(time, lamEncoder, 'DisplayName', 'lamEncoder');
hold off;
title('Angle');
ylabel('lam');
grid on;
legend;

% Subplot 6: Angle Velocity (lamDot)
subplot(6, 1, 6);
hold on;
plot(time, lamDotKal, 'DisplayName', 'lamDotKal');
plot(time, lamDotEncoder, 'DisplayName', 'lamDotEncoder');
hold off;
title('Angle Velocity');
ylabel('lamDot');
grid on;
legend;

% Overall title for the figure
sgtitle('Kalman Filter Measurements');
