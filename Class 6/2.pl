par(X) :-
    X mod 2 =:= 0.

separa(L, P, R) :- 
    verdadeiro(L, P, R1),
    falso(L, P, R2),
    append(R1, R2, R).

verdadeiro([L | T], P, [L | R]) :-
    Verdade =.. [P, [L]],
    Verdade,
    verdadeiro(T, P, R).
verdadeiro([L | T], P, [H | R]) :-
    L \== H,
    verdadeiro(T, P, [H | R]).
verdadeiro(_,_,[]). 

falso([L | T], P, [L | R]) :-
    Falso =.. [P, [L]],
    \+Falso,
    falso(T, P, R). 
falso([L | T], P, [H | R]) :-
    L \== H,
    falso(T, P, [H | R]).
falso(_,_,[]).