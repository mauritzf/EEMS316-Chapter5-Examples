% Program to calculate the distance between two points
% File name Example_5_10.m
C = menu('Choose Type of Coordinates', 'Cartesian', 'Polar');
if C == 1
    disp('Enter the coordinates in the from [x, y] within large bracket');
    A = input('Enter the points of coordinate A [x1, y1]: ');
    B = input('Enter the points of coordinate B [x2, y2]: ');
    dc = sqrt((A(1) - B(1))^2 + (A(2) - B(2))^2);
    fprintf('The distance between given Cartesian Coordinate is %f \n', dc);
end
if C == 2
    disp('Enter the coordinates in the from [r, th(in radian) within large bracket');
    A = input('Enter the points of coordinate A [r1, th1]: ');
    B = input('Enter the points of coordinate B [r2, th2]: ');
    dp = sqrt((A(1))^2 + (B(1))^2 - 2*A(1)*B(1)*cos(A(2) - B(2)));
    fprintf('The distance between given Polar Coordinate is %f\n', dp);
end

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
