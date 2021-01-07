:- use_module(library(clpfd)).
:- use_module(library(lists)).

maquinista(NomeMaquinista) :-
    Prof = [Maquinista, Revisor, Foguista],
    Nomes = ['Ferreira', 'Rocha', 'Silva'], 
    domain(Prof, 0, 2),
    Ferreira = 0,
    Rocha = 1,
    Silva = 2,
    all_distinct(Prof),
    Revisor #\= Rocha, % Sr. Rocha vive em Detroit, o nome do Revisor é o mesmo do passageiro que vive em Chicago.
    Ferreira #= Revisor, % Sr. Rocha vive em Detroit, portanto não vive em Chicago, Sr. Ferreira não é o vizinho do revisor (porque 10.000 não é
    % múltiplo de 3), portanto o vizinho é o Sr. Silva, e portanto este vive a meio caminho entre Detroit e Chicago, e não em Chicago, o que
    % significa que o Sr. Ferreira é o passageiro que vive em Chicago e tem o mesmo nome do Revisor.
    Silva #\= Foguista, % Silva derrotou o foguista.
    labeling([], Prof),
    nth0(Maquinista, Nomes, NomeMaquinista).