% a)
substitui(X, _, L1, L2) :-
    \+append(_, [X | _], L1),
    L2 = L1.
substitui(X, Y, L1, L2) :-
    append(A, [X | B], L1),
    substitui(X, Y, B, Aux),
    append(A, [Y | Aux], L2).

% b)
elimina_duplicados([], []).
elimina_duplicados([X | L1], L2) :-
    append(_, [X | _], L1),
    elimina_duplicados(L1, L2).
elimina_duplicados([X | L1], [X | L2]) :-
    \+append(_, [X | _], L1),
    elimina_duplicados(L1, L2).