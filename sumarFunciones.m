%Función Sumar Funciones.
%ENTRADA: * Vector
%SALIDA: Raiz cuadrada de la suma de los 4 elementos mayores menos la raiz cuadrada de la suma de los 4 elementos menores    
function [resultado] = sumarFunciones(vector)
if length(vector) < 4
    disp("El vector ingresado tiene menos de 4 elementos")
    return
end
%Se ordena el vector de forma ascendiente y descendiente
mayores = sort(vector, 'descend');
mayores = mayores(1:4)
menores = sort(vector, 'ascend');
menores = menores(1:4)
%Se separan los 4 elementos mayores y menores
%Se suman los 4 elementos mayores y los 4 menores
sumaMayores = sum(mayores);
sumaMenores = sum(menores);
%Se calcula el resultado correspondiente a la resta de las raices cuadradas
%de la suma de los mayores menos la suma de los menores
resultado = sqrt(sumaMayores) - sqrt(sumaMenores);