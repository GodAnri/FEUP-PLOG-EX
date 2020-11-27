inverter(L1, L2) :-
    aux(L1, [], L2).
aux([], L, L).
aux([H | L1], Rev, L2) :-
    aux(L1, [H | Rev], L2).