:- use_module(library(lists)).

p1(L1, L2) :-
    gen(L1, L2),
    test(L2).

gen([], []).
gen(L1, [X | L2]) :-
    select(X, L1, L3),
    gen(L3, L2).

test([_, _]).
test([X1, X2, X3 | Xs]) :-
    (X1 < X2, X2 > X3; X1 > X2, X2 < X3),
    test([X2, X3 | Xs]).

% The program makes sure that L2 is a permutation of L1 where the difference between any two consecutive elements has the opposite sign of
% the difference between next two (that is, if between any two elements, the second one is higher than the first one, the next (third) element
% will be lower than the second and vice-versa).