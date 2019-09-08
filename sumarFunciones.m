function [resultado] = sumarFunciones(vector)
if length(vector) < 4
    disp("El vector ingresado tiene menos de 4 elementos")
    return
end
mayores = sort(vector, 'descend');
mayores = mayores(1:4)
menores = sort(vector, 'ascend');
menores = menores(1:4)
sumaMayores = sum(mayores);
sumaMenores = sum(menores);
if sumaMayores < 0 || sumaMenores < 0
    disp("Valores ingresados no son validos")
    return
end
resultado = sqrt(sumaMayores) - sqrt(sumaMenores);