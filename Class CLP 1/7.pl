:- use_module(library(clpfd)).

perus(Val) :-
    domain([Val], 1670, 9679),
    0 #= Val mod 72,
    Val100 #= Val mod 1000,
    div(Val100,10) #= 67,
    labeling([], [Val]).