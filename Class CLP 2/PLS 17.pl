:- use_module(library(clpfd)).

distinct3([X, Y]) :-
    X #\= Y.
distinct3([A, B, C | Cars]) :-
    A #\= B,
    B #\= C,
    distinct3([B, C | Cars]).

only_sequence([A, B, C, D | _]) :-
    [A, B, C, D] = [1, 2, 3, 4],
    !.
only_sequence([_, B, C, D | Cars]) :-
    only_sequence([B, C, D | Cars]).

traffic :-
    Cars = [A, B, C, D, E, F, G, H, I, J, K, L],
    global_cardinality(Cars, [1-4,2-2,3-3,4-3]),
    A #= L,
    B #= K,
    E #= 4,
    distinct3(Cars),
    only_sequence(Cars),
    labeling([], Cars),
    write(Cars).