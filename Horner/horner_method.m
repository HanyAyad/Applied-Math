function result = horner_method(coeff, x0)
    % Initialize the array
    n = length(coeff);
    Y = zeros(1, n);
    Y(1) = coeff(1);

    % Perform Horner's method
    for i = 2:n
        Y(i) = Y(i-1)*x0 + coeff(i);
    end

    % Display the computed values
    disp('P:')
    disp(coeff)
    disp('Computed values: ')
    disp(Y)
    
    % The result is the last element in the Y array
    result = Y(end);
end
