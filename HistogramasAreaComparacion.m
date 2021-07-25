clear all;
close all;
clf;

load area1.dat
load area2.dat
format long
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=area1;
z=area2;
n=7;

figure(1);
h=histogram(x,n);
title('Comparación entre histogramas del perfil de área');
xlabel('Área del grano (\mum^2)');
ylabel('Número de cuentas');
grid on;
hold on;
y = 0.000:0.0001:0.300;
mu = 0.135;
sigma = 0.028;
f = exp(-(y-mu).^2./(2*sigma^2))./(sigma*sqrt(2*pi));
plot(y,f,'Color',[0 0.4470 0.7410],'LineWidth',1.5,'DisplayName','Datos1');
hold on;
h=histogram(z,n);
w = 0.040:0.0001:0.240;
mu2 = 0.129;
sigma2 = 0.019;
g = exp(-(w-mu2).^2./(2*sigma2^2))./(sigma2*sqrt(2*pi));
plot(w,g,'Color',[0.9290 0.6940 0.1250],'LineWidth',1.5,'DisplayName','Datos2');

