t = [0 1 4 -3 0 -2 2];
f = [6 1 5 -5 -8 -10 -4];
A = [ones(length(t),1) (1./t)']; %just change 1./t to question
x = (A'*A)\(A'*f');
polyval(x,-5) %change -5 too

t = [-1 -3 3 -4 8 5 9];
f = [-9 1 -10 -10 -8 2 -1];
polyfit(t,f,1)
%getting two results, see the a and b in ax+b if they are the same

%Using the least squares method, we approximated the data given below by a line. Which of the plots above represents correctly the data and the best line?
t = [-1 -19 -15 4 16 -11 -8 -18];
f = [2 9 -10 -17 -6 13 -5 11];
xx = min(t): max(t);
yy = polyval(p,xx);
plot(t,f,'*', xx, yy)

%Consider the best fitting line for the data below. Then its value at 52 is 
t = [-1 -3 -2 -2 4 -7];
f = [-8 0 5 -8 9 -6];
polyval(polyfit(t,f,1), 5/2)

%In the sense of the least squares method, what the best fitting second order polynomial for the data below
t = [-10 -6 10 -10 -10 6];
f = [4 -4 5 7 -5 4];
polyfit(t,f,2)

%Consider the best fitting line for the data below. Then its value at 52 is 
t = [-10 -1 -10 9 9 9];
f = [-5 -5 10 -1 6 -10];
polyval(polyfit(t,f,2), 9/2)

%In the sense of the least squares method, what the best fitting function
%of the form a/t + b
t = [8 2 4 8 -8 -8];
f = [-9 -5 -1 -7 -6 9];
%A=[ones(length(1), 1) f(x)']
A = [(1./t)' ones(length(t),1)];
x = (A'*A) \ (A' *f')

%Consider the best fitting function of the form
%at+b
%for the data below.
%Then its value at 13/2 is
t=[2 10 -10 -5 2];
f = [-3 -10 8 10 10];
A = [ (1./t') ones(length(t),1)]; %just change 1./t to question
x = (A'*A)\(A'*f');
val = 13/2;
ans = (x(1)/val)+x(2);



%n the sense of the least squares method, what the best fitting function of the form
%f(t)=a*cos(πt)+b
t = [-5 11/2 -11/2 4 17/2 -7/2];
f = [3 2 -4 4 5/2 9/2];
A = [(cos(pi.*t))' ones(length(t),1) ];
x = (A'*A)\(A'*f') %best fitting function

%Evaluate at 7/2 the best approximating (in the sense of least squares) f
%function of type
%f(t)=asin(πt)+b

t = [19 5 19 15 35/2 31/2 37/2];
f = [3/2 1 3 -4 -5 -5 2];
A = [(sin(pi.*t))' ones(length(t), 1)];
x = (A'*A)\(A'*f'); %best fitting function
val = 7/2;
ans = x(1) * sin(pi*(val)) + x(2)



