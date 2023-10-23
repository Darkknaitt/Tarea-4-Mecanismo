function [] = MovRot(T)
%EjesMov La funcion de ejes moviles dibuja los ejes
%independientemente del lugar en el espacio en el que se encuentre
%el marco movil
%Entrada=Matriz de transformacion homogenea Thom
%Salida=Dibujo de marco movil
    line([0 T(1,1)],[0 T(2,1)],[0 T(3,1)],"color","r","linewidth",3)
    line([0 T(1,2)],[0 T(2,2)],[0 T(3,2)],"color","g","linewidth",3)
    line([0 T(1,3)],[0 T(2,3)],[0 T(3,3)],"color","b","linewidth",3)
end

