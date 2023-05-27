%{
Q1 Interpolate the points (9,−4) és (5,1) by a minimal degree polynomial. What is the value of the resulting polynomial at −8
?
clear all; clc;
t = [9 5]; f = [-4 1]; %(9,-4) and (5,1)
x = polyfit(t,f,1)
format rat
polyval(x,-8)
%}

%{
Q2 interpolate the points by minimal degree (2st degree polynomial)
clear all; clc;
t = [-9 -2 3];
f = [56/3 0 20/3];
x = polyfit(t,f,2) 
%}

%{ 
Q3 Interpolate the points (−9,−2373), (−6,−735), (−2,−35) and (−3,−105) by a minimal degree polynomial. What is the main coefficient of the resulting polynomial?
clear all; clc;
t = [-4 10 -7 -2];
f = [-103/3 3607/3 -745/3 -5/3];
x = polyfit(t,f,3)
%}

%Q4 Interpolate the points (−1,−3), (4,2) and (−7,−75) by a minimal degree polynomial. What is the value of the resulting function at −8?
clear all; clc;
t = [-5 1 7];
f = [-91 -7 -211];
x = polyfit(t,f,2)
polyval(x,3) % number = 3, ans = -43

%Q4 N-1 so if there are 3 columns, answer is 3-1=2