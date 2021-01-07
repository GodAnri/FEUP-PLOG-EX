primo(2) :-
    !.
primo(3) :-
    !.
primo(N) :-
    N > 3,
    N mod 2 =\= 0,
    \+divi(N,3).
divi(N, Factor) :-
    N mod Factor =:= 0.
divi(N, Factor) :-
    Factor * Factor < N,
    NextFactor is Factor + 2,
    divi(N, NextFactor).

lista_primos(1, []) :-
    !.
lista_primos(N, L) :-
    N > 1,
    primo(N),
    NextN is N - 1,
    lista_primos(NextN, L1),
    append(L1, [N], L).
lista_primos(N, L) :-
    N > 1,
    \+primo(N),
    NextN is N - 1,
    lista_primos(NextN, L).