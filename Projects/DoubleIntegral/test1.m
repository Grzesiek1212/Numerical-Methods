function test1()
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Funkcja testująca prawidłowe przeskalowanie przedziałów

pause;
fprintf("TEST 1:\n");
fprintf('Test prawidłowego przeskalowania punktów w podprzedziałach\n')
fprintf('względem punktu x_0 = -5.7735026918962576451e-01.\n')
fprintf("Obszar skalowany: [2,6]x[1,4]\n");
fprintf("Liczba podprzedziałów dla [a, b] i [c, d]: 2, 3\n\n")

x_0 = -5.7735026918962576451e-01;
[x0_nod,~,y0_nod,~] = genwe(2,6,1,4,2,3);
c = -1; d = 1;
s = @(x,a,b) ((b - a)*x + a*d - b*c)/(d - c);

fprintf("Punkty prawidłowe oraz uzyskane:\n")
fprintf("prawidłowy: (%f,%f)",s(x_0,2,4),s(x_0,1,2))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(1),y0_nod(1))
fprintf("prawidłowy: (%f,%f)",s(x_0,4,6),s(x_0,1,2))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(2),y0_nod(1))
fprintf("prawidłowy: (%f,%f)",s(x_0,2,4),s(x_0,2,3))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(1),y0_nod(2))
fprintf("prawidłowy: (%f,%f)",s(x_0,4,6),s(x_0,2,3))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(2),y0_nod(2))
fprintf("prawidłowy: (%f,%f)",s(x_0,2,4),s(x_0,3,4))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(1),y0_nod(3))
fprintf("prawidłowy: (%f,%f)",s(x_0,4,6),s(x_0,3,4))
fprintf(" uzyskany: (%f,%f)\n",x0_nod(2),y0_nod(3))
