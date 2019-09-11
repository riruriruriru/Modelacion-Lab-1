function graficarSemilogy(valores,x,f)
figure1 = figure(f);

axes1 = axes('Parent',figure1);

plot([x],[valores],'r*');
grid on
title("Función c(x), escala normal")
xlabel('Eje x') 
ylabel('Eje y');
legend('c(x)');
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
semilogy([x],[valores],'g+'); 
grid on
title("Función c(x), escala logarítmica")
xlabel('Eje x') 
ylabel('Eje y');
legend('c(x)');
end