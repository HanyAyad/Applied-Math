% Define the function
f = @(x,y) (( ((289/64).*(x^2))-((17/8).*y)-11 )^2)  + ((((-17/8).*x)+((289/64).*(y^2))-7)^2);

% Define the lower and upper bounds for the variables
lb = [-40/17, -40/17];
ub = [40/17, 40/17];

% Define the constraint function (empty in this case)
nonlcon = [];

% Define the initial guess for optimization
x0 = [0, 0];

% Set the options for optimization
options = optimoptions('fmincon', 'Display', 'off');

% Perform the constrained optimization
x_min = fmincon(f, x0, [], [], [], [], lb, ub, nonlcon, options)

x_min