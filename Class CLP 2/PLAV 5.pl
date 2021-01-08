:- use_module(library(clpfd)).

display_line([Cell]) :-
    write(Cell),
    !.
display_line([Cell | Rest]) :-
    write(Cell),
    write(','),
    display_line(Rest).

display_matrix([]).
display_matrix([Line | Rest]) :-
    write('['),
    display_line(Line),
    write(']'),
    nl,
    display_matrix(Rest).

create_matrix([], _, 0) :- !.
create_matrix([Line | Rest], X, Y) :-
    length(Line, X),
    domain(Line, 0, 1),
    NewY is Y - 1,
    create_matrix(Rest, X, NewY).

sum_list([], 0).
sum_list([Elem | Rest], Sum) :-
    sum_list(Rest, PrevSum),
    Sum #= PrevSum + Elem.

line_sum([], []).
line_sum([LineSum | RestSum], [Line | Rest]) :-
    sum_list(Line, Sum),
    Sum #= LineSum,
    line_sum(RestSum, Rest).

sum_col([], _, 0).
sum_col([Line | Rest], N, Sum) :-
    sum_col(Rest, N, PrevSum),
    nth0(N, Line, Element),
    Sum #= Element + PrevSum.

col_sum([], _, _).
col_sum([ColSum | Rest], Matrix, N) :-
    sum_col(Matrix, N, Sum),
    Sum #= ColSum,
    NextN is N + 1,
    col_sum(Rest, Matrix, NextN).

matrix(ColumnSum, LineSum) :-
    length(ColumnSum, X),
    length(LineSum, Y),
    create_matrix(Matrix, X, Y),
    line_sum(LineSum, Matrix),
    col_sum(ColumnSum, Matrix, 0),
    append(Matrix, AllCells),
    labeling([], AllCells),
    display_matrix(Matrix).