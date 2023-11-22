function odp = hfun(b , c)
    % oblicza wartosc h potrzebna do metody dekera
    odp = b + sign(c-b)*b*eps;
end