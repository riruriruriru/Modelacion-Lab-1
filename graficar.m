function graficar(valores, valores2,f)
figure1 = figure(f);

axes1 = axes('Parent',figure1);

plot([valores],'r*');
grid on
title("wu")
xlabel('Iteraciones') 
ylabel('Errores');
legend('Gauss-Jacobi');
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
plot([valores2],'g+'); 
grid on
title("owo")
xlabel('Iteraciones') 
ylabel('Errores');
legend('Gauss-Jacobi');
figure3 = figure(f+2)
axes3 = axes('Parent',figure3);
box(axes3,'on');
hold(axes3,'all');
plot([valores],'r*'); hold on;
plot([valores2],'g+'); hold on;
grid on
title("owo")
xlabel('Iteraciones') 
ylabel('Errores');
legend('Gauss-Jacobi',"'d'sa'd");


end