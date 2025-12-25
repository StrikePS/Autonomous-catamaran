% Data
V_inlet = [0 1.0 1.5 2.0];
Drag_Force = [0 2.8119 6.0429 10.4462];

V = V_inlet(:);
D = Drag_Force(:);

%% Quadratic-only fit: D = k V^2
k = (V.^2) \ D;

% Smooth curve
V_fit = linspace(min(V), max(V), 100);
D_fit = k * V_fit.^2;

% Plot
figure
plot(V, D, 'o', 'LineWidth', 1.5)
hold on
plot(V_fit, D_fit, '-', 'LineWidth', 1.5)
grid on
xlabel('Velocity (m/s)')
ylabel('Drag Force (N)')
title(sprintf('Quadratic Drag Fit: D = %.3f V^2', k))
legend('CFD Data', 'Quadratic Fit', 'Location', 'northwest')
