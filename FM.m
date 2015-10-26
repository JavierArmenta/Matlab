clc 
clear all 

fm = 1000; %frecuencia moduladora
tm=1/fm; %periodo de la señal moduladora 

t = 0 : tm/1000 : 2*tm; %para ver mil puntos 

wm = 2*pi*1000;  %frecuencia angular moduladora 
vm = 10; %amplitud de la moduladora 

Vmt = vm*cos(wm*t); %moduladora 

wc = 2*pi*20000; %frecuencia angular de la portadora 
vc = 5;             %amplitud de la portadora

%para los indices de modulacion 
K=1;
K1=wm/vm;

VPM = vc*cos(wc*t + K*vm*cos(wm*t));
VFM = vc*cos(wc*t + (K1*vm/wm)*sin(wm*t));


plot(t,Vmt,'-b');
hold on 
plot (t,VPM,'-r');
plot (t,VFM,'-g');
hold off;