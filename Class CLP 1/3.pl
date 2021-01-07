:- use_module(library(clpfd)).

safe_queens([]) :- !.
safe_queens([Q | Qs]) :-
    safe_queens(Q, Qs, 1),
    safe_queens(Qs).

safe_queens(_, [], _) :- !.
safe_queens(Q, [Q1 | Qs], D) :-
    Q #\= Q1,
    D #\= abs(Q - Q1),
    NextD is D + 1,
    safe_queens(Q, Qs, NextD).

nQueens(N, Vars) :-
    length(Vars, N),
    domain(Vars, 1, N),
    all_distinct(Vars),
    safe_queens(Vars),
    labeling([], Vars).