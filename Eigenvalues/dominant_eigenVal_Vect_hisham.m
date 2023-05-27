% Define the matrix A
A = [11 2 6; 2 14 -3; 6 -3 6];

% Compute the eigenvalues and eigenvectors
[V, D] = eig(A);
eigenvalues = diag(D);

% Find the dominant eigenvalue and its corresponding eigenvector
[~, index] = max(abs(eigenvalues));
dominant_eigenvalue = eigenvalues(index);
dominant_eigenvector = V(:, index);

% Normalize the dominant eigenvector
dominant_eigenvector = dominant_eigenvector / norm(dominant_eigenvector);

% Display the dominant eigenvalue and eigenvector
dominant_eigenvalue
dominant_eigenvector
