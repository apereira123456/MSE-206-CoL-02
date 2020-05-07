%% CoL 02: Question 1

% Part A
syms X_B
H = 193.81 + 6188.24 * X_B - 2642.98 * X_B^2;

d = diff(H);
tangent_01 = vpa(subs(d, X_B, 0.25)) * (X_B - 0.25) + vpa(subs(H, X_B, 0.25));
tangent_02 = vpa(subs(d, X_B, 0.50)) * (X_B - 0.50) + vpa(subs(H, X_B, 0.50));
tangent_03 = vpa(subs(d, X_B, 0.75)) * (X_B - 0.75) + vpa(subs(H, X_B, 0.75));

f1 = figure;
fplot(H, [0,1])
title('Relative Integral Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_B$', 'Interpreter', 'latex')
ylabel('$\Delta H^m \ (J/mol)$', 'Interpreter', 'latex')


% Part B
f2 = figure;
fplot(H, [0 1])
hold on
fplot(tangent_01, [0 1])

ylim([150 5500])
title('Relative Integral Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_B$', 'Interpreter', 'latex')
ylabel('$\Delta H^m \ (J/mol)$', 'Interpreter', 'latex')
legend('$\Delta H^m$', 'Tangent at $\chi_B=0.25$', 'Interpreter', 'latex', 'Location', 'northwest')
text(0, 359, '$\longleftarrow \bar{\Delta H_A^m}=359 \ J/mol$', 'Interpreter', 'latex')
text(1, 5226, '$\bar{\Delta H_B^m} = 5,226 \ J/mol \longrightarrow$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right')

f3 = figure;
fplot(H, [0 1])
hold on
fplot(tangent_02, [0 1])

ylim([150 5500])
title('Relative Integral Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_B$', 'Interpreter', 'latex')
ylabel('$\Delta H^m \ (J/mol)$', 'Interpreter', 'latex')
legend('$\Delta H^m$', 'Tangent at $\chi_B=0.50$', 'Interpreter', 'latex', 'Location', 'northwest')
text(0, 854.6, '$\longleftarrow \bar{\Delta H_A^m}=854.6 \ J/mol$', 'Interpreter', 'latex')
text(1, 4400, '$\bar{\Delta H_B^m} = 4,400 \ J/mol \longrightarrow$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right')

f4 = figure;
fplot(H, [0 1])
hold on
fplot(tangent_03, [0 1])

ylim([150 5500])
title('Relative Integral Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_B$', 'Interpreter', 'latex')
ylabel('$\Delta H^m \ (J/mol)$', 'Interpreter', 'latex')
legend('$\Delta H^m$', 'Tangent at $\chi_B=0.75$', 'Interpreter', 'latex', 'Location', 'northwest')
text(0, 1680, '$\longleftarrow \bar{\Delta H_A^m}=1,680 \ J/mol$', 'Interpreter', 'latex')
text(1, 3904, '$\bar{\Delta H_B^m} = 3,904 \ J/mol \longrightarrow$', 'Interpreter', 'latex', 'HorizontalAlignment', 'right')


% Part D
H_A = 193.81 + 2642.98 * X_B^2;

f5 = figure;
fplot(H_A, [0 0.5])

title('Relative Partial Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_B$', 'Interpreter', 'latex')
ylabel('$\bar{\Delta H_A^m} \ (J/mol)$', 'Interpreter', 'latex')