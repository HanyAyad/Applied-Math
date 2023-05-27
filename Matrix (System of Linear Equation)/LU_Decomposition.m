function [L, U] = LU_Decomposition(A)
    [m, n] = size(A);
    
    if m ~= n
        error('Input matrix must be square');
    end
    
    L = eye(n);  % Initialize L as identity matrix
    U = A;  % Initialize U as the input matrix
    
    for k = 1:n-1
        if U(k, k) == 0
            error('Matrix is singular');
        end
        
        % Perform Gaussian elimination
        for i = k+1:n
            factor = U(i, k) / U(k, k);
            L(i, k) = factor;
            U(i, :) = U(i, :) - factor * U(k, :);
        end
    end
end
