% a)
membro(X, L) :-
    [X | _] = L.
membro(X, L) :-
    [_ | T] = L,
    membro(X, T).

% b)
membro(X,L) :- append(_, [X | _], L).

% c)
last(X,L) :- append(_, [X], L).

% d)
membron(1, [X | _], X).
membron(N, [_ | T], X) :-
    Next is N - 1,
    membron(Next, T, X).
