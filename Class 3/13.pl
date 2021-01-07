lista_ate(1, [1]) :-
    !.
lista_ate(N, L) :-
    NextN is N - 1,
    lista_ate(NextN, L1),
    append(L1, [N], L).

lista_entre(N, N, [N]) :-
    !.
lista_entre(N1, N2, [N1 | L]) :-
    N2 > N1,
    NextN1 is N1 + 1,
    lista_entre(NextN1, N2, L).

soma_lista([Elem], Elem).
soma_lista([Elem | Rest], Soma) :-
    soma_lista(Rest, SomaParcial),
    Soma is Elem + SomaParcial.

par(N) :-
    N > 1,
    N mod 2 =:= 0.

lista_pares(2, [2]) :-
    !.
lista_pares(N, Lista) :-
    par(N),
    NextN is N - 2,
    lista_pares(NextN, L),
    append(L, [N], Lista).
lista_pares(N, Lista) :-
    \+par(N),
    NextN is N - 1,
    lista_pares(NextN, Lista).

lista_impares(1, [1]) :-
    !.
lista_impares(N, Lista) :-
    \+par(N),
    NextN is N - 2,
    lista_impares(NextN, L),
    append(L, [N], Lista).
lista_impares(N, Lista) :-
    par(N),
    NextN is N - 1,
    lista_impares(NextN, Lista).