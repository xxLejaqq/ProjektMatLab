syms n; % Definiowanie n jako zmienną symboliczną
fn = (2^n + 3^n) / (3^n + 4^n); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_fn = limit(fn, n, inf);
limit_text = ['Granica = ', char(limit_fn)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
fn_wartosc = (2.^n_wartosc + 3.^n_wartosc) ./ (3.^n_wartosc + 4.^n_wartosc);

% Tworzenie wykresu
figure;
hold on;

% Wykres ciągu f_n
plot(n_wartosc, fn_wartosc, 'bo'); % Ciąg jako niebieskie kropki

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(fn_wartosc - limit_fn) < epsilon, 1);
n0 = n_wartosc(n0_index);
% Rysowanie granicy na wykresie
plot([-1, 21], [limit_fn, limit_fn], 'r-'); % Granica jako czerwona linia ciągła

% Rysowanie n0 na wykresie
plot(n0, subs(fn, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_fn + epsilon, limit_fn + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_fn - epsilon, limit_fn - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('f_n');
title('Wykres ciągu f_n');
legend('Ciąg f_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([0, 21, -1, 2]); % Przeskalowanie osi x od 0 do 21 oraz osi y od -1 do 2
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [-1, 2], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;
