% a)
duplicate([], []).
duplicate([H | T], [H, H | L]) :-
    duplicate(T, L).

% b)
multiply([], _, []).
multiply([H | T], N, [H | L]) :-
    N_ is N - 1,
    repeat(H, N_, L, Res),
    multiply(T, N, Res).

repeat(_, 0, L, Res) :-
    !,
    Res = L.
repeat(H, N, [H | T], Res) :-
    N_ is N - 1,
    repeat(H, N_, T, Res).

    