% Ejercicio 2

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad
% Se realiza la rotación en X 
for t=0:1:90
    clf
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    view(120,30)
    Tr1=Rot_X(t);
    ejesmoviles(Tr1);
    pause(0.001)
end
% pause() % Descomentar para ver posiciones
Tid=Tr1; %Se "guarda" la última posición
%Rotación en Y
for t=0:1:90
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr2=Tid*Rot_Y(t);
    ejesmoviles(Tr2);
    pause(0.001)
end
% pause() % Descomentar para ver posiciones
Tid2=Tr2; %Se "guarda" la última posición
%Rotación en Z
for t=0:1:180
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr3=Tid2*Rot_Z(t);
    ejesmoviles(Tr3);
    pause(0.001)
end

