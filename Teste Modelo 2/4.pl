:- use_module(library(clpfd)).

total(_, [], 0).
total(InfoReceita, [Num | Rest], Sum) :-
    total(InfoReceita, Rest, PrevSum),
    Index #= Num - 1,
    nth0(Index, InfoReceita, Amount),
    Sum #= PrevSum + Amount.

receitas(NOvos, TempoMax, OvosPorReceita, TempoPorReceita, OvosUsados, Receitas) :-
    length(OvosPorReceita, NReceitas),
    Receitas = [R1, R2, R3, R4],
    R1 #< R2,
    R2 #< R3,
    R3 #< R4,
    domain(Receitas, 1, NReceitas),
    OvosUsados in 4..NOvos,
    all_distinct(Receitas),
    total(OvosPorReceita, Receitas, OvosUsados),
    total(TempoPorReceita, Receitas, TempoUsado),
    TempoUsado #=< TempoMax,
    labeling([], Receitas).