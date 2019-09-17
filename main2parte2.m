%Main correspondiente a la parte 2 del laboratorio: Suma de funciones
%Se define el mensaje para pedir input al usuario
prompt = 'Ingrese un vector con un número de elementos mayor a 4:\n';
vector = [];
%Se define la variable que recibira el input del usuario
%Se verifica que se ingrese un vector numerico con numero de elementos
%igual o mayor a 4
while length(vector) == 0 || length(vector) < 4 || isnumeric(vector)==0
    %Se pide la entrada al usuario en un bloque try-catch para evitar
    %errores
    try 
        vector = input(prompt)
    catch
       disp("Error al ingresar vector, intentelo nuevamente") 
    end
end
%Una vez se ingresa el vector correctamente, se llama a la funcion
%sumarFunciones()
sumarFunciones(vector)