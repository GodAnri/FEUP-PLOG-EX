e_primo(2).
e_primo(3).
e_primo(N) :-
    N > 3,
    N mod 2 =\= 0,
    \+div(N,3).
div(N,Factor) :-
    N mod Factor =:= 0.
div(N,Factor) :-
    Factor * Factor < N, Next is Factor + 2, div(N, Next).