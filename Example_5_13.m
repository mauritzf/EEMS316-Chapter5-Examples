% Program to simplify the complex number
% File No. Example_5_13.m
clear; clc;
z1 = (4 + 2*j);
z2 = (5 - 3*i);
theta = (30/180)*pi; % Angle in radian
z3 = 2*exp(i*theta);
z4 = (6 + 2*j);
z5 = (4 + 4*i);
% Express Z in rectangular form
Zr = (z1*z2*z3)/(z4*z5);
disp('The complex no. expressed in rectangular form Zr is');
Zr
% Express Z in polar form
Z_mag = abs(Zr); % Magnitude of Zr
Z_angle = angle(Zr)*(180/pi); % Angle in degrees
disp('The complex no. expressed in polar form as Mag & Phase');
Zp = [Z_mag, Z_angle]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
