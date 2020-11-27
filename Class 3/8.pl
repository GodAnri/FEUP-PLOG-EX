% a)
conta([],0).
conta(L, N) :-
    N_ is N - 1,
    [_ | T] = L,
    conta(T, N_).

% b)
conta_elem(_, [], 0).
conta_elem(X, L, N) :-
    N_ is N - 1,
    [X | T] = L,
    conta_elem(X, T, N_).
conta_elem(X, L, N) :-
    [_ | T] = L,
    conta_elem(X, T, N).