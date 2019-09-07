function graficarSemilogy(valores,f)
figure1 = figure(f);

axes1 = axes('Parent',figure1);

plot([valores],'r*');
grid on
title("Funci�n c)")
xlabel('Iteraciones') 
ylabel('Errores');
legend('Gauss-Jacobi');
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
semilogy([valores],'g+'); 
grid on
title("Funci�n c), semilogy")
xlabel('Iteraciones') 
ylabel('Errores');
legend('Gauss-Jacobi');
end