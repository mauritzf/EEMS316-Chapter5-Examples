% Program of a limiter circuit
% File name Example_5_14.m
clear; clc; close all;
% Define the time vector
t = 0:1e-4:0.04;
% Generate sine voltage
f = 100;
w = 2*pi*f;
vs = sin(w*t);
% Calculation of output voltage
t1 = length(t);
for i = 1:t1
    if vs(i) >= 0.6
        vo(i) = 0.6;
    elseif vs(i) > -0.6 && vs(i) < 0.6
        vo(i) = vs(i);
    else
        vo(i) = -0.6;
    end
end
% Plot the input and output voltages
subplot(211), plot(t, vs); title('v_s(t)'); grid;
subplot(212), plot(t, vo); title('v_o(t)'); xlabel('Time (sec)'); grid;

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
