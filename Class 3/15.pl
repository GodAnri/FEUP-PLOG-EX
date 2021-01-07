produto_interno([A], [B], Soma) :-
    Soma is A * B.
produto_interno([A | L1], [B | L2], Soma) :-
    produto_interno(L1, L2, N1),
    Soma is N1 + A * B.