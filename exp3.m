%% For Circular convolution
clc;
clear all;
first=input('Enter first sequence: ');
second=input('Enter second sequence: ');
len_first=length(first);
len_second=length(second);
N=max(len_first,len_second);
x=[first zeros(1,N-len_first)]; %Padding Zeros
y=[second zeros(1,N-len_second)]; %Padding Zeros
cir_conv=ifft ( fft(x,N).* fft(y,N) ,N);
disp('The resultant of convolution is');
cir_conv




%% For finding impulse response
clc;
close all;
clear all;
signal=input('Enter signal sequence: ');
output=input('Enter output sequence: ');
len_signal=length(signal);
len_output=length(output);
N=max(len_signal,len_output);
x=[signal zeros(1,N-len_signal)];
y=[output zeros(1,N-len_output)];
impulse_response= ifft( fft(y,N) ./ fft(x,N) ,N);
impulse_response
xlabel('Samples');
ylabel('Amplitude');
title('Impulse response');