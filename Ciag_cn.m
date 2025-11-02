syms n; % Definiowanie n jako zmienną symboliczną
cn = 1 / (n + log(n + 1)); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_cn = limit(cn, n, inf);
limit_text = ['Granica = ', char(limit_cn)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
cn_wartosc = 1 ./ (n_wartosc + log(n_wartosc + 1));

% Tworzenie wykresu
figure;
hold on;

% Wykres ciągu c_n
plot(n_wartosc, cn_wartosc, 'bo'); % Ciąg jako niebieskie kropki
plot([-1, 21], [limit_cn, limit_cn], 'r-'); % Granica jako czerwona linia ciągła

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(cn_wartosc - limit_cn) < epsilon, 1);
n0 = n_wartosc(n0_index);

% Rysowanie n0 na wykresie
plot(n0, subs(cn, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_cn + epsilon, limit_cn + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_cn - epsilon, limit_cn - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('c_n');
title('Wykres ciągu c_n');
legend('Ciąg c_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([-1, 21, -0.2, 1.2]); % Przeskalowanie osi x od -1 do 21 oraz osi y od -0.2 do 1.2
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [-0.2, 1.2], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;
