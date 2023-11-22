function test2()
% Projekt 1, zadanie 29
% Grzegorz Prasek, 327394
%
% Funkcja testująca prawidłowe przeskalowanie przedziałów

pause;
fprintf("TEST 2:\n");
fprintf('Test prawidłowego przeskalowania punktów w podprzedziałach\n')
fprintf('względem punktu x_1 = 5.7735026918962576451e-01.\n')
fprintf("Obszar skalowany: [2,6]x[1,4]\n");
fprintf("Liczba podprzedziałów dla [a, b] i [c, d]: 2, 3\n\n")

x_1 = 5.7735026918962576451e-01;
[~,x1_nod,~,y1_nod] = genwe(2,6,1,4,2,3);
c = -1;d = 1;
s = @(x,a,b) ((b - a)*x + a*d - b*c)/(d - c);

fprintf("Punkty prawidłowe oraz uzyskane:\n")
fprintf("prawidłowy: (%f,%f)",s(x_1,2,4),s(x_1,1,2))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(1),y1_nod(1))
fprintf("prawidłowy: (%f,%f)",s(x_1,4,6),s(x_1,1,2))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(2),y1_nod(1))
fprintf("prawidłowy: (%f,%f)",s(x_1,2,4),s(x_1,2,3))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(1),y1_nod(2))
fprintf("prawidłowy: (%f,%f)",s(x_1,4,6),s(x_1,2,3))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(2),y1_nod(2))
fprintf("prawidłowy: (%f,%f)",s(x_1,2,4),s(x_1,3,4))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(1),y1_nod(3))
fprintf("prawidłowy: (%f,%f)",s(x_1,4,6),s(x_1,3,4))
fprintf(" uzyskany: (%f,%f)\n",x1_nod(2),y1_nod(3))



