% Facts
father(terach, abraham).
father(terach, nachor).
father(terach, haran).
father(abraham, isaac).
father(haran, lot).
father(haran, milcah).
father(haran, yiscah).

mother(sarah, isaac).

male(terach).
male(abraham).
male(nachor).
male(haran).
male(isaac).
male(lot).

female(sarah).
female(milcah).
female(yiscah).

% Rules
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

brother(X, Y) :- 
    male(X), 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.

sister(X, Y) :- 
    female(X), 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.

uncle(X, Y) :- 
    brother(X, Z), 
    parent(Z, Y).

niece(X, Y) :- 
    female(X), 
    parent(Z, X), 
    sibling(Z, Y).

sibling(X, Y) :- 
    father(F, X), 
    father(F, Y), 
    mother(M, X), 
    mother(M, Y), 
    X \= Y.
