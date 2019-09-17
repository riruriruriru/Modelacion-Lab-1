prompt = 'Ingrese un vector con un número de elementos mayor a 4:\n';
vector = [];
while length(vector) == 0 || length(vector) < 4
    try 
        vector = input(prompt)
        sumarFunciones(vector)
    catch
       disp("Error al ingresar vector, intentelo nuevamente") 
    end
end