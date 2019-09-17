%Función Newton-Raphson.
%ENTRADA: * polinomio
%         * cantidad de iteraciones máxima
%         * Error maximo 
%         * Valor inicial del algoritmo. 
%SALIDA:la raíz del polinomio ingresado.     
function [Respuesta] = newtonRaphson(fun, iteracionMax, Error,X0)
    DevFun = polyder(fun); %funcion que obtiene la derivada
    X1 = X0;
    Respuesta = X1 - (polyval(fun,X1)/polyval(DevFun,X1));
    ErrorR = abs(Respuesta - X1);
    if ErrorR < Error 
        disp(Respuesta)
        return
    elseif iteracionMax == 0
        disp(Respuesta)
        return
    else
        iteracionMax  = iteracionMax-1;
       %llamadoRecursivo = newton(fun, iteracionMax, Error, Respuesta); %llamado recursivo
        Respuesta = newtonRaphson(fun, iteracionMax, Error, Respuesta); %llamado recursivo
       % Respuesta = [Respuesta,llamadoRecursivo];
    end
end
