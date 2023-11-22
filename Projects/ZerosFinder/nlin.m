function r = nlin(f)
% Zadanie R
% Grzegorz Prasek, 327394
% Total minipoints score: 821.8
% Funkcja wyznaczajaca miejsca zerowe funkcji f zapisujace je do wektora r

r = zeros(1,50000); % rezerwujemy pamiec na miejsca zerowe
ind = 1; % index i licznik miejsc zerowych

x = genwektor(); % generumejy wektor
y = f(x); % obliczamy wektor wartosci

% Idziemy po wartosciach, jezeli dwie wartosci obok siebie sa roznego znaku
% to wywolujemy na nich bisekcje oraz wynik dodajemy do wktora wynikowego
for i = 1:length(y) - 1
    if y(i) * y(i + 1) <  0 && isreal(y(i))
        wynik = bisekcja(x(i),x(i + 1),f);
        if isreal(f(wynik)) && isreal(wynik)
            r(ind) = wynik;
            ind = ind + 1;
        end
    end
end
r = r(1,1:ind - 1); % obcianmy zbędnie zarezerowaną pamiec
