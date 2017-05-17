%Laboratorio 2: Tornar o som de um grilo parecido com o som de um passaro

music = 'grilo.wav';

[y,fs]= wavread(music);

wavwrite(y,fs/4,'griloLento.wav');

N = length(y);
slength = N/fs;
slength_slow = N/(fs/4);
t =  linspace(0, slength, N);
t_slow = linspace(0, slength_slow, N);


figure(1)
subplot(2,1,1)
plot(t, y)
title('Grilo')
axis([0 9 -1 1]);

subplot(2,1,2)
plot(t_slow, y)
title('Grilo Lento -> Pássaro')
axis([0 9 -1 1]);
