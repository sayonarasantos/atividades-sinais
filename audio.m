%Laboratorio 1: inverter, aumentar e diminuir velocidade de um audio

a = 2;
music = 'grilo.wav';

[y,fs]= wavread(music);

y1= flipud(y);  %Inverte no tempo

wavwrite(y1,fs,'griloInvertido.wav'); %Inverte o audio
wavwrite(y,fs/a,'griloLento.wav'); %Torna o audio mais lento
wavwrite(y,fs*a,'griloRapido.wav'); %Torna o audio mais rapido

N = length(y);
N1 = length(y1);
slength = N/fs;
slength_slow = N/(fs/a);
slength_fast = N/(fs*a);
slength_inv = N1/(fs);
t =  linspace(0, slength, N);
t_slow = linspace(0, slength_slow, N);
t_fast = linspace(0, slength_fast, N);
t_inv = linspace(0, slength_inv, N1);

figure(1); set(1,'Name','Audio normal');
plot(t, y)
axis([0 10 -1.5 1.5]);

figure(2); set(1,'Name','Audio lento');
plot(t_slow, y)
axis([0 10 -1.5 1.5]);

figure(3); set(1,'Name','Audio Rapido');
plot(t_fast, y)
axis([0 10 -1.5 1.5]);

figure(4); set(1,'Name','Audio invertido');
plot(t_inv, y1)
axis([0 10 -1.5 1.5]);