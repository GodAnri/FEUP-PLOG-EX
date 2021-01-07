sum_prev([1], [1]).
sum_prev([A, B | PrevL], Line) :-
    sum_prev([B | PrevL], L),
    Sum is A + B,
    append([Sum], L, Line).

pascal(1,[1]) :- !.
pascal(1,[1,1]) :- !.
pascal(N, L) :-
    PrevN is N - 1,
    pascal(PrevN, PrevL),
    sum_prev(PrevL, Line),
    L = [1 | Line].