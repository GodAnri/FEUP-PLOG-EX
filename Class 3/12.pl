insere(Elem, [], [Elem]).
insere(Elem, [Y | Rest], [Elem, Y | Rest]) :-
    Elem =< Y.
insere(Elem, [X | List], [X | ListElem]) :-
    Elem > X,
    insere(Elem,  List,  ListElem).

ordena([],[]).
ordena([X | Rest], ListaOrdenada) :-
    ordena(Rest, Parcial),
    insere(X, Parcial, ListaOrdenada).

permutacao(L1, L2) :-
    ordena(L1, Ordenada),
    ordena(L2, Ordenada).