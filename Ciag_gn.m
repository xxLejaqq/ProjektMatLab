syms n; % Definiowanie n jako zmienną symboliczną
gn = (9^n * factorial(n)) / factorial(2*n); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_gn = limit(gn, n, inf);
limit_text = ['Granica = ', char(limit_gn)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
gn_wartosc = (9.^n_wartosc .* factorial(n_wartosc)) ./ factorial(2*n_wartosc);

% Tworzenie wykresu
figure;
hold on;


% Wykres ciągu g_n
plot(n_wartosc, gn_wartosc, 'bo'); % Ciąg jako niebieskie kropki

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(gn_wartosc - limit_gn) < epsilon, 1);
n0 = n_wartosc(n0_index);

% Rysowanie granicy na wykresie
plot([-1, 21], [limit_gn, limit_gn], 'r-'); % Granica jako czerwona linia ciągła

% Rysowanie n0 na wykresie
plot(n0, subs(gn, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_gn + epsilon, limit_gn + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_gn - epsilon, limit_gn - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('g_n');
title('Wykres ciągu g_n');
legend('Ciąg g_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([-1, 21, -0.5, 7]); % Przeskalowanie osi x od 0 do 21 oraz osi y od -0.5 do 7
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [-0.5, 7], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;