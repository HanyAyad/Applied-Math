function choleskyDecomposition(A)
    % Compute the Cholesky decomposition
    L = chol(A);
    
    % Calculate the transpose of L
    L_transpose = L';

     % Print out L_transpose
    disp('L_transpose:');
    disp(L_transpose);
    
    % Print out L
    disp('L:');
    disp(L);
    
   
end
