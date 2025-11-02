syms n; % Definiowanie n jako zmienną symboliczną
dn = (3*n^2 + 5*n - 1) / sqrt(n^4 + 3*n^3 + 1); % Wyrażenie ciągu

% Obliczenie granicy ciągu
limit_dn = limit(dn, n, inf);
limit_text = ['Granica = ', char(limit_dn)];

% Tworzenie wektora liczb naturalnych do wykresu
n_wartosc = 1:20; 

% Zapytanie użytkownika o epsilon
epsilon = input('Podaj epsilon > 0: ');

% Obliczenie wartości ciągu dla liczb naturalnych
dn_wartosc = (3*n_wartosc.^2 + 5*n_wartosc - 1) ./ sqrt(n_wartosc.^4 + 3*n_wartosc.^3 + 1);

% Tworzenie wykresu
figure;
hold on;

% Wykres ciągu d_n
plot(n_wartosc, dn_wartosc, 'bo'); % Ciąg jako niebieskie kropki
plot([-1, 21], [limit_dn, limit_dn], 'r-'); % Granica jako czerwona linia ciągła

% Obliczenie n0 dla zadanego epsilon
n0_index = find(abs(dn_wartosc - limit_dn) < epsilon, 1);
n0 = n_wartosc(n0_index);


% Rysowanie n0 na wykresie
plot(n0, subs(dn, n, n0), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', [0, 0, 0.5]); % Granatowa kropka na wykresie

% Rysowanie linii poziomej na wartości epsilon od granicy
plot([-1, 21], [limit_dn + epsilon, limit_dn + epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od góry, linia przerywana, kolor fioletowy
plot([-1, 21], [limit_dn - epsilon, limit_dn - epsilon], ':', 'Color', [0.5, 0, 0.5]); % Epsilon od dołu, linia przerywana, kolor fioletowy

xlabel('n');
ylabel('d_n');
title('Wykres ciągu d_n');
legend('Ciąg d_n', limit_text, ['n_0 = ', num2str(n0)], ['Epsilon = ', num2str(epsilon)], 'AutoUpdate', 'off');
grid on;
axis([-1, 21, -0.2, 4]); % Przeskalowanie osi x od -1 do 21 oraz osi y od -0.2 do 4
% Dodanie linii osi x i y
line([-1, 21], [0, 0], 'Color', [0, 0, 0, 0.5]); % Linia osi x
line([0, 0], [-0.2, 4], 'Color', [0, 0, 0, 0.5]); % Linia osi y
hold off;
