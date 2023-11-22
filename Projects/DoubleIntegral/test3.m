function test3()
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Test rzędu zaiplemetowanej kwadratury

pause;
a = 2;b = 4;c = -1;d = 2;ix = 1;iy = 1;

fprintf('Test 3:\n')
fprintf('Test sprawdzający rząd kwadratury zaimplementowanej funkcji.\n')
fprintf("Obszar: [2,4]x[-1,2]\n");
fprintf("Liczba podprzedziałów dla [a, b] i [c, d]: 5, 5\n\n")

wynik = P1Z29_GPR_OPCGL(@(x,y)x+y+2,a,b,c,d,ix,iy);
fprintf('Dla wielomianu 1 stopnia: f(x,y) = x + y + 2\n')
fprintf('prawdziwa wartość: 33\n')
fprintf('otrzymana wartość: %f\n',wynik)
fprintf('błąd wynosi: %f\n',abs(33-wynik))

wynik = P1Z29_GPR_OPCGL(@(x,y)x^2 + 2*x + y^2,a,b,c,d,ix,iy);
fprintf('\nDla wielomianu 2 stopnia: f(x,y) = x^2 + 2*x + y^2\n')
fprintf('prawdziwa wartość: 98\n')
fprintf('otrzymana wartość: %f\n',wynik)
fprintf('błąd wynosi: %f\n',abs(98-wynik))

wynik = P1Z29_GPR_OPCGL(@(x,y)(x-2)^3 + (y+1)^3,a,b,c,d,ix,iy);
fprintf('\nDla wielomianu 3 stopnia: f(x,y) = (x-2)^3 + (y+1)^3\n')
fprintf('prawdziwa wartość: 52.5\n')
fprintf('otrzymana wartość: %f\n',wynik)
fprintf('błąd wynosi: %f\n',abs(52.5-wynik))

wynik = P1Z29_GPR_OPCGL(@(x,y)(x-2)^4 + (y+1)^3,a,b,c,d,ix,iy);
fprintf('\nDla wielomianu 4 stopnia: f(x,y) = (x-2)^3 + (y+1)^3\n')
fprintf('prawdziwa wartość: 59.7\n')
fprintf('otrzymana wartość: %f\n',wynik)
fprintf('błąd wynosi: %f\n',abs(59.7-wynik))