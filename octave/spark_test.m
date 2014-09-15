% Check the spark function.
% See http://arxiv.org/abs/0902.4587 for examples.

assert(spark([1 0 1 1;0 1 1 -1]),3)
assert(spark([1 0 1 -1;0 1 1 0]),2)
assert(spark([1 0 1 0;0 1 1 0]),1)

%!end (6)

