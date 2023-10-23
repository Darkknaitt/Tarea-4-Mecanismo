function [Mtx] = Rot_X(angulo)
%Rot_X Rotación en X 
%   Pasa el angulo a radianes y hace la matriz de transformación homogenea
%   con rotación en X sobre el marco inercial
angulo = angulo * pi / 180;
Mtx = [1 0 0 0;
       0 cos(angulo) -sin(angulo) 0;
       0 sin(angulo) cos(angulo)  0;
       0 0 0 1];
end

