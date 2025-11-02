syms n; % Definiowanie n jako zmienną symboliczną
en = ((n^2 + 3*n + 2) / (n^2 + 2*n))^(2*n + 1); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_en = limit(en, n, inf);
limit_text = ['Granica = ', char(limit_en)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
en_wartosc = ((n_wartosc.^2 + 3*n_wartosc + 2) ./ (n_wartosc.^2 + 2*n_wartosc)).^(2*n_wartosc + 1);

% Tworzenie wykresu
figure;
hold on;

% Wykres ciągu e_n
plot(n_wartosc, en_wartosc, 'bo'); % Ciąg jako niebieskie kropki
plot([-1, 21], [limit_en, limit_en], 'r-'); % Granica jako czerwona linia ciągła

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(en_wartosc - limit_en) < epsilon, 1);
n0 = n_wartosc(n0_index);

% Rysowanie n0 na wykresie
plot(n0, subs(en, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_en + epsilon, limit_en + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_en - epsilon, limit_en - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('e_n');
title('Wykres ciągu e_n');
legend('Ciąg e_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([-0.2, 11, 4.2, 15]); % Przeskalowanie osi x od -0.2 do 11 oraz osi y od 4.2 do 15
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [4.2, 15], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;
