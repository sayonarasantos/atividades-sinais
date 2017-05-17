%Laboratorio 4: Correlacoa entre sinais de tempo discreto

figure(1); set(1,'Name','Gráficos dos sinais');

x = [1,2,3,0,3,2,3]; nx = [0:6];
subplot(1,2,1);
stem(nx,x);
title('x[n]')
xlabel('n');ylabel('x');
axis([-1 7 -2 4]);
grid;

w = [-1,2,3,0,3,2,-3]; nw = [0:6];
subplot(1,2,2);
stem(nw,w);
title('w[n]')
xlabel('n');ylabel('w');
axis([-1 7 -4 4]);
grid;

figure(2); set(1,'Name','Gráficos das Correlações cruzadas');

[z1,nz1] = xcorr(x,w);
subplot(2,1,1);
stem(nz1,z1);
title('Correlação x[n]ow[n]')
xlabel('n');ylabel('z');
axis([-7 7 -6 18]);
grid;

[z2,nz2] = xcorr(w,x);
subplot(2,1,2);
stem(nz2,z2);
title('Correlação w[n]ox[n]')
xlabel('n');ylabel('z');
axis([-7 7 -6 18]);
grid;

figure(3); set(1,'Name','Gráficos das Autocorrelações');

[ax,nax] = xcorr(x,x);
subplot(2,1,1);
stem(nax,ax);
title('Autocorrelação x[n]ox[n]')
xlabel('n');ylabel('a');
axis([-7 7 -6 40]);
grid;

[aw,naw] = xcorr(w,w);
subplot(2,1,2);
stem(naw,aw);
title('Autocorrelação w[n]ow[n]')
xlabel('n');ylabel('a');
axis([-7 7 -12 40]);
grid;

figure(4); set(1,'Name','Gráficos das Correlações feitas com convolução');

w2 = flip(w); nw2 = [-6:0];

[v1,nv1] = conv_m(x,nx,w2,nw2);
subplot(2,1,1);
stem(nv1,v1);
title('Convolução de x[n]*w[-n]')
xlabel('n');ylabel('z');
axis([-7 7 -6 18]);
grid;

x2 = flip(x); nx2 = [-6:0];

[v2,nv2] = conv_m(w,nw,x2,nx2);
subplot(2,1,2);
stem(nv2,v2);
title('Convolução de w[n]*x[-n]')
xlabel('n');ylabel('z');
axis([-7 7 -6 18]);
grid;

