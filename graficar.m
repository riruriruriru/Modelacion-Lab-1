function graficar(valores, valores2,x,f)
figure1 = figure(f);

axes1 = axes('Parent',figure1);

plot([x],[valores],'r*');
grid on
title("Gr�fico de a(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('a(x)');
figure2 = figure(f+1)
axes2 = axes('Parent',figure2);
plot([x],[valores2],'g+'); 
grid on
title("Gr�fico de b(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('b(x)');
figure3 = figure(f+2)
axes3 = axes('Parent',figure3);
box(axes3,'on');
hold(axes3,'all');
plot([x],[valores],'r*'); hold on;
plot([x],[valores2],'g+'); hold on;
grid on
title("Gr�fico de a(x) y b(x)")
xlabel('Eje x') 
ylabel('Eje y');
legend('a(x)',"b(x)");


end