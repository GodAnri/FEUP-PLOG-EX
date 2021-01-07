% achata_lista(Lista, ElemsLista) -> Lista é uma lista eventualmente de lista, cujos elementos se encontram em ElemsLista, todos ao mesmo nível.
achata_lista([], []).
achata_lista(X, [X]) :- atomic(X).
achata_lista([X | RestL], Elems) :-
    achata_lista(X, Elems1),
    achata_lista(RestL, Elems2),
    append(Elems1, Elems2, Elems).