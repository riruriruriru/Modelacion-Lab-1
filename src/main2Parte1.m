%Programa Main correspondiente al uso de Newton Raphson
prompt = 'Ingrese el polinomio en su representación array:\n';
prompt1= 'Ingrese el valor inicial x0\n';
prompt2 = 'Ingrese el numero maximo de iteraciones\n';
prompt3 = 'Ingrese la tolerancia\n';
%Se definen los mensajes para ingresar los parametros de entrada
polinomio = [];
x0 = 'a';
iter = 'a';
err = 'a'; %Se inicializan variables que recibiran los parametros de entrada
while length(polinomio) == 0 || isnumeric(polinomio) ==0 %Se verifica que polinomio sea vector con largo mayor a 0 y valores numericos
    %Se pide la entrada al usuario en un bloque try-catch para evitar
    %errores en el programa
    try 
        polinomio = input(prompt)
       
    catch
       disp("Error al ingresar polinomio, intentelo nuevamente") 
    end
end
%Se verifica que el valor inicial sea un numero escalar
while isnumeric(x0) == 0|| isscalar(x0) == 0
    %Se pide la entrada al usuario en un bloque try-catch para evitar
    %errores
    try 
        x0 = input(prompt1)
       
    catch
       disp("Error al ingresar x0, intentelo nuevamente") 
    end
end
%Se verifica que el numero maximo de iteraciones sea un numero, escalar,
%mayor a 0 y entero
while isnumeric(iter) == 0 || isscalar(iter) == 0 || iter <= 0 || mod(iter, 1) ~= 0
    %Se pide la entrada al usuario en un bloque try-catch para evitar
    %errores
    try 
        iter = input(prompt2)
       
    catch
       disp("Error al ingresar numero iteraciones, intentelo nuevamente") 
    end
end
%Se verifica que el error ingresado sea numero, escalar y mayor o igual a 0
while isnumeric(err) == 0|| isscalar(err) == 0 || err < 0
    %Se pide la entrada al usuario en un bloque try-catch para evitar
    %errores
    try 
        err = input(prompt3)
       
    catch
       disp("Error al ingresar tolerancia, intentelo nuevamente") 
    end
end
%Finalmente, se llama a la funcion newtonRaphson utilizando las 4 entradas
%del usuario
newtonRaphson(polinomio, iter, err, x0)