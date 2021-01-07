rodar(L, 0, L) :- !.
rodar([Elem | Rest], N, L) :-
    N > 0,
    NewN is N - 1,
    append(Rest, [Elem], NewL),
    rodar(NewL, NewN, L).
rodar(L, N, [Elem | Rest]) :-
    N < 0,
    NewN is N + 1,
    append(Rest, [Elem], NewL),
    rodar(L, NewN, NewL).