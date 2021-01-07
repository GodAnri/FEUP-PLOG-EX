:- use_module(library(clpfd)).

firstnot0([Elem | _]) :-
    !,
    Elem #\= 0.
firstnot0([_ | _]).

sum_carry([Elem1], [Elem2], [Elem3], Carry) :-
    Sum #= Elem1 + Elem2,
    Elem3 #= Sum mod 10,
    Carry #= div(Sum, 10).
sum_carry([Elem1 | L1], [Elem2 | L2], [Elem3 | L3], Carry) :-
    sum_carry(L1, L2, L3, PrevCarry),
    Sum #= Elem1 + Elem2 + PrevCarry,
    Elem3 #= Sum mod 10,
    Carry #= div(Sum, 10).

sum_array(L1, L2, LR) :-
    sum_carry(L1, L2, LR, 0).

puzzle(Vars1, Vars2, Vars3) :-
    append(Vars1, Vars2, Vars12),
    append(Vars12, Vars3, Vars),
    domain(UniqueVars, 0, 9),
    firstnot0(Vars1),
    firstnot0(Vars2),
    firstnot0(Vars3),
    all_distinct(UniqueVars),
    sum_array(Vars1, Vars2, Vars3),
    labeling([], Vars).