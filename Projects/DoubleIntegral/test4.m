function test4()
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Test poprawności zaiplemetowanej funkcji

pause;
fprintf("Test sprawdzający poprawność zaimplementowanej funkcji.\n")

f3 = @(x, y) exp(x + y);
wynik3 = P1Z29_GPR_OPCGL(f3, 1, 2, 1, 2, 5, 5);
wartosc_d3 = 21.816;
blad_k3 = abs(wartosc_d3 - wynik3);
fprintf('Funkcja wykładnicza: exp(x + y)\n')
fprintf('Obszar całkowania: [1, 2]x[1, 2]\n')
fprintf('Liczba podobszarów dla [a, b] i [c, d]: 5, 5\n')
fprintf('Oczekiwany wynik = %f\nUzyskany wynik = %f\n', wartosc_d3, wynik3)
fprintf('Błąd kwadratury = %f\n\n', blad_k3)

f4 = @(x, y) sin(x)*tan(y);
wynik4 = P1Z29_GPR_OPCGL(f4, 0, 1.5, 0, 0.5, 5, 5);
wartosc_d4 = 0.1213;
blad_k4 = abs(wartosc_d4 - wynik4);
fprintf('Funkcja trygonometryczna: sin(x)*tan(y)\n')
fprintf('Obszar całkowania: [0, 1.5]x[0, 0.5]\n')
fprintf('Liczba podobszarów dla [a, b] i [c, d]: 5, 5\n')
fprintf('Oczekiwany wynik = %f\nUzyskany wynik = %f\n', wartosc_d4, wynik4)
fprintf('Błąd kwadratury = %f\n\n', blad_k4)

f7 = @(x, y) log(x + y + 1);
wynik7 = P1Z29_GPR_OPCGL(f7, 0, 1, 0, 1, 10, 10);
wartosc_d7 = log(2);
blad_k7 = abs(wartosc_d7 - wynik7);
fprintf('Funkcja logarytmiczna: log(x + y + 1)\n')
fprintf('Obszar całkowania: [0, 1]x[0, 1]\n')
fprintf('Liczba podobszarów dla [a, b] i [c, d]: 10, 10\n')
fprintf('Oczekiwany wynik = %f\nUzyskany wynik = %f\n', wartosc_d7, wynik7)
fprintf('Błąd kwadratury = %f\n', blad_k7)

