% Tarea 4 - Mecanismo de extremidad de robot caminante
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms q1 q2 ;          %simbolicos de los angulos
syms L1 L2 L3 L4 H1 H2 H3; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad
A = sqrt((L4)^2 + (L2)^2-2*L4*L2*cos(q2))
g2 = asin((L2*sin(q2))/(A))
g4 = acos(- ((L3)^2-(A^2)-(H2)^2)/(A*H2))
A10 = [cos(q1) -sin(q1) 0 0;
      sin(q1) cos(q1)  0 0;
      0          0     1 0;
      0          0     0 1]
A11 = [1 0 0 L1;
       0 1 0 0;
       0 0 1 -H1;
       0 0 0 1]
A12 = [1 0 0 0;
       0 0 -1 0;
       0 1 0 0;
       0 0 0 1]
A1 = simplify(A10*A11*A12)

A20 = [cos(q2) -sin(q2) 0 0;
       sin(q2) cos(q2) 0 0;
        0        0     1 0;
        0        0     0 1]
 
A21 = [1 0 0 H3*sin(g2+g4);
       0 1 0 L4+H3*cos(g2+g4);
       0 0 1 0;
       0 0 0 1]
A2 = simplify(A20*A21)

T02 = simplify(A1*A2)
