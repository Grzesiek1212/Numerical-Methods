function [x0_nodes,x1_nodes,y0_nodes,y1_nodes] = genwe(a,b,c,d,ix,iy)
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Funkcja generująca punkty kwadratury Gaussa-Legendre'a dla podobszarów.

% rezerwujemy pamięć na punkty(xi,yi) w 2 punktowej kwadraturze(4 wektory)
x0_nodes = zeros(1,ix);
x1_nodes = zeros(1,ix);
y0_nodes = zeros(1,iy);
y1_nodes = zeros(1,iy);

% obliczamy zmienne które przydadzą nam się do generowania punktów
hx = (b - a)/(2*ix);
hy = (d - c)/(2*iy);

% punkty kwadratury dla obszaru [-1,1]x[-1,1]
x_0 = -5.7735026918962576451e-01;
x_1 = 5.7735026918962576451e-01;

% wzór wyprowadzony ze wzorów na zmiane przedziału całkowania
for k= 1:ix
    x0_nodes(k) = hx*x_0 + a + (2*k - 1)*hx;
    x1_nodes(k) = hx*x_1 + a + (2*k - 1)*hx;
end

for k= 1:iy
    y0_nodes(k) = hy*x_0 + c + (2*k - 1)*hy;
    y1_nodes(k) = hy*x_1 + c + (2*k - 1)*hy;
end