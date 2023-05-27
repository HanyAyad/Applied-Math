%% Determine the eigenvalues
A = [-1/2 -3; 15/4 -19/2];

% Calculate the eigenvalues
eigenvalues = eig(A);
sum(eig(A));
% Display the eigenvalues
disp('Eigenvalues:');
disp(eigenvalues);
disp('sum: ')
disp(sum(eig(A)))

%% how many eigenvalues it has
% Define the matrix A and eigenvalue lambda
A = [-1/2 -3; 15/4 -19/2]; % Modify the matrix as needed
lambda = -2; % Select one of the actual eigen values

% Calculate the eigenvectors and eigenvalues
[V, D] = eig(A);

% Find the indices of eigenvalues matching lambda
lambda_indices = find(abs(diag(D) - lambda) < eps);

% Check if the specified eigenvalue exists
if isempty(lambda_indices)
    disp('The specified eigenvalue does not exist.');
else
    % Check the dimension of the eigenspace
    eigenspace_dimension = sum(abs(V(:, lambda_indices(1))) > eps);

    % Determine if there are infinitely many eigenvectors
    if eigenspace_dimension == 1
        disp('There is only one linearly independent eigenvector.');
    else
        disp('There are infinitely many eigenvectors.');
    end
end