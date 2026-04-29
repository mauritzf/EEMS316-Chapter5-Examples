function idot = RL_series(t, i)
% Function Definition Line
global R L V
idot = (1/L)*(V - i*R);

%[appendix]{"version":"1.0"}
%---
