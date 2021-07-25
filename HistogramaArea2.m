clear all;
close all;
clf;

load area2.dat
format long
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=area2;
n=7;

figure(1);
h=histogram(x,n);
h.FaceColor = [0.9290 0.6940 0.1250];
title('Histograma del perfil de área');
xlabel('Área del grano (\mum^2)');
ylabel('Número de cuentas');
grid on;
hold on;
y = 0.040:0.0001:0.240;
mu = 0.129;
sigma = 0.019;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'Color',[0.4660 0.6740 0.1880],'LineWidth',1.5);
legend('Frecuencia por intervalo','Ajuste gaussiano')
text(0.050,24,'Área promedio=0.129\mum^2');
print -dpng AnalisisArea2.png
