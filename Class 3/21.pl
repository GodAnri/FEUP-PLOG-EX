slice(List, Ind1, Ind2, Result) :-
    slice(List, Ind1, Ind2, Result, 1).

slice([], _, _, [], _).
slice([Elem | _], _, Ind2, [Elem], Ind2) :- !.
slice([_ | Rest], Ind1, Ind2, Result, Ind) :-
    Ind < Ind1,
    NewInd is Ind + 1,
    slice(Rest, Ind1, Ind2, Result, NewInd).
slice([Elem | Rest], Ind1, Ind2, [Elem | Result], Ind) :-
    Ind >= Ind1,
    Ind =< Ind2,
    NewInd is Ind + 1,
    slice(Rest, Ind1, Ind2, Result, NewInd).