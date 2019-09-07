log5 = @(x) log(x) / log(5);
log2 = @(x) log(x) / log(2);
log6 = @(x) log(x) / log(6);
a = @(x) 12*log5(3*x+7);
b = @(x) sin(4*(log2(x+8))) + cos(5*(log6(2*x+46)))
x = [0:0.01:15*pi];
resultadoA = a(x)
resultadoB = b(x)
graficar(resultadoA,resultadoB,1)
c = @(x) 7*exp(x+12)
x = [-10:.05:10]
resultadoC = c(x)
graficarSemilogy(resultadoC, 4)