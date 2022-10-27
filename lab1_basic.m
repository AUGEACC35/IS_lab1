clear all
%1. Data (examples for training)
x1 = [0.52 0.68 0.32 0.40 0.31 0.33 0.41]
x2 = [0.21 0.18 0.25 0.15 0.60 0.72 0.67]
% d - desired output
d = [1 1 1 1 -1 -1 -1];
%2. parenkame atsitiktinees svoriu reiksmes
w1 = rand(1);
w2 = rand(1);
b = rand(1);

e=1 %made to start while loop
while e~=0
% 3. Skaiciuojame pasvertaja suma
v = x1(1)*w1 + x2(1)*w2 + b;
% 4. Skai2iuojame atsaka
    if v > 0
         y = 1;
    else
        y = -1;
    end
    disp (v);
% 5. Skaiciuojame klaida
e = d(1) - y;
disp (e);
%6. Atnaujiname rysiu svorius
% pasirenkame mokymo zingsni "n"
n = 0.01;
w1 = w1 + n*e*x1(2)
w2 = w2 + n*e*x2(2)
b = b + n*e;
%7. Pakartoti nuo 3 %?ingsnio.../////////////////////////////////////////
end
