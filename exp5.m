clc;
rp=3;
rs=20;
fs=1000; % sampling frequency
wp=[50 450]/(fs/2); % normalizing passband frequency
ws=[200 300]/(fs/2); % normalizing stopband frequency
[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn,'stop');
[h,d]=freqz(b,a,128,fs);
subplot(2,1,1);
plot(d,abs(h));
g=angle(h);
subplot(2,1,2);
plot(d,g);