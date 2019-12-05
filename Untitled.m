close all
clear all
clc
car1=importdata ('C:\Users\Iangr\Documents\car data 1.txt','\t');
car2=importdata ('C:\Users\Iangr\Documents\car data 2.txt','\t');
figure(1)% Plot of Bumper Vibration at Lower RPM
plot (car1.data(:,1),car1.data(:,2))
title("Time(S),A1_X(g)")
figure(2)
plot (car1.data(:,1),car1.data(:,3))
title("Time(S),A1_Y(g)")
figure(3)
plot (car1.data(:,1),car1.data(:,4))
title("Time(S),A1_Z(g)")
figure(4)% Plot of Motor Vibration at Lower RPM
plot (car1.data(:,1),car1.data(:,5))
title("Time(S),A2_X(g)")
figure(5)
plot (car1.data(:,1),car1.data(:,6))
title("Time(S),A2_Y(g)")
figure(6)
plot (car1.data(:,1),car1.data(:,7))
title("Time(S),A2_Z(g)")
figure(7)%%Plot of Bumper Vibration at Higher RPM
plot (car2.data(:,1),car2.data(:,2))
title("Time(S),A1_X(g)")
figure(8)
plot (car2.data(:,1),car2.data(:,3))
title("Time(S),A1_Y(g)")
figure(9)
plot (car2.data(:,1),car2.data(:,4))
title("Time(S),A1_Z(g)")
figure(10)%Plot of Motor Vibration at Higher RPM
plot (car2.data(:,1),car2.data(:,5))
title("Time(S),A2_X(g)")
figure(11)
plot (car2.data(:,1),car2.data(:,6))
title("Time(S),A2_Y(g)")
figure(12)
plot (car2.data(:,1),car2.data(:,7))
title("Time(S),A2_Z(g)")
%fft A1_X 1
fs=1000;%sampling rate
ts=(length(car1.data(:,1))); %sample time
t=0:1/fs:ts;% discrete time vector
figure(13);
fft11x=fft(car1.data(:,2));
stem(car1.data(:,1),abs(fft11x)); %plot fft
%fft A1_Y 1
fs=1000;%sampling rate
ts=(length(car1.data(:,1))); %sample time
t=0:1/fs:ts;% discrete time vector
figure(14);
fft11y=fft(car1.data(:,3));
stem(car1.data(:,1),abs(fft11y)); %plot fft
