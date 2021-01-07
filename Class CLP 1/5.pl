:- use_module(library(clpfd)).

guards(Vars) :-
    Vars = [A,B,C,D,E,F,G,H,I,J,K,L],
    domain(Vars, 0, 12),
    A + B + C + D #= 5,
    D + E + F + G #= 5,
    G + H + I + J #= 5,
    J + K + L + A #= 5,
    A + B + C + D + E + F + G + H + I + J + K + L #= 12,
    labeling([],Vars).