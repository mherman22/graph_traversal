% Facts defining the direct roads between towns.
roads(a, [b, c]).
roads(b, [d]).
roads(c, [e]).
roads(d, [f]).
roads(e, [g]).
roads(f, []).
roads(g, []).
roads(h, [i]).
roads(i, []).

% Rule to check if a town Y is reachable from town X.
reachable(X, Y) :-
    roads(X, Neighbors),
    member(Y, Neighbors).

reachable(X, Y) :-
    roads(X, Neighbors),
    member(Z, Neighbors),
    reachable(Z, Y).
