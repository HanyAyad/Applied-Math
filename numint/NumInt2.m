%{
Q1 trapesoidal and midpoint rules
clear all; clc;
format long

f = @(x) x.*exp(1./x)
a = 1
b = 4
numint_simple(f,a,b)

function [Imp,Itrp,Ismp] = numint_simple(f,a,b)
disp('midpoint')
disp((b-a)*f((a+b)/2))
disp('trapesoidal')
disp((b-a)*(f(a)+f(b))/2)
disp('simpson')
disp(((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b)))

Imp=(b-a)*f((a+b)/2);
Itrp=(b-a)*(f(a)+f(b))/2;
Ismp=((b-a)/6)*(f(a)+a*f((a+b)/2)+f(b));
end
%}

%Q2 4 parts
clear all; clc;
format long

f = @(x) (x+1).*exp(1./x)
a = 2
b = 5
m = 4
numint_compound(f,a,b,m)

function [Imp,Itrp,Ismp] = numint_compound(f,a,b,m)
x_points = linspace(a,b,m+1);
h = (b-a)/m;
disp('midpoint')
disp(h*sum(f(x_points(1:end-1)+h/2)))
disp('trapesoidal')
disp(h*((f(a)+f(b))/2+sum(f(x_points(2:(end-1))))))
disp('simpson')
disp((h/6)*(f(a)+f(b)+4*sum(f(x_points(1:end-1)+h/2))+2*sum(f(x_points(2:end-1)))))

Imp=h*sum(f(x_points(1:end-1)+h/2));
Itrp=h*((f(a)+f(b))/2+sum(f(x_points(2:(end-1)))));
Ismp=(h/6)*(f(a)+f(b)+4*sum(f(x_points(1:end-1)+h/2))+2*sum(f(x_points(2:end-1))));
end
