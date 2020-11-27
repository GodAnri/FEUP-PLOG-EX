fatorial(0, 1).
fatorial(1, 1).
fatorial(N, R) :-
    N > 1,
    N_ is N - 1,
    fatorial(N_, R_),
    R is N * R_.

comb(N,N,1).
comb(N,A,L) :-
    N > A,
    fatorial(A, R1),
    N_ is N - A,
    fatorial(N_, R2),
    Div is R1 * R2,
    fatorial(N, R3),
    L is div(R3, Div).

addterm(N,N,[1]). 
addterm(N,A,L) :-
    N > A,
    A_ is A + 1,
    comb(N,A,T),
    addterm(N,A_,Aux),
    append([T],Aux,L).

pascal(N,L) :-
    addterm(N,0,L).