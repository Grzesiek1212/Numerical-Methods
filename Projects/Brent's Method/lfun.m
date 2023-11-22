function odp = lfun(b,a,fb,fa)
    %funkcja ta oblicza wartosc parametru lambda do metody siecznych
    if fb~=fa
        odp = b - fb*(b-a) / (fb-fa);
    elseif fa ~= 0
         odp = inf;
    else
        odp = b;
    end