% ¿Î…¢∏µ¿Ô“∂±‰ªª
% fft(x)   fft(x,[],dim)   fft(x,N)   fft(x,N,dim)
% ifft(F)  ifft(F,[],dim)  ifft(F,N)  ifft(F,N,dim)
N=128;T=1;
t=linspace(0,T,N);
x=12*sin(2*pi*10*t+pi/4)+5*cos(2*pi*40*t);
subplot(1,2,1);
dt=t(2)-t(1);
f=1/dt;
X=fft(x);
F=X(1:N/2+1);
f=f*(0:N/2)/N;
plot(f,abs(F),'-*');
xlabel('Frequency');
ylabel('|F(k)|');
subplot(1,2,2);
ix=real(ifft(X));
plot(t,x-ix);