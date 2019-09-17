%Función graficarSemilogy.
%ENTRADA: * vector con valores del eje y de c(x)
%         * valores del eje x de c(x)
%         * numero de la figura 
%SALIDAS: Graficos correspondientes a c(x).   
function graficarSemilogy(valores,x,f)
%Se crea la figura para el primer grafico de c(x)
figure1 = figure(f);

axes1 = axes('Parent',figure1);
%Se grafican sus ejes x e y con escala normal
plot([x],[valores],'r*');
grid on
title("Función c(x), escala normal")
xlabel('Eje x') 
ylabel('Eje y');
legend('c(x)');
%Se nombran sus etiquetas
%Se crea una segunda figura
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
%Se grafica en escala logaritmica solo para el eje y
semilogy([x],[valores],'g+'); 
grid on
title("Función c(x), escala logarítmica")
xlabel('Eje x') 
ylabel('Eje y');
legend('c(x)');
%Se nombran las etiquetas del grafico
end