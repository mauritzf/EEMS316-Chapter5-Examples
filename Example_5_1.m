% Program to generate 3-phase line to neutral and line to line voltage
% File name Example_5_1.m
% Parameter declaration
Vph=230; f=50;
Vm = sqrt(2) * Vph;
w=2*pi*f;
% Open data file out.dat to save data
fid = fopen('out.dat', 'w');
% Define time range
for t=0:1e-4:0.04
    % Define Line to Neutral Voltages
    van = Vm*sin(w*t);
    vbn = Vm*sin((w*t)-(2*pi/3));
    vcn = Vm*sin((w*t)+(2*pi/3));
    % Define Line to Line Voltages
    vab = van-vbn;
    vbc = vbn-vcn;
    vca = vcn-van;
    % Saving data to table
    y = [t; van; vbn; vcn; vab; vbc; vca];
    % writing data from table to file identifier
    fprintf(fid, '%f \t %f \t %f \t %f \t %f \t %f \t %f \n', y);
end;
% Close the file
fclose(fid);
% Load the data from file to plot
load out.dat;
t = out(:,1);
van = out(:,2); vbn=out(:,3); vcn = out(:,4);
vab = out(:,5); vbc=out(:,6); vca = out(:,7);
figure(1); %[output:2b8b228f]
subplot(2, 1, 1); %[output:2b8b228f]
plot(t, van, t, vbn, t, vcn); grid; %[output:2b8b228f]
ylabel('V (volts)'); %[output:2b8b228f]
legend('van','vbn','vcn'); %[output:2b8b228f]
subplot(2, 1, 2); plot(t, vab, t, vbc, t, vca); grid; %[output:2b8b228f]
ylabel('V (volts)'); xlabel('Time (sec)'); %[output:2b8b228f]
legend('vab', 'vbc', 'vca'); %[output:2b8b228f]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":6}
%---
%[output:2b8b228f]
%   data: {"dataType":"image","outputData":{"dataUri":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAeCAYAAADU8sWcAAAAAXNSR0IArs4c6QAABc5JREFUSEvFlw1Qk2UAx\/\/DGZsCDkKPjwmigijXzfMKECHcHbA8EUhmJHhCqBGSmKGD0SUpwgETBD9D1DASKM1TsRKTlEw+TD7GdSXhB0M+Bae2OYZM1j3PGjqjAK9d79177z3P+9\/zfz7\/v3cMrVarxf90MZ43b29vR5tcjSs3H9Au+dhqYGOqwZSWClpudhDAzgqYqq1Bj5qL7n4uhiZZj0nPfNkTE609h4dqYD6kakdp\/haITjOhdg2iIhPVPay\/KUaAtRI2L2kgVbDQPNMGge66NrrkwDtnvMekJ9rXV0hgOl1If8soLS3VhoWF0UKr9AQsZFsQ0SjC0nmutO70xUbk3\/0QPSG7aNm+WkzN2XM+gEr1CK+aFoxJL9O+gfR95SguLoanp270jKioKG12djasrKxQU1ODh40bwOVyMcuvhAqkIj598rIu0qfqHB\/MqTPwZN5+9PT0YOD6ZjCZE0fV1w\/GIDo62tA8Pj5eu3LlStqbqqYbOHKuFFmuh8Hxu4yhRxq0rXdCzLQcHE6NBZfVhwcXfKA83w1LUQOa7k\/AZ+VfjknfJijE6o1iQ\/OIiAitm5sb+Hw+Sn7uprfEIRMOzp540sWB4lIh0lwPYLolC5vm1WHgzgmoG1mAJRenbCJR9psSJV7HYMLmGuhfmzsDWd7XMHDna6jOdEOqZGHjTwOG5k5OTkY5ah4eHvhIUAPrWQKoqvrQ2XgFQbbFSBTMQKLASbfm1dXV\/7l5bW0t8vLykP++Ft7hRdD0qNG7wx\/bWWuwNmUnvGdzdObGCBmyccPDw7E9cSmEkZLhjUsyxF50\/OluN6a50luErUFzqHnZNxU4oEzD0NoizBasMv7IVQuiobHWmTP7mpFhW4tVW\/fQozo87ZmZmfD19aXT0dLSgqNHj4IET2xsLDo7O6mQhIOLiwu2bduGuro6Wr9s2TJkZGSAzWZTjf7ST7tEIsFjh0Vok\/fDd0oPzQ9y6y+acI6OjqisrERiYiL0HSENEjPyJI2R9+vWrUNCQgKSk5NpI2lpaYiMjISzs\/OI5s+mmYHgrwJNONJIUVERhEIhdu\/ejZSUFGqalJSEsrIyKo2JiaHmBQUFiI+Pp+\/37t0LgUDw4ub6hJPJZGhtbYVCoYC5zxrcbboEr5kWsLe3x+SqQ2iVycAKFKG+6iyWh4bCRNGAg6c64e7ujhtmC7BoliWYfddpR+e0lSMvLxeWb32CN5d40LrBe7UwnR5qOO3E3MvLC\/7+\/oiLi4PaNRiXuyZQTE6qP4K1g2eHifZ5JwcsHocSjWC17Cogrg+m6zoWfS\/DEzvPmKGiogI8Hg+M4OBgmu1kg5FsDyy8gwPBUynTz1+4TIlGjsdgrwyTa3bALMAGfzhK8ETVAcveXEq0KF+fMetLfuEjLvkI3VsMd3d3bWpqKgICAvBF5TWUfHcOH4f40Z1fG78QtppuOOy\/TadOfmohTMyYFDpqtRrKS3zUKd0gEB6i7\/9NryfmJGs+fIRZdBMbmBNoPGrYAqVrCewsbSjRDlpEYr3k02GiqaUPMO29BrRprZFemPs3ov2T\/mqXhs5qhBsTe9b46MwDAwPpmhOqdXR0wEK2mX4okDwmRNs\/4Au\/oBB4cJrR35wLTRcH7Llvo86Uh8zyVhybnzmiPmRmM10WQkD20l04+9gNG4\/fQMZiU7wb5KUzNybVkparYX5rAsVvjCIMUqkUm+beh1gs1pkbk2qF+el4haGE4mQaljDT8bDpW4TyrCjx6IYzJlj0CXdrBYPi9McrP4AscVVVFY1mo5vbucxH774o9P9aidW1bMMvmfGMXC6XG8TrSHlN6vRg2SBOhZ0LD4e++p7mRcLvtkjMP\/liPB+vuR6pBKcp8kzwzNVw2Hd7OGLptI8HqTk5OfRIEsqNhtTgmGSEhgqHM99NfR3mi6OeIpWY65E5HqQSjD7b6ZF4PipSiXl\/fz9F6XiRSjpNaKj\/x\/P8x8Ro5n8C91+PqnDRP5QAAAAASUVORK5CYII=","height":30,"width":31}}
%---
