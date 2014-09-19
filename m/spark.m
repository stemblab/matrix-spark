function s = spark(A)

  M = size(A,1); % A has M rows
  s = M+1; % initialize spark with upper-bound M+1

  % check whether spark is less than upper bound
  for k = 1:M % cycle over combos of cols, taken k at a time
    C = col_combo(A,k); % cell array of all combos of k cols
    if min(cellfun('rank',C))<k % if *any* member of C has dependent cols
      s = k; % spark 
      break; % if loop doesn't break, spark is upper-bound, M+1
    end
  end
