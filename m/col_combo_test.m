% Check the col_combo function.

A=[1 -1 1;1 2 4];
y=col_combo(A,2);

assert(y{1,1},[1 -1;1 2])
assert(y{1,2},[1  1;1 4])
assert(y{1,3},[-1 1;2 4])

%!end (5)

