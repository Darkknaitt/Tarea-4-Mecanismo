function [Mtx] = Rot_Y(phi)
%Rot_Y Rotación en Y 
%   Pasa el angulo a radianes y hace la matriz de transformación homogenea
%   con rotación en X sobre el marco inercial
phi = phi * pi / 180;
Mtx = [cos(phi), 0, sin(phi), 0;
       0, 1, 0, 0;
      -sin(phi), 0, cos(phi), 0;
       0, 0, 0, 1];
end

