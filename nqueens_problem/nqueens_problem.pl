% Main predicate to solve the N Queens problem
queens(N, Qs) :-
    length(Qs, N),
    permutation(Qs, L),
    safe(Qs).

% Predicate to generate the list [1,2,...,N]
range(N, L) :-
    findall(X, between(1, N, X), L).

% Check if the placement of queens is safe
safe([]).
safe([Q|Qs]) :-
    safe(Qs),
    no_attack(Q, Qs, 1).

% Check if the queen in row Q does not attack others
no_attack(_, [], _).
no_attack(Q, [Q1|Qs], D) :-
    Q =\= Q1 + D,
    Q =\= Q1 - D,
    D1 is D + 1,
    no_attack(Q, Qs, D1).

% Generate all permutations of the list [1,2,...,N]
permutation([], []).
permutation(L, [X|Xs]) :-
    select(X, L, R),
    permutation(R, Xs).
