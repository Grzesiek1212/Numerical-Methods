function [Q,err,K,Lrow] = smartRM(f,a,b,tol,m0,Kmin,Kmax)
    % Autor: Grzegorz Prasek
    % Funkcja obliczająca całke z funckji f na przedziale[a,b]
    % Uleposzona Metoda Romberga

    T = zeros(Kmax + 1,Kmax + 1);

    % obliczanie pierwszego elementu
    h = (b - a)/m0;
    T(1,1) = h/2 * (f(a) + f(b) + 2 * sum(f(a + h:h:b - h)));

    for K = 1:Kmax
        % Obliczamy 1 wartość itego wiersza
        h = (b - a)/(2^(K - 1)*m0);
        T(K + 1,1) = T(K, 1)/2 + sum(f(a + h/2:h:b)) * h/2;
        % obliczamy kolejene wartosci itego wiersza
        for j = 1:K
            T(K + 1,j + 1) = (4^j * T(K + 1,j) - T(K,j))/(4^j - 1);
        end
        % obliczamy bład przybliżenia całki
        blad = abs(T(K + 1,K + 1)-T(K,K))/max(1,abs(T(K + 1,K + 1)));
        if K + 1>Kmin && blad < tol % sprawdzamy warunki zadania
            break;
        end
    end
    Q = T(K + 1, K + 1);
    err = blad;
    Lrow = T(K + 1,1:K + 1);

end % function