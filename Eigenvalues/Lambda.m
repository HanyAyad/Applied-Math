%for the matrix
A = [2 2 1 -2; 0 -3 -2 2; 1 3 -2 -1; -1 3 2 3];
v = [0 -1 1 -3]';
%find lambda for which ||Av - lambdav||2
lambda = dot(A*v,v)/dot(v,v)


%Find an eigenvector v for the dominant eigenvalue of
%try each option v to find lambda, and get the greatest value
A = [14 0 -11 1; 0 7 7 -2; -11 7 21 -6; 1 -2 -6 3];
v = [0.63727 -0.30439 -1.0 0.25285]'; 
lambda = dot(A*v,v)/dot(v,v) %store each value for each option v and see the greatest result

%if there are no dominant eigenvalues or in other words, there are several
%equal eigen values, then you can not get eigenvector v for the dominant
%eigenvalue


%For the given A and v0, compute v4 with power iteration.
A = [-1 2 0 3; -1 1 -1 3; 2 3 3 0; -2 1 -1 0];
v0 = [3 3 2 -1]';
%compute v4 with power iteration
k = 4;

%vk+1 = (Avk)/||Avk||2, k>=0
vy=v0;
v0 = v0/norm(v0);
lambda = dot(A*v0, v0);
for i=1:4
    vy = A*v0;
    v0 = A*v0;
    v0 = v0/norm(v0,2) %the solution
    lambda_new = dot(A*v0,v0);
end





