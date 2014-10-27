function y = col_combo (A,k)

% column combinations
% y is a cell array of matrices, formed by taking all possible combinations
% of the columns of A, k at a time.
 
[M,N] = size(A);
combs = combnk(1:N,k); % all column combinations, taken k at a time
AA = A(:,combs.'); % arrange col combinations horizontally
y = mat2cell(AA,M,k*ones(1,size(combs,1))); % partition into cell array

