function odp = trapez(f,a,b,n)
    % Autor: Grzegorz Prasek
    x = linspace(a,b,n);
    xx = 1:length(x)-1;
    yy = 1:length(x)-1;
    k = 1;
    odp = 0;
    for i = 2:length(x)
        xx(k) = x(i-1);
        xx(k+1) = x(i);
        xx(k+2) = x(i);
        yy(k) = f(xx(k));
        yy(k+1) = f(xx(k+1));
        yy(k+2) = 0;
        k = k + 3;
        odp = odp + (f(x(i))+f(x(i-1))).*(x(i)-x(i-1))./2;
    end
    