:- use_module(library(random)).

% a)

retrieve([Elem | _], 1, Elem) :- !.
retrieve([_ | Rest], N, Result) :-
    NewN is N - 1,
    retrieve(Rest, NewN, Result).

rnd_selectN(_, 0, []) :- !.
rnd_selectN(List, N, [Elem | Result]) :-
    length(List, Indexes),
    random(1, Indexes, Index),
    retrieve(List, Index, Elem),
    NewN is N - 1,
    rnd_selectN(List, NewN, Result).

% b)

rnd_select(0, _, []) :- !.
rnd_select(N, M, [Elem | List]) :-
    random(1, M, Elem),
    NewN is N - 1,
    rnd_select(NewN, M, List).