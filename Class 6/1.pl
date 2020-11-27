f(X,Y):-Y is X*X.
duplica(X,Y) :- Y is 2*X.

map([], _, []).
map([H | T], F, [HR | TR]) :-
    Function =.. [F | [H, HR]],
    Function,
    map(T, F, TR).