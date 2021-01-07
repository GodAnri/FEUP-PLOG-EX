% ordenada(Lista) -> Lista é uma lista ordenada de inteiros.
ordenada([_]).
ordenada([X, Y | Rest]) :-
    X =< Y,
    ordenada([Y | Rest]).

% insere(Elemento, Lista, NovaLista) -> Insere Elemento em Lista para criar NovaLista, mantendo-a ordenada.
insere(X, [], [X]).
insere(X, [Y | T], [X, Y | T]) :-
    X =< Y.
insere(X, [Y | T1], [Y | T2]) :-
    X > Y,
    insere(X, T1, T2).

% ordena(Lista, ListaOrdenada) -> ListaOrdenada é uma cópia ordenada de Lista.
ordena([], []).
ordena([X | Rest], ListaOrdenada) :-
    ordena(Rest, Parcial),
    insere(X, Parcial, ListaOrdenada).