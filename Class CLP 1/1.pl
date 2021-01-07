:- use_module(library(clpfd)).

magic(Vars) :-
    Vars = [A, B, C, D, E, F, G, H, I],
    Sum is (9 + 1) * 3 // 2,
    domain(Vars, 1, 9),
    all_distinct(Vars),
    A + B + C #= Sum,
    D + E + F #= Sum,
    G + H + I #= Sum,
    A + E + I #= Sum,
    C + E + G #= Sum,
    A + D + G #= Sum,
    B + E + H #= Sum,
    C + F + I #= Sum,
    A #< B,
    A #< C,
    A #< D,
    B #< D,
    labeling([], Vars).