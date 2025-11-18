%%Without Pause function
clc; % clear command window
clear all; % clear workspace
close all; % delete all previous figures
freq=input('Enter the frequency_');
n=input('Enter the number of harmonics_');
t=0:0.001:1; %time
sq_wave=0;
for k=1:1:n
harmonic=(4/pi)*(1/(2*k-1))*sin(2*pi*freq*(2*k-1)*t);
sq_wave=sq_wave+harmonic;
end
plot(t,sq_wave);
title('Generation of Square wave by addition of its harmonics');
xlabel('time');
ylabel('Amplitude');


%% With Pause function
clc;
close all;
freq=input('Enter the frequency');
n=input('Enter the number of harmonics');
t=0:0.001:1;
sq_wave=0;
title('Generation of Square wave by addition of its harmonics with pause function ');
for k=1:1:n
harmonic=(4/pi)*(1/(2*k-1))*sin(2*pi*freq*(2*k-1)*t);
sq_wave=sq_wave+harmonic;
plot(t,sq_wave);
pause(0.5) % pause time is 0.5 seconds
end