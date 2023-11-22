function zeros = bisekcja(a,b,f)
% Zadanie R
% Grzegorz Prasek, 327394
%
% funkcja implementujaca metode bisekcji w szykaniu miejsca zerowego

maxiter = 100;
i = 0;
s = (a + b) / 2;

if abs(s) > 1
    d = eps * abs(s);
else
    d = eps;
end

while a < s - 500 * d || b > s + 500 * d % warunek wyjscia
    i = i + 1;
    s = (a + b) / 2;

    if abs(s) > 1 % aktualizujemy d
        d = eps * abs(s);
    else
        d = eps;
    end

    if f(a) * f(s) <= 0
        b = s;
    else
        a = s;
    end

    if f(a) == 0 || f(b) == 0
        break;
    end
    
    if i == maxiter % jezeli przekorczym ilosc iteracji to zespolna
        zeros = 1 + 1i;
        return;
    end
end

zeros = s;


