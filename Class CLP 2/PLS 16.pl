:- use_module(library(clpfd)).

liquidpowder :-
    Type = [Liquid, Powder, Both, None],
    domain(Type, 1, 1000),
    div(Liquid + Powder + Both + None, Liquid + None) #= 3,
    div(Liquid + Powder + Both + None, Powder + None) #= 7 / 2,
    Both #= 427,
    div(Liquid + Powder + Both + None, None) #= 5,
    labeling([], Type),
    Sum is Liquid + Powder + Both + None,
    write(Sum).