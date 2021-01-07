countList([A, A | Rest], [A, N], NextRest) :-
    countList([A | Rest], [A, NextN], NextRest),
    N is NextN + 1.
countList([A, B | Rest], [A, 1], [B | Rest]) :-
    A \= B.
countList([A], [A, 1], []).

runlength([],[]).
runlength(List, CountList) :-
    countList(List, Count, Rest),
    runlength(Rest, CountListPartial),
    append([Count], CountListPartial, CountList).

run_length_modificado([],[]).
run_length_modificado(List, CountList) :-
    countList(List, [Elem, 1], Rest),
    run_length_modificado(Rest, CountListPartial),
    append([Elem], CountListPartial, CountList).
run_length_modificado(List, CountList) :-
    countList(List, [Elem, Count], Rest),
    Count > 1,
    run_length_modificado(Rest, CountListPartial),
    append([[Elem, Count]], CountListPartial, CountList).

remove([Elem, 1], [Elem | Rest], Rest) :-
    !.
remove([Elem, N], [Elem | Rest], List) :-
    NextN is N - 1,
    remove([Elem, NextN], Rest, List).

decompress([],[]).
decompress([[Elem, N] | CountList], List) :-
    remove([Elem, N], List, Rest),
    decompress(CountList, Rest).

decompress_modificado([],[]).
decompress_modificado([[Elem, N] | CountList], List) :-
    !,
    remove([Elem, N], List, Rest),
    decompress_modificado(CountList, Rest).
decompress_modificado([Elem | CountList], [Elem | List]) :-
    decompress_modificado(CountList, List).