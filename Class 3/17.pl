% palindroma(L) :- inverter(L, L).

ultimo_elemento([A], A, []) :- !.
ultimo_elemento([T | Rest1], Last, [T | Rest2]) :-
    ultimo_elemento(Rest1, Last, Rest2).

palindroma([_]).
palindroma([First, First]).
palindroma([First | Rest]) :-
    ultimo_elemento(Rest, First, NewL),
    palindroma(NewL).