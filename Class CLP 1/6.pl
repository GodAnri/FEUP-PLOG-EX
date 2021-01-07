:- use_module(library(clpfd)).

sumproduct(A, B, C) :-
    domain([A, B, C], 1, 100),
    B #>= A,
    C #>= B,
    A * B * C #= A + B + C,
    labeling([],[A, B, C]).