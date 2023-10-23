function [Mtz] = Rot_Z(theta)
%Rot_Y Rotación en Y 
%   Pasa el angulo a radianes y hace la matriz de transformación homogenea
%   con rotación en X sobre el marco inercial
theta = theta * pi / 180;
Mtz = [cos(theta), -sin(theta), 0, 0;
       sin(theta), cos(theta), 0, 0;
       0, 0, 1, 0;
       0, 0, 0, 1];
end

