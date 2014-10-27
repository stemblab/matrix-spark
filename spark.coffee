combnk = $blab.combnk # <a href="http://puzlet.org/utility/combnk/">Imported function.</a>

$blab.spark = (A) ->
    At = A.T # easier to consider rows of $A^T$ than cols of $A$
    [M, N] = At.size()
    return 0 if N>M # can't handle tall $A$ (fixme)
    for k in [1..N]
        row_combos = combnk(M, k) # all combinations of k integers from 1..M
        for rows in row_combos
            # make matrix from k rows
            R = (At[row] for row in rows)
            # get rank from number of non-zero singular values
            rank = (sv for sv in (nm.svd R.T).S when sv>0).length
            return k if rank < k
    N+1 # max spark, if loop doesn't return
