dropN(L1, N, L2) :-
    drop(L1, N, L2, N).

drop([], _, [], _) :-
    !.
drop([_ | L1], N, L2, 1) :-
    !,
    drop(L1, N, L2, N).
drop([Elem | L1], N, [Elem | L2], X) :-
    NewX is X - 1,
    drop(L1, N, L2, NewX).