% Program to convert temp from degree F to degree C and vice versa
% Example_5_11.m
clear all; clc;
T1 = input('Enter the temperature T1\n: ');
Temperature = menu('Choose Type of Conversion', 'C2F', 'F2C');
if Temperature == 1
    T1 = C2F(T1);
end;
T2 = input('Enter the temperature T2\n: ');
Temperature = menu('Choose Type of Conversion', 'C2F', 'F2C');
if Temperature == 1
    T2 = C2F(T2);
end;
R0 = 6.8; alfa = 0.00393;
deltaT = F2C(T2) - F2C(T1);
RT = R0 * (1 + alfa * deltaT);
deltaR = RT - R0;
fprintf('Due to temp change of %2.2f degree, change is resistance is %2.2f ohms\n', deltaT, deltaR);

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
