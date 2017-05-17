%Laboratorio 3

figure(1);%set(1,'Name','Associação em paralelo: S: S1 + S2 + S3');
	nh = 0:2; nx = 0:4; ny = 0:6;

    h1 = [1 1 1];
    subplot(3,3,1);
    stem(nh, h1);
    title('h1[n]');
    %axis([-5 12 -1.5 1.5]);

    h2 = [-1 1 0];
    subplot(3,3,2);
    stem(nh, h2);
    title('h2[n]');
    %axis([-10 10 -1.5 1.5]);

    h3 = [1 0.5 0];
    subplot(3,3,3);
    stem(nh, h3);
    title('h3[n]');
    %axis([-10 10 -1.5 1.5]);

    x = [2 1 0 1 2];
    subplot(3,2,3);
    stem(nx, x);
    title('x[n]');
    %axis([-10 10 -1.5 1.5]);
    
	%------------------------------------------------
	%------------------------------------------------
	
	y1 = conv(x, h1);
    
    y2 = conv(x, h2);
    
    y3 = conv(x, h3);

    heq = h1 + h2 + h3;
    subplot(3,2,4);
    stem(nh,heq);
    title('heq[n]=h1[n] + h2[n] + h3[n]');
    %axis([-15 15 -4.5 4.5]);

    ya = y1 + y2 + y3;
    subplot(3,2,6);
    stem(ny,ya);
    title('y[n] = y1[n] + y2[n] + y3[n]');
    %axis([-15 15 -4.5 4.5]);

    yb = conv(x,heq);
    subplot(3,2,5);
    stem(ny,yb);
    title('y[n] = x[n]*heq[n]');
    %axis([-15 15 -4.5 4.5]);
