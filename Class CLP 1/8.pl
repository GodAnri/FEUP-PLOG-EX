:- use_module(library(clpfd)).

mercearia(Vals) :-
    Vals = [Arroz, Batata, Esparguete, Atum],
    domain(Vals, 1, 700),
    Batata #> Atum,
    Atum #> Arroz,
    Arroz #> Esparguete,
    Arroz + Batata + Esparguete + Atum #= 711,
    Arroz * Batata * Esparguete * Atum #= 711000000,
    labeling([],Vals).