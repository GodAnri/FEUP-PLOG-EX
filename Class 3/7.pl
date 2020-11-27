before(X, Y, L) :-
    append(_, [X | T], L),
    append(_, [Y | _], T).