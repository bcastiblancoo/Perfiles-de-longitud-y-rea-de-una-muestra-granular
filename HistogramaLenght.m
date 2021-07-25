clear all;
close all;
clf;

load lenght.dat
format long
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=lenght;
n=8;

figure(1);
h=histogram(x,n);
title('Histograma del perfil de longitud');
xlabel('Longitud del grano (\mum)');
ylabel('Número de cuentas');
grid on;
hold on
y = 0.250:0.0001:0.600;
mu = 0.413;
sigma = 0.042;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'LineWidth',1.5);
legend('Frecuencia por intervalo','Ajuste gaussiano')
text(0.26,9.7,'Longitud promedio=0.413\mum');
print -dpng AnalisisLongitud.png