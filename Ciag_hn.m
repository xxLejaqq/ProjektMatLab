syms n; % Definiowanie n jako zmienną symboliczną
hn = (n - sin(3*n)) / (2*n + sin(4*n)); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_hn = limit(hn, n, inf);
limit_text = ['Granica = ', char(limit_hn)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
hn_wartosc = (n_wartosc - sin(3*n_wartosc)) ./ (2*n_wartosc + sin(4*n_wartosc));

% Tworzenie wykresu
figure;
hold on;

% Wykres ciągu h_n
plot(n_wartosc, hn_wartosc, 'bo'); % Ciąg jako niebieskie kropki

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(hn_wartosc - limit_hn) < epsilon, 1);
n0 = n_wartosc(n0_index);

% Rysowanie granicy na wykresie
plot([-1, 21], [limit_hn, limit_hn], 'r-'); % Granica jako czerwona linia ciągła

% Rysowanie n0 na wykresie
plot(n0, subs(hn, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_hn + epsilon, limit_hn + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_hn - epsilon, limit_hn - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('h_n');
title('Wykres ciągu h_n');
legend('Ciąg h_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([-1, 21, -1, 2]); % Przeskalowanie osi x od 0 do 21 oraz osi y od -1 do 2
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [-1, 2], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;
