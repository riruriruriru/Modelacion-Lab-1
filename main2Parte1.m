prompt = 'Ingrese el polinomio en su representación array:\n';
prompt1= 'Ingrese el valor inicial x0\n';
prompt2 = 'Ingrese el numero maximo de iteraciones\n';
prompt3 = 'Ingrese la tolerancia\n';
polinomio = [];
x0 = 'a';
iter = 'a';
err = 'a';
while length(polinomio) == 0
    try 
        polinomio = input(prompt)
       
    catch
       disp("Error al ingresar polinomio, intentelo nuevamente") 
    end
end

while isnumeric(x0) == 0|| isscalar(x0) == 0
    try 
        x0 = input(prompt1)
       
    catch
       disp("Error al ingresar x0, intentelo nuevamente") 
    end
end

while isnumeric(iter) == 0 || isscalar(iter) == 0 || iter <= 0 || mod(iter, 1) ~= 0
    try 
        iter = input(prompt2)
       
    catch
       disp("Error al ingresar numero iteraciones, intentelo nuevamente") 
    end
end

while isnumeric(err) == 0|| isscalar(err) == 0 || err < 0
    try 
        err = input(prompt3)
       
    catch
       disp("Error al ingresar tolerancia, intentelo nuevamente") 
    end
end

newtonRaphson(polinomio, iter, err, x0)