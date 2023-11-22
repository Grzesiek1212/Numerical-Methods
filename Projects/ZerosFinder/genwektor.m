function  x = genwektor()
% Zadanie R
% Grzegorz Prasek, 327394
%
% funkcja generująca wektor argumnetow

x = zeros(1,1864473); % rezerwujemy pamiec
a = 0;
b = 0.04;
ile = 330000; % liczba na jaka bedziemy dzielic przedzial

iRight1 = 1864474 / 2; % indeksy dzieki ktorym poruszamy sie po wektorze x
iLeft1 = iRight1;

while b < 1e20 % idziemy od 0 w dwie strony generujac przedzialy
    x(1,iRight1 : iRight1 + ile - 1) = linspace(a,b,ile);
    x(1,iLeft1 - ile + 1 : iLeft1) = linspace(-b,-a,ile);
    iRight1 = iRight1 + ile;
    iLeft1 = iLeft1 - ile;
    a = b;
    b = 10 * b;
    ile = round(ile * 9 / 15) + 2200;
end
