function wyn = P1Z29_GPR_OPCGL(f,a,b,c,d,ix,iy)
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Funkcja do przybliżenia podwójnej całki funkcji f(x,y) na dwuwymiarowym
% obszarze D z zastosowaniem 2 punktowej kwadratury  Gaussa-Legendre'a
%
% Wejście:
% f - uchwyt do funkcji f(x,y) przyjmującej i zwracającej wartości
% rzeczywiste
% a - lewy kraniec przedziału zmiennej x należący do liczb rzeczywistych
% b - prawy kraniec przedziału zmiennej x należący do liczb rzeczywistych
% taki, że a < b
% c - lewy kraniec przedziału zmiennej y należący do liczb rzeczywistych
% d - prawy kraniec przedziału zmiennej y należący do liczb rzeczywistych
% taki, że c < d
% ix - liczba podprzedziałów dla [a,b], ix należy do liczb naturalnych
% iy - liczba podprzedziałów dla [c,d], iy należy do liczb naturalnych
%
% Wyjście:
% wyn - przybliżona wartość podwójnej całki funkcji f na obszarze D
%
% Uwagi:
% Wartości a, b, c, d, ix, iy muszą być w zakresie reprezentacji liczbowej,
% a przedziały muszą być wystarczające dla kwadratury  Gaussa-Legendre'a
% tzn. takie aby uniknąć zbyt małych przedziałów oraz że dobranie węzłów na
% przedziałach jest poprawne numerycznie.

% Wagi i punkty kwadratury Gaussa-Legendre'a
x_w = [1, 1];
[x0_n,x1_n,y0_n,y1_n] = genwe(a,b,c,d,ix,iy);

% Zainicjowanie wyniku całki
wyn = 0;

% Wykonanie  kwadratury Gaussa-Legendre'a
for i = 1:length(y0_n)
    for j = 1:length(x0_n)
        wyn = wyn + x_w(1)*x_w(2)*...% wagi dla wszytskich idetyczne bo 1
             (f(x0_n(j),y0_n(i)) + f(x0_n(j),y1_n(i))...
            + f(x1_n(j),y0_n(i)) + f(x1_n(j),y1_n(i)));
    end
end

% Skalowaie wyniku do rozmiarów obszaru całkowania
wyn = wyn*(b - a)*(d - c)/(4*ix*iy);