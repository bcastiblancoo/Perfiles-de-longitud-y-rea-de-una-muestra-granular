clear all;
close all;
clf;

load area1.dat
format long
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=area1;
n=7;

figure(1);
h=histogram(x,n);
title('Histograma del perfil de área');
xlabel('Área del grano (\mum^2)');
ylabel('Número de cuentas');
grid on;
hold on;
y = 0.000:0.0001:0.300;
mu = 0.135;
sigma = 0.028;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'LineWidth',1.5);
legend('Frecuencia por intervalo','Ajuste gaussiano')
text(0.01,14,'Área promedio=0.135\mum^2');
print -dpng AnalisisArea1.png
