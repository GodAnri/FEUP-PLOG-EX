fatorial(0, 1).
fatorial(N, Valor) :- 
    N > 0,
    Next is N - 1,
    fatorial(Next, Res),
    Valor is Res * N.


fibonacci(0, 1).
fibonacci(1, 1).
fibonacci(N, Valor) :-
    N > 1,
    A is N - 1,
    B is N - 2,
    fibonacci(A, ResA),
    fibonacci(B, ResB),
    Valor is ResA + ResB. 