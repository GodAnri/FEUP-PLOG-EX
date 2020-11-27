% a)
delete_one(X, L, L_) :-
    append(L1, [X | L2], L),
    append(L1, L2, L_).

% b)
delete_all(X, L, L_) :-
    \+append(_, [X | _], L),
    L_ = L.
delete_all(X, L, L_) :-
    append(L1, [X | T], L),
    delete_all(X, T, L2),
    append(L1, L2, L_).

% c)
delete_all_list([], L1, L2) :-
    L2 = L1.
delete_all_list(LX, L1, L2) :-
    [X | T] = LX,
    delete_all(X, L1, Aux),
    delete_all_list(T, Aux, L2).
