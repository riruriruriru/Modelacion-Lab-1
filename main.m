%Main parte 1
%Se definen los logaritmos que no se encuentran nativamente en matlab
log5 = @(x) log(x) / log(5);
log2 = @(x) log(x) / log(2);
log6 = @(x) log(x) / log(6);
%Se utilizan funciones anonimas para representar a las funciones a(x), b(x)
%y c(x)
a = @(x) 12*log5(3*x+7);
b = @(x) sin(4*(log2(x+8))) + cos(5*(log6(2*x+46)))
%Se define el vector 'x' para las funciones a y b
x = [0:0.01:15*pi];
%Se evaluan a y b en el vector x
resultadoA = a(x)
resultadoB = b(x)
%Se grafican los valores de a y b
graficar(resultadoA,resultadoB,x,1)
%Se define c(x)
c = @(x) 7*exp(x+12)
%Se define el vector 'x' para la funcion c
x = [-10:.05:10]
%Se evalua c en los valores de x
resultadoC = c(x)
%Se grafican los resultados
graficarSemilogy(resultadoC,x, 4)