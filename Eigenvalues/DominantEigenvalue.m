function dominantEigenvalue = DominantEigenvalue(A)
    options = struct('disp', 0);  % Suppress display of intermediate results
    [~, D] = eigs(A, 1, 'largestabs', options);
    dominantEigenvalue = D(1, 1);
end
