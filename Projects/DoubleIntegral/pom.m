% Definiuj funkcję f(x, y) = x^3 - 2xy + y^3
f = @(x, y) x.^3 - 2*x.*y + y.^3 + 5*x.^2.*y;

% Parametry kwadratury Gaussa-Legende'a
n = 2;

% Węzły i wagi dla kwadratury Gaussa-Legendre'a w dwóch wymiarach
%[x_nodes, y_nodes, weights] = gauss_legendre_2D(n);

% Przybliżona całka podwójna
approx_integral = P1Z29_GPR_OPCGL(f,-1,1,-1,1,1,1);

% Dokładna wartość całki dla porównania
% Wyświetlenie wyników
fprintf('Przybliżona całka: %f\n', approx_integral);
fprintf('Dokładna wartość całki: %f\n', exact_integral);
