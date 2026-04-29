% Program to plot step response of series RL Circuit
% File name Example_5_4.m
close all; clear; clc;
global R L V
R=2;
L=100e-3;
V=10;
[t, i] = ode45('RL_series', [0:0.01:1], 1);
plot(t, i);
grid;
xlabel('Time (Sec)'); ylabel('Current (A)');

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
