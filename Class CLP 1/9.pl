:- use_module(library(clpfd)).

product1000000000(A, B) :-
    domain([A, B], 1, 1000000000),
    A #< B,
    A * B #= 1000000000,
    A mod 10 #\= 0,
    B mod 10 #\= 0,
    labeling([], [A, B]).