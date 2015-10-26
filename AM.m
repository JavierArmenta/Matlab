clc;                    %limpiar command window
clear all;              %limpiar todas las variables

%moduladora
fm=1000;                 %1Khz
tetam=0*pi/180;         %desplazamiento horizontal en rad
Voffm=0;                 %desplazamiento vertical
Em = 10;                %Amplitud pico 

%Portadora
fc=20000;                 %10Khz
tetac=0*pi/180;         %desplazamiento horizontal en rad
Ec = 10;                %Amplitud pico   OJO debe ser que Ec >= Em 

Ttot = 2/fm;            %para ver 2 periodos
Tinc = Ttot/1000;       %graficar 1000 ptos

%el indice de modulacion es em/ec

t=0:Tinc:Ttot; %Vector de tiempo
L=length(t);

Vmt = Voffm + Em*sin(2*pi*fm*t + tetam); %señal senoidal
Vct = Ec*sin(2*pi*fc*t + tetac); %señal senoidal (no debe tener offset)

EnvolventeSup =  (Ec + Vmt); 
EnvolventeInf = -(Ec + Vmt); 

AMt = (Ec + Vmt).*sin(2*pi*fc*t + tetac);

figure(1);
plot(t,Vmt,'-b');         %plot(x,y,'.color')
hold on;
plot(t,Vct,'-r');         %plot(x,y,'.color')
axis([0 Ttot -20 20]); %ejes del grafico
grid on;                %rejilla
hold off;

figure(2);
plot(t,AMt,'-k');         %plot(x,y,'.color')
hold on;
%plot(t,EnvolventeSup,'-g');         %plot(x,y,'.color')
%plot(t,EnvolventeInf,'-g');         %plot(x,y,'.color')
axis([0 Ttot -20 20]); %ejes del grafico
grid on;                %rejilla
hold off;

%color r,b,g,y,k,m,c
