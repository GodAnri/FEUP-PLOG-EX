e_primo(2).
e_primo(3).
e_primo(N) :-
    N > 3,
    N mod 2 =\= 0,
    \+divi(N,3).
divi(N,Factor) :-
    N mod Factor =:= 0.
divi(N,Factor) :-
    Factor * Factor < N, Next is Factor + 2, divi(N, Next).