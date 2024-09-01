% Main predicate to compute the integer square root of N
integer_sqrt(N, I) :-
    between(0, N, I),
    I * I =< N,
    I1 is I + 1,
    I1 * I1 > N,
    !.  % Cut to stop further backtracking
