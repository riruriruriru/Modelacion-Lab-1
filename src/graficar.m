%Función graficar.
%ENTRADA: * valores de a(x)
%         * valores de b(x)
%         * vector x
%         * numero de figura 
%SALIDAS:se realizan los graficos correspondientes   
function graficar(valores, valores2,x,f)
%Se define la primera figura para el grafico de a(x)
figure1 = figure(f);

axes1 = axes('Parent',figure1);
%Se grafican los valores del eje x e y de a(x)
plot([x],[valores],'r*'); %Se le asigna el color rojo y los puntos '*'
grid on
title("Gráfico de a(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('a(x)');
%Se nombran los ejes y el titulo correspondiente
%Se define una segunda figura para b(x)
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
%Se grafican los valores del eje x e y de b(x)
plot([x],[valores2],'g+'); 
grid on
title("Gráfico de b(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('b(x)');
%Se dan valores a las etiquetas de ejes, titulo y leyenda
%Se crea una tercera figura para el grafico conjunto de a y b
figure3 = figure(f+2)
axes3 = axes('Parent',figure3);
box(axes3,'on');
hold(axes3,'all');
plot([x],[valores],'r*'); hold on;
plot([x],[valores2],'g+'); hold on;
%Se grafican ambos valores del eje x e y para a y b en la misma figura
grid on
title("Gráfico de a(x) y b(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('a(x)',"b(x)");
%Se le entregan valores a las etiquetas

end