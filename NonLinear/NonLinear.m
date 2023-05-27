%{
Q1 
clear all;clc;
format long

p = [-9/4 45/8 -189/64];%returns the derivative of the polynomial represented by the coef in p 
k = polyder(p);
x=19/4;n=3; %n=num of iterations
for i=1:n
    x=x-polyval(p,x)/polyval(k,x);
end
x %1.861250529885545
%}

%{
Q2 
clear; clc;
format rat

p=[1 0 -5];
k = polyder(p);
x=1; n=3;
for i=1:n
    x=x-polyval(p,x)/polyval(k,x);
end
x 
%}

%Q3
clear; clc;
format long

p=[2 -19/4 3/2];
k = polyder(p);
x=2;n=6;
for i=1:n
    x=x-polyval(p,x)/polyval(k,x);
end 
x %x=2
%}

%Q4
clear;clc;
format long
p=[1/28 15/28 9/4];
k=polyder(p);
x=-9;n=17;
for i = 1:n
    x = x-polyval(p,x)/polyval(k,x);
end
x %x=-9.000000000000002

x1=-9;n1=17;
for i = 1:n1
    x1=x1-polyval(p,x1)/polyval(k,x1);
end
x1 %x1 = -6.000000000072760






