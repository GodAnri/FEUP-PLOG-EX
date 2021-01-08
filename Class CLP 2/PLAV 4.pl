:- use_module(library(clpfd)).
:- use_module(library(lists)).

crescent([_]).
crescent([First, Next | Rest]) :-
    First #< Next,
    crescent([Next | Rest]).

diff(X, [], [X | _]) :-
    !.
diff(X, [Diff | Diffs], [Elem | Seq]) :-
    X - Elem #= Diff,
    diff(X,  Diffs,  Seq).

differences([], [], _).
differences([First | Rest], [Diff | Diffs], Sequence) :-
    diff(First, Diff, Sequence),
    differences(Rest, Diffs, Sequence).

golomb(N) :-
    length(Sequence, N),
    crescent(Sequence),
    domain(Sequence, 0, 10000),
    nth0(0, Sequence, 0),
    Last is N - 1,
    nth0(Last, Sequence, AN),
    differences(Sequence, Diffs, Sequence),
    append(Diffs, Differences),
    all_distinct(Differences),
    labeling([minimize(AN)], Sequence),
    write(Sequence).