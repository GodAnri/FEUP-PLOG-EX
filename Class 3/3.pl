append([], L, L).
append([X | L1], L2, [X | L]) :- append(L1, L2, L).