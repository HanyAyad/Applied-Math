A = [3 1 -2 -2; 1 3 2 -3; 3 -1 2 1; 0 -1 0 -1]%change according to A
v = [1;-1;1;0] %change according to v
k = 6 %change according to v num
for i= 1:k
    v = A*v/norm(A*v,2)
end


%In order to approximate a root of the function
%f(x) = −9/4*x^2 + 45/8*x− 189/64
%we apply Newton method with the starting pont x0=19/4 and perform 3 iterations. Then x3 = 
k=3;
x0=19/4;
f = @(x) (-9/4).*x.^2 + (45/8).*x - (189/64);
df = @(x) (45/8)-(9.*x/2); %the derivative of f(x)
for i=1:k
x = x - f(x)/df(x)
end

%Approximate the root of the function f(x)=x^2−5 with Newton-method,
%starting from x0=1 then x3=?
k=3;
x=1;
f = @(x) x.^2 - 5;
df = @(x) 2.*x;
for i=1:k
x = x - f(x)/df(x)
end


%n order to approximate a root of the function
%2x^2−19/4x+3/2
%we apply Newton method with the starting pont x0=2 and perform 6 iterations. Then x6 = 
k=6;
x=2;
f = @(x)2.*x.^2 - (19/4).*x + (3/2);
df = @(x) 4.*x - (19/4);
for i=1:k
x = x - f(x)/df(x)
end


%Approximate the root of the function
%1/28 * x.^2 + 15/28 .* x+ 9/4
%using the Newton method with initial point x0=−9. Choose the correct value of x2 from below. 
%and get the x17
k=17;
x=-9;
f = @(x) (1/28).*x.^2 + (15/28).*x + (9/4);
df = @(x) (2/28).*x + (15/28);
for i=1:k
i
x = x - f(x)/df(x)
end


