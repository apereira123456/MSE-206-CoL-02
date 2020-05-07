%% CoL 02: Question 3

% Part C
O = 2000;
R = 8.314 / 4.184;

syms X_Zn

f1 = figure;
H_Zn = O * (1 - X_Zn)^2;
fplot(H_Zn, [0 1])

title('Relative Partial Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\bar{\Delta H_{Zn}^m} \ cal/mol$', 'Interpreter', 'latex')

f2 = figure;
H = O * (1 - X_Zn) * X_Zn;
fplot(H, [0 1])
title('Relative Integral Molar Enthalpy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\Delta H^m \ cal/mol$', 'Interpreter', 'latex')

f3 = figure;
S_Zn = -R * log(X_Zn);
fplot(S_Zn, [0 1])

title('Relative Partial Molar Entropy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\bar{\Delta S_{Zn}^m} \ cal/mol*K$', 'Interpreter', 'latex')

f4 = figure;
S = -R * (X_Zn * log(X_Zn) + (1 - X_Zn) * log(1 - X_Zn));
fplot(S, [0 1])

title('Relative Integral Molar Entropy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\Delta S^m \ cal/mol*K$', 'Interpreter', 'latex')

f5 = figure;
hold on
T = 600;
G_Zn = H_Zn + T * S_Zn;
fplot(G_Zn, [0 1])

T = 800;
G_Zn = H_Zn + T * S_Zn;
fplot(G_Zn, [0 1])

T = 1000;
G_Zn = H_Zn + T * S_Zn;
fplot(G_Zn, [0 1])

title('Relative Partial Molar Gibbs Free Energy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\bar{\Delta G_{Zn}^m} \ cal/mol$', 'Interpreter', 'latex')
legend('T = 600K', 'T = 800K', 'T = 1000K', 'Interpreter', 'latex')

f6 = figure;
hold on
T = 600;
G = H - T * S;
fplot(G, [0 1])

T = 800;
G = H - T * S;
fplot(G, [0 1])

T = 1000;
G = H - T * S;
fplot(G, [0 1])

title('Relative Integral Molar Gibbs Free Energy of Mixing', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('$\Delta G^m \ cal/mol$', 'Interpreter', 'latex')
legend('T = 600K', 'T = 800K', 'T = 1000K', 'Interpreter', 'latex', 'Location', 'north')


% Part D
f7 = figure;
hold on
a_Zn = X_Zn * exp(O * (1 - X_Zn)^2 / (R * T));
fplot(a_Zn, [0 1])

a_Cd = (1 - X_Zn) * exp(O * X_Zn^2 / (R * T));
fplot(a_Cd, [0 1])

y1 = X_Zn;
fplot(y1, [0 1], '--')

y2 = 1 - X_Zn;
fplot(y2, [0 1], '--')

title('Activities', 'Interpreter', 'latex')
xlabel('$\chi_{Zn}$', 'Interpreter', 'latex')
ylabel('a', 'Interpreter', 'latex')
legend('$a_{Zn}$', '$a_{Cd}$', 'Interpreter', 'latex', 'Location', 'north')